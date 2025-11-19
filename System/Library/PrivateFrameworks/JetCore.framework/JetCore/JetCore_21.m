uint64_t sub_1DB4D85DC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1DB30C7A0;

  return v7();
}

uint64_t sub_1DB4D86C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DB30C7A0;

  return sub_1DB4D85DC(v2, v3, v5);
}

uint64_t sub_1DB4D8784(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1DB306AF4;

  return v8();
}

uint64_t sub_1DB4D886C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DB30C7A0;

  return sub_1DB4D8784(a1, v4, v5, v7);
}

unint64_t sub_1DB4D8938()
{
  result = qword_1ECC46EC0;
  if (!qword_1ECC46EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC46EC0);
  }

  return result;
}

uint64_t sub_1DB4D89B0(uint64_t a1)
{
  v37 = sub_1DB50A1D0();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46ED8, &qword_1DB5224C8);
  result = sub_1DB50B5F0();
  v6 = 0;
  v38 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v36 = v2;
  v32 = v2 + 8;
  v33 = v2 + 16;
  v31 = result + 64;
  v34 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v40 = 16 * v17;
      v18 = v37;
      v19 = *(v38 + 56);
      v20 = (*(v38 + 48) + 16 * v17);
      v21 = v20[1];
      v41 = *v20;
      v22 = v35;
      v23 = v36;
      (*(v36 + 16))(v35, v19 + *(v36 + 72) * v17, v37);

      v25 = sub_1DB4D5974(v24);
      (*(v23 + 8))(v22, v18);
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v34;
      v26 = (*(v34 + 48) + v40);
      *v26 = v41;
      v26[1] = v21;
      *(*(result + 56) + 8 * v17) = v25;
      v27 = *(result + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(result + 16) = v29;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB4D8C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46EF8, &qword_1DB5225D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ValidatedJetPackLoadingCoordinator.ValidatedJetPackLoadingCoordinatorError.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4D8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DB314B58(a1, a4);
  v7 = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t ValidatedJetPackLoadingCoordinator.init(session:assetLocation:bag:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_1DB2FEA0C(a2, (a4 + 1));
  a4[6] = a3;
  return result;
}

uint64_t ValidatedJetPackLoadingCoordinator.getJetPackAsset<A>(unpackAsset:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = *(a4 - 8);
  v6[27] = v7;
  v8 = *(v7 + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v9 = type metadata accessor for JetPackAsset(0);
  v6[30] = v9;
  v10 = *(v9 - 8);
  v6[31] = v10;
  v11 = *(v10 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F20, qword_1DB5105D0) - 8) + 64) + 15;
  v6[34] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F28, &qword_1DB522600);
  v6[35] = v13;
  v14 = *(v13 - 8);
  v6[36] = v14;
  v15 = *(v14 + 64) + 15;
  v6[37] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46F30, &qword_1DB522608);
  v6[38] = v16;
  v17 = *(v16 - 8);
  v6[39] = v17;
  v18 = *(v17 + 64) + 15;
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for ValidatedJetPackLoadingCoordinator.ValidatedJetPackResult();
  v19 = sub_1DB50B120();
  v6[42] = v19;
  v20 = *(v19 - 8);
  v6[43] = v20;
  v21 = *(v20 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4D90E4, 0, 0);
}

uint64_t sub_1DB4D90E4()
{
  v1 = v0[45];
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[26];
  v7 = *(v0[41] - 8);
  v0[46] = v7;
  v9 = v7 + 56;
  v8 = *(v7 + 56);
  v0[47] = v8;
  v0[48] = v9 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 1, 1);
  v10 = v6[4];
  v11 = v6[5];
  __swift_project_boxed_opaque_existential_1(v6 + 1, v10);
  (*(v11 + 40))(*v6, v6[6], v10, v11);
  sub_1DB50AC00();
  (*(v4 + 8))(v3, v5);
  v0[49] = 0;
  v12 = *(MEMORY[0x1E69E87A8] + 4);
  v13 = swift_task_alloc();
  v0[50] = v13;
  *v13 = v0;
  v13[1] = sub_1DB4D928C;
  v14 = v0[40];
  v15 = v0[38];
  v16 = v0[34];

  return MEMORY[0x1EEE6DB90](v16, 0, 0, v15, v0 + 20);
}

uint64_t sub_1DB4D928C()
{
  v2 = *(*v1 + 400);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1DB4D9B44;
  }

  else
  {
    v3 = sub_1DB4D939C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4D939C()
{
  v1 = *(v0 + 272);
  if ((*(*(v0 + 248) + 48))(v1, 1, *(v0 + 240)) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    if (qword_1EE30C928 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 392);
    sub_1DB50BEB0();
    v48 = *(v0 + 48);
    v50 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1DB50EE90;
    v53 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v4._object = 0x80000001DB531010;
    v4._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v4);
    *(v0 + 120) = MEMORY[0x1E69E6530];
    *(v0 + 96) = v2;
    sub_1DB301CDC(v0 + 96, v0 + 128);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1DB301D4C(v0 + 128, v0 + 56);
    *(v0 + 88) = 0;
    v5 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1DB301BC0(0, *(v53 + 2) + 1, 1, v53);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1DB301BC0((v6 > 1), v7 + 1, 1, v5);
    }

    v9 = *(v0 + 360);
    v8 = *(v0 + 368);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v12 = *(v0 + 336);
    v46 = *(v0 + 328);
    *(v5 + 2) = v7 + 1;
    v13 = &v5[40 * v7];
    v14 = *(v0 + 56);
    v15 = *(v0 + 72);
    v13[64] = *(v0 + 88);
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    sub_1DB301DBC(v0 + 96);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    *(v3 + 32) = v5;
    Logger.debug(_:)(v3, v50, v48);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    (*(v10 + 16))(v11, v9, v12);
    v17 = (*(v8 + 48))(v11, 1, v46);
    v18 = *(v10 + 8);
    if (v17 == 1)
    {
      v19 = *(v0 + 360);
      v20 = *(v0 + 336);
      v18(*(v0 + 352), v20);
      sub_1DB4D9D8C();
      swift_allocError();
      swift_willThrow();
      v18(v19, v20);
      v22 = *(v0 + 352);
      v21 = *(v0 + 360);
      v23 = *(v0 + 320);
      v24 = *(v0 + 296);
      v26 = *(v0 + 264);
      v25 = *(v0 + 272);
      v27 = *(v0 + 256);
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
    }

    else
    {
      v38 = *(v0 + 368);
      v39 = *(v0 + 352);
      v40 = *(v0 + 328);
      v41 = *(v0 + 320);
      v42 = *(v0 + 296);
      v45 = *(v0 + 272);
      v47 = *(v0 + 264);
      v43 = *(v0 + 256);
      v49 = *(v0 + 232);
      v52 = *(v0 + 224);
      v44 = *(v0 + 168);
      v18(*(v0 + 360), *(v0 + 336));
      (*(v38 + 32))(v44, v39, v40);
    }

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v31 = *(v0 + 176);
    sub_1DB314B58(v1, *(v0 + 264));
    v51 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 408) = v33;
    *v33 = v0;
    v33[1] = sub_1DB4D98B8;
    v34 = *(v0 + 264);
    v35 = *(v0 + 232);
    v36 = *(v0 + 184);

    return v51(v35, v34);
  }
}

uint64_t sub_1DB4D98B8()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_1DB4D9C54;
  }

  else
  {
    v3 = sub_1DB4D99CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4D99CC()
{
  v20 = v0[48];
  v21 = v0[49];
  v19 = v0[47];
  v1 = v0[45];
  v2 = v0[41];
  v4 = v0[32];
  v3 = v0[33];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  (*(v0[43] + 8))(v1, v0[42]);
  sub_1DB314B58(v3, v4);
  (*(v7 + 32))(v6, v5, v9);
  sub_1DB4D8D4C(v4, v6, v9, v1);
  v10 = v19(v1, 0, 1, v2);
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v0[49] = v21 + 1;
    v15 = *(MEMORY[0x1E69E87A8] + 4);
    v16 = swift_task_alloc();
    v0[50] = v16;
    *v16 = v0;
    v16[1] = sub_1DB4D928C;
    v17 = v0[40];
    v13 = v0[38];
    v10 = v0[34];
    v14 = v0 + 20;
    v11 = 0;
    v12 = 0;
  }

  return MEMORY[0x1EEE6DB90](v10, v11, v12, v13, v14);
}

uint64_t sub_1DB4D9B44()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  (*(v0[39] + 8))(v0[40], v0[38]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[20];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[40];
  v8 = v0[37];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v13 = v0[28];
  v12 = v0[29];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB4D9C54()
{
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  sub_1DB4D9DE0(v0[33]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = v0[52];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[40];
  v11 = v0[37];
  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v16 = v0[28];
  v15 = v0[29];

  v17 = v0[1];

  return v17();
}

unint64_t sub_1DB4D9D8C()
{
  result = qword_1ECC46F38;
  if (!qword_1ECC46F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC46F38);
  }

  return result;
}

uint64_t sub_1DB4D9DE0(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4D9E40()
{
  result = qword_1ECC46F40[0];
  if (!qword_1ECC46F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC46F40);
  }

  return result;
}

uint64_t sub_1DB4D9E94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1DB4D9EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB4D9F48(uint64_t a1)
{
  result = type metadata accessor for JetPackAsset(319);
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4D9FD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1DB509DD0() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v11 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = ((((((v12 + 40) & ~(v12 | 7)) + ((((v13 + ((v12 + 32) & ~v12) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 57) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + v14 + 16;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v17 = (v16 & ~v14) + *(v10 + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v15 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v9 >= v11)
      {
        if ((v8 & 0x80000000) != 0)
        {
          v27 = *(v7 + 48);

          return v27((v12 + ((((a1 + (v12 | 7) + 40) & ~(v12 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v12);
        }

        else
        {
          v26 = *(a1 + 3);
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          return (v26 + 1);
        }
      }

      else
      {
        v25 = *(v10 + 48);

        return v25((a1 + v16) & ~v14, v11);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = (v16 & ~v14) + *(v10 + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

void sub_1DB4DA29C(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1DB509DD0() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v13 + 80);
  if (v14 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = ((((v16 + ((v15 + 32) & ~v15) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 42;
  v20 = ((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 16;
  v21 = ((v20 + v17) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v18 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v18 < a2)
  {
    v23 = ~v18 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v21)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_55:
              if (v22 == 2)
              {
                *(a1 + v21) = v24;
              }

              else
              {
                *(a1 + v21) = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v27;
        *(a1 + 2) = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v22)
    {
      *(a1 + v21) = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v21) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v22)
  {
    goto LABEL_36;
  }

  *(a1 + v21) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v12 >= v14)
  {
    if (v12 >= a2)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v30 = ((a1 + (v15 | 7) + 40) & ~(v15 | 7));
        if (v11 >= a2)
        {
          v32 = *(v9 + 56);

          v32((v15 + ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v15, a2);
        }

        else
        {
          v31 = ~v11 + a2;
          bzero(v30, v19);
          if (v19 <= 3)
          {
            *v30 = v31;
          }

          else
          {
            *v30 = v31;
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(a1 + 4) = 0u;
        *(a1 + 12) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 3) = (a2 - 1);
      }
    }

    else if (((((((v15 + 40) & ~(v15 | 7)) + v19 + 15) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v29 = ~v12 + a2;
      bzero(a1, v20);
      *a1 = v29;
    }
  }

  else
  {
    v28 = *(v13 + 56);

    v28((a1 + v20 + v17) & ~v17, a2, v14);
  }
}

uint64_t sub_1DB4DA670@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_unknownObjectWeakInit();
  sub_1DB2FEA0C(a1, a3);
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectRelease();
  *(a3 + 48) = a2;
  return result;
}

uint64_t sub_1DB4DA6D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v2[3];
    v11 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v10);
    v12 = v2[6];
    (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = v4;
    *(v14 + 3) = v9;
    *(v14 + 4) = v12;
    (*(v5 + 32))(&v14[v13], v7, v4);
    v15 = *(v11 + 8);
    swift_unknownObjectRetain();
    v15(sub_1DB4DAA48, v14, v10, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1DB4DA868(void *a1, uint64_t a2)
{
  v4 = sub_1DB50BA20();
  [swift_unknownObjectRetain() performSelector:a2 withObject:v4];
  swift_unknownObjectRelease();
  return a1;
}

uint64_t EventEmitter.addObserver(on:target:selector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DB30BE90(a1, v12);
  swift_getAssociatedTypeWitness();
  swift_unknownObjectRetain();
  sub_1DB4DA670(v12, a3, v13);
  v8 = *(a5 + 24);
  v9 = type metadata accessor for NSObjectEventObserver();
  WitnessTable = swift_getWitnessTable();
  v8(v13, v9, WitnessTable, a4, a5);
  return (*(*(v9 - 8) + 8))(v13, v9);
}

uint64_t sub_1DB4DAA0C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4DAA8C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47080, &qword_1DB5228F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4DB694();
  sub_1DB50BE40();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47068, &qword_1DB5228E8);
  sub_1DB4DB73C(&qword_1ECC47088, sub_1DB4DB7C0);
  sub_1DB50B8A0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DB4DAC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1937335659 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4DACB8(uint64_t a1)
{
  v2 = sub_1DB4DB694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4DACF4(uint64_t a1)
{
  v2 = sub_1DB4DB694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DB4DAD30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DB4DB4D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t JetPackManagedKeyProvider.keyForIdentifier(_:)(int a1)
{
  v59 = a1;
  v1 = sub_1DB509CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = 0;
  v8 = 0;
  v65 = 0;
  v62 = "eam yield count: " & 0x2F00000000000000;
  v60 = 0x80000001DB531040;
  v9 = (v2 + 8);
  v64 = xmmword_1DB50EE90;
  v63 = v6;
  while (1)
  {
    v66 = v7;
    v10 = &unk_1F56F05E8 + 16 * v8;
    v12 = *(v10 + 4);
    v11 = *(v10 + 5);

    v13 = [v6 defaultManager];
    v14 = sub_1DB50A620();
    v15 = [v13 fileExistsAtPath_];

    if (v15)
    {
      break;
    }

LABEL_3:
    v7 = 1;
    v8 = 1;
    if (v66)
    {
      return 0;
    }
  }

  sub_1DB509BA0();
  v16 = v65;
  v17 = sub_1DB509CB0();
  if (v16)
  {
    if (qword_1ECC42238 != -1)
    {
      swift_once();
    }

    v65 = 0;
    v24 = qword_1ECC466F8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v25 = swift_allocObject();
    *(v25 + 16) = v64;
    v26 = sub_1DB301BC0(0, 28, 0, MEMORY[0x1E69E7CC0]);
    if (v62 != 0x2000000000000000)
    {
      v61 = v16;
      v27 = v24;
      v28 = v9;
      v29 = v5;
      v30 = v1;
      v70 = MEMORY[0x1E69E6158];
      v68 = 0xD00000000000001BLL;
      v69 = v60;
      v71 = 0u;
      v72 = 0u;
      sub_1DB301D4C(&v68, &v71);
      v73 = 0;
      v32 = *(v26 + 2);
      v31 = *(v26 + 3);
      if (v32 >= v31 >> 1)
      {
        v26 = sub_1DB301BC0((v31 > 1), v32 + 1, 1, v26);
      }

      *(v26 + 2) = v32 + 1;
      v33 = &v26[40 * v32];
      v34 = v71;
      v35 = v72;
      v33[64] = v73;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v1 = v30;
      v5 = v29;
      v9 = v28;
      v24 = v27;
      v16 = v61;
    }

    v70 = MEMORY[0x1E69E6158];
    v68 = v12;
    v69 = v11;
    sub_1DB301CDC(&v68, v67);
    v71 = 0u;
    v72 = 0u;
    sub_1DB301D4C(v67, &v71);
    v73 = 0;
    v37 = *(v26 + 2);
    v36 = *(v26 + 3);
    if (v37 >= v36 >> 1)
    {
      v26 = sub_1DB301BC0((v36 > 1), v37 + 1, 1, v26);
    }

    *(v26 + 2) = v37 + 1;
    v38 = &v26[40 * v37];
    v39 = v71;
    v40 = v72;
    v38[64] = v73;
    *(v38 + 2) = v39;
    *(v38 + 3) = v40;
    sub_1DB301DBC(&v68);
    *(v25 + 32) = v26;
    v41 = sub_1DB50AF20();
    if (os_log_type_enabled(v24, v41))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v42 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v42[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v42 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v44 = swift_allocObject();
      *(v44 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v71 = v25;
      *(&v71 + 1) = sub_1DB31485C;
      *&v72 = v44;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v45 = sub_1DB50A5E0();
      v47 = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v48 = swift_allocObject();
      *(v48 + 16) = v64;
      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1DB31494C();
      *(v48 + 32) = v45;
      *(v48 + 40) = v47;
      sub_1DB50A1E0();
    }

    goto LABEL_22;
  }

  v19 = v17;
  v20 = v18;
  v21 = sub_1DB509AF0();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_1DB509AE0();
  sub_1DB4DB464();
  sub_1DB509AD0();
  v65 = 0;

  v49 = v71;
  LOWORD(v71) = v59;
  v50 = sub_1DB50B8F0();
  if (!*(v49 + 16))
  {

    sub_1DB30C158(v19, v20);

    goto LABEL_27;
  }

  v52 = sub_1DB306160(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {

    sub_1DB30C158(v19, v20);
LABEL_27:

LABEL_22:
    (*v9)(v5, v1);
    v6 = v63;
    goto LABEL_3;
  }

  v56 = *(v49 + 56) + 16 * v52;
  v57 = *v56;
  sub_1DB30C1AC(*v56, *(v56 + 8));

  sub_1DB30C158(v19, v20);
  (*v9)(v5, v1);

  return v57;
}

unint64_t sub_1DB4DB464()
{
  result = qword_1ECC47050;
  if (!qword_1ECC47050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47050);
  }

  return result;
}

void *sub_1DB4DB4D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47058, &qword_1DB5228E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4DB694();
  sub_1DB50BDF0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47068, &qword_1DB5228E8);
    sub_1DB4DB73C(&qword_1ECC47070, sub_1DB4DB6E8);
    sub_1DB50B780();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v9;
}

unint64_t sub_1DB4DB694()
{
  result = qword_1ECC47060;
  if (!qword_1ECC47060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47060);
  }

  return result;
}

unint64_t sub_1DB4DB6E8()
{
  result = qword_1ECC47078;
  if (!qword_1ECC47078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47078);
  }

  return result;
}

uint64_t sub_1DB4DB73C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47068, &qword_1DB5228E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4DB7C0()
{
  result = qword_1ECC47090;
  if (!qword_1ECC47090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47090);
  }

  return result;
}

unint64_t sub_1DB4DB828()
{
  result = qword_1ECC47098;
  if (!qword_1ECC47098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47098);
  }

  return result;
}

unint64_t sub_1DB4DB880()
{
  result = qword_1ECC470A0;
  if (!qword_1ECC470A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC470A0);
  }

  return result;
}

unint64_t sub_1DB4DB8D8()
{
  result = qword_1ECC470A8;
  if (!qword_1ECC470A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC470A8);
  }

  return result;
}

uint64_t sub_1DB4DB93C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 32);
  v4 = *(a2 + 16) + 1;
  while (--v4)
  {
    v5 = v3 + 5;
    v6 = v3[3];
    v7 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v6);
    result = (*(v7 + 8))(a1, v6, v7);
    v3 = v5;
    if (v9 >> 60 != 15)
    {
      return result;
    }
  }

  return 0;
}

uint64_t JetPackFileKeyProvider.keyForIdentifier(_:)(unsigned __int16 a1)
{
  v3 = sub_1DB509CA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20[-v13];
  v15 = *v1;
  if (*(v15 + 16) && (v16 = sub_1DB30F070(a1), (v17 & 1) != 0))
  {
    (*(v4 + 16))(v14, *(v15 + 56) + *(v4 + 72) * v16, v3);
    (*(v4 + 56))(v14, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v14, 1, 1, v3);
  }

  sub_1DB3778D0(v14, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    v18 = 0;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v18 = sub_1DB509CB0();
    (*(v4 + 8))(v7, v3);
  }

  sub_1DB37B80C(v14);
  return v18;
}

uint64_t sub_1DB4DBC64()
{
  if (qword_1EE30D148 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30D150;
  v0 = unk_1EE30D158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0x537363697274656DLL;
  *(v2 + 56) = 0xEF676E696C706D61;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1ECC67CD0 = v3;
  *algn_1ECC67CD8 = v5;
}

uint64_t MetricsSamplingLottery.init(eventName:percentage:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (qword_1ECC422F8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC67CD0;
  v10 = *algn_1ECC67CD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DB50F8D0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = a1;
  *(v12 + 56) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v13 = sub_1DB50A5E0();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DB50F8D0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0x646563726F467369;
  *(v16 + 56) = 0xE800000000000000;

  v17 = sub_1DB50A5E0();
  v19 = v18;

  *a3 = v17;
  *(a3 + 8) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DB50F8D0;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  *(v20 + 48) = 0xD000000000000011;
  *(v20 + 56) = 0x80000001DB531060;
  v21 = sub_1DB50A5E0();
  v23 = v22;

  *(a3 + 16) = v21;
  *(a3 + 24) = v23;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  return result;
}

uint64_t sub_1DB4DBFE0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19[-1] - v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = qword_1EE30E8D0;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_1DB476604(a1, v6);
  v10 = sub_1DB509DD0();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);
  if (v12 == 1)
  {
    sub_1DB4DC784(v6);
    v13 = 0;
  }

  else
  {
    sub_1DB509D00();
    v13 = v14;
    (*(v11 + 8))(v6, v10);
  }

  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB0, &qword_1DB513500);
  v20[4] = &protocol witness table for PreferenceKey<A>;
  v20[0] = v8;
  v20[1] = v7;
  if (v12 == 1)
  {
    v15 = 0;
    v19[1] = 0;
    v19[2] = 0;
    v13 = 0;
  }

  else
  {
    v15 = MEMORY[0x1E69E63B0];
  }

  v19[0] = v13;
  v19[3] = v15;
  v16 = off_1F56FE2E0[0];
  type metadata accessor for LocalPreferences();
  v16(v19, v20);
  return sub_1DB4DC784(a1);
}

uint64_t MetricsSamplingLottery.isForced.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v3 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v3[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v3 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
LABEL_5:
      v5 = 0;
      return v5 & 1;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_5;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DB376278(v1, v2);
  return v5 & 1;
}

uint64_t MetricsSamplingLottery.shouldCollect.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - v3;
  v5 = sub_1DB509DD0();
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = *v0;
  v22 = *(v0 + 8);
  v23 = *(v0 + 24);
  v40 = *(v0 + 16);
  v41 = v23;
  v42 = v21;
  v25 = *(v0 + 32);
  v24 = *(v0 + 40);
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v26 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v26 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (qword_1EE30E8D0 != -1)
    {
      swift_once();
    }

    v28 = sub_1DB376278(v42, v22);
    if (v28 != 2 && (v28 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_11;
  }

  if (os_unfair_lock_opaque_low)
  {
    goto LABEL_7;
  }

LABEL_11:
  if (v25 <= 0.0)
  {
    return 0;
  }

  if (v25 >= 1.0)
  {
    return 1;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  sub_1DB3768AC(v40, v41);
  if ((v29 & 1) == 0)
  {
    sub_1DB509CF0();
    v38 = v4;
    v30 = v39;
    v37 = *(v39 + 32);
    v37(v14, v11, v5);
    sub_1DB509D30();
    v31 = v30;
    v4 = v38;
    v32 = *(v31 + 8);
    v32(v14, v5);
    v37(v20, v17, v5);
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    v33 = sub_1DB509D50();
    v32(v8, v5);
    v32(v20, v5);
    if (v33)
    {
      return 1;
    }
  }

  v34 = vcvtd_n_f64_u64(sub_1DB4DC6E8(0x20000000000001uLL), 0x35uLL);
  if (v34 <= 0.0 || v34 > v25)
  {
    return 0;
  }

  v43 = v42;
  v44 = v22;
  v45 = v40;
  v46 = v41;
  v47 = v25;
  v48 = v24;

  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  (*(v39 + 56))(v4, 0, 1, v5);
  sub_1DB4DBFE0(v4);

  return 1;
}

unint64_t sub_1DB4DC6E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E1288230](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E1288230](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4DC784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB4DC7EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC47148, &unk_1DB522D58);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  sub_1DB4DD0C4([*(v0 + 16) valuePromise]);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v7 = sub_1DB357BD4();
  swift_retain_n();

  v11[3] = v7;
  v11[4] = &protocol witness table for OS_dispatch_queue;
  v11[0] = sub_1DB50AFB0();
  v9[0] = sub_1DB4E657C;
  v9[1] = v6;
  v9[2] = sub_1DB4E65E4;
  v9[3] = v1;
  sub_1DB30BE90(v11, v10);
  v10[40] = 0;

  sub_1DB30B734(v9);
  sub_1DB30623C(v9, &qword_1ECC42850, &unk_1DB50F6B0);

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v1;
}

void *sub_1DB4DC988()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45340, &unk_1DB518F50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-1] - v3;
  *(&v17[-1] - v3) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47128, &unk_1DB522D10);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v8[2] = v9;
  sub_1DB30C06C(v4, v8 + *(*v8 + 96), &unk_1ECC45340, &unk_1DB518F50);
  sub_1DB4DD274([*(v0 + 16) valuePromise]);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v11;
  v12[4] = v10;
  v13 = sub_1DB357BD4();
  swift_retain_n();

  v14 = sub_1DB50AFB0();
  v19[3] = v13;
  v19[4] = &protocol witness table for OS_dispatch_queue;
  v19[0] = v14;
  v17[0] = sub_1DB4E6118;
  v17[1] = v12;
  v17[2] = sub_1DB4E6124;
  v17[3] = v8;
  sub_1DB30BE90(v19, v18);
  v18[40] = 0;

  sub_1DB30B8E8(v17);
  sub_1DB30623C(v17, &unk_1ECC44FE0, &qword_1DB50F1F0);

  __swift_destroy_boxed_opaque_existential_0(v19);
  return v8;
}

uint64_t sub_1DB4DCBB4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47168, &qword_1DB522D78);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65FC;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_97;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6600;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_100;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DCD64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47160, &qword_1DB522D70);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65F4;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_91;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E65F8;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_94;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DCF14(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47140, &qword_1DB522D50);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E6534;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_76;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6538;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_79;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DD0C4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47158, &qword_1DB522D68);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E65EC;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_85;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E65F0;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_88;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t sub_1DB4DD274(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC47130, &unk_1DB522D20);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1DB4E612C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D390;
  v11 = &block_descriptor_49;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1DB4E6130;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1DB49D40C;
  v11 = &block_descriptor_52;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

void sub_1DB4DD424(void *a1)
{
  swift_getErrorValue();
  if (sub_1DB3C8450(v2))
  {
    sub_1DB3FBB2C(0);
  }

  else
  {
    sub_1DB3DFF70(a1);
  }
}

void sub_1DB4DD490(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v7 - v4;
  swift_getErrorValue();
  if (sub_1DB3C8450(v7[1]))
  {
    v6 = sub_1DB509CA0();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_1DB3FBDE4(v5);
    sub_1DB30623C(v5, &unk_1ECC42B20, &unk_1DB50F6A0);
  }

  else
  {
    sub_1DB3E04B4(a1);
  }
}

uint64_t sub_1DB4DD5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DB30C4B8(a3, v24 - v10, &unk_1ECC46EB0, &qword_1DB50F750);
  v12 = sub_1DB50ABA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DB30623C(v11, &unk_1ECC46EB0, &qword_1DB50F750);
  }

  else
  {
    sub_1DB50AB90();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DB50AAD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1DB50A6F0() + 32;
      type metadata accessor for JetPackAsset(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
  type metadata accessor for JetPackAsset(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DB4DD85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DB30C4B8(a3, v24 - v10, &unk_1ECC46EB0, &qword_1DB50F750);
  v12 = sub_1DB50ABA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DB30623C(v11, &unk_1ECC46EB0, &qword_1DB50F750);
  }

  else
  {
    sub_1DB50AB90();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DB50AAD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DB50A6F0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DB30623C(a3, &unk_1ECC46EB0, &qword_1DB50F750);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t ValidatedJetPackAssetLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  swift_unknownObjectRetain();
  sub_1DB4DDB88(a1, &v8, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DB4DDB88(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16[-v12];
  v14 = *a2;
  v17 = a3;
  v18 = a4;
  v19 = v4;
  v20 = v14;
  v21 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8790], v9);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4DDCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a3;
  v35 = a4;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v30 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v31 = &v30 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v30 - v19;
  v21 = sub_1DB50ABA0();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v13 + 16))(v16, a2, a5);
  (*(v9 + 16))(v12, v32, v8);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v9 + 80) + v24 + 8) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = 0;
  *(v26 + 3) = 0;
  v27 = v33;
  *(v26 + 4) = a5;
  *(v26 + 5) = v27;
  (*(v13 + 32))(&v26[v22], v16, a5);
  v28 = v35;
  *&v26[v23] = v34;
  *&v26[v24] = v28;
  (*(v9 + 32))(&v26[v25], v31, v30);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v20, &unk_1DB522D48, v26);
}

uint64_t sub_1DB4DDFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v27;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedTypeWitness();
  v8[19] = v17;
  v18 = *(v17 - 8);
  v8[20] = v18;
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  v8[21] = v20;
  v21 = *(v27 + 24);
  v25 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v8[22] = v23;
  *v23 = v8;
  v23[1] = sub_1DB4DE2B0;

  return v25(v20, a8);
}

uint64_t sub_1DB4DE2B0()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4DE8C4, 0, 0);
  }

  else
  {
    v13 = (v3[9] + 32);
    v14 = (*v13 + **v13);
    v4 = (*v13)[1];
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_1DB4DE4AC;
    v6 = v3[21];
    v7 = v3[17];
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[4];
    v10 = v3[5];

    return v14(v7, v6, v10, v8, v9);
  }
}

uint64_t sub_1DB4DE4AC()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DB4DE988, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[26] = v4;
    *v4 = v3;
    v4[1] = sub_1DB4DE62C;
    v5 = v3[21];
    v6 = v3[17];
    v7 = v3[18];
    v8 = v3[14];
    v9 = v3[15];
    v10 = v3[6];

    return JetPackAssetSession.jetPack<A>(for:fetcher:)(v8, v5, v6, v9, v7);
  }
}

uint64_t sub_1DB4DE62C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1DB4DEA64;
  }

  else
  {
    v3 = sub_1DB4DE740;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4DE740()
{
  v1 = v0[20];
  v17 = v0[19];
  v18 = v0[21];
  v2 = v0[16];
  v3 = v0[14];
  v15 = v0[15];
  v16 = v0[17];
  v4 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];
  sub_1DB4E6134(v3, v0[13], type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v5 + 8))(v4, v6);
  v0[3] = 0;
  sub_1DB50AD20();
  sub_1DB4E604C(v3, type metadata accessor for JetPackAsset);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);
  v8 = v0[21];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB4DE8C4()
{
  v1 = v0[7];
  v0[2] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();
  v2 = v0[21];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4DE988()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[7];
  v0[2] = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();
  v2 = v0[21];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB4DEA64()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[7];
  v0[2] = v0[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();
  v5 = v0[21];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1DB4DEB60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1DB50A4B0();

  v2(v3);
}

uint64_t ValidatedJetPackAssetLocations.URLLocation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:requestConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1DB509CA0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a2 + result[5]) = 0;
  v6 = (a2 + result[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + result[7]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:requestConfiguration:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{

  LOBYTE(a2) = *a2;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a3 + result[5]) = a2;
  v8 = (a3 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + result[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t type metadata accessor for ValidatedJetPackAssetLocations.URLLocation()
{
  result = qword_1ECC470D0;
  if (!qword_1ECC470D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a3 + result[5]) = v5;
  v8 = (a3 + result[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + result[7]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

int *ValidatedJetPackAssetLocations.URLLocation.init(_:sourcePolicy:usageID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  *(a5 + result[5]) = v9;
  v12 = (a5 + result[6]);
  *v12 = a3;
  v12[1] = a4;
  v13 = (a5 + result[7]);
  *v13 = 0;
  v13[1] = 0;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildRequest()@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DB509CA0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v5 = *(v4 + 24);
  v6 = *(v1 + *(v4 + 20));
  v8 = *(v1 + v5);
  v7 = *(v1 + v5 + 8);
  v9 = type metadata accessor for URLJetPackAssetRequest();
  *(a1 + *(v9 + 20)) = v6;
  v10 = (a1 + *(v9 + 24));
  *v10 = v8;
  v10[1] = v7;
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = [objc_opt_self() defaultSessionConfiguration];
  v6 = type metadata accessor for URLJetPackAssetFetcher();
  v7 = *(v6 + 24);
  v8 = sub_1DB509CA0();
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = (v2 + *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() + 28));
  v10 = *v9;
  v11 = v9[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v6 + 28)] = v12;
  *a2 = v5;
  *(a2 + 1) = v10;
  *(a2 + 2) = v11;
  sub_1DB4B2BAC(v10);
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.URLLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  v12 = v2;
  v13 = a2;
  v14 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4DF224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v28 = &v28 - v8;
  v10 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v18 = sub_1DB50ABA0();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1DB4E6134(v29, v13, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v19 = a1;
  v20 = v5;
  (*(v6 + 16))(v9, v19, v5);
  v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v6 + 80) + v23 + 8) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1DB4E619C(v13, v25 + v21, type metadata accessor for ValidatedJetPackAssetLocations.URLLocation);
  v26 = v31;
  *(v25 + v22) = v30;
  *(v25 + v23) = v26;
  (*(v6 + 32))(v25 + v24, v28, v20);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v17, &unk_1DB522D38, v25);
}

uint64_t sub_1DB4DF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v7[12] = v8;
  v9 = *(v8 - 8);
  v7[13] = v9;
  v10 = *(v9 + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v12 = type metadata accessor for URLJetPackAssetFetcher();
  v7[18] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();
  v14 = type metadata accessor for URLJetPackAssetRequest();
  v7[20] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4DF684, 0, 0);
}

uint64_t sub_1DB4DF684()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v37 = v0[18];
  v4 = v0[8];
  v5 = v0[9];
  v6 = sub_1DB509CA0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1, v4, v6);
  v8 = type metadata accessor for ValidatedJetPackAssetLocations.URLLocation();
  v9 = (v4 + v8[6]);
  v10 = *v9;
  v11 = v9[1];
  *(v1 + *(v2 + 20)) = *(v4 + v8[5]);
  v12 = (v1 + *(v2 + 24));
  *v12 = v10;
  v12[1] = v11;
  v13 = objc_opt_self();

  v14 = [v13 defaultSessionConfiguration];
  (*(v7 + 56))(&v3[*(v37 + 24)], 1, 1, v6);
  v15 = (v4 + v8[7]);
  v16 = *v15;
  v17 = v15[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v18 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v18 + 16) = v19;
  *(v18 + 24) = v5;
  *(v18 + 32) = 1;
  *&v3[*(v37 + 28)] = v18;
  *v3 = v14;
  *(v3 + 1) = v16;
  *(v3 + 2) = v17;
  sub_1DB4B2BAC(v16);
  swift_unknownObjectRetain();
  LOBYTE(v4) = sub_1DB4E5720();
  v20 = v0[21];
  v0[2] = sub_1DB509B80();
  v0[3] = v21;
  v0[4] = 0x776E647074656A2FLL;
  v0[5] = 0xE90000000000002FLL;
  sub_1DB301E30();
  v22 = sub_1DB50B1E0();

  if (v4)
  {
    v23 = swift_task_alloc();
    v0[22] = v23;
    *v23 = v0;
    v23[1] = sub_1DB4DFB0C;
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[16];
    v27 = v0[10];
    v28 = 3;
LABEL_5:

    return sub_1DB443C40(v26, v24, v25, v28);
  }

  if (v22)
  {
    v29 = swift_task_alloc();
    v0[24] = v29;
    *v29 = v0;
    v29[1] = sub_1DB4DFEDC;
    v24 = v0[21];
    v25 = v0[19];
    v26 = v0[16];
    v30 = v0[10];
    v28 = 2;
    goto LABEL_5;
  }

  v32 = swift_task_alloc();
  v0[25] = v32;
  *v32 = v0;
  v32[1] = sub_1DB4DFFFC;
  v33 = v0[21];
  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[10];

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v35, v33, v34);
}

uint64_t sub_1DB4DFB0C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v5 = sub_1DB4DFDCC;
  }

  else
  {
    v5 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4DFC2C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  sub_1DB4E619C(v0[16], v3, type metadata accessor for JetPackAsset);
  sub_1DB4E6134(v3, v5, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v7 + 8))(v4, v6);
  v0[7] = 0;
  sub_1DB50AD20();
  sub_1DB4E604C(v3, type metadata accessor for JetPackAsset);
  sub_1DB4E604C(v2, type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);
  v9 = v0[21];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v14 = v0[14];
  v13 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1DB4DFDCC()
{
  v1 = v0[21];
  sub_1DB4E604C(v0[19], type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);
  v2 = v0[11];
  v0[6] = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD20();
  v3 = v0[21];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v8 = v0[14];
  v7 = v0[15];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB4DFEDC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v5 = sub_1DB4DFDCC;
  }

  else
  {
    v5 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4DFFFC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;
    v5 = sub_1DB4DFDCC;
  }

  else
  {
    v5 = sub_1DB4DFC2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E011C(uint64_t a1, uint64_t a2)
{
  v6 = sub_1DB509CA0();
  (*(*(v6 - 8) + 16))(a1, v2, v6);
  v7 = *(a2 + 24);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v9 = *(v2 + v7);
  v8 = *(v2 + v7 + 8);
  v10 = type metadata accessor for URLJetPackAssetRequest();
  *(a1 + *(v10 + 20)) = a2;
  v11 = (a1 + *(v10 + 24));
  *v11 = v9;
  v11[1] = v8;
  v13 = *(v3 + 8);

  return v13();
}

uint64_t sub_1DB4E0208(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() defaultSessionConfiguration];
  v10 = type metadata accessor for URLJetPackAssetFetcher();
  v11 = *(v10 + 24);
  v12 = sub_1DB509CA0();
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = (v4 + *(a4 + 28));
  v14 = *v13;
  v15 = v13[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 16) = v17;
  *(v16 + 24) = a3;
  *(v16 + 32) = 1;
  *&a1[*(v10 + 28)] = v16;
  *a1 = v9;
  *(a1 + 1) = v14;
  *(a1 + 2) = v15;
  sub_1DB4B2BAC(v14);
  v19 = *(v5 + 8);
  swift_unknownObjectRetain();

  return v19();
}

uint64_t sub_1DB4E0390(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-v8];
  v12 = v2;
  v13 = a2;
  v14 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.url()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v4 = sub_1DB509CA0();
  v2[14] = v4;
  v5 = *(v4 - 8);
  v2[15] = v5;
  v6 = *(v5 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB4E05B4, 0, 0);
}

uint64_t sub_1DB4E05B4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v21 = v3[2];
  v22 = v3[3];
  v23 = *(v3 + 8);
  v19 = *v3;
  v20 = v3[1];
  sub_1DB4E0964(v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = *(v0 + 96);
    sub_1DB30623C(*(v0 + 104), &unk_1ECC42B20, &unk_1DB50F6A0);
    *(v0 + 16) = *v5;
    v6 = *(v5 + 16);
    v7 = *(v5 + 32);
    v8 = *(v5 + 48);
    *(v0 + 80) = *(v5 + 64);
    *(v0 + 48) = v7;
    *(v0 + 64) = v8;
    *(v0 + 32) = v6;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1DB4E0770;
    v10 = *(v0 + 88);

    return sub_1DB4E0FDC(v10);
  }

  else
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(*(v0 + 120) + 32);
    v15(v12, *(v0 + 104), v13);
    v15(v14, v12, v13);
    v16 = *(v0 + 128);
    v17 = *(v0 + 104);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1DB4E0770()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DB4E08F4;
  }

  else
  {
    v3 = sub_1DB4E0884;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E0884()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DB4E08F4()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_1DB4E0964@<X0>(uint64_t a1@<X8>)
{
  aBlock[12] = *MEMORY[0x1E69E9840];
  v3 = sub_1DB509CA0();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v47 - v15;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[7];
  v19 = v1[8];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v47[1] = v19;
    v48 = v20;
    v49 = v6;
    v50 = v13;
    v51 = v16;
    v52 = a1;
    v22 = v21;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v54 = [ObjCClassFromObject uninitializedToken];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50EE90;
    *(inited + 32) = sub_1DB50A650();
    *(inited + 40) = v25;
    sub_1DB3ADB68(inited);
    swift_setDeallocating();
    sub_1DB424254(inited + 32);
    v26 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_55;
    v27 = _Block_copy(aBlock);
    v28 = [v22 cachedValuesForKeys:v26 observationToken:&v54 updateHandler:v27];
    _Block_release(v27);

    v29 = sub_1DB50A4B0();
    [v22 removeObserverWithToken_];
    v30 = sub_1DB50A650();
    if (*(v29 + 16))
    {
      v32 = sub_1DB306160(v30, v31);
      v34 = v33;

      if (v34)
      {
        sub_1DB300B14(*(v29 + 56) + 32 * v32, aBlock);

        if (swift_dynamicCast())
        {
          v35 = v50;
          sub_1DB509C60();

          sub_1DB30C4B8(v35, v10, &unk_1ECC42B20, &unk_1DB50F6A0);
          v36 = *(v53 + 48);
          if (v36(v10, 1, v3) == 1)
          {
            swift_unknownObjectRelease();
            v37 = 1;
            v38 = v51;
          }

          else
          {
            v43 = v49;
            (*(v53 + 32))(v49, v10, v3);
            v38 = v51;
            v48(v43);
            swift_unknownObjectRelease();
            (*(v53 + 8))(v43, v3);
            v37 = 0;
          }

          sub_1DB30623C(v35, &unk_1ECC42B20, &unk_1DB50F6A0);
          v44 = *(v53 + 56);
          v44(v38, v37, 1, v3);
          if (v36(v38, 1, v3) != 1)
          {
            v46 = v52;
            (*(v53 + 32))(v52, v38, v3);
            result = (v44)(v46, 0, 1, v3);
            goto LABEL_18;
          }

          sub_1DB30623C(v38, &unk_1ECC42B20, &unk_1DB50F6A0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v42 = v52;
LABEL_17:
        result = (*(v53 + 56))(v42, 1, 1, v3);
LABEL_18:
        v45 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    else
    {
    }

    v42 = v52;
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v39 = *(v53 + 56);
  v40 = *MEMORY[0x1E69E9840];

  return v39(a1, 1, 1, v3);
}

uint64_t sub_1DB4E0FDC(uint64_t a1)
{
  *(v2 + 200) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 208) = v3;
  v4 = *(v3 - 8);
  *(v2 + 216) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 224) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0) - 8) + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v7 = *(v1 + 56);
  *(v2 + 264) = *v1;
  *(v2 + 280) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1DB4E1110, 0, 0);
}

uint64_t sub_1DB4E1110()
{
  v1 = [*(v0 + 264) URLForKey_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45828, &unk_1DB522590);
  inited = swift_initStackObject();
  inited[2] = v1;
  inited[3] = sub_1DB3C8D2C;
  inited[4] = 0;
  *(v0 + 296) = sub_1DB4DC988();

  return MEMORY[0x1EEE6DFA0](sub_1DB4E11D0, 0, 0);
}

uint64_t sub_1DB4E11D0()
{
  v1 = v0 + 2;
  v2 = v0[37];
  v3 = v0[30];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_1DB4E129C;
  v0[10] = swift_continuation_init();
  v4 = (v0 + 10);
  *(v4 + 72) = 1;
  sub_1DB30A498(v4);
  sub_1DB30623C(v4, &unk_1ECC42B30, &qword_1DB50F1E0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4E129C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  if (v3)
  {
    v4 = *(*v0 + 48);
    swift_willThrow();

    v5 = sub_1DB4E168C;
  }

  else
  {
    v6 = v1[37];
    v8 = v1[30];
    v7 = v1[31];

    sub_1DB30C06C(v8, v7, &unk_1ECC42B20, &unk_1DB50F6A0);
    v5 = sub_1DB4E13E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E13E8()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1DB30C4B8(v0[31], v1, &unk_1ECC42B20, &unk_1DB50F6A0);
  v4 = *(v3 + 48);
  v5 = 1;
  if (v4(v1, 1, v2) != 1)
  {
    v7 = v0[35];
    v6 = v0[36];
    v8 = v0[32];
    v9 = v0[28];
    (*(v0[27] + 32))(v9, v0[29], v0[26]);
    v7(v9);
    (*(v0[27] + 8))(v0[28], v0[26]);
    v5 = 0;
  }

  v10 = v0[32];
  v11 = v0[26];
  v12 = v0[27];
  sub_1DB30623C(v0[31], &unk_1ECC42B20, &unk_1DB50F6A0);
  (*(v12 + 56))(v10, v5, 1, v11);
  if (v4(v10, 1, v11) == 1)
  {
    v13 = v0[31];
    v15 = v0[29];
    v14 = v0[30];
    v16 = v0[28];
    sub_1DB30623C(v0[32], &unk_1ECC42B20, &unk_1DB50F6A0);
    sub_1DB4E60C4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v18 = v0[31];
    v20 = v0[29];
    v19 = v0[30];
    v21 = v0[28];
    (*(v0[27] + 32))(v0[25], v0[32], v0[26]);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DB4E168C()
{
  v1 = v0[37];

  (*(v0[27] + 56))(v0[32], 1, 1, v0[26]);
  v2 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[28];
  sub_1DB30623C(v0[32], &unk_1ECC42B20, &unk_1DB50F6A0);
  sub_1DB4E60C4();
  swift_allocError();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = sub_1DB4E66DC;
  }

  if (a3)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  *a5 = a2;
  *(a5 + 8) = a1;
  *(a5 + 16) = 0;
  result = 0.0;
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = v10;
  *(a5 + 64) = v11;
  return result;
}

double ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:requestConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = *a3;
  if (a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = sub_1DB4E66DC;
  }

  if (a4)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

  *a6 = a2;
  *(a6 + 8) = a1;
  *(a6 + 16) = v12;
  result = 0.0;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  *(a6 + 56) = v13;
  *(a6 + 64) = v14;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = sub_1DB4E66DC;
  }

  *a6 = a2;
  *(a6 + 8) = result;
  *(a6 + 16) = v6;
  *(a6 + 24) = 0u;
  *(a6 + 40) = 0u;
  if (a4)
  {
    v8 = a5;
  }

  else
  {
    v8 = 0;
  }

  *(a6 + 56) = v7;
  *(a6 + 64) = v8;
  return result;
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation.init(_:bag:sourcePolicy:usageID:urlTransformer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a3;
  *a8 = a2;
  *(a8 + 8) = result;
  *(a8 + 16) = v8;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = sub_1DB4E66DC;
  }

  if (a6)
  {
    v10 = a7;
  }

  else
  {
    v10 = 0;
  }

  *(a8 + 40) = 0;
  *(a8 + 48) = 0;
  *(a8 + 56) = v9;
  *(a8 + 64) = v10;
  return result;
}

uint64_t sub_1DB4E1910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildRequest()(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v7 = *(v1 + 16);
  *(v2 + 152) = v7;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  *(v2 + 112) = v6;
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  v10 = swift_task_alloc();
  *(v2 + 136) = v10;
  *v10 = v2;
  v10[1] = sub_1DB4E1AB8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v6);
}

uint64_t sub_1DB4E1AB8()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DB4E1C8C;
  }

  else
  {
    v3 = sub_1DB4E1BCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E1BCC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v4 = *(v0 + 88);
  (*(*(v0 + 104) + 32))(v4, *(v0 + 112), *(v0 + 96));
  v5 = type metadata accessor for URLJetPackAssetRequest();
  *(v4 + *(v5 + 20)) = v3;
  v6 = (v4 + *(v5 + 24));
  *v6 = v2;
  v6[1] = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1DB4E1C8C()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._buildFetcher(_:bag:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = objc_opt_self();
  sub_1DB4B2BAC(v5);
  v8 = [v7 defaultSessionConfiguration];
  v9 = type metadata accessor for URLJetPackAssetFetcher();
  v10 = *(v9 + 24);
  v11 = sub_1DB509CA0();
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v12 + 16) = v13;
  *(v12 + 24) = a1;
  *(v12 + 32) = 1;
  *&a2[*(v9 + 28)] = v12;
  *a2 = v8;
  *(a2 + 1) = v5;
  *(a2 + 2) = v6;
  return swift_unknownObjectRetain();
}

uint64_t ValidatedJetPackAssetLocations.BagKeyLocation._jetPackAssetStream(session:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = *(v2 + 48);
  v17[2] = *(v2 + 32);
  v17[3] = v10;
  v18 = *(v2 + 64);
  v11 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v11;
  v14 = v17;
  v15 = a2;
  v16 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t sub_1DB4E1F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25[-v15 - 8];
  v17 = sub_1DB50ABA0();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 120) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = *(a2 + 48);
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 80) = v20;
  v21 = *(a2 + 64);
  v22 = *(a2 + 16);
  *(v19 + 32) = *a2;
  *(v19 + 48) = v22;
  *(v19 + 96) = v21;
  *(v19 + 104) = a3;
  *(v19 + 112) = a4;
  (*(v9 + 32))(v19 + v18, v12, v8);
  sub_1DB4E55E0(a2, v25);
  swift_unknownObjectRetain();

  sub_1DB388F14(0, 0, v16, &unk_1DB522CD8, v19);
}

uint64_t sub_1DB4E21B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 408) = a6;
  *(v7 + 416) = a7;
  *(v7 + 392) = a4;
  *(v7 + 400) = a5;
  v9 = sub_1DB50AB20();
  *(v7 + 424) = v9;
  v10 = *(v9 - 8);
  *(v7 + 432) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  *(v7 + 456) = v12;
  v13 = *(v12 - 8);
  *(v7 + 464) = v13;
  *(v7 + 472) = *(v13 + 64);
  *(v7 + 480) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46EB0, &qword_1DB50F750) - 8) + 64) + 15;
  *(v7 + 488) = swift_task_alloc();
  v15 = type metadata accessor for URLJetPackAssetFetcher();
  *(v7 + 496) = v15;
  v16 = *(v15 - 8);
  *(v7 + 504) = v16;
  *(v7 + 512) = *(v16 + 64);
  *(v7 + 520) = swift_task_alloc();
  *(v7 + 528) = swift_task_alloc();
  v17 = sub_1DB509CA0();
  *(v7 + 536) = v17;
  v18 = *(v17 - 8);
  *(v7 + 544) = v18;
  v19 = *(v18 + 64) + 15;
  v20 = swift_task_alloc();
  *(v7 + 552) = v20;
  v21 = type metadata accessor for URLJetPackAssetRequest();
  *(v7 + 560) = v21;
  v22 = *(v21 - 8);
  *(v7 + 568) = v22;
  *(v7 + 576) = *(v22 + 64);
  *(v7 + 584) = swift_task_alloc();
  *(v7 + 592) = swift_task_alloc();
  v23 = *(a4 + 48);
  *(v7 + 48) = *(a4 + 32);
  *(v7 + 64) = v23;
  *(v7 + 80) = *(a4 + 64);
  v24 = *(a4 + 16);
  *(v7 + 16) = *a4;
  *(v7 + 32) = v24;
  v25 = swift_task_alloc();
  *(v7 + 600) = v25;
  *v25 = v7;
  v25[1] = sub_1DB4E24C8;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v20);
}

uint64_t sub_1DB4E24C8()
{
  v2 = *(*v1 + 600);
  v5 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v3 = sub_1DB4E34C0;
  }

  else
  {
    v3 = sub_1DB4E25DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E25DC()
{
  v82 = *(v0 + 608);
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 496);
  v8 = *(v0 + 392);
  v7 = *(v0 + 400);
  (*(v3 + 32))(v1, *(v0 + 552), v4);
  v9 = *(v8 + 16);
  *(v0 + 232) = *(v8 + 24);
  *(v1 + *(v2 + 20)) = v9;
  *(v1 + *(v2 + 24)) = *(v0 + 232);
  sub_1DB30C4B8(v0 + 232, v0 + 248, &unk_1ECC46C00, &qword_1DB516350);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = objc_opt_self();
  sub_1DB4B2BAC(v10);
  v13 = [v12 defaultSessionConfiguration];
  (*(v3 + 56))(&v5[*(v6 + 24)], 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = v7;
  *(v14 + 32) = 1;
  *&v5[*(v6 + 28)] = v14;
  *v5 = v13;
  *(v5 + 1) = v10;
  *(v5 + 2) = v11;
  swift_unknownObjectRetain();
  v16 = sub_1DB4E5980();
  if (v82)
  {
    v17 = *(v0 + 592);
    sub_1DB4E604C(*(v0 + 528), type metadata accessor for URLJetPackAssetFetcher);
    sub_1DB4E604C(v17, type metadata accessor for URLJetPackAssetRequest);
    v18 = *(v0 + 456);
    v19 = *(v0 + 416);
    *(v0 + 328) = v82;
    sub_1DB50AD20();
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 552);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v26 = *(v0 + 480);
    v25 = *(v0 + 488);
    v28 = *(v0 + 440);
    v27 = *(v0 + 448);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 592);
    v32 = *(v0 + 584);
    v78 = *(v0 + 576);
    v68 = *(v0 + 568);
    v33 = *(v0 + 528);
    v34 = *(v0 + 520);
    v75 = v34;
    v77 = *(v0 + 512);
    v66 = *(v0 + 504);
    v35 = *(v0 + 488);
    v79 = *(v0 + 472);
    v81 = *(v0 + 480);
    v83 = *(v0 + 464);
    v80 = *(v0 + 456);
    v36 = *(v0 + 416);
    v69 = v36;
    v76 = *(v0 + 408);
    v37 = *(v0 + 392);
    v71 = v31;
    v74 = v16;
    *(v0 + 264) = sub_1DB509B80();
    *(v0 + 272) = v38;
    *(v0 + 280) = 0x776E647074656A2FLL;
    *(v0 + 288) = 0xE90000000000002FLL;
    sub_1DB301E30();
    v65 = sub_1DB50B1E0();

    v73 = sub_1DB50ABA0();
    v72 = *(*(v73 - 8) + 56);
    v72(v35, 1, 1, v73);
    sub_1DB4E6134(v31, v32, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E6134(v33, v34, type metadata accessor for URLJetPackAssetFetcher);
    v70 = *(v83 + 16);
    v70(v81, v36, v80);
    v39 = (*(v68 + 80) + 112) & ~*(v68 + 80);
    v62 = *(v68 + 80);
    v63 = *(v66 + 80);
    v40 = (v78 + v63 + v39) & ~v63;
    v67 = *(v83 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    v42 = *(v37 + 64);
    v44 = *(v37 + 32);
    v43 = *(v37 + 48);
    *(v41 + 48) = *(v37 + 16);
    *(v41 + 64) = v44;
    *(v41 + 80) = v43;
    *(v41 + 96) = v42;
    *(v41 + 32) = *v37;
    *(v41 + 104) = v76;
    sub_1DB4E619C(v32, v41 + v39, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E619C(v34, v41 + v40, type metadata accessor for URLJetPackAssetFetcher);
    v45 = (v41 + v40 + v77);
    v74 &= 1u;
    *v45 = v74;
    v65 &= 1u;
    v45[1] = v65;
    v64 = *(v83 + 32);
    v64(v41 + ((v40 + v77 + v67 + 2) & ~v67), v81, v80);

    sub_1DB4E55E0(v37, v0 + 88);
    v61 = sub_1DB4DD85C(0, 0, v35, &unk_1DB522CF0, v41);
    *(v0 + 616) = v61;
    v72(v35, 1, 1, v73);
    v46 = v32;
    sub_1DB4E6134(v71, v32, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4E6134(v33, v34, type metadata accessor for URLJetPackAssetFetcher);
    v70(v81, v69, v80);
    v47 = (v62 + 104) & ~v62;
    v48 = (v78 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v63 + v49 + 8) & ~v63;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    v52 = *(v37 + 16);
    v53 = *(v37 + 32);
    v54 = *(v37 + 48);
    *(v51 + 96) = *(v37 + 64);
    *(v51 + 64) = v53;
    *(v51 + 80) = v54;
    *(v51 + 48) = v52;
    *(v51 + 32) = *v37;
    sub_1DB4E619C(v46, v51 + v47, type metadata accessor for URLJetPackAssetRequest);
    *(v51 + v48) = v61;
    *(v51 + v49) = v76;
    sub_1DB4E619C(v75, v51 + v50, type metadata accessor for URLJetPackAssetFetcher);
    v55 = (v51 + v50 + v77);
    *v55 = v74;
    v55[1] = v65;
    v64(v51 + ((v50 + v77 + v67 + 2) & ~v67), v81, v80);

    sub_1DB4E55E0(v37, v0 + 160);

    *(v0 + 624) = sub_1DB4DD85C(0, 0, v35, &unk_1DB522D00, v51);
    v56 = *(MEMORY[0x1E69E86B0] + 4);
    v57 = swift_task_alloc();
    *(v0 + 632) = v57;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
    *(v0 + 640) = v58;
    *v57 = v0;
    v57[1] = sub_1DB4E2D8C;
    v59 = MEMORY[0x1E69E7288];
    v60 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 296, v61, v60, v58, v59);
  }
}

uint64_t sub_1DB4E2D8C()
{
  v1 = *v0;
  v2 = *(*v0 + 632);
  v3 = *v0;

  *(v1 + 648) = *(v1 + 296);
  *(v1 + 305) = *(v1 + 304);
  v4 = *(MEMORY[0x1E69E86B0] + 4);
  v5 = swift_task_alloc();
  *(v1 + 656) = v5;
  *v5 = v3;
  v5[1] = sub_1DB4E2F20;
  v6 = *(v1 + 640);
  v7 = *(v1 + 624);
  v8 = MEMORY[0x1E69E7288];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA20](v1 + 312, v7, v9, v6, v8);
}

uint64_t sub_1DB4E2F20()
{
  v1 = *(*v0 + 656);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DB4E301C, 0, 0);
}

uint64_t sub_1DB4E301C()
{
  v1 = *(v0 + 312);
  if (*(v0 + 305) != 1)
  {
    v18 = *(v0 + 624);
    v19 = *(v0 + 616);
    v20 = *(v0 + 592);
    v21 = *(v0 + 528);
    v22 = *(v0 + 456);
    v23 = *(v0 + 416);
    sub_1DB4E5FEC(*(v0 + 312), *(v0 + 320));
    *(v0 + 336) = 0;
    sub_1DB50AD20();

    sub_1DB4E604C(v21, type metadata accessor for URLJetPackAssetFetcher);
    v24 = v20;
LABEL_6:
    sub_1DB4E604C(v24, type metadata accessor for URLJetPackAssetRequest);
    goto LABEL_7;
  }

  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 424);
  if (*(v0 + 320))
  {
    v5 = *(v0 + 448);
    *(v0 + 368) = v2;
    v6 = v2;
    v7 = swift_dynamicCast();
    v8 = *(v0 + 648);
    v9 = *(v0 + 624);
    v10 = *(v0 + 616);
    v11 = *(v0 + 528);
    v55 = v11;
    v56 = *(v0 + 592);
    v12 = *(v0 + 456);
    if (v7)
    {
      v13 = *(v0 + 448);
      v14 = *(v0 + 424);
      v15 = *(v0 + 432);
      v16 = *(v0 + 416);
      *(v0 + 384) = v1;
      v17 = v1;
      sub_1DB50AD20();

      sub_1DB4E5FEC(v8, 1);
      sub_1DB4E5FEC(v1, 1);

      sub_1DB4E604C(v55, type metadata accessor for URLJetPackAssetFetcher);
      sub_1DB4E604C(v56, type metadata accessor for URLJetPackAssetRequest);
      (*(v15 + 8))(v13, v14);

      goto LABEL_7;
    }

    v48 = *(v0 + 416);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1DB50F8D0;
    *(v49 + 32) = v2;
    *(v49 + 40) = v1;
    sub_1DB32E3B0();
    v50 = swift_allocError();
    v52 = v51;
    sub_1DB4E5FF8(v8, 1);
    sub_1DB4E5FF8(v1, 1);
    *v52 = v49;
    *(v0 + 376) = v50;
    sub_1DB50AD20();

    sub_1DB4E5FEC(v8, 1);
    sub_1DB4E5FEC(v1, 1);

    sub_1DB4E604C(v55, type metadata accessor for URLJetPackAssetFetcher);
    v24 = v56;
    goto LABEL_6;
  }

  v36 = *(v0 + 440);
  *(v0 + 344) = v2;
  v37 = v2;
  v38 = swift_dynamicCast();
  v39 = *(v0 + 648);
  v40 = *(v0 + 624);
  v41 = *(v0 + 616);
  v42 = *(v0 + 592);
  v43 = *(v0 + 528);
  v44 = *(v0 + 456);
  if (!v38)
  {
    v53 = *(v0 + 416);

    *(v0 + 352) = v39;
    v54 = v2;
    sub_1DB50AD20();

    sub_1DB4E5FEC(v39, 1);

    sub_1DB4E604C(v43, type metadata accessor for URLJetPackAssetFetcher);
    v24 = v42;
    goto LABEL_6;
  }

  v45 = *(v0 + 432);
  v57 = *(v0 + 440);
  v46 = *(v0 + 416);
  v47 = *(v0 + 424);
  *(v0 + 360) = 0;
  sub_1DB50AD20();

  sub_1DB4E5FEC(v39, 1);

  sub_1DB4E604C(v43, type metadata accessor for URLJetPackAssetFetcher);
  sub_1DB4E604C(v42, type metadata accessor for URLJetPackAssetRequest);
  (*(v45 + 8))(v57, v47);

LABEL_7:
  v25 = *(v0 + 592);
  v26 = *(v0 + 584);
  v27 = *(v0 + 552);
  v28 = *(v0 + 528);
  v29 = *(v0 + 520);
  v31 = *(v0 + 480);
  v30 = *(v0 + 488);
  v33 = *(v0 + 440);
  v32 = *(v0 + 448);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1DB4E34C0()
{
  v1 = v0[57];
  v2 = v0[52];
  v0[41] = v0[76];
  sub_1DB50AD20();
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[69];
  v6 = v0[66];
  v7 = v0[65];
  v9 = v0[60];
  v8 = v0[61];
  v11 = v0[55];
  v10 = v0[56];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1DB4E35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = v27;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  v8[3] = v12;
  v13 = *(v12 - 8);
  v8[4] = v13;
  v14 = *(v13 + 64) + 15;
  v8[5] = swift_task_alloc();
  v15 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  v8[6] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[7] = v16;
  v8[8] = swift_task_alloc();
  if (a8)
  {
    v17 = swift_task_alloc();
    v8[9] = v17;
    *v17 = v8;
    v17[1] = sub_1DB4E381C;
    v18 = v16;
    v19 = a6;
    v20 = a7;
    v21 = 3;
LABEL_5:

    return sub_1DB443C40(v18, v19, v20, v21);
  }

  if (v26)
  {
    v22 = swift_task_alloc();
    v8[12] = v22;
    *v22 = v8;
    v22[1] = sub_1DB4E3B5C;
    v18 = v16;
    v19 = a6;
    v20 = a7;
    v21 = 2;
    goto LABEL_5;
  }

  v24 = swift_task_alloc();
  v8[13] = v24;
  *v24 = v8;
  v24[1] = sub_1DB4E3C80;

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v16, a6, a7);
}

uint64_t sub_1DB4E381C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v5 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v5 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E3940()
{
  v1 = v0[10];
  sub_1DB4E619C(v0[7], v0[8], type metadata accessor for JetPackAsset);
  sub_1DB50AC80();
  if (v1)
  {
    sub_1DB4E604C(v0[8], type metadata accessor for JetPackAsset);
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
  }

  else
  {
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];
    sub_1DB4E6134(v7, v0[6], type metadata accessor for JetPackAsset);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
    sub_1DB50AD10();
    (*(v10 + 8))(v8, v9);
    sub_1DB4E604C(v7, type metadata accessor for JetPackAsset);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB4E3AD4()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB4E3B5C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v5 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v5 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E3C80()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 88) = v0;
    v5 = sub_1DB4E3AD4;
  }

  else
  {
    *(v2 + 80) = 0;
    v5 = sub_1DB4E3940;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v25;
  *(v8 + 192) = a8;
  *(v8 + 200) = v26;
  *(v8 + 176) = a6;
  *(v8 + 184) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47100, &qword_1DB522D08);
  *(v8 + 208) = v10;
  v11 = *(v10 - 8);
  *(v8 + 216) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 224) = swift_task_alloc();
  v13 = *(*(type metadata accessor for JetPackAsset(0) - 8) + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v14 = type metadata accessor for URLJetPackAssetRequest();
  *(v8 + 256) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v16 = sub_1DB509CA0();
  *(v8 + 272) = v16;
  v17 = *(v16 - 8);
  *(v8 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  *(v8 + 288) = v19;
  v20 = *(a4 + 48);
  *(v8 + 48) = *(a4 + 32);
  *(v8 + 64) = v20;
  *(v8 + 80) = *(a4 + 64);
  v21 = *(a4 + 16);
  *(v8 + 16) = *a4;
  *(v8 + 32) = v21;
  v22 = swift_task_alloc();
  *(v8 + 296) = v22;
  *v22 = v8;
  v22[1] = sub_1DB4E3FB8;

  return sub_1DB4E0FDC(v19);
}

uint64_t sub_1DB4E3FB8()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1DB4E4AE8;
  }

  else
  {
    v3 = sub_1DB4E40CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E40CC()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 168);
  sub_1DB4E6004(&unk_1ECC47108, MEMORY[0x1E6968FB0]);
  if (sub_1DB50A610())
  {
    v4 = *(v0 + 264);
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  sub_1DB50AC60();
  if (qword_1EE30C928 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 264);
  v34 = *(v0 + 272);
  v35 = *(v0 + 288);
  v14 = *(v0 + 256);
  v36 = *(v0 + 344);
  v33 = *(v0 + 160);
  sub_1DB50BEB0();
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DB50EE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB50EE90;
  *(v0 + 152) = MEMORY[0x1E69E6158];
  *(v0 + 128) = 0xD000000000000055;
  *(v0 + 136) = 0x80000001DB531080;
  *(v18 + 48) = 0u;
  *(v18 + 32) = 0u;
  sub_1DB301D4C(v0 + 128, v18 + 32);
  *(v18 + 64) = 0;
  *(v17 + 32) = v18;
  Logger.info(_:)(v17, v15, v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  (*(v12 + 16))(v13, v35, v34);
  *(v13 + *(v14 + 20)) = *(v33 + 16);
  v19 = (v13 + *(v14 + 24));
  *v19 = 0;
  v19[1] = 0;
  if (v36 == 1)
  {
    v20 = swift_task_alloc();
    *(v0 + 312) = v20;
    *v20 = v0;
    v20[1] = sub_1DB4E4528;
    v21 = *(v0 + 264);
    v22 = *(v0 + 240);
    v24 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = 3;
LABEL_11:

    return sub_1DB443C40(v22, v21, v23, v25);
  }

  if (*(v0 + 345) == 1)
  {
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_1DB4E48A8;
    v21 = *(v0 + 264);
    v22 = *(v0 + 240);
    v27 = *(v0 + 184);
    v23 = *(v0 + 192);
    v25 = 2;
    goto LABEL_11;
  }

  v28 = swift_task_alloc();
  *(v0 + 336) = v28;
  *v28 = v0;
  v28[1] = sub_1DB4E49C8;
  v29 = *(v0 + 264);
  v30 = *(v0 + 240);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);

  return JetPackAssetSession.jetPack(urlRequest:fetcher:)(v30, v29, v31);
}

uint64_t sub_1DB4E4528()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v5 = sub_1DB4E47C8;
  }

  else
  {
    v5 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E4648()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[25];
  sub_1DB4E619C(v0[30], v2, type metadata accessor for JetPackAsset);
  sub_1DB4E6134(v2, v4, type metadata accessor for JetPackAsset);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0);
  sub_1DB50AD10();
  (*(v6 + 8))(v3, v5);
  sub_1DB4E604C(v2, type metadata accessor for JetPackAsset);
  sub_1DB4E604C(v1, type metadata accessor for URLJetPackAssetRequest);
  v8 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v12 = v0[28];
  v11 = v0[29];
  (*(v0[35] + 8))(v0[36], v0[34]);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1DB4E47C8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  sub_1DB4E604C(v0[33], type metadata accessor for URLJetPackAssetRequest);
  (*(v2 + 8))(v1, v3);
  v4 = v0[40];
  v5 = v0[36];
  v6 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB4E48A8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v5 = sub_1DB4E47C8;
  }

  else
  {
    v5 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E49C8()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 320) = v0;
    v5 = sub_1DB4E47C8;
  }

  else
  {
    v5 = sub_1DB4E4648;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DB4E4AE8()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB4E4B90(uint64_t a1)
{
  *(v2 + 88) = a1;
  v3 = sub_1DB509CA0();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  *(v2 + 16) = *v1;
  v7 = *(v1 + 16);
  *(v2 + 152) = v7;
  *(v2 + 33) = *(v1 + 17);
  *(v2 + 36) = *(v1 + 20);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  *(v2 + 112) = v6;
  *(v2 + 120) = v8;
  *(v2 + 128) = v9;
  *(v2 + 72) = *(v1 + 56);
  *(v2 + 56) = *(v1 + 40);
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  v10 = swift_task_alloc();
  *(v2 + 136) = v10;
  *v10 = v2;
  v10[1] = sub_1DB4E4CCC;

  return ValidatedJetPackAssetLocations.BagKeyLocation.url()(v6);
}

uint64_t sub_1DB4E4CCC()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1DB4E669C;
  }

  else
  {
    v3 = sub_1DB4E66A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E4DE0(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  v9 = objc_opt_self();
  sub_1DB4B2BAC(v7);
  v10 = [v9 defaultSessionConfiguration];
  v11 = type metadata accessor for URLJetPackAssetFetcher();
  v12 = *(v11 + 24);
  v13 = sub_1DB509CA0();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457C0, &unk_1DB51BA30);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v14 + 16) = v15;
  *(v14 + 24) = a3;
  *(v14 + 32) = 1;
  *&a1[*(v11 + 28)] = v14;
  *a1 = v10;
  *(a1 + 1) = v7;
  *(a1 + 2) = v8;
  v17 = *(v4 + 8);
  swift_unknownObjectRetain();

  return v17();
}

uint64_t sub_1DB4E4F64(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470B0, &qword_1DB522B40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = *(v2 + 48);
  v17[2] = *(v2 + 32);
  v17[3] = v10;
  v18 = *(v2 + 64);
  v11 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v11;
  v14 = v17;
  v15 = a2;
  v16 = a1;
  type metadata accessor for JetPackAsset(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8790], v5);
  return sub_1DB50AD70();
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildRequest()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DB30C7A0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of ValidatedJetPackAssetLocation._buildFetcher(_:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1DB306AF4;

  return v15(a1, a2, a3, a4, a5);
}

void sub_1DB4E5368()
{
  sub_1DB509CA0();
  if (v0 <= 0x3F)
  {
    sub_1DB377828();
    if (v1 <= 0x3F)
    {
      sub_1DB423868();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_So25NSURLSessionConfigurationCSo0A0CIeghgo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB4E5424(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DB4E546C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DB4E54CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1DB30C7A0;

  return sub_1DB4E21B4(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1DB4E5618(void *a1, uint64_t a2, void (*a3)(void, __n128))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v12 - v8;
  a3(*a1, v7);
  v10 = sub_1DB509CA0();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1DB3FBDE4(v9);
  return sub_1DB30623C(v9, &unk_1ECC42B20, &unk_1DB50F6A0);
}

uint64_t sub_1DB4E5720()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v11 = [ObjCClassFromObject uninitializedToken];
    sub_1DB3ADB68(&unk_1F56F0838);
    sub_1DB424254(&unk_1F56F0858);
    v3 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_66;
    v4 = _Block_copy(aBlock);
    v5 = [v1 cachedValuesForKeys:v3 observationToken:&v11 updateHandler:v4];
    _Block_release(v4);

    v6 = sub_1DB50A4B0();
    [v1 removeObserverWithToken_];
    if (*(v6 + 16) && (v7 = sub_1DB306160(0xD000000000000015, 0x80000001DB529370), (v8 & 1) != 0))
    {
      sub_1DB300B14(*(v6 + 56) + 32 * v7, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v10 & 1) != 0)
      {
        result = 1;
        goto LABEL_9;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    result = 0;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB4E5980()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v1 = result;
    ObjCClassFromObject = swift_getObjCClassFromObject();
    swift_unknownObjectRetain();
    v11 = [ObjCClassFromObject uninitializedToken];
    sub_1DB3ADB68(&unk_1F56F0868);
    sub_1DB424254(&unk_1F56F0888);
    v3 = sub_1DB50ADD0();

    aBlock[4] = nullsub_8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DB4DEB60;
    aBlock[3] = &block_descriptor_21;
    v4 = _Block_copy(aBlock);
    v5 = [v1 cachedValuesForKeys:v3 observationToken:&v11 updateHandler:v4];
    _Block_release(v4);

    v6 = sub_1DB50A4B0();
    [v1 removeObserverWithToken_];
    if (*(v6 + 16) && (v7 = sub_1DB306160(0xD000000000000015, 0x80000001DB529370), (v8 & 1) != 0))
    {
      sub_1DB300B14(*(v6 + 56) + 32 * v7, aBlock);

      swift_unknownObjectRelease();
      if (swift_dynamicCast() && (v10 & 1) != 0)
      {
        result = 1;
        goto LABEL_9;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    result = 0;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DB4E5BE0(uint64_t a1)
{
  v3 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v10 = (v8 + *(v9 + 80) + 2) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[13];
  v14 = v1 + v8;
  v15 = *(v1 + v8);
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_1DB30C7A0;

  return sub_1DB4E35A8(a1, v11, v12, (v1 + 4), v13, v1 + v4, v1 + v7, v15);
}

uint64_t sub_1DB4E5DD4(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v20 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v5 = (*(v4 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for URLJetPackAssetFetcher() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v11 = (v9 + *(v10 + 80) + 2) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v5);
  v15 = *(v1 + v6);
  v16 = v1 + v9;
  LOBYTE(v9) = *(v1 + v9);
  v17 = *(v16 + 1);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_1DB30C7A0;

  return sub_1DB4E3DA4(a1, v12, v13, v1 + 32, v1 + v20, v14, v15, v1 + v8);
}

void sub_1DB4E5FEC(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_1DB4E5FF8(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DB4E6004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB4E604C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB4E60C4()
{
  result = qword_1ECC47118;
  if (!qword_1ECC47118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47118);
  }

  return result;
}

uint64_t sub_1DB4E6134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4E619C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB4E6204(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DB30C7A0;

  return sub_1DB4DF510(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t sub_1DB4E639C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC470E8, &unk_1DB522CC0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = *(v1 + v6);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1DB306AF4;

  return sub_1DB4DDFBC(a1, v10, v11, v1 + v5, v12, v13, v1 + v9, v4);
}

uint64_t objectdestroy_45Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DB4E657C(void *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v2(&v6, *a1);
  sub_1DB3FBB2C(v6);
}

unint64_t sub_1DB4E6618()
{
  result = qword_1ECC47170;
  if (!qword_1ECC47170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47170);
  }

  return result;
}

uint64_t Result.init(trying:)@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Result();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v11 - v8;
  a1(v7);
  swift_storeEnumTagMultiPayload();
  return (*(v5 + 32))(a2, v9, v4);
}

uint64_t Result.init(trying:)(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = type metadata accessor for Result();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v2[6] = v9;
  *v9 = v2;
  v9[1] = sub_1DB4E6978;

  return v11(v7);
}

uint64_t sub_1DB4E6978()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1DB4E6B28;
  }

  else
  {
    v3 = sub_1DB4E6A8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DB4E6A8C()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB4E6B28()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t Result.unwrap()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v7);
  }

  v9 = *v7;
  return swift_willThrow();
}

uint64_t Result.init(from:orElse:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1DB50B120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v16);
  v19 = (*(v13 + 48))(v12, 1, a3);
  v20 = *(v9 + 8);
  if (v19 != 1)
  {
    v20(a1, v8);

    v21 = *(v13 + 32);
    v21(v18, v12, a3);
    v21(a4, v18, a3);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  v20(v12, v8);
  if (a2)
  {
    v20(a1, v8);
    *a4 = a2;
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1DB50B580();
  __break(1u);
  return result;
}

uint64_t Result.map<A>(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v16 + 16))(v15, v17, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *v15;
  }

  else
  {
    (*(v6 + 32))(v9, v15, v5);
    a1(v9);
    (*(v6 + 8))(v9, v5);
  }

  type metadata accessor for Result();
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1DB4E7158(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1DB35C910();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4E71D0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DB4E72E8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DB4E74B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4E7A14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DB4E74FC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466C8, &unk_1DB51FBF0);
  if (v1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB50F8D0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x80000001DB52FC20;
    *(inited + 48) = v1;
    *(inited + 56) = 0x6E6F73616572;
    *(inited + 64) = 0xE600000000000000;
    *(inited + 72) = sub_1DB50AE10();
    v3 = sub_1DB314114(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC466D0, &qword_1DB522F30);
    swift_arrayDestroy();
  }

  else
  {
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_1DB50EE90;
    *(v4 + 32) = 0x6E6F73616572;
    *(v4 + 40) = 0xE600000000000000;
    *(v4 + 48) = sub_1DB50AE10();
    v3 = sub_1DB314114(v4);
    swift_setDeallocating();
    sub_1DB49C170(v4 + 32);
  }

  return v3;
}

uint64_t sub_1DB4E76A4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1 + 1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB4E76EC()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1 + 1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4E7734()
{
  result = qword_1ECC47200;
  if (!qword_1ECC47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47200);
  }

  return result;
}

unint64_t sub_1DB4E7788(uint64_t a1)
{
  result = sub_1DB4E77B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DB4E77B0()
{
  result = qword_1ECC47208;
  if (!qword_1ECC47208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB4E7958()
{
  result = qword_1ECC47210;
  if (!qword_1ECC47210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47218, qword_1DB522F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47210);
  }

  return result;
}

unint64_t sub_1DB4E79C0()
{
  result = qword_1ECC47220[0];
  if (!qword_1ECC47220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC47220);
  }

  return result;
}

uint64_t sub_1DB4E7A14(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

void *ActionDispatcher.init()@<X0>(uint64_t *a1@<X8>)
{
  a1[2] = 0;
  v2 = type metadata accessor for ActionImplementationBox();
  swift_getTupleTypeMetadata2();
  v3 = sub_1DB50A9D0();
  v4 = sub_1DB30BC94();
  v5 = sub_1DB4EA020(v3, &type metadata for OpaqueMetatype, v2, v4);

  *a1 = v5;
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  a1[1] = result;
  return result;
}

uint64_t ActionDispatcher.add(contentsOf:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = sub_1DB50A5A0())
  {
    v11 = i;
LABEL_9:
    v12 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
    v7 &= v7 - 1;
    v14 = *(*(v3 + 48) + v12);
    v15 = *(*(v3 + 56) + v12);
    v13 = *(a2 + 16);
    type metadata accessor for ActionImplementationBox();
    sub_1DB30BC94();
    sub_1DB50A540();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t ActionDispatcher.adding<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = v4[1];
  v10 = v4[2];
  *a4 = *v4;
  a4[1] = v9;
  a4[2] = v10;
  v11 = v10;

  return ActionDispatcher.add<A>(_:)(a1, a2, a3);
}

__darwin_time_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(void *a1, __darwin_time_t *a2, uint64_t a3, uint64_t a4)
{
  v80 = sub_1DB50A450();
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a2;
  v14 = v4[1];
  v15 = v4[2];
  v81 = *v4;
  v82 = v15;
  static MonotonicTime.now.getter(&v83);
  v16 = v83;
  if (qword_1ECC42010 != -1)
  {
    swift_once();
  }

  v17 = off_1ECC43460;
  os_unfair_lock_lock(off_1ECC43460 + 8);
  *(v17 + 1) = v16;
  os_unfair_lock_unlock(v17 + 8);
  if (BaseObjectGraph._hasDependency<A>(_:)(a4, a4))
  {
    goto LABEL_19;
  }

  v76 = v13;
  if (qword_1ECC42268 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v79 = qword_1ECC46720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DB5128F0;
    v90 = sub_1DB301BC0(0, 45, 0, MEMORY[0x1E69E7CC0]);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    v89 = MEMORY[0x1E69E6158];
    DynamicType = 0xD000000000000020;
    v88 = 0x80000001DB531190;
    sub_1DB301CDC(&DynamicType, v86);
    v83 = 0u;
    v84 = 0u;
    sub_1DB301D4C(v86, &v83);
    v85 = 0;
    v20 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1DB301BC0(0, *(v20 + 2) + 1, 1, v20);
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[40 * v23];
    v25 = v83;
    v26 = v84;
    v24[64] = v85;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v90 = v20;
    sub_1DB30623C(&DynamicType, &qword_1ECC426B0, &qword_1DB50EEB0);
    v27._countAndFlagsBits = 0xD00000000000002CLL;
    v27._object = 0x80000001DB5311C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v18 + 32) = v90;
    v90 = sub_1DB301BC0(0, 20, 0, MEMORY[0x1E69E7CC0]);
    v28._countAndFlagsBits = 1612738153;
    v28._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v29 = (*(*a3 + 128))();
    v89 = MEMORY[0x1E69E6158];
    DynamicType = v29;
    v88 = v30;
    sub_1DB301CDC(&DynamicType, v86);
    v83 = 0u;
    v84 = 0u;
    sub_1DB301D4C(v86, &v83);
    v85 = 2;
    v31 = v90;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1DB301BC0(0, *(v31 + 2) + 1, 1, v31);
      v90 = v31;
    }

    v75 = v14;
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1DB301BC0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[40 * v33];
    v35 = v83;
    v36 = v84;
    v34[64] = v85;
    *(v34 + 2) = v35;
    *(v34 + 3) = v36;
    v90 = v31;
    sub_1DB30623C(&DynamicType, &qword_1ECC426B0, &qword_1DB50EEB0);
    v37._countAndFlagsBits = 0x7463656A626F2060;
    v37._object = 0xEF2E687061726720;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    *(v18 + 40) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
    v38 = swift_allocObject();
    v78 = xmmword_1DB50EE90;
    *(v38 + 16) = xmmword_1DB50EE90;
    v39 = MEMORY[0x1E69E6158];
    *(&v84 + 1) = MEMORY[0x1E69E6158];
    *&v83 = 0xD00000000000003ALL;
    *(&v83 + 1) = 0x80000001DB5311F0;
    *(v38 + 48) = 0u;
    *(v38 + 32) = 0u;
    sub_1DB301D4C(&v83, v38 + 32);
    *(v38 + 64) = 0;
    *(v18 + 48) = v38;
    v40 = swift_allocObject();
    *(v40 + 16) = v78;
    *(&v84 + 1) = v39;
    *&v83 = 0xD00000000000001ALL;
    *(&v83 + 1) = 0x80000001DB531230;
    *(v40 + 48) = 0u;
    *(v40 + 32) = 0u;
    sub_1DB301D4C(&v83, v40 + 32);
    *(v40 + 64) = 0;
    *(v18 + 56) = v40;
    v41 = sub_1DB50AF40();
    if (os_log_type_enabled(v79, v41))
    {
      break;
    }

    a1 = v77;
    v13 = v76;
    v14 = v75;
    v49 = v82;
    if (!v82)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v12 = v49;
    v50 = v80;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v80);
    v51 = v49;
    v52 = sub_1DB50A460();
    v53 = *(v9 + 8);
    v9 += 8;
    v53(v12, v50);
    if (v52)
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v42 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v42[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v42 + 5);
  v14 = v75;
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  v44 = swift_allocObject();
  *(v44 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
  *&v83 = v18;
  *(&v83 + 1) = sub_1DB31485C;
  *&v84 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
  sub_1DB314864();
  v45 = sub_1DB50A5E0();
  v47 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
  v48 = swift_allocObject();
  *(v48 + 16) = v78;
  *(v48 + 56) = MEMORY[0x1E69E6158];
  *(v48 + 64) = sub_1DB31494C();
  *(v48 + 32) = v45;
  *(v48 + 40) = v47;
  sub_1DB50A1E0();

  a1 = v77;
  v13 = v76;
LABEL_19:
  v49 = v82;
  if (v82)
  {
    goto LABEL_20;
  }

LABEL_21:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v54 = *(a4 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  sub_1DB50A590();
  v55 = v83;
  if (v83)
  {
    *&v83 = v13;
    type metadata accessor for ActionDispatcher.MetricsBehavior();
    v56 = sub_1DB4E8CB0(a3);
    v57 = v14[2];
    v58 = v14[3];
    v59 = v14[4];
    v60 = sub_1DB30C9C0(v57, v58, v59);
    if (v57)
    {
      v81 = &v74;
      MEMORY[0x1EEE9AC00](v60);
      *(&v74 - 4) = v55;
      *(&v74 - 3) = a1;
      *(&v74 - 2) = v56;
      v61 = a1;
      v62 = *(*v56 + 104);
      v82 = a3;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v62(&DynamicType, sub_1DB4EA5C4, &v74 - 6, v63);
      v64 = DynamicType;
      sub_1DB30BE90(v61, &v83);
      v65 = swift_allocObject();
      v65[2] = v54;
      v65[3] = v57;
      v65[4] = v58;
      v65[5] = v59;
      sub_1DB2FEA0C(&v83, (v65 + 6));
      v65[11] = v82;
      sub_1DB30C9C0(v57, v58, v59);

      v66 = sub_1DB4E9E94(sub_1DB4EA3A0, v65, v64);

      sub_1DB3798E8(v57, v58, v59);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v60);
      *(&v74 - 4) = v55;
      *(&v74 - 3) = a1;
      *(&v74 - 2) = v56;
      v70 = *(*v56 + 104);

      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v70(&v83, sub_1DB4EA324, &v74 - 6, v71);

      return v83;
    }
  }

  else
  {
    v67 = v14[2];
    v68 = v14[3];
    v69 = v14[4];
    sub_1DB30C9C0(v67, v68, v69);
    if (v67)
    {
      *&v83 = v67;
      *(&v83 + 1) = v68;
      *&v84 = v69;
      DynamicType = v13;
      v66 = ActionDispatcher.perform(_:withMetrics:asPartOf:)(a1, &DynamicType, a3, a4);
      sub_1DB3798E8(v67, v68, v69);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
      v66 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
      v72 = swift_allocObject();
      *(v72 + 16) = 0;
      *(v66 + 16) = v72;
      *(v66 + 24) = 1;
      *(v66 + 32) = 1;
    }
  }

  return v66;
}

uint64_t sub_1DB4E8784(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1DB4EA5B4;
  v8[1] = a4;
  v8[2] = sub_1DB4EA5BC;
  v8[3] = a4;
  sub_1DB30BE90(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1DB308088(v8);

  return sub_1DB30623C(v8, &unk_1ECC44FC0, &unk_1DB50F4E0);
}

uint64_t sub_1DB4E884C(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 & 1;
  a2(&v10);
  v8[0] = sub_1DB4EA5AC;
  v8[1] = a4;
  v8[2] = sub_1DB4EA5C0;
  v8[3] = a4;
  sub_1DB30BE90(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1DB308EE8(v8);

  return sub_1DB30623C(v8, &unk_1ECC44FD0, &qword_1DB50F1D0);
}

uint64_t sub_1DB4E8988(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 104) - 8) + 32))(v5 + *(*v5 + 120), a1);
  return v5;
}

uint64_t sub_1DB4E8A1C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v16[-v10 - 8];
  sub_1DB30BE90(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  swift_dynamicCast();
  v12 = *(*v2 + 120);
  v13 = (*(v5 + 32))(v11, a2, v6, v5);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return v13;
}

uint64_t sub_1DB4E8C04()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DB4E8CB0(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  if (*v1)
  {
    v4 = *(a1 + 16);

    if ((sub_1DB4C1A60(v4) & 1) == 0)
    {
      v6[4] = &type metadata for MetricsFieldsContext;
      v6[0] = &type metadata for MetricsFieldsContext;
      v6[1] = v3;
      v2 = (*(*v2 + 184))(v6);
      sub_1DB30BF1C(v6);
      return v2;
    }
  }

  return v2;
}

uint64_t ActionDispatcher.PerformError.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t ActionDispatcher.next.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1DB30C9C0(v3, v4, v5);
}

double sub_1DB4E8E24@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 2);
  v8 = *a1;
  v9 = v3;
  ActionDispatcher.next.getter(&v6);
  v4 = v7;
  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1DB4E8E78(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v4 = *a1;
  *(&v4 + 1) = v1;
  v5 = v2;
  sub_1DB30C9C0(v4, v1, v2);
  return ActionDispatcher.next.setter(&v4);
}

uint64_t ActionDispatcher.next.setter(__int128 *a1)
{
  v6 = *a1;
  v2 = *(a1 + 2);
  v3 = swift_allocObject();
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  v4 = *(v1 + 8);

  *(v1 + 8) = v3;
  return result;
}

void (*ActionDispatcher.next.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = *(v1 + 8);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  sub_1DB30C9C0(v4, v5, v6);
  return sub_1DB4E8F80;
}

void sub_1DB4E8F80(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    sub_1DB30C9C0(*a1, v2, v4);
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = v2;
    v6[4] = v4;
    v7 = *(v5 + 8);

    *(v5 + 8) = v6;

    sub_1DB3798E8(v3, v2, v4);
  }

  else
  {
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v2;
    v8[4] = v4;
    v9 = *(v5 + 8);

    *(v5 + 8) = v8;
  }
}

uint64_t ActionDispatcher.withNext(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[1];
  v5 = v2[2];
  *a2 = *v2;
  a2[2] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = v5;

  sub_1DB30C9C0(v6, v7, v8);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = v8;

  a2[1] = v10;
  return result;
}

void *ActionDispatcher.targetQueue.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t ActionDispatcher.withTargetQueue(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = a1;
  v5 = a1;
}

BOOL ActionDispatcher._hasImplementation(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(a3 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  sub_1DB50A590();
  if (v7)
  {
  }

  return v7 != 0;
}

uint64_t ActionDispatcher.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ConcreteActionImplementationBox();
  (*(v6 + 16))(v9, a1, a3);
  v11 = sub_1DB4E8988(v9);
  v14[0] = AssociatedTypeWitness;
  v14[1] = v11;
  v12 = *(a2 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  sub_1DB50A540();
  return sub_1DB50A5A0();
}

uint64_t ActionDispatcher.removeImplementation(forType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  sub_1DB50A540();
  sub_1DB50A4C0();
}

uint64_t ActionDispatcher.removingImplementation(forType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = v3[1];
  v8 = v3[2];
  *a3 = *v3;
  a3[1] = v7;
  a3[2] = v8;
  v9 = v8;

  return ActionDispatcher.removeImplementation(forType:)(a1, v10, a2);
}

Swift::Void __swiftcall ActionDispatcher.removeAllImplementations()()
{
  v1 = *(v0 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  sub_1DB50A540();

  sub_1DB50A530();
}

void ActionDispatcher.removingAllImplementations()(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  v5 = v4;

  ActionDispatcher.removeAllImplementations()();
}

uint64_t ActionDispatcher.adding(contentsOf:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[1];
  v8 = v3[2];
  *a3 = *v3;
  a3[1] = v7;
  a3[2] = v8;
  v9 = v8;

  return ActionDispatcher.add(contentsOf:)(a1, a2);
}

uint64_t sub_1DB4E957C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 == 1)
  {
    v12[1] = a2;
    v12[2] = a3;
    v12[3] = a4;
    v12[0] = 0;
    v8 = type metadata accessor for ActionDispatcher();
    return ActionDispatcher.perform(_:withMetrics:asPartOf:)(a5, v12, a6, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v10 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v11 = swift_allocObject();
    result = v10;
    *(v11 + 16) = 0;
    *(v10 + 16) = v11;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
  }

  return result;
}

uint64_t ActionDispatcher.debugDescription.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(a1 + 16);
  type metadata accessor for ActionImplementationBox();
  sub_1DB30BC94();
  v6 = sub_1DB50A500();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285DC0](&v21, v6, WitnessTable);
  sub_1DB50B340();
  swift_getWitnessTable();
  sub_1DB50B650();

  sub_1DB50B510();
  swift_getWitnessTable();
  sub_1DB301E30();
  v8 = sub_1DB50A900();
  v10 = v9;

  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  sub_1DB30C9C0(v11, v12, v13);
  if (v11)
  {
    v22 = v11;
    v23 = v12;
    v24 = v13;
    v14 = ActionDispatcher.debugDescription.getter(a1);
    v16 = v15;
    sub_1DB3798E8(v11, v12, v13);
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1DB50B320();
  v17 = sub_1DB50BEE0();
  v19 = v18;

  v22 = v17;
  v23 = v19;
  MEMORY[0x1E1285C70](0xD000000000000013, 0x80000001DB5312A0);
  MEMORY[0x1E1285C70](v8, v10);

  MEMORY[0x1E1285C70](0x3A7478656E202C5DLL, 0xE900000000000020);
  MEMORY[0x1E1285C70](v14, v16);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v22;
}

uint64_t sub_1DB4E9910@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DB50BEE0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t ActionDispatcher.perform(_:withMetrics:asPartOf:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a4;
  *(v6 + 184) = a5;
  *(v6 + 160) = a1;
  *(v6 + 168) = a2;
  *(v6 + 192) = *a3;
  *(v6 + 200) = *v5;
  *(v6 + 216) = *(v5 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DB4E9980, 0, 0);
}

uint64_t sub_1DB4E9980()
{
  v8 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 200);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  *(v0 + 224) = ActionDispatcher.perform(_:withMetrics:asPartOf:)(v2, &v7, v3, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DB4E9A0C, 0, 0);
}

uint64_t sub_1DB4E9A0C()
{
  v1 = v0 + 2;
  v2 = v0[28];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_1DB4E9AD8;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1DB308EE8(v3);
  sub_1DB30623C(v3, &unk_1ECC44FD0, &qword_1DB50F1D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB4E9AD8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB4E9C34, 0, 0);
  }

  else
  {
    v4 = *(v1 + 224);
    v5 = *(v1 + 160);

    *v5 = *(v1 + 153);
    v6 = *(v2 + 8);

    return v6();
  }
}

uint64_t sub_1DB4E9C34()
{
  v1 = v0[28];

  v2 = v0[1];
  v3 = v0[29];

  return v2();
}

unint64_t sub_1DB4E9CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1DB50A5C0();

  return sub_1DB4E9D0C(a1, v9, a2, a3);
}

unint64_t sub_1DB4E9D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1DB50A610();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1DB4E9E94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v14[3] = &type metadata for SyncTaskScheduler;
  v14[4] = &protocol witness table for SyncTaskScheduler;
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = 0;
  sub_1DB30BE90(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v6;
  sub_1DB2FEA0C(v13, (v9 + 5));
  v11[0] = sub_1DB4EA594;
  v11[1] = v9;
  v11[2] = sub_1DB4EA5A8;
  v11[3] = v6;
  sub_1DB30BE90(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1DB308EE8(v11);

  sub_1DB30623C(v11, &unk_1ECC44FD0, &qword_1DB50F1D0);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v6;
}

uint64_t sub_1DB4EA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DB50AA00())
  {
    sub_1DB50B620();
    v13 = sub_1DB50B610();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DB50AA00();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DB50A9F0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DB50B380();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DB4E9CB0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DB4EA33C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**(v1 + 16) + 88))(*(v1 + 24), *(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_1DB4EA404(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DB4EA498()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EA4EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EA540()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AnyActionTypes.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2 | 0x8000000000000000;
  return result;
}

uint64_t static AnyActionTypes.makeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  return v4(sub_1DB4EB084, v7, v5, v2, v3);
}

double static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1DB30C4B8(a1, v9, &qword_1ECC42E38, &qword_1DB50FB80);
  if (v10)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_1DB300B14(v6, v8);
    sub_1DB315520();
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v9);
      v9[0] = v5;
      static AnyActionTypes.makeInstance(byDeserializing:using:)(a1, v9, a3);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_1DB30623C(v9, &qword_1ECC42E38, &qword_1DB50FB80);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t static AnyActionTypes.makeInstance(byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1DB315EC4(0xD00000000000001FLL, 0x80000001DB52B490, *a2, v13);
  v6 = *(&v13[0] + 1);
  if ((~*(&v13[0] + 1) & 0xF000000000000007) != 0)
  {
    v8 = *&v13[0];
    JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v13);
    v9 = JSONObject.string.getter();
    v11 = v10;
    sub_1DB3151CC(v13);
    if (v11)
    {
      *&v13[0] = v8;
      *(&v13[0] + 1) = v6;
      v14 = v5;
      AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(v9, v11, a1, &v14, a3);

      return sub_1DB3171A0(v8, v6);
    }

    sub_1DB3171A0(v8, v6);
    sub_1DB315178();
    swift_allocError();
    *v7 = xmmword_1DB50F500;
    *(v7 + 16) = 0x20000001F56F25D8uLL;
  }

  else
  {
    sub_1DB315178();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x80000001DB52B490;
    *(v7 + 16) = 0x20000001F56FF8D0uLL;
  }

  *(v7 + 24) = 0;
  return swift_willThrow();
}

uint64_t AnyActionTypes.init(types:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

void AnyActionTypes.makeInstance(ofKind:byDeserializing:using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v76 = a5;
  v12 = sub_1DB50B3E0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v65 - v20;
  v22 = *a4;
  v24 = *v7;
  v23 = v7[1];
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (*(v24 + 16))
    {
      v25 = sub_1DB306160(a1, a2);
      if (v26)
      {
        v27 = *(v24 + 56) + 24 * v25;
        v28 = *(v27 + 16);
        v67 = *v27;
        sub_1DB3171C0(a3, v69);
        v68[0] = v22;
        v29 = *(v28 + 8);
        v73 = v67;
        v74 = v28;
        __swift_allocate_boxed_opaque_existential_0(v72);

        goto LABEL_9;
      }
    }

LABEL_12:
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v41 = a1;
    v41[1] = a2;
    v41[2] = v40;
    v41[3] = 0;
    swift_willThrow();

    return;
  }

  v66 = v18;
  *&v67 = v17;
  v30 = (*(*((v23 & 0x7FFFFFFFFFFFFFFFLL) + 8) + 16))(v24, v19);
  if (!*(v30 + 16) || (v31 = sub_1DB306160(a1, a2), (v32 & 1) == 0))
  {

    goto LABEL_12;
  }

  v33 = *(*(v30 + 56) + 8 * v31);

  v34 = dynamic_cast_existential_2_conditional(v33);
  if (v34)
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
    sub_1DB3171C0(a3, v69);
    v68[0] = v22;
    v29 = *(v39 + 8);
    *&v73 = v37;
    *(&v73 + 1) = v38;
    v74 = v39;
    __swift_allocate_boxed_opaque_existential_0(v72);

LABEL_9:
    v29(v69, v68);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_0(v72);
    }

    else
    {
      v67 = v73;
      v42 = v73;
      v43 = __swift_project_boxed_opaque_existential_1(v72, v73);
      v44 = v76;
      *(v76 + 24) = v67;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v44);
      (*(*(v42 - 8) + 16))(boxed_opaque_existential_0, v43, v42);
      __swift_destroy_boxed_opaque_existential_0(v72);
    }

    return;
  }

  v46 = dynamic_cast_existential_2_conditional(v33);
  if (v46)
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
    sub_1DB3171C0(a3, v72);
    v69[0] = v22;

    v74 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(v69);
    v75 = MEMORY[0x1E69E7CC0];
    v68[3] = &type metadata for _JSONObjectDecoder;
    v68[4] = sub_1DB34A154();
    v68[0] = swift_allocObject();
    sub_1DB34A1A8(v72, v68[0] + 16);
    *&v70 = v49;
    *(&v70 + 1) = v50;
    v71 = v51;
    __swift_allocate_boxed_opaque_existential_0(v69);
    sub_1DB50ADB0();
    if (v6)
    {
      sub_1DB34A204(v72);
      __swift_deallocate_boxed_opaque_existential_0(v69);
      v72[0] = v6;
      v52 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
      if (swift_dynamicCast())
      {

        v53 = v66;
        v54 = v67;
        (*(v66 + 32))(v15, v21, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC470F0, &unk_1DB50F4B0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1DB50EE90;
        *(v55 + 32) = swift_allocError();
        (*(v53 + 16))(v56, v15, v54);
        sub_1DB315178();
        swift_allocError();
        *v57 = v49;
        v57[1] = v55;
        v57[2] = 0;
        v57[3] = 0;
        swift_willThrow();
        (*(v53 + 8))(v15, v54);
      }
    }

    else
    {
      v67 = v70;
      v61 = v70;
      v62 = __swift_project_boxed_opaque_existential_1(v69, v70);
      v63 = v76;
      *(v76 + 24) = v67;
      v64 = __swift_allocate_boxed_opaque_existential_0(v63);
      (*(*(v61 - 8) + 16))(v64, v62, v61);
      sub_1DB34A204(v72);
      __swift_destroy_boxed_opaque_existential_0(v69);
    }
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
    sub_1DB315178();
    swift_allocError();
    v59 = MEMORY[0x1E69E7CC0];
    *v60 = v58;
    v60[1] = v59;
    v60[2] = 0;
    v60[3] = 0;
    swift_willThrow();
  }
}

uint64_t static AnyActionTypes.tryToMakeInstances(byDeserializing:using:)(void *a1, void *a2)
{
  v7[2] = *a2;
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = *(v3 + 56);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
  return v4(sub_1DB4EBC68, v7, v5, v2, v3);
}

uint64_t AnyActionTypes.init<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = a2;
  v72 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v75 = &v71 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47528, &qword_1DB523308);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_1DB50B120();
  v14 = *(v84 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v71 - v18;
  v93 = *a1;
  v81 = a3;
  v19 = type metadata accessor for ActionTypes();
  v20 = sub_1DB4EB794(v19);

  v21 = 0;
  v22 = *(v20 + 64);
  v73 = v20 + 64;
  v77 = v20;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v83 = TupleTypeMetadata2 - 8;
  v74 = v7 + 16;
  v87 = (v7 + 32);
  v82 = (v14 + 32);
  v76 = v7;
  v80 = (v7 + 8);
  v27 = MEMORY[0x1E69E7CC8];
  v78 = v26;
  v79 = TupleTypeMetadata2;
  while (v25)
  {
    v30 = v21;
LABEL_15:
    v35 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v36 = v35 | (v30 << 6);
    v38 = v76;
    v37 = v77;
    v39 = v75;
    (*(v76 + 16))(v75, *(v77 + 48) + *(v76 + 72) * v36, v5);
    v40 = *(v37 + 56) + 24 * v36;
    v41 = *(v40 + 16);
    v42 = &v86[*(TupleTypeMetadata2 + 48)];
    v43 = *(v38 + 32);
    v34 = v86;
    v91 = *v40;
    v43(v86, v39, v5);
    v44 = 0;
    *v42 = v91;
    *(v42 + 2) = v41;
    v32 = v30;
    v33 = v85;
LABEL_16:
    v45 = *(TupleTypeMetadata2 - 8);
    (*(v45 + 56))(v34, v44, 1, TupleTypeMetadata2);
    (*v82)(v33, v34, v84);
    if ((*(v45 + 48))(v33, 1, TupleTypeMetadata2) == 1)
    {

      v70 = v72;
      *v72 = v27;
      v70[1] = 0;
      return result;
    }

    v46 = &v33[*(TupleTypeMetadata2 + 48)];
    v48 = *v46;
    v47 = *(v46 + 1);
    v88 = v32;
    v89 = v48;
    v49 = *(v46 + 2);
    v90 = v47;
    *&v91 = v49;
    (*v87)(v10, v33, v5);
    v50 = v10;
    v51 = v5;
    sub_1DB50A910();
    v52 = v93;
    v53 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v27;
    v56 = sub_1DB306160(v52, v53);
    v57 = v27[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_31;
    }

    v60 = v55;
    if (v27[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v51;
        if (v55)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DB3131BC();
        v5 = v51;
        if (v60)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DB31CEA0(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_1DB306160(v52, v53);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_33;
      }

      v56 = v61;
      v5 = v51;
      if (v60)
      {
LABEL_4:

        v27 = v92;
        v28 = (v92[7] + 24 * v56);
        v29 = v90;
        *v28 = v89;
        v28[1] = v29;
        v28[2] = v91;
        v10 = v50;
        (*v80)(v50, v5);
        goto LABEL_5;
      }
    }

    v27 = v92;
    v92[(v56 >> 6) + 8] |= 1 << v56;
    v63 = (v27[6] + 16 * v56);
    *v63 = v52;
    v63[1] = v53;
    v64 = (v27[7] + 24 * v56);
    v65 = v90;
    *v64 = v89;
    v64[1] = v65;
    v64[2] = v91;
    v10 = v50;
    (*v80)(v50, v5);
    v66 = v27[2];
    v67 = __OFADD__(v66, 1);
    v68 = v66 + 1;
    if (v67)
    {
      goto LABEL_32;
    }

    v27[2] = v68;
LABEL_5:
    v21 = v88;
    v26 = v78;
    TupleTypeMetadata2 = v79;
  }

  if (v26 <= v21 + 1)
  {
    v31 = v21 + 1;
  }

  else
  {
    v31 = v26;
  }

  v32 = v31 - 1;
  v33 = v85;
  v34 = v86;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v25 = 0;
      v44 = 1;
      goto LABEL_16;
    }

    v25 = *(v73 + 8 * v30);
    ++v21;
    if (v25)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

uint64_t sub_1DB4EB794(uint64_t a1)
{
  v2 = *v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A540();
  sub_1DB47D0C4(sub_1DB4EBEF0, v4, v2);
  return v7;
}

uint64_t ActionTypes.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  swift_getTupleTypeMetadata2();
  v7 = sub_1DB50A9D0();
  sub_1DB4EA020(v7, a1, v6, a2);

  sub_1DB50A540();
  v8 = sub_1DB388A48();

  *a3 = v8;
  return result;
}

uint64_t ActionTypes.registering(_:toKind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(a4 + 16);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = *v5;
  *a5 = v15;
  (*(v16 + 16))(v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v11, v13);
  v20[1] = a1;
  v20[2] = a2;
  v20[3] = a3;
  v20[0] = v15;

  v20[0] = sub_1DB4EB794(a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  v18 = *(a4 + 24);
  sub_1DB50A540();
  sub_1DB50A5A0();
  sub_1DB4EBCB4(v20[0], a4);
}

uint64_t *ActionTypes.makeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *a2;
  v26[0] = *v4;
  sub_1DB4EB794(a3);
  v10 = a3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC47530, &qword_1DB523310);
  v11 = a3[3];
  sub_1DB50A590();

  v12 = v27;
  if (v27)
  {
    v14 = v28;
    v13 = v29;
    sub_1DB3171C0(a1, v26);
    v25 = v9;
    v15 = *(v13 + 8);
    *&v30 = v12;
    *(&v30 + 1) = v14;
    v31 = v13;
    __swift_allocate_boxed_opaque_existential_0(&v27);

    v15(v26, &v25, v12, v13);
    if (v5)
    {
      return __swift_deallocate_boxed_opaque_existential_0(&v27);
    }

    else
    {
      v24 = v30;
      v21 = v30;
      v22 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      *(a4 + 24) = v24;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v22, v21);
      return __swift_destroy_boxed_opaque_existential_0(&v27);
    }
  }

  else
  {
    v17 = a3[4];
    sub_1DB50A910();
    v18 = v28;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350) | 0x6000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v20 = 0;
    v20[1] = v18;
    v20[2] = v19;
    v20[3] = 0;
    return swift_willThrow();
  }
}

void sub_1DB4EBCB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECC47530, &qword_1DB523310);
  sub_1DB50A540();
  sub_1DB47D0C4(sub_1DB4EBEA8, v4, v3);
}

uint64_t sub_1DB4EBD8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB4EBDC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 16))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 8) >> 57) >> 6) | (2 * ((*(a1 + 8) >> 57) & 0x38 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1DB4EBE24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DB4EBEA8(uint64_t *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;

  *a1 = v3;
}

BOOL sub_1DB4EBF1C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1DB4EBF58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v1 + 7);
  v8 = &v16 - v7;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = v1[6];
    v17 = v1[5];
    v16 = __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
    v12 = v1[8];
    (*(v5 + 16))(v8, a1, v4);
    v13 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = *(v3 + 80);
    *(v14 + 3) = v4;
    *(v14 + 4) = v10;
    *(v14 + 5) = v12;
    (*(v5 + 32))(&v14[v13], v8, v4);
    v15 = *(v11 + 8);
    swift_unknownObjectRetain();

    v15(sub_1DB4EC504, v14, v17, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DB4EC134(uint64_t a1, void *a2)
{
  v3 = *(*(*(*a2 + *MEMORY[0x1E69E6F98] + 8) - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - v6, v7, v4);
  v9[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DB4EC248()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  MEMORY[0x1E1288310](v0 + 56);
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_1DB4EC278()
{
  sub_1DB4EC248();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t EventEmitter.addObserver<A>(on:target:property:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = (*a3 + *MEMORY[0x1E69E6F98]);
  v11 = *v10;
  v12 = v10[1];
  v13 = type metadata accessor for PropertyEventObserver();
  sub_1DB30BE90(a1, v17);
  swift_allocObject();
  *&v17[0] = sub_1DB4EC44C(v17, a2, a3);
  v14 = *(a5 + 24);

  WitnessTable = swift_getWitnessTable();
  v14(v17, v13, WitnessTable, a4, a5);
}

uint64_t sub_1DB4EC44C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  sub_1DB2FEA0C(a1, v3 + 16);
  swift_unknownObjectWeakAssign();
  *(v3 + 64) = a3;
  return v3;
}

uint64_t _AsyncJust.AsyncIterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v9 = *(v6 + 56);
  v9(a3, 1, 1, a2);
  v7 = sub_1DB50B120();
  (*(*(v7 - 8) + 8))(a3, v7);
  (*(v6 + 32))(a3, a1, a2);

  return (v9)(a3, 0, 1, a2);
}

uint64_t _AsyncJust.AsyncIterator.element.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DB50B120();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t _AsyncJust.AsyncIterator.element.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1DB50B120();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t _AsyncJust.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB4ECFFC, 0, 0);
}

uint64_t _AsyncJust.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1DB50AAD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1DB4EC850, v6, v8);
}

uint64_t sub_1DB4EC850()
{
  v1 = v0[4];
  (*(*(*(v0[3] + 16) - 8) + 56))(v0[2], 1, 1, *(v0[3] + 16));
  sub_1DB50B120();
  sub_1DB50BC00();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DB4EC910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB38ACA4;

  return _AsyncJust.AsyncIterator.next()(a1, a2);
}

uint64_t sub_1DB4EC9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DB4ECFF8;

  return _AsyncJust.AsyncIterator.next(isolation:)(a1, a2, a3, a5);
}

uint64_t _AsyncJust.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return _AsyncJust.AsyncIterator.init(_:)(v7, v3, a2);
}

uint64_t _AsyncJust.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1DB50BA00();
  return 0;
}

uint64_t sub_1DB4ECBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _AsyncJust.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t _AsyncJust<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[6] = a3;
  v20 = a4;
  v19 = *(a2 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _AsyncJust();
  v18 = *(v10 - 8);
  v11 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BDD0();
  if (!v4)
  {
    v17 = v10;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1DB50BA80();
    (*(v19 + 32))(v13, v9, a2);
    __swift_destroy_boxed_opaque_existential_0(v21);
    (*(v18 + 32))(v20, v13, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t _AsyncJust<A>.encode(to:)(void *a1, uint64_t a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE20();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = *(a2 + 16);
  sub_1DB50BB00();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_1DB4ECF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static _AsyncJust<A>.== infix(_:_:)();
}

uint64_t sub_1DB4ECF70(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DB50B120();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB4ED004()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1DB4ED074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = sub_1DB50B120();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v12 = *v3;
  v11 = v3[1];
  if (v11 == sub_1DB50AA00())
  {
    v13 = *(v5 - 8);
    return (*(v13 + 56))(a2, 1, 1, v5);
  }

  else
  {
    v21 = a2;
    v14 = (v7 + 8);
    while (1)
    {
      v15 = v3[2];
      sub_1DB50AAB0();
      v13 = *(v5 - 8);
      if ((*(v13 + 48))(v10, 1, v5) != 1)
      {
        break;
      }

      (*v14)(v10, v6);
      sub_1DB4ED2A0(v3);
      v17 = *v3;
      v16 = v3[1];
      if (v16 == sub_1DB50AA00())
      {
        a2 = v21;
        return (*(v13 + 56))(a2, 1, 1, v5);
      }
    }

    v19 = v21;
    (*(v13 + 32))(v21, v10, v5);
    (*(v13 + 56))(v19, 0, 1, v5);
    return sub_1DB4ED2A0(v3);
  }
}

void *sub_1DB4ED2A0(void *result)
{
  v1 = result[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *result;
    sub_1DB50B120();

    v5 = sub_1DB50AA00();

    v6 = 0;
    if (v2 < v5)
    {
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v6 = v7 + 1;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v3[2] = v6;
    v9 = v3[1];
    v8 = __OFADD__(v9, 1);
    v10 = v9 + 1;
    if (!v8)
    {
      v3[1] = v10;
      return result;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DB4ED368@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = sub_1DB4ED33C();
  v7 = v6;
  v9 = v8;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v9;
  return result;
}

uint64_t sub_1DB4ED3C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB4ED3FC(v2, a1, a2);
  v4 = *v2;

  return v3;
}

uint64_t sub_1DB4ED400()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OpaqueMetatype.init(of:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.init<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(v11);
  v8(a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  __swift_project_boxed_opaque_existential_1(v11, AssociatedTypeWitness);
  DynamicType = swift_getDynamicType();
  result = __swift_destroy_boxed_opaque_existential_0(v11);
  *a4 = DynamicType;
  return result;
}

uint64_t OpaqueMetatype.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4ED640()
{
  result = qword_1EE30EAF0;
  if (!qword_1EE30EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30EAF0);
  }

  return result;
}

uint64_t sub_1DB4ED6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB4ED6D4, 0, 0);
}

uint64_t sub_1DB4ED6D4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v11 = v0[8];
    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = 7628138;
    v0[3] = 0xE300000000000000;
    v13 = v1[3];
    v12 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v11, v13);
    (*(v12 + 16))(v0 + 2, 0x654D646E65537078, 0xEC000000646F6874, v13, v12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = v0[9], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = v0[1];

  return v14();
}

uint64_t sub_1DB4ED8AC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB4ED6B4(a1, v6, v4);
}

uint64_t sub_1DB4ED9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000022 && 0x80000001DB531300 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDA44(uint64_t a1)
{
  v2 = sub_1DB4EF414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDA80(uint64_t a1)
{
  v2 = sub_1DB4EF414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EDB48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC479A0, &unk_1DB524140, sub_1DB4EF414);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EDC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001DB531330 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDCA4(uint64_t a1)
{
  v2 = sub_1DB4EF468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDCE0(uint64_t a1)
{
  v2 = sub_1DB4EF468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EDDA8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47998, &qword_1DB524138, sub_1DB4EF468);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EDE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002ALL && 0x80000001DB531350 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EDF04(uint64_t a1)
{
  v2 = sub_1DB4EF4BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EDF40(uint64_t a1)
{
  v2 = sub_1DB4EF4BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE008@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47990, &qword_1DB524130, sub_1DB4EF4BC);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EE0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001DB5313C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EE168(uint64_t a1)
{
  v2 = sub_1DB4F0108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE1A4(uint64_t a1)
{
  v2 = sub_1DB4F0108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001DB531380 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EE3B8(uint64_t a1)
{
  v2 = sub_1DB4EF7F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE3F4(uint64_t a1)
{
  v2 = sub_1DB4EF7F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EE4BC(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a5();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1DB4EE5F8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB4EEE1C(a1, &qword_1ECC47950, &qword_1DB524108, sub_1DB4EF7F0);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1DB4EE698(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v15 = *a1;
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a7();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1DB4EE804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53676E696E676973 && a2 == 0xEC000000656C7974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4EE890(uint64_t a1)
{
  v2 = sub_1DB4EF844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EE8CC(uint64_t a1)
{
  v2 = sub_1DB4EF844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AppleServicesPropertyScope.SigningStyleProperty.value(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47878, &qword_1DB5239B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4EF844();
  result = sub_1DB50BDF0();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47888, &qword_1DB5239B8);
    sub_1DB4F0010(&qword_1ECC47890, &qword_1ECC47888, &qword_1DB5239B8, sub_1DB4EF898);
    sub_1DB50B780();
    result = (*(v6 + 8))(v9, v5);
    v12 = v14;
    if (v14 == 4)
    {
      v12 = 0;
    }

    *a2 = v12;
  }

  return result;
}

uint64_t sub_1DB4EEB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001DB5313A0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1DB50BA30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1DB4EEBAC(uint64_t a1)
{
  v2 = sub_1DB4EFF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4EEBE8(uint64_t a1)
{
  v2 = sub_1DB4EFF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4EEC68@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_1DB4EF04C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

uint64_t sub_1DB4EEE1C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB50BDF0();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47958, &qword_1DB524110);
    sub_1DB4F0010(&qword_1ECC47960, &qword_1ECC47958, &qword_1DB524110, sub_1DB4F008C);
    sub_1DB50B780();
    (*(v8 + 8))(v11, v7);
    v13 = v16;
  }

  return v13 & 1;
}

uint64_t sub_1DB4EF04C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  result = sub_1DB50BDF0();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
    sub_1DB32500C(&qword_1ECC42FE0);
    sub_1DB50B780();
    (*(v8 + 8))(v11, v7);
    return v14;
  }

  return result;
}

uint64_t _s7JetCore26AppleServicesPropertyScopeV13allPropertiesSayAA010NetRequestE0_pXpGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42928, &qword_1DB50F3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = &type metadata for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  *(inited + 40) = &protocol witness table for AppleServicesPropertyScope.IsAnonymityEnabledProperty;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB50EE90;
  *(v1 + 32) = &type metadata for AppleServicesPropertyScope.SigningStyleProperty;
  *(v1 + 40) = &protocol witness table for AppleServicesPropertyScope.SigningStyleProperty;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50EE90;
  *(v2 + 32) = &type metadata for AppleServicesPropertyScope.AMSGrandSlamTokenID;
  *(v2 + 40) = &off_1EECE9768;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DB50EE90;
  *(v3 + 32) = &type metadata for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  *(v3 + 40) = &protocol witness table for AppleServicesPropertyScope.ExcludeIdentifierHeadersForAccountProperty;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DB50EE90;
  *(v4 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  *(v4 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeAuthKitHeadersProperty;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DB50EE90;
  *(v5 + 32) = &type metadata for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  *(v5 + 40) = &protocol witness table for AppleServicesPropertyScope.AlwaysIncludeMMeClientInfoAndDeviceHeadersProperty;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DB50EE90;
  *(v6 + 32) = &type metadata for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  *(v6 + 40) = &protocol witness table for AppleServicesPropertyScope.OverrideAccountWithIDProperty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC45CD0, &unk_1DB51D7C0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1DB523980;
  *(v7 + 32) = inited;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = _s7JetCore35NetRequestPropertyCollectionBuilderO10buildBlockySayAA0cdE0_pXpGAFd_tFZ_0(v7);
  swift_setDeallocating();
  v9 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E68, &qword_1DB516CD0);
  swift_arrayDestroy();
  return v8;
}

unint64_t sub_1DB4EF414()
{
  result = qword_1ECC47840;
  if (!qword_1ECC47840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47840);
  }

  return result;
}

unint64_t sub_1DB4EF468()
{
  result = qword_1ECC47850;
  if (!qword_1ECC47850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47850);
  }

  return result;
}

unint64_t sub_1DB4EF4BC()
{
  result = qword_1ECC47860;
  if (!qword_1ECC47860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47860);
  }

  return result;
}

uint64_t sub_1DB4EF510(char *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47940, &qword_1DB524100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12[-v7];
  v9 = *a1;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DB4EF844();
  sub_1DB50BE40();
  v12[15] = v9;
  sub_1DB4EFFBC();
  sub_1DB50B8A0();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DB4EF65C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  a6();
  sub_1DB50BE40();
  v18 = a1;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46C00, &qword_1DB516350);
  sub_1DB32500C(&qword_1ECC42FF0);
  sub_1DB50B8A0();
  return (*(v10 + 8))(v13, v9);
}

unint64_t sub_1DB4EF7F0()
{
  result = qword_1ECC47870;
  if (!qword_1ECC47870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47870);
  }

  return result;
}

unint64_t sub_1DB4EF844()
{
  result = qword_1ECC47880;
  if (!qword_1ECC47880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47880);
  }

  return result;
}

unint64_t sub_1DB4EF898()
{
  result = qword_1ECC47898;
  if (!qword_1ECC47898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC478A0, &qword_1DB5239C0);
    sub_1DB4EF91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47898);
  }

  return result;
}

unint64_t sub_1DB4EF91C()
{
  result = qword_1ECC478A8;
  if (!qword_1ECC478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478A8);
  }

  return result;
}

unint64_t sub_1DB4EFA44()
{
  result = qword_1ECC478B0;
  if (!qword_1ECC478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478B0);
  }

  return result;
}

unint64_t sub_1DB4EFA9C()
{
  result = qword_1ECC478B8;
  if (!qword_1ECC478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478B8);
  }

  return result;
}

unint64_t sub_1DB4EFAF4()
{
  result = qword_1ECC478C0;
  if (!qword_1ECC478C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478C0);
  }

  return result;
}

unint64_t sub_1DB4EFB4C()
{
  result = qword_1ECC478C8;
  if (!qword_1ECC478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478C8);
  }

  return result;
}

unint64_t sub_1DB4EFBA4()
{
  result = qword_1ECC478D0;
  if (!qword_1ECC478D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478D0);
  }

  return result;
}

unint64_t sub_1DB4EFBFC()
{
  result = qword_1ECC478D8;
  if (!qword_1ECC478D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478D8);
  }

  return result;
}

unint64_t sub_1DB4EFC54()
{
  result = qword_1ECC478E0;
  if (!qword_1ECC478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478E0);
  }

  return result;
}

unint64_t sub_1DB4EFCAC()
{
  result = qword_1ECC478E8;
  if (!qword_1ECC478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478E8);
  }

  return result;
}

unint64_t sub_1DB4EFD04()
{
  result = qword_1ECC478F0;
  if (!qword_1ECC478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478F0);
  }

  return result;
}

unint64_t sub_1DB4EFD5C()
{
  result = qword_1ECC478F8;
  if (!qword_1ECC478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC478F8);
  }

  return result;
}

unint64_t sub_1DB4EFDB4()
{
  result = qword_1ECC47900;
  if (!qword_1ECC47900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47900);
  }

  return result;
}

unint64_t sub_1DB4EFE0C()
{
  result = qword_1ECC47908;
  if (!qword_1ECC47908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47908);
  }

  return result;
}

unint64_t sub_1DB4EFE64()
{
  result = qword_1ECC47910;
  if (!qword_1ECC47910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47910);
  }

  return result;
}

unint64_t sub_1DB4EFEBC()
{
  result = qword_1ECC47918;
  if (!qword_1ECC47918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47918);
  }

  return result;
}

unint64_t sub_1DB4EFF14()
{
  result = qword_1ECC47920;
  if (!qword_1ECC47920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47920);
  }

  return result;
}

unint64_t sub_1DB4EFF68()
{
  result = qword_1ECC47930;
  if (!qword_1ECC47930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47930);
  }

  return result;
}

unint64_t sub_1DB4EFFBC()
{
  result = qword_1ECC47948;
  if (!qword_1ECC47948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47948);
  }

  return result;
}

uint64_t sub_1DB4F0010(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4F008C()
{
  result = qword_1ECC47968;
  if (!qword_1ECC47968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47970, &qword_1DB524118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47968);
  }

  return result;
}

unint64_t sub_1DB4F0108()
{
  result = qword_1ECC47980;
  if (!qword_1ECC47980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47980);
  }

  return result;
}

unint64_t sub_1DB4F0180()
{
  result = qword_1ECC479A8;
  if (!qword_1ECC479A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479A8);
  }

  return result;
}

unint64_t sub_1DB4F01D8()
{
  result = qword_1ECC479B0;
  if (!qword_1ECC479B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479B0);
  }

  return result;
}

unint64_t sub_1DB4F0230()
{
  result = qword_1ECC479B8;
  if (!qword_1ECC479B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479B8);
  }

  return result;
}

unint64_t sub_1DB4F0288()
{
  result = qword_1ECC479C0;
  if (!qword_1ECC479C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479C0);
  }

  return result;
}

unint64_t sub_1DB4F02E0()
{
  result = qword_1ECC479C8;
  if (!qword_1ECC479C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479C8);
  }

  return result;
}

unint64_t sub_1DB4F0338()
{
  result = qword_1ECC479D0;
  if (!qword_1ECC479D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479D0);
  }

  return result;
}

uint64_t PageRenderEventPrecision.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB4F0428()
{
  result = qword_1ECC479D8;
  if (!qword_1ECC479D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC479D8);
  }

  return result;
}

uint64_t Account.acAccountCopy.getter()
{
  [*v0 copy];
  sub_1DB50B200();
  swift_unknownObjectRelease();
  sub_1DB336FD4(0, &qword_1ECC479E0, 0x1E6959A28);
  swift_dynamicCast();
  return v2;
}

void Account.subscript.getter()
{
  v1 = *v0;
  swift_getAtKeyPath();
}

void Account.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v8 = *v2;
  v5 = v8;
  v6 = swift_readAtKeyPath();
  (*(*(*(v4 + *MEMORY[0x1E69E6F98] + 8) - 8) + 16))(a2);
  v6(v7, 0);
}

uint64_t Account.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_1DB4F0B98(a1, a2);
  v4 = *(*(*(v3 + *MEMORY[0x1E69E6F98] + 8) - 8) + 8);

  return v4(a1);
}

void (*Account.subscript.modify(void *a1, uint64_t *a2))(uint64_t ***a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  Account.subscript.getter(a2, v11);
  return sub_1DB4F0850;
}

void sub_1DB4F0850(uint64_t ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (v6[2])((*a1)[4], v4, v5);

    sub_1DB4F0B98(v3, v8);
    v9 = v6[1];
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    v10 = **a1;

    sub_1DB4F0B98(v4, v8);
    (v6[1])(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

double Account.value(forFlag:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ([*v2 ams:a1 accountFlagValueForAccountFlag:?])
  {
    sub_1DB50B200();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t Account.setValue(_:forFlag:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1DB50B200();
    swift_unknownObjectRelease();
    sub_1DB336FD4(0, &qword_1ECC479E0, 0x1E6959A28);
    swift_dynamicCast();
    v7 = v9;

    *v2 = v9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v7 ams:sub_1DB50BA20() setAccountFlagValue:a2 forAccountFlag:?];
  return swift_unknownObjectRelease();
}

uint64_t Account.cookies(for:)()
{
  v1 = *v0;
  v2 = sub_1DB509BC0();
  v3 = [v1 ams:v2 cookiesForURL:?];

  sub_1DB336FD4(0, &qword_1ECC479E8, 0x1E696AC58);
  v4 = sub_1DB50A9A0();

  return v4;
}

uint64_t Account.storefront(for:)(uint64_t a1)
{
  v2 = [*v1 ams:a1 storefrontForMediaType:?];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DB50A650();

  return v4;
}

uint64_t sub_1DB4F0B98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = MEMORY[0x1E69E6F98];
  v6 = *(*a2 + *MEMORY[0x1E69E6F98] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  v13 = *v2;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    [*v2 copy];
    sub_1DB50B200();
    swift_unknownObjectRelease();
    v14 = *(v4 + *v5);
    swift_dynamicCast();
    v13 = v17[1];

    *v2 = v13;
  }

  (*(v7 + 16))(v10, a1, v6);
  v17[2] = v13;
  v15 = v13;
  swift_setAtReferenceWritableKeyPath();
}

uint64_t sub_1DB4F0D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1DB306160(a1, a2);
    if (v7)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v6, &v30);
      sub_1DB30C200(&v30, v35);
      sub_1DB300B14(v35, &v30);
      v8 = MEMORY[0x1E69E6158];
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v35);
        return v33[0];
      }

      if (qword_1ECC42228 != -1)
      {
        swift_once();
      }

      v10 = qword_1ECC466F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1DB50F8D0;
      v34 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v12._object = 0x80000001DB5295A0;
      v12._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v12);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC479F8, &qword_1DB5244A8);
      v33[0] = a1;
      v33[1] = a2;
      sub_1DB301CDC(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1DB301D4C(v29, &v30);
      v32 = 1;
      v13 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1DB301BC0(0, *(v13 + 2) + 1, 1, v13);
        v34 = v13;
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DB301BC0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[40 * v15];
      v17 = v30;
      v18 = v31;
      v16[64] = v32;
      *(v16 + 2) = v17;
      *(v16 + 3) = v18;
      v34 = v13;
      sub_1DB301DBC(v33);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v19);
      *(v11 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1DB50EE90;
      *(&v31 + 1) = v8;
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001DB5295C0;
      *(v20 + 48) = 0u;
      *(v20 + 32) = 0u;
      sub_1DB301D4C(&v30, v20 + 32);
      *(v20 + 64) = 0;
      *(v11 + 40) = v20;
      v21 = sub_1DB50AF40();
      if (os_log_type_enabled(v10, v21))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v22 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v11;
        *(&v30 + 1) = sub_1DB314CB0;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v25 = sub_1DB50A5E0();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1DB50EE90;
        *(v28 + 56) = v8;
        *(v28 + 64) = sub_1DB31494C();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v35);
    }
  }

  return 0;
}

double sub_1DB4F11A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16))
  {
    v8 = sub_1DB306160(a1, a2);
    if (v9)
    {
      sub_1DB300B14(*(a3 + 56) + 32 * v8, &v34);
      sub_1DB30C200(&v34, v38);
      sub_1DB300B14(v38, v37);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v38);
        v10 = v35;
        *a4 = v34;
        a4[1] = v10;
        result = *&v36;
        a4[2] = v36;
        return result;
      }

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      sub_1DB301FA4(0, 0);
      if (qword_1ECC42228 != -1)
      {
        swift_once();
      }

      v12 = qword_1ECC466F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DB50F8D0;
      v33 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v14._object = 0x80000001DB5295A0;
      v14._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v14);
      v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC479F0, &unk_1DB524498);
      v37[0] = a1;
      v37[1] = a2;
      sub_1DB301CDC(v37, v32);
      v34 = 0u;
      v35 = 0u;

      sub_1DB301D4C(v32, &v34);
      LOBYTE(v36) = 1;
      v15 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1DB301BC0(0, *(v15 + 2) + 1, 1, v15);
        v33 = v15;
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1DB301BC0((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      v18 = &v15[40 * v17];
      v19 = v34;
      v20 = v35;
      v18[64] = v36;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      v33 = v15;
      sub_1DB301DBC(v37);
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v21);
      *(v13 + 32) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DB50EE90;
      v23 = MEMORY[0x1E69E6158];
      *(&v35 + 1) = MEMORY[0x1E69E6158];
      *&v34 = 0xD000000000000027;
      *(&v34 + 1) = 0x80000001DB5295C0;
      *(v22 + 48) = 0u;
      *(v22 + 32) = 0u;
      sub_1DB301D4C(&v34, v22 + 32);
      *(v22 + 64) = 0;
      *(v13 + 40) = v22;
      v24 = sub_1DB50AF40();
      if (os_log_type_enabled(v12, v24))
      {
        if (qword_1EE30EDD8 != -1)
        {
          swift_once();
        }

        v25 = off_1EE30EDE0;
        os_unfair_lock_lock(off_1EE30EDE0 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v25[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v25 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v27 = swift_allocObject();
        *(v27 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v34 = v13;
        *(&v34 + 1) = sub_1DB31485C;
        *&v35 = v27;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
        sub_1DB314864();
        v28 = sub_1DB50A5E0();
        v30 = v29;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1DB50EE90;
        *(v31 + 56) = v23;
        *(v31 + 64) = sub_1DB31494C();
        *(v31 + 32) = v28;
        *(v31 + 40) = v30;
        sub_1DB50A1E0();
      }

      __swift_destroy_boxed_opaque_existential_0(v38);
    }
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[8] = a1;
  v3[9] = v4;
  v3[10] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DB4F1688, 0, 0);
}

uint64_t sub_1DB4F1688()
{
  v35 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v1)
  {

    goto LABEL_9;
  }

  if (!*(v5 + 16) || (v7 = v0[10], v8 = sub_1DB306160(0x707954746E657665, 0xE900000000000065), (v9 & 1) == 0) || (sub_1DB300B14(*(v6 + 56) + 32 * v8, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_24;
  }

  v10 = sub_1DB33114C(v0[6], v0[7], v7);

  if (v10)
  {
LABEL_9:
    sub_1DB4F11A4(0xD00000000000002ALL, 0x80000001DB5297B0, v0[9], &v32);
    if (!*(&v32 + 1))
    {
      goto LABEL_24;
    }

    v31 = *(&v32 + 1);
    v11 = v32;
    v12 = v33;
    v13 = v34;
    v14 = v0[8];
    v15 = MEMORY[0x1E69E63B0];
    v0[5] = MEMORY[0x1E69E63B0];
    v0[2] = v12;
    v16 = v2[3];
    v17 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v14, v16);
    (*(v17 + 16))(v0 + 2, 0xD000000000000019, 0x80000001DB528FE0, v16, v17);
    v18 = v0[8];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v0[5] = v15;
    *(v0 + 2) = v13 * 1000.0;
    v19 = v2[3];
    v20 = v2[4];
    __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    (*(v20 + 16))(v0 + 2, 0xD000000000000011, 0x80000001DB529000, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (qword_1EE30EDD8 != -1)
    {
      swift_once();
    }

    v21 = off_1EE30EDE0;
    os_unfair_lock_lock(off_1EE30EDE0 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((os_unfair_lock_opaque_low & 1) == 0)
    {
LABEL_23:
      sub_1DB301FA4(v11, v31);
      goto LABEL_24;
    }

    if (qword_1EE30E8D0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DB376278(v11, v31);
    if (v23 == 2 || (v23 & 1) == 0)
    {
      goto LABEL_23;
    }

    os_unfair_lock_lock(v21 + 5);
    v24 = LOBYTE(v21[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v21 + 5);
    if (v24 == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
LABEL_22:
        v25 = 0;
LABEL_29:
        v28 = v0[8];
        v0[5] = MEMORY[0x1E69E6370];
        sub_1DB301FA4(v11, v31);
        *(v0 + 16) = v25 & 1;
        v30 = v2[3];
        v29 = v2[4];
        __swift_mutable_project_boxed_opaque_existential_1(v28, v30);
        (*(v29 + 16))(v0 + 2, 0xD000000000000010, 0x80000001DB528FC0, v30, v29);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
        goto LABEL_24;
      }
    }

    else if ((v24 & 1) == 0)
    {
      goto LABEL_22;
    }

    v25 = sub_1DB376278(v11, v31);
    goto LABEL_29;
  }

LABEL_24:
  v26 = v0[1];

  return v26();
}

uint64_t sub_1DB4F1AF0(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return XPSamplingFieldsProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

id static TimeConversion.amsServerTime(from:)()
{
  v0 = objc_opt_self();
  v1 = sub_1DB509D40();
  v2 = [v0 serverTimeFromDate_];

  return v2;
}

id static TimeConversion.amsServerTime(fromTimeInterval:)(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval_];

  return v1;
}

uint64_t sub_1DB4F1C64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A40, &qword_1DB5245C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  v11[1] = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
  v9 = type metadata accessor for DaemonError();
  if (swift_dynamicCast())
  {

    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    return sub_1DB4F2A10(v7, a2);
  }

  else
  {
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_1DB30623C(v7, &qword_1ECC47A40, &qword_1DB5245C0);
    *a2 = a1;
    return swift_storeEnumTagMultiPayload();
  }
}