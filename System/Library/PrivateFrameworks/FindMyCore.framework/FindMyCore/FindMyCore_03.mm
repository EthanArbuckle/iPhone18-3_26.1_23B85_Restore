uint64_t sub_24ADC2824(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = type metadata accessor for PersonModel();
  v7 = *(*(v59 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v59);
  v57 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v49[-v11];
  v13 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F98];
  v56 = *(a1 + 16);
  if (!v56)
  {
    return v13;
  }

  v14 = 0;
  v51 = *(v10 + 80);
  v60 = *(v10 + 72);
  v53 = v12 + 8;
  v54 = (v51 + 32) & ~v51;
  v55 = a1 + v54;
  v50 = xmmword_24AE0A280;
  v52 = a2;
  while (1)
  {
    sub_24ADC3D4C(v55 + v60 * v14, v12, type metadata accessor for PersonModel);
    v15 = *(a2 + 32);
    v16 = &v12[*(v59 + 32)];
    v17 = type metadata accessor for PersonModel.Relationship(0);
    sub_24ADC3D4C(&v16[*(v17 + 20)], v6, type metadata accessor for PersonModel.Relationship.Follower);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24AE08288();
      sub_24AD92BE4(v6, &qword_27EFA8878, &qword_24AE0E6E0);
      if (!*(v15 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = v16[*(v17 + 24)];
      if (v23 == 2 || (v23 & 1) == 0)
      {
        sub_24AE08288();
        sub_24ADC3DB4(v6, type metadata accessor for PersonModel.Relationship.Follower);
LABEL_17:
        if (v53[*(v59 + 36)] & 1) == 0 && *(v15 + 16) && (v24 = *(v15 + 40), sub_24AE09838(), MEMORY[0x24C231780](1), v25 = sub_24AE09868(), v26 = -1 << *(v15 + 32), v27 = v25 & ~v26, ((*(v15 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27)))
        {
          v28 = ~v26;
          while (*(*(v15 + 48) + v27) != 1)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v15 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          v29 = 1;
        }

        else
        {
LABEL_23:

          v29 = 2;
        }

        goto LABEL_24;
      }

      sub_24AE08288();
      sub_24ADC3DB4(v6, type metadata accessor for PersonModel.Relationship.Follower);
      if (!*(v15 + 16))
      {
        goto LABEL_17;
      }
    }

    v18 = *(v15 + 40);
    sub_24AE09838();
    MEMORY[0x24C231780](0);
    v19 = sub_24AE09868();
    v20 = -1 << *(v15 + 32);
    v21 = v19 & ~v20;
    if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_17;
    }

    v22 = ~v20;
    while (*(*(v15 + 48) + v21))
    {
      v21 = (v21 + 1) & v22;
      if (((*(v15 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v29 = 0;
LABEL_24:
    v31 = sub_24ADD6D1C(v29);
    v32 = v13[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v13[3] < v34)
    {
      sub_24ADBECCC(v34, 1);
      v13 = v61;
      v36 = sub_24ADD6D1C(v29);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }

      v31 = v36;
    }

    if (v35)
    {
      v38 = v13[7];
      sub_24ADC3C30(v12, v57);
      v39 = *(v38 + 8 * v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 8 * v31) = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_24ADAB360(0, v39[2] + 1, 1, v39);
        *(v38 + 8 * v31) = v39;
      }

      v42 = v39[2];
      v41 = v39[3];
      if (v42 >= v41 >> 1)
      {
        v39 = sub_24ADAB360(v41 > 1, v42 + 1, 1, v39);
        *(v38 + 8 * v31) = v39;
      }

      v39[2] = v42 + 1;
      sub_24ADC3C30(v57, v39 + v54 + v42 * v60);
      a2 = v52;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9058, &qword_24AE0B980);
      v43 = v54;
      v44 = swift_allocObject();
      *(v44 + 16) = v50;
      sub_24ADC3C30(v12, v44 + v43);
      v13[(v31 >> 6) + 8] |= 1 << v31;
      *(v13[6] + v31) = v29;
      *(v13[7] + 8 * v31) = v44;
      v45 = v13[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_39;
      }

      v13[2] = v47;
    }

    if (++v14 == v56)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_24AE097E8();
  __break(1u);
  return result;
}

unint64_t sub_24ADC2DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97D8, &qword_24AE0DE98);
  v3 = sub_24AE09628();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_24AD92B7C(&v31, v30, &qword_27EFA97E0, &qword_24AE0DEA0);
  result = sub_24ADD69C8(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 176);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = (v3[7] + (result << 7));
    v15 = v32;
    v16 = v33;
    v17 = v35;
    v14[2] = v34;
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v18 = v36;
    v19 = v37;
    v20 = v39;
    v14[6] = v38;
    v14[7] = v20;
    v14[4] = v18;
    v14[5] = v19;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v12 + 9;
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = v12[8];
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_24AD92B7C(&v31, v30, &qword_27EFA97E0, &qword_24AE0DEA0);
    result = sub_24ADD69C8(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24ADC2F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA97A8, &qword_24AE0DE70);
  v3 = sub_24AE09628();

  v4 = *(a1 + 208);
  v48 = *(a1 + 192);
  v49 = v4;
  v50 = *(a1 + 224);
  v5 = *(a1 + 144);
  v44 = *(a1 + 128);
  v45 = v5;
  v6 = *(a1 + 176);
  v46 = *(a1 + 160);
  v47 = v6;
  v7 = *(a1 + 80);
  v40 = *(a1 + 64);
  v41 = v7;
  v8 = *(a1 + 112);
  v42 = *(a1 + 96);
  v43 = v8;
  v9 = *(a1 + 48);
  v38 = *(a1 + 32);
  v39 = v9;
  v11 = *(&v38 + 1);
  v10 = v38;
  sub_24AD92B7C(&v38, v37, &qword_27EFA97C0, &qword_24AE0DE88);
  result = sub_24ADD6B54(v10, v11);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = (a1 + 232);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v15 = (v3[6] + 16 * result);
    *v15 = v10;
    v15[1] = v11;
    v16 = v3[7] + 184 * result;
    v17 = v39;
    v18 = v40;
    v19 = v42;
    *(v16 + 32) = v41;
    *(v16 + 48) = v19;
    *v16 = v17;
    *(v16 + 16) = v18;
    v20 = v43;
    v21 = v44;
    v22 = v46;
    *(v16 + 96) = v45;
    *(v16 + 112) = v22;
    *(v16 + 64) = v20;
    *(v16 + 80) = v21;
    v23 = v47;
    v24 = v48;
    v25 = v49;
    *(v16 + 176) = v50;
    *(v16 + 144) = v24;
    *(v16 + 160) = v25;
    *(v16 + 128) = v23;
    v26 = v3[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      break;
    }

    v3[2] = v28;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v29 = (v14 + 200);
    v30 = v14[11];
    v48 = v14[10];
    v49 = v30;
    v50 = *(v14 + 96);
    v31 = v14[7];
    v44 = v14[6];
    v45 = v31;
    v32 = v14[9];
    v46 = v14[8];
    v47 = v32;
    v33 = v14[3];
    v40 = v14[2];
    v41 = v33;
    v34 = v14[5];
    v42 = v14[4];
    v43 = v34;
    v35 = v14[1];
    v38 = *v14;
    v39 = v35;
    v11 = *(&v38 + 1);
    v10 = v38;
    sub_24AD92B7C(&v38, v37, &qword_27EFA97C0, &qword_24AE0DE88);
    result = sub_24ADD6B54(v10, v11);
    v14 = v29;
    if (v36)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADC3318()
{
  result = sub_24AE08E08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADC3394(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  v29 = result + 32;
  do
  {
    v7 = v5 + 184 * v4;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v9 = *(v7 + 144);
      v42 = *(v7 + 128);
      v43 = v9;
      v44 = *(v7 + 160);
      v45 = *(v7 + 176);
      v10 = *(v7 + 80);
      v38 = *(v7 + 64);
      v39 = v10;
      v11 = *(v7 + 112);
      v40 = *(v7 + 96);
      v41 = v11;
      v12 = *(v7 + 16);
      v34 = *v7;
      v35 = v12;
      v13 = *(v7 + 48);
      v36 = *(v7 + 32);
      v37 = v13;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      v14 = *(a2 + 56);
      v15 = *(a2 + 64);
      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        break;
      }

      v33 = v35;
      v31 = v14;
      v32 = v15;
      sub_24ADAF1D4(&v34, v30);
      sub_24ADA16A8();
      if (sub_24AE09468())
      {
        goto LABEL_13;
      }

      result = sub_24ADAFAD4(&v34);
      v7 += 184;
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_24ADAF1D4(&v34, v30);
LABEL_13:
    result = swift_isUniquelyReferenced_nonNull_native();
    v46 = v6;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB134(0, *(v6 + 16) + 1, 1);
      v6 = v46;
    }

    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_24ADFB134((v17 > 1), v18 + 1, 1);
      v6 = v46;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 184 * v18;
    v20 = v34;
    v21 = v35;
    v22 = v37;
    *(v19 + 64) = v36;
    *(v19 + 80) = v22;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    v23 = v38;
    v24 = v39;
    v25 = v41;
    *(v19 + 128) = v40;
    *(v19 + 144) = v25;
    *(v19 + 96) = v23;
    *(v19 + 112) = v24;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    *(v19 + 208) = v45;
    *(v19 + 176) = v27;
    *(v19 + 192) = v28;
    *(v19 + 160) = v26;
    v5 = v29;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_24ADC35A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5 + 184 * v4;
    for (i = v4; ; ++i)
    {
      if (i >= v2)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v9 = *(v7 + 144);
      v38 = *(v7 + 128);
      v39 = v9;
      v40 = *(v7 + 160);
      v41 = *(v7 + 176);
      v10 = *(v7 + 80);
      v34 = *(v7 + 64);
      v35 = v10;
      v11 = *(v7 + 112);
      v36 = *(v7 + 96);
      v37 = v11;
      v12 = *(v7 + 16);
      v30 = *v7;
      v31 = v12;
      v13 = *(v7 + 48);
      v32 = *(v7 + 32);
      v33 = v13;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }

      v14 = *(a2 + 64);
      v15 = *(a2 + 56) & 0xFFFFFFFFFFFFLL;
      if ((v14 & 0x2000000000000000) != 0)
      {
        v15 = HIBYTE(v14) & 0xF;
      }

      if (v15)
      {
        break;
      }

      v16 = *(a2 + 48);
      if (v16 <= 1)
      {
        if (!*(a2 + 48) && !v36)
        {
          break;
        }
      }

      else if (v16 == 3)
      {
        if (BYTE1(v39))
        {
          break;
        }
      }

      else if (v16 != 4 || (BYTE1(v39) & 1) == 0)
      {
        break;
      }

      v7 += 184;
      if (v4 == v2)
      {
        return v6;
      }
    }

    sub_24ADAF1D4(&v30, v29);
    result = swift_isUniquelyReferenced_nonNull_native();
    v42 = v6;
    if ((result & 1) == 0)
    {
      result = sub_24ADFB134(0, *(v6 + 16) + 1, 1);
      v6 = v42;
    }

    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_24ADFB134((v17 > 1), v18 + 1, 1);
      v6 = v42;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 184 * v18;
    v20 = v30;
    v21 = v31;
    v22 = v33;
    *(v19 + 64) = v32;
    *(v19 + 80) = v22;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
    v23 = v34;
    v24 = v35;
    v25 = v37;
    *(v19 + 128) = v36;
    *(v19 + 144) = v25;
    *(v19 + 96) = v23;
    *(v19 + 112) = v24;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    *(v19 + 208) = v41;
    *(v19 + 176) = v27;
    *(v19 + 192) = v28;
    *(v19 + 160) = v26;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_24ADC3794(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PersonModel();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v9 + 72);
  v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v26;
  v15 = MEMORY[0x277D84F90];
  v27 = v8;
  do
  {
    sub_24ADC3D4C(v14, v11, type metadata accessor for PersonModel);
    v16 = a2[8];
    v17 = a2[7] & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v16) & 0xF;
    }

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v18 = a2[6];
      sub_24ADC3E24(v18);
    }

    v28 = v18;
    v19 = PersonModel.contains(tag:)(&v28);
    sub_24ADC3E14(v28);
    if (v19)
    {
      sub_24ADC3C30(v11, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24ADFB2A0(0, *(v15 + 16) + 1, 1);
        v15 = v29;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_24ADFB2A0(v21 > 1, v22 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + v26 + v22 * v13;
      v8 = v27;
      sub_24ADC3C30(v27, v23);
    }

    else
    {
      sub_24ADC3DB4(v11, type metadata accessor for PersonModel);
    }

    v14 += v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_24ADC39D0(uint64_t result, uint64_t a2, uint64_t (*a3)(BOOL, uint64_t, uint64_t))
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < v3)
    {
      v8 = v5;
      if (__OFADD__(v5++, 1))
      {
        goto LABEL_21;
      }

      v10 = *(a2 + 40);
      if (*(v10 + 16) && (v11 = *(v6 + v8), v12 = *(v10 + 40), sub_24AE09838(), MEMORY[0x24C231780](v11), result = sub_24AE09868(), v13 = -1 << *(v10 + 32), v14 = result & ~v13, ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(*(v10 + 48) + v14) != v11)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = a3(0, *(v7 + 16) + 1, 1);
        }

        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          result = a3(v16 > 1, v17 + 1, 1);
        }

        *(v7 + 16) = v17 + 1;
        *(v7 + v17 + 32) = v11;
        if (v5 == v3)
        {
          return v7;
        }
      }

      else
      {
LABEL_3:
        if (v5 == v3)
        {
          return v7;
        }
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_24ADC3B80()
{
  result = qword_27EFA96C0;
  if (!qword_27EFA96C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA96C0);
  }

  return result;
}

unint64_t sub_24ADC3BD4()
{
  result = qword_27EFA96D0;
  if (!qword_27EFA96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA96D0);
  }

  return result;
}

uint64_t sub_24ADC3C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADC3C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ADC3CF8()
{
  result = qword_27EFA9708;
  if (!qword_27EFA9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9708);
  }

  return result;
}

uint64_t sub_24ADC3D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADC3DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ADC3E14(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_24ADC3E24(unint64_t result)
{
  if (result >= 2)
  {
    return sub_24AE08288();
  }

  return result;
}

unint64_t sub_24ADC3E34(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return sub_24AE08288();
  }

  return result;
}

unint64_t sub_24ADC3E58(unint64_t result)
{
  if (result >> 62 == 1)
  {
  }

  return result;
}

unint64_t sub_24ADC3EC4()
{
  result = qword_281519BA0;
  if (!qword_281519BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281519BA0);
  }

  return result;
}

unint64_t sub_24ADC3F18()
{
  result = qword_27EFA9760;
  if (!qword_27EFA9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9760);
  }

  return result;
}

unint64_t sub_24ADC3F6C(unint64_t result)
{
  if (result >> 1 != 0xFFFFFFFF)
  {
    sub_24ADC3E58(result);
  }

  return result;
}

unint64_t sub_24ADC3FB4()
{
  result = qword_27EFA9798;
  if (!qword_27EFA9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9798);
  }

  return result;
}

uint64_t sub_24ADC4008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_24AE08288();
    sub_24AE08288();

    return sub_24AE08288();
  }

  return result;
}

uint64_t sub_24ADC4058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ItemEntityQuery.Dependencies.fetchWithOptions.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ItemEntityQuery.Dependencies.init(fetchWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADC41B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v17[0] = v17 - v2;
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_24AE08718();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_24AE08508();
  __swift_allocate_value_buffer(v15, qword_27EFA97F0);
  __swift_project_value_buffer(v15, qword_27EFA97F0);
  sub_24AE08F08();
  *v9 = type metadata accessor for IntelligenceModule();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
  sub_24AE08938();
  sub_24AE08728();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return sub_24AE084F8();
}

uint64_t static PersonLocationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8658 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA97F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC4558()
{
  v0 = sub_24AE08E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PersonLocationEntityQuery();
  __swift_allocate_value_buffer(v7, qword_27EFA9808);
  v8 = __swift_project_value_buffer(v7, qword_27EFA9808);
  sub_24AE08DF8();
  v9 = *(v1 + 32);
  v9(v4, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v4, v0);
  v12 = v8 + *(v7 + 20);
  result = sub_24AE08DF8();
  *v8 = &unk_24AE0E250;
  v8[1] = v11;
  return result;
}

uint64_t static PersonLocationEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonLocationEntityQuery();
  v3 = __swift_project_value_buffer(v2, qword_27EFA9808);

  return sub_24ADC47A4(v3, a1);
}

uint64_t sub_24ADC47A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonLocationEntityQuery();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PersonLocationEntity.id.getter()
{
  v1 = *v0;
  sub_24AE08398();
  return v3;
}

uint64_t PersonLocationEntity.location.getter()
{
  v1 = *(v0 + 8);
  sub_24AE08398();
  return v3;
}

uint64_t sub_24ADC48F8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_24AE08978();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  v12 = *(v5 + 16);
  v12(v19 - v10, a1, v4);
  v13 = *a2;
  v19[5] = a2[1];
  v15 = a2[2];
  v14 = a2[3];
  v19[3] = v13;
  v19[4] = v14;
  v16 = a2[5];
  v19[0] = a2[4];
  v19[1] = v16;
  v17 = a2[7];
  v19[2] = a2[6];
  v12(v9, v11, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v11, v4);
}

double PersonLocationEntity.horizontalAccuracy.getter()
{
  v1 = *(v0 + 24);
  sub_24AE08398();
  return v3;
}

uint64_t sub_24ADC4B80(uint64_t a1, void *a2)
{
  v4 = sub_24AE088E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = *(v5 + 16);
  v12(v20 - v10, a1, v4);
  v13 = a2[1];
  v20[4] = *a2;
  v20[5] = v13;
  v14 = a2[2];
  v16 = a2[4];
  v15 = a2[5];
  v20[0] = a2[3];
  v20[1] = v16;
  v20[2] = v15;
  v17 = a2[6];
  v18 = a2[7];
  v20[3] = v17;
  v12(v9, v11, v4);

  sub_24AE083A8();
  (*(v5 + 8))(v11, v4);
}

uint64_t PersonLocationEntity.priority.getter()
{
  v1 = *(v0 + 40);
  sub_24AE08398();
  return v3;
}

uint64_t PersonLocationEntity.motionActivity.getter()
{
  v1 = *(v0 + 48);
  sub_24AE08398();
  return v3;
}

uint64_t PersonLocationEntity.init(id:location:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24AE088E8();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v57 = &v49 - v10;
  v56 = sub_24AE08978();
  v54 = *(v56 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v56);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  v16 = sub_24AE08718();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v22 = a2[5];
  v89 = a2[4];
  v90 = v22;
  v23 = a2[7];
  v91 = a2[6];
  v92 = v23;
  v24 = a2[1];
  v85 = *a2;
  v86 = v24;
  v25 = a2[3];
  v87 = a2[2];
  v88 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F28, &qword_24AE0B450);
  *a3 = sub_24AE08408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F30, &qword_24AE0B458);
  a3[1] = sub_24AE08438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F38, &qword_24AE0B460);
  sub_24ADC5BF8(&qword_27EFA8F40, MEMORY[0x277CCB120]);
  v50 = sub_24AE083E8();
  a3[2] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F48, &qword_24AE0B468);
  v51 = sub_24AE08428();
  a3[3] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F50, &qword_24AE0B470);
  v52 = sub_24AE083F8();
  a3[4] = v52;
  v55 = sub_24AE08408();
  a3[5] = v55;
  v58 = sub_24AE08408();
  a3[6] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F58, &qword_24AE0B478);
  sub_24ADA6B90();
  v62 = sub_24AE083C8();
  a3[7] = v62;
  v26 = 0xE600000000000000;
  *&v74 = 0x3A3156444953;
  *(&v74 + 1) = 0xE600000000000000;
  MEMORY[0x24C230FB0](v21, v20);

  sub_24AE083A8();
  v78 = v90;
  v79 = v91;
  v80 = v92;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  LOBYTE(v63) = 2;
  v27 = v85;
  sub_24ADE7D84(0, &v63, v19);
  sub_24AE08FE8();
  v28 = sub_24AE08F88();

  v29 = [objc_opt_self() placemarkWithLocation:v27 name:v28 postalAddress:0];

  *&v74 = v29;
  v30 = v29;
  sub_24AE083A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8F60, &unk_24AE0B480);
  v31 = sub_24AE08958();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_24AE0A280;
  *(v35 + v34) = v27;
  (*(v32 + 104))(v35 + v34, *MEMORY[0x277CCB108], v31);
  v78 = v90;
  v79 = v91;
  v80 = v92;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  LOBYTE(v63) = 2;
  v36 = v27;
  sub_24ADE7D84(0, &v63, v19);
  sub_24AE08FE8();
  sub_24AE08968();
  v37 = v54;
  v38 = v56;
  (*(v54 + 16))(v53, v15, v56);
  sub_24AE083A8();
  (*(v37 + 8))(v15, v38);
  [v36 horizontalAccuracy];
  *&v74 = v39;
  sub_24AE083A8();
  v40 = [v36 timestamp];
  v41 = v57;
  sub_24AE088D8();

  v42 = v60;
  v43 = v61;
  (*(v60 + 16))(v59, v41, v61);
  sub_24AE083A8();
  (*(v42 + 8))(v41, v43);
  if (BYTE8(v85) > 2u)
  {
    if (BYTE8(v85) == 3)
    {
      v26 = 0xE900000000000065;
      v44 = 0x74696C6C65746173;
    }

    else if (BYTE8(v85) == 4)
    {
      v26 = 0xE700000000000000;
      v44 = 0x6567617373656DLL;
    }

    else
    {
      v26 = 0xE500000000000000;
      v44 = 0x726568746FLL;
    }
  }

  else if (BYTE8(v85))
  {
    if (BYTE8(v85) == 1)
    {
      v26 = 0x800000024AE12D70;
      v44 = 0xD000000000000012;
    }

    else
    {
      v26 = 0xE400000000000000;
      v44 = 1702259052;
    }
  }

  else
  {
    v44 = 0x79636167656CLL;
  }

  *&v74 = v44;
  *(&v74 + 1) = v26;
  sub_24AE083A8();
  if (BYTE9(v85) > 2u)
  {
    if (BYTE9(v85) == 3)
    {
      v45 = 0xE700000000000000;
      v47 = 1852732786;
    }

    else
    {
      if (BYTE9(v85) != 4)
      {
        v45 = 0xEA00000000006576;
        v46 = 0x69746F6D6F747561;
        goto LABEL_24;
      }

      v45 = 0xE700000000000000;
      v47 = 1818458467;
    }

    goto LABEL_22;
  }

  if (!BYTE9(v85))
  {
    v45 = 0xE700000000000000;
    v46 = 0x6E776F6E6B6E75;
    goto LABEL_24;
  }

  if (BYTE9(v85) != 1)
  {
    v45 = 0xE700000000000000;
    v47 = 1802264951;
LABEL_22:
    v46 = v47 | 0x676E6900000000;
    goto LABEL_24;
  }

  v45 = 0xEA00000000007972;
  v46 = 0x616E6F6974617473;
LABEL_24:
  *&v74 = v46;
  *(&v74 + 1) = v45;
  sub_24AE083A8();
  v67 = v90;
  v68 = v91;
  v69 = v92;
  v63 = v86;
  v64 = v87;
  v65 = v88;
  v66 = v89;
  sub_24AD9B858(&v86, &v74);
  LocationLabelEntity.init(model:)(&v63, &v74);
  sub_24ADA8FB8(&v85);
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v67 = v78;
  v68 = v79;
  v69 = v80;
  v70 = v81;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v66 = v77;
  return sub_24AE083A8();
}

uint64_t PersonLocationEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_24AE08718();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_24AE08F58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *v0;
  sub_24AE08F48();
  sub_24AE08F38();
  sub_24AE08398();
  sub_24AE08F18();

  sub_24AE08F38();
  sub_24AE086F8();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_24AE08478();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_24AE08488();
}

uint64_t sub_24ADC58EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonLocationEntityQuery();
  v3 = __swift_project_value_buffer(v2, qword_27EFA9808);

  return sub_24ADC47A4(v3, a1);
}

uint64_t sub_24ADC5964@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8658 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA97F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC5A0C(uint64_t a1)
{
  v2 = sub_24ADC5C44();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADC5A5C(uint64_t a1)
{
  v2 = sub_24ADC5D9C();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_24ADC5AAC()
{
  result = qword_27EFA9820;
  if (!qword_27EFA9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9820);
  }

  return result;
}

unint64_t sub_24ADC5B04()
{
  result = qword_27EFA9828;
  if (!qword_27EFA9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9828);
  }

  return result;
}

unint64_t sub_24ADC5B5C()
{
  result = qword_27EFA9830;
  if (!qword_27EFA9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9830);
  }

  return result;
}

uint64_t sub_24ADC5BF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24ADC5C44()
{
  result = qword_27EFA9840;
  if (!qword_27EFA9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9840);
  }

  return result;
}

unint64_t sub_24ADC5C9C()
{
  result = qword_27EFA9848;
  if (!qword_27EFA9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9848);
  }

  return result;
}

unint64_t sub_24ADC5CF0()
{
  result = qword_27EFA9850;
  if (!qword_27EFA9850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9850);
  }

  return result;
}

unint64_t sub_24ADC5D44()
{
  result = qword_27EFA9858;
  if (!qword_27EFA9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9858);
  }

  return result;
}

unint64_t sub_24ADC5D9C()
{
  result = qword_27EFA9860;
  if (!qword_27EFA9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9860);
  }

  return result;
}

unint64_t sub_24ADC5DF4()
{
  result = qword_27EFA9868;
  if (!qword_27EFA9868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA9870, &qword_24AE0E0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9868);
  }

  return result;
}

unint64_t sub_24ADC5E5C()
{
  result = qword_27EFA9878;
  if (!qword_27EFA9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9878);
  }

  return result;
}

uint64_t PersonLocationEntityQuery.Dependencies.fetchPeopleLocationsWithOptions.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonLocationEntityQuery.Dependencies.init(fetchPeopleLocationsWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADC5F50@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_24AE08E08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_24AE08DF8();
  v11 = *(v5 + 32);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = (v11)(v13 + v12, v8, v4);
  *a2 = a1;
  a2[1] = v13;
  return result;
}

uint64_t sub_24ADC60C8(uint64_t *a1, uint64_t a2)
{
  v2[3] = a2;
  v4 = sub_24AE08E08();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v6 = sub_24AE089E8();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = *(*(sub_24AE08A08() - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *a1;
  v2[11] = v10;
  v2[12] = v11;

  return MEMORY[0x2822009F8](sub_24ADC6220, 0, 0);
}

uint64_t sub_24ADC6220()
{
  v1 = v0[11];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D09048], v0[8]);
  sub_24AE08A18();
  v2 = sub_24AE08C18();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24ADC6304;
  v7 = v0[11];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24ADC6304(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_24ADC6404, 0, 0);
}

uint64_t sub_24ADC6404()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v5 + 16))(v3, v0[3], v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[15] = v7;
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  (*(v5 + 32))(v7 + v6, v3, v4);
  v8 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v9 = v0;
  v9[1] = sub_24ADC6580;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v7, v10);
}

uint64_t sub_24ADC6580()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_24ADC6870;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24ADC669C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADC669C()
{
  v18 = v0;
  v1 = v0[2];
  v2 = v0[3];
  sub_24AE08288();
  v3 = sub_24AE08DE8();
  v4 = sub_24AE093E8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0x6576694C6C616572, 0xEA00000000002928, &v17);
    *(v7 + 12) = 2080;
    sub_24ADAE700();
    v9 = sub_24AE08E28();
    v11 = sub_24AD9F840(v9, v10, &v17);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - result %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[7];

  v15 = v0[1];

  return v15(v1);
}

uint64_t sub_24ADC6870()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t objectdestroyTm()
{
  v1 = sub_24AE08E08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24ADC698C(uint64_t *a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24ADC6A64;

  return sub_24ADC60C8(a1, v1 + v5);
}

uint64_t sub_24ADC6A64(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24ADC6B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v60 = MEMORY[0x277D84F90];
  sub_24ADFB224(0, v1, 0);
  v2 = v60;
  v4 = -1 << *(a1 + 32);
  v38 = a1 + 64;
  result = sub_24AE09488();
  if (result < 0 || (v6 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v61 = *(a1 + 36);
    v37 = v1;
    v7 = 1;
    while (1)
    {
      v8 = v6 >> 6;
      if ((*(v38 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v61 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v9 = (*(a1 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = (*(a1 + 56) + (v6 << 7));
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v49[2] = v12[2];
      v49[3] = v13;
      v49[0] = v15;
      v49[1] = v14;
      v16 = v12[7];
      v18 = v12[4];
      v17 = v12[5];
      v49[6] = v12[6];
      v49[7] = v16;
      v49[4] = v18;
      v49[5] = v17;
      v19 = v12[5];
      v45 = v12[4];
      v46 = v19;
      v20 = v12[1];
      v41 = *v12;
      v42 = v20;
      v21 = v12[3];
      v43 = v12[2];
      v44 = v21;
      v22 = v12[7];
      v47 = v12[6];
      v48 = v22;
      v50[0] = v10;
      v50[1] = v11;
      v55 = v45;
      v56 = v19;
      v57 = v47;
      v58 = v22;
      v51 = v41;
      v52 = v20;
      v53 = v43;
      v54 = v21;
      sub_24AE08288();
      sub_24ADAE7A8(v49, v40);
      sub_24ADC8100(v50, v40);
      sub_24ADA8FB8(&v51);
      v39[0] = v10;
      v39[1] = v11;
      sub_24ADC8100(v50, v40);

      v40[4] = v55;
      v40[5] = v56;
      v40[6] = v57;
      v40[7] = v58;
      v40[0] = v51;
      v40[1] = v52;
      v40[2] = v53;
      v40[3] = v54;
      PersonLocationEntity.init(id:location:)(v39, v40, v59);
      result = sub_24ADC8170(v50);
      v60 = v2;
      v24 = *(v2 + 16);
      v23 = *(v2 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_24ADFB224((v23 > 1), v24 + 1, 1);
        v2 = v60;
      }

      *(v2 + 16) = v24 + 1;
      v25 = (v2 + (v24 << 6));
      v26 = v59[0];
      v27 = v59[1];
      v28 = v59[3];
      v25[4] = v59[2];
      v25[5] = v28;
      v25[2] = v26;
      v25[3] = v27;
      v29 = 1 << *(a1 + 32);
      if (v6 >= v29)
      {
        goto LABEL_27;
      }

      v30 = *(v38 + 8 * v8);
      if ((v30 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v61 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v6 & 0x3F));
      if (v31)
      {
        v6 = __clz(__rbit64(v31)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v8 << 6;
        v33 = v8 + 1;
        v34 = (a1 + 72 + 8 * v8);
        while (v33 < (v29 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_24ADAE8DC(v6, v61, 0);
            v6 = __clz(__rbit64(v35)) + v32;
            goto LABEL_19;
          }
        }

        result = sub_24ADAE8DC(v6, v61, 0);
        v6 = v29;
      }

LABEL_19:
      if (v7 == v37)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        ++v7;
        if (v6 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

__n128 PersonLocationEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(type metadata accessor for PersonLocationEntityQuery() + 20);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for PersonLocationEntityQuery()
{
  result = qword_27EFA98A8;
  if (!qword_27EFA98A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonLocationEntityQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  v12 = *(type metadata accessor for PersonLocationEntityQuery() + 20);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0E250;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADC70F0(uint64_t *a1)
{
  v4 = *(sub_24AE08E08() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24ADC81D8;

  return sub_24ADC60C8(a1, v1 + v5);
}

uint64_t PersonLocationEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24ADC71E8, 0, 0);
}

uint64_t sub_24ADC71E8()
{
  v35 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(type metadata accessor for PersonLocationEntityQuery() + 20);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v34);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C231100](v6, MEMORY[0x277D837D0]);
    v11 = sub_24AD9F840(v9, v10, &v34);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - ids: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = v0[3];
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v17 = *(v14 - 1);
      v16 = *v14;
      sub_24AE08288();
      if (sub_24AE090D8())
      {
        v18 = sub_24AE09058();
        v19 = sub_24ADF89E4(v18, v17, v16);
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v17 = MEMORY[0x24C230F60](v19, v21, v23, v25);
        v16 = v26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_24ADAB104(0, *(v15 + 2) + 1, 1, v15);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_24ADAB104((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[16 * v28];
      *(v29 + 4) = v17;
      *(v29 + 5) = v16;
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v30 = sub_24ADAE028(v15);

  v0[2] = v30;
  v31 = swift_task_alloc();
  v0[5] = v31;
  *v31 = v0;
  v31[1] = sub_24ADC750C;
  v32 = v0[4];

  return sub_24ADC76C0(v0 + 2);
}

uint64_t sub_24ADC750C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v10 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v6 = *(v4 + 16);

    v7 = sub_24ADA9F94;
  }

  else
  {
    *(v4 + 56) = a1;
    v8 = *(v4 + 16);

    v7 = sub_24ADC7640;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24ADC7640()
{
  v1 = v0[6];
  v2 = sub_24ADC6B60(v0[7]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_24ADC76C0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  return MEMORY[0x2822009F8](sub_24ADC76E4, 0, 0);
}

uint64_t sub_24ADC76E4()
{
  v19 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 72) = *(type metadata accessor for PersonLocationEntityQuery() + 20);
  sub_24AE08288();
  v3 = sub_24AE08DE8();
  v4 = sub_24AE09408();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AD9F840(0xD00000000000001ELL, 0x800000024AE132A0, &v18);
    *(v6 + 12) = 2080;
    *(v0 + 24) = v5;
    sub_24AE08288();
    v8 = sub_24AE08FF8();
    v10 = sub_24AD9F840(v8, v9, &v18);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - will call fetchPeopleLocationsWithOptions %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v7, -1, -1);
    MEMORY[0x24C231F80](v6, -1, -1);
  }

  v11 = *(v0 + 32);
  v12 = *v11;
  v13 = v11[1];
  *(v0 + 16) = *(v0 + 40);
  v17 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v0 + 48) = v15;
  *v15 = v0;
  v15[1] = sub_24ADC7938;

  return v17(v0 + 16);
}

uint64_t sub_24ADC7938(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_24ADAA4EC;
  }

  else
  {
    v5 = sub_24ADC7A4C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADC7A4C()
{
  v16 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD00000000000001ELL, 0x800000024AE132A0, &v15);
    *(v7 + 12) = 2080;
    sub_24ADAE700();
    v9 = sub_24AE08E28();
    v11 = sub_24AD9F840(v9, v10, &v15);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - did receive fetchPeopleLocationsWithOptions %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 56);

  return v12(v13);
}

uint64_t sub_24ADC7C00@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24AE08E08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  sub_24AE08DF8();
  v11 = *(v5 + 32);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v8, v4);
  v14 = a2 + *(a1 + 20);
  result = sub_24AE08DF8();
  *a2 = &unk_24AE0E3A8;
  a2[1] = v13;
  return result;
}

uint64_t sub_24ADC7DB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return PersonLocationEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADC7E44(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_24ADC80BC(&qword_27EFA9838);
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_24ADC7FB4()
{
  result = qword_27EFA9898;
  if (!qword_27EFA9898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA98A0, qword_24AE0E2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9898);
  }

  return result;
}

uint64_t sub_24ADC8040()
{
  result = sub_24AE08E08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADC80BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonLocationEntityQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ADC8100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98B8, &unk_24AE0E3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADC8170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98B8, &unk_24AE0E3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADC81DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v17[0] = v17 - v2;
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_24AE086E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_24AE08F78();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_24AE08718();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_24AE08508();
  __swift_allocate_value_buffer(v15, qword_27EFA98C0);
  __swift_project_value_buffer(v15, qword_27EFA98C0);
  sub_24AE08F08();
  *v9 = type metadata accessor for IntelligenceModule();
  (*(v6 + 104))(v9, *MEMORY[0x277CC9120], v5);
  sub_24AE08938();
  sub_24AE08728();
  (*(v13 + 56))(v17[0], 1, 1, v12);
  return sub_24AE084F8();
}

uint64_t static PersonEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8668 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC8584()
{
  v0 = sub_24AE08E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PersonEntityQuery();
  __swift_allocate_value_buffer(v7, qword_27EFA98D8);
  v8 = __swift_project_value_buffer(v7, qword_27EFA98D8);
  sub_24AE08DF8();
  v9 = *(v1 + 32);
  v9(v4, v6, v0);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v4, v0);
  v12 = v8 + *(v7 + 20);
  result = sub_24AE08DF8();
  *v8 = &unk_24AE0E978;
  v8[1] = v11;
  return result;
}

uint64_t static PersonEntity.defaultQuery.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonEntityQuery();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98D8);
  return sub_24ADC8834(v3, a1, type metadata accessor for PersonEntityQuery);
}

uint64_t PersonEntity.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_24AE08288();
}

uint64_t sub_24ADC8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ADC88F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24AE08378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *(a2 + *(type metadata accessor for PersonEntity(0) + 20));
  v12(v9, v11, v4);
  sub_24AE083A8();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PersonEntity.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AE08378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(type metadata accessor for PersonEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  *(a2 + v12) = sub_24AE083D8();
  sub_24ADC8834(a1, a2, type metadata accessor for PersonModel);
  sub_24ADC8C00(v11);
  (*(v5 + 16))(v9, v11, v4);
  sub_24AE083A8();
  sub_24ADCBC10(a1, type metadata accessor for PersonModel);
  return (*(v5 + 8))(v11, v4);
}

size_t sub_24ADC8C00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = v64 - v5;
  v71 = sub_24AE08358();
  v75 = *(v71 - 8);
  v6 = *(v75 + 8);
  MEMORY[0x28223BE20](v71);
  v70 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24AE08368();
  v79 = *(v72 - 8);
  v8 = *(v79 + 64);
  v9 = MEMORY[0x28223BE20](v72);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9108, &qword_24AE0BA28);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v67 = v64 - v19;
  v20 = sub_24AE08318();
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A98, &qword_24AE0E970);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (v64 - v26);
  v28 = sub_24AE082E8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = v2[11];
  v74 = v33;
  if (v33)
  {
    *v27 = v2[10];
    v27[1] = v33;
    (*(v29 + 104))(v27, *MEMORY[0x277CB9CD0], v28);
    (*(v29 + 56))(v27, 0, 1, v28);
    (*(v29 + 32))(v32, v27, v28);
  }

  else
  {
    (*(v29 + 56))(v27, 1, 1, v28);
    v34 = *v2;
    v35 = v2[1];
    v80 = 0x3A3156444953;
    v81 = 0xE600000000000000;
    v73 = v20;
    MEMORY[0x24C230FB0](v34, v35);
    v20 = v73;
    v36 = v81;
    *v32 = v80;
    v32[1] = v36;
    (*(v29 + 104))(v32, *MEMORY[0x277CB9CC8], v28);
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      sub_24AD92BE4(v27, &qword_27EFA9A98, &qword_24AE0E970);
    }
  }

  v37 = v2[9];
  *v23 = v2[8];
  v23[1] = v37;
  v38 = *MEMORY[0x277CB9CF8];
  v39 = *(v77 + 104);
  v64[1] = v23;
  v39(v23, v38, v20);
  v41 = v2[2];
  v40 = v2[3];
  v42 = *(v2 + 32);
  v43 = v2[6];
  v78 = v11;
  v76 = v14;
  if (v42)
  {
    if (v42 == 1)
    {
      (*(v75 + 13))(v70, *MEMORY[0x277CB9D48], v71);
      sub_24AE08288();
      sub_24AE08288();
      swift_bridgeObjectRetain_n();
      sub_24AE08288();
      sub_24AE08338();
    }

    else
    {
      sub_24AE08288();
      sub_24AE08288();
      swift_bridgeObjectRetain_n();
      sub_24AE08288();
      sub_24AE08348();
    }
  }

  else
  {
    (*(v75 + 13))(v70, *MEMORY[0x277CB9D48], v71);
    sub_24AE08288();
    sub_24AE08288();
    swift_bridgeObjectRetain_n();
    sub_24AE08288();
    sub_24AE08328();
  }

  v44 = v79;
  v45 = *(v79 + 32);
  v46 = v67;
  v47 = v72;
  v77 = v79 + 32;
  v45(v67, v16, v72);

  (*(v44 + 56))(v46, 0, 1, v47);
  v48 = v2[7];
  v49 = *(v48 + 16);
  if (v49)
  {
    v64[0] = v32;
    v80 = MEMORY[0x277D84F90];
    result = sub_24ADFB25C(0, v49, 0);
    v51 = 0;
    v52 = v80;
    v69 = *MEMORY[0x277CB9D48];
    v68 = (v75 + 104);
    v53 = (v48 + 64);
    v74 = v48;
    v75 = v45;
    v73 = v49;
    v54 = v76;
    while (v51 < *(v48 + 16))
    {
      v55 = *(v53 - 4);
      v56 = *(v53 - 3);
      v57 = *v53;
      if (*(v53 - 16))
      {
        if (*(v53 - 16) == 1)
        {
          (*v68)(v70, v69, v71);
          swift_bridgeObjectRetain_n();
          sub_24AE08288();
          v58 = v78;
          v47 = v72;
          sub_24AE08338();
        }

        else
        {
          v59 = *(v53 - 3);
          swift_bridgeObjectRetain_n();
          sub_24AE08288();
          v58 = v78;
          sub_24AE08348();
        }
      }

      else
      {
        (*v68)(v70, v69, v71);
        swift_bridgeObjectRetain_n();
        sub_24AE08288();
        v58 = v78;
        v47 = v72;
        sub_24AE08328();
      }

      v60 = v75;
      v75(v54, v58, v47);

      v80 = v52;
      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_24ADFB25C(v61 > 1, v62 + 1, 1);
        v52 = v80;
      }

      ++v51;
      *(v52 + 16) = v62 + 1;
      result = v60(v52 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v62, v54, v47);
      v53 += 5;
      v48 = v74;
      if (v73 == v51)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    v63 = sub_24AE08478();
    (*(*(v63 - 8) + 56))(v65, 1, 1, v63);
    return sub_24AE082F8();
  }

  return result;
}

uint64_t PersonEntity.displayRepresentation.getter()
{
  v1 = sub_24AE08378();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for PersonEntity(0) + 20));
  sub_24AE08398();
  sub_24AE08308();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_24ADC95D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for PersonEntityQuery();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98D8);
  return sub_24ADC8834(v3, a1, type metadata accessor for PersonEntityQuery);
}

uint64_t sub_24ADC9658@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EFA8668 != -1)
  {
    swift_once();
  }

  v2 = sub_24AE08508();
  v3 = __swift_project_value_buffer(v2, qword_27EFA98C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ADC9700(uint64_t a1)
{
  v2 = sub_24ADCBB0C(&qword_27EFA9948, type metadata accessor for PersonEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_24ADC977C(uint64_t a1)
{
  v3 = sub_24AE08378();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(a1 + 20));
  sub_24AE08398();
  sub_24AE08308();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24ADC9860(uint64_t a1)
{
  v2 = sub_24ADCBB0C(&qword_27EFA9968, type metadata accessor for PersonEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

__n128 PersonEntity.init(noHydration:)@<Q0>(unint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(type metadata accessor for PersonEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
  *(a2->n128_u64 + v5) = sub_24AE083D8();
  v27 = 0x3A3156444953;
  v28 = 0xE600000000000000;
  sub_24AE08288();
  MEMORY[0x24C230FB0](v3, v4);
  PersonModel.Handle.init(rawValue:)(0x3A3156444953, 0xE600000000000000, &v22);
  v18[0] = v22;
  v18[1] = v23;
  v19 = v24;
  v20 = v25;
  v21 = v26;
  PersonModel.AssociatedHandles.init(mainHandle:otherHandles:)(v18, &v27);
  v6 = v28;
  v16 = v27;
  v7 = v29;
  v8 = v30;
  v17 = v31;
  v22 = 0x3A3156444953;
  v23 = 0xE600000000000000;
  MEMORY[0x24C230FB0](v3, v4);

  v10 = v22;
  v9 = v23;
  if (qword_27EFA87F8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PersonModel.Relationship(0);
  v12 = __swift_project_value_buffer(v11, qword_27EFAA6C0);
  v13 = type metadata accessor for PersonModel();
  sub_24ADC8834(v12, a2 + *(v13 + 32), type metadata accessor for PersonModel.Relationship);
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v4;
  a2[1].n128_u64[0] = v16;
  a2[1].n128_u64[1] = v6;
  a2[2].n128_u8[0] = v7;
  a2[2].n128_u64[1] = v8;
  result = v17;
  a2[3] = v17;
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v9;
  a2[5].n128_u64[0] = 0;
  a2[5].n128_u64[1] = 0;
  v15 = a2 + *(v13 + 36);
  *v15 = 0;
  v15[8] = 1;
  return result;
}

uint64_t static PersonEntity.transferRepresentation.getter()
{
  v0 = sub_24AE08DD8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_24AE08DC8();
  type metadata accessor for PersonEntity(0);
  sub_24ADCBB0C(&qword_27EFA98F0, type metadata accessor for PersonEntity);
  return sub_24AE08DB8();
}

uint64_t sub_24ADC9B84(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(type metadata accessor for PersonModel() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for PersonEntity.PayloadV1(0);
  v1[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADC9C44, 0, 0);
}

uint64_t sub_24ADC9C44()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_24AE085D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_24AE085C8();
  sub_24ADC8834(v4, v3, type metadata accessor for PersonModel);
  sub_24ADC9E0C(v3, v1);
  sub_24ADCBB0C(&qword_27EFA9A90, type metadata accessor for PersonEntity.PayloadV1);
  v8 = sub_24AE085B8();
  v9 = v0[3];
  v10 = v8;
  v12 = v11;
  sub_24ADCBC10(v0[5], type metadata accessor for PersonEntity.PayloadV1);

  v13 = v0[1];

  return v13(v10, v12);
}

uint64_t sub_24ADC9E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v66 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v56 - v7;
  v8 = type metadata accessor for PersonModel.Relationship.Follower(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v56 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - v17;
  v19 = type metadata accessor for PersonModel.Relationship.Following(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for PersonModel();
  v30 = *(v61 + 32);
  v64 = a1;
  v31 = a1 + v30;
  sub_24ADC8834(v31, v25, type metadata accessor for PersonModel.Relationship.Following);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_24ADCBC10(v25, type metadata accessor for PersonModel.Relationship.Following);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v25[*(v32 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    sub_24AD92BE4(v25, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  sub_24ADC8834(v31, v23, type metadata accessor for PersonModel.Relationship.Following);
  v58 = swift_getEnumCaseMultiPayload();
  if (v58 == 1)
  {
    sub_24AD92BE4(v23, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v23, type metadata accessor for PersonModel.Relationship.Following);
  }

  v57 = type metadata accessor for PersonModel.Relationship(0);
  v33 = *(v57 + 20);
  sub_24ADC8834(v31 + v33, v18, type metadata accessor for PersonModel.Relationship.Follower);
  v34 = swift_getEnumCaseMultiPayload();
  v35 = v66;
  if (v34)
  {
    sub_24ADCBC10(v18, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8);
    sub_24AD92BE4(&v18[*(v36 + 48)], &qword_27EFA8878, &qword_24AE0E6E0);
    v35 = v66;
    sub_24AD92BE4(v18, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  sub_24ADC8834(v31 + v33, v16, type metadata accessor for PersonModel.Relationship.Follower);
  v37 = swift_getEnumCaseMultiPayload();
  v38 = v62;
  if (v37)
  {
    v39 = sub_24AE088E8();
    (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
    sub_24ADCBC10(v16, type metadata accessor for PersonModel.Relationship.Follower);
  }

  else
  {
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8888, &qword_24AE0A2D8) + 48);
    sub_24ADCC510(v16, v35);
    sub_24AD92BE4(&v16[v40], &qword_27EFA8878, &qword_24AE0E6E0);
  }

  v41 = v63;
  sub_24ADCC510(v35, v63);
  v42 = v60;
  sub_24ADC8834(v31 + v33, v60, type metadata accessor for PersonModel.Relationship.Follower);
  v43 = swift_getEnumCaseMultiPayload();
  if (v43 == 1)
  {
    sub_24AD92BE4(v42, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v42, type metadata accessor for PersonModel.Relationship.Follower);
  }

  sub_24ADC8834(v31 + v33, v38, type metadata accessor for PersonModel.Relationship.Follower);
  v44 = swift_getEnumCaseMultiPayload();
  if (v44 == 2)
  {
    sub_24AD92BE4(v38, &qword_27EFA8878, &qword_24AE0E6E0);
  }

  else
  {
    sub_24ADCBC10(v38, type metadata accessor for PersonModel.Relationship.Follower);
  }

  v45 = v44 == 2;
  v46 = v43 == 1;
  v47 = v58 == 1;
  v48 = *(v31 + *(v57 + 24));
  if (v48 == 2)
  {
    v49 = 2;
  }

  else
  {
    v49 = v48 & 1;
  }

  *v29 = EnumCaseMultiPayload == 0;
  v29[1] = v47;
  v29[2] = v34 == 0;
  sub_24ADCC510(v41, &v29[v26[7]]);
  v29[v26[8]] = v46;
  v29[v26[9]] = v45;
  v29[v26[10]] = v49;
  v50 = v65;
  sub_24ADCBBAC(v29, v65);
  v51 = (v64 + *(v61 + 36));
  v52 = *v51;
  v53 = *(v51 + 8);
  sub_24ADCBC10(v64, type metadata accessor for PersonModel);
  result = type metadata accessor for PersonEntity.PayloadV1(0);
  v55 = v50 + *(result + 20);
  *v55 = v52;
  *(v55 + 8) = v53;
  return result;
}

uint64_t sub_24ADCA4B8(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A78, &qword_24AE0E950);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A80, &qword_24AE0E958);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A88, &unk_24AE0E960);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCCA90();
  sub_24AE09888();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24ADCCAE4();
    sub_24AE09708();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24ADCCB38();
    sub_24AE09708();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t sub_24ADCA774(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A10, &qword_24AE0E920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCC468();
  sub_24AE09888();
  v11 = *v3;
  v19[15] = 0;
  sub_24AE09758();
  if (!v2)
  {
    v12 = v3[1];
    v19[14] = 1;
    sub_24AE09758();
    v13 = v3[2];
    v19[13] = 2;
    sub_24AE09758();
    v14 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
    v15 = v14[7];
    v19[12] = 3;
    sub_24AE088E8();
    sub_24ADCBB0C(&qword_27EFA9A20, MEMORY[0x277CC9578]);
    sub_24AE09738();
    v16 = v3[v14[8]];
    v19[11] = 4;
    sub_24AE09758();
    v17 = v3[v14[9]];
    v19[10] = 5;
    sub_24AE09758();
    v19[9] = v3[v14[10]];
    v19[8] = 6;
    sub_24ADCC4BC();
    sub_24AE09738();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24ADCAA40@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A30, &qword_24AE0E928);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24ADCC468();
  v18 = v11;
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  v20 = v23;
  v19 = v24;
  v33 = 0;
  *v15 = sub_24AE096D8() & 1;
  v32 = 1;
  v15[1] = sub_24AE096D8() & 1;
  v31 = 2;
  v15[2] = sub_24AE096D8() & 1;
  sub_24AE088E8();
  v30 = 3;
  sub_24ADCBB0C(&qword_27EFA9A38, MEMORY[0x277CC9578]);
  sub_24AE096B8();
  sub_24ADCC510(v7, &v15[v12[7]]);
  v29 = 4;
  v15[v12[8]] = sub_24AE096D8() & 1;
  v28 = 5;
  v15[v12[9]] = sub_24AE096D8() & 1;
  v26 = 6;
  sub_24ADCC580();
  sub_24AE096B8();
  (*(v20 + 8))(v18, v19);
  v15[v12[10]] = v27;
  sub_24ADC8834(v15, v22, type metadata accessor for PersonEntity.PayloadV1.Relationship);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_24ADCBC10(v15, type metadata accessor for PersonEntity.PayloadV1.Relationship);
}

uint64_t sub_24ADCAE6C()
{
  if (*v0)
  {
    result = 0x6552746F4E646964;
  }

  else
  {
    result = 0x746F4E646574706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_24ADCAEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F4E646574706FLL && a2 == 0xEF65726168536F54;
  if (v6 || (sub_24AE097C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6552746F4E646964 && a2 == 0xEB00000000796C70)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE097C8();

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

uint64_t sub_24ADCAFA4(uint64_t a1)
{
  v2 = sub_24ADCCA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCAFE0(uint64_t a1)
{
  v2 = sub_24ADCCA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB01C(uint64_t a1)
{
  v2 = sub_24ADCCAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB058(uint64_t a1)
{
  v2 = sub_24ADCCAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB094(uint64_t a1)
{
  v2 = sub_24ADCCB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB0D0(uint64_t a1)
{
  v2 = sub_24ADCCB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB10C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24ADCC5D4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_24ADCB158()
{
  v1 = 0x776F6C6C6F467369;
  v2 = *v0;
  v3 = 0x6E69646E65507369;
  if (v2 != 5)
  {
    v3 = 0x617453796C706572;
  }

  v4 = 0xD000000000000012;
  if (v2 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x776F6C6C6F467369;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ADCB248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ADCD15C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ADCB27C(uint64_t a1)
{
  v2 = sub_24ADCC468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB2B8(uint64_t a1)
{
  v2 = sub_24ADCC468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ADCB324()
{
  if (*v0)
  {
    result = 0x657469726F766166;
  }

  else
  {
    result = 0x6E6F6974616C6572;
  }

  *v0;
  return result;
}

uint64_t sub_24ADCB374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
  if (v6 || (sub_24AE097C8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xED0000726564724FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AE097C8();

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

uint64_t sub_24ADCB45C(uint64_t a1)
{
  v2 = sub_24ADCBA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ADCB498(uint64_t a1)
{
  v2 = sub_24ADCBA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonEntity.PayloadV1.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA98F8, &qword_24AE0E3D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCBA98();
  sub_24AE09888();
  v15[15] = 0;
  type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  sub_24ADCBB0C(&qword_27EFA9908, type metadata accessor for PersonEntity.PayloadV1.Relationship);
  sub_24AE09768();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for PersonEntity.PayloadV1(0) + 20));
    v12 = *v11;
    v13 = *(v11 + 8);
    v15[14] = 1;
    sub_24AE09728();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PersonEntity.PayloadV1.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9910, &qword_24AE0E3D8);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PersonEntity.PayloadV1(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCBA98();
  sub_24AE09878();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v10;
  v15 = v13;
  v16 = v27;
  v31 = 0;
  sub_24ADCBB0C(&qword_27EFA9918, type metadata accessor for PersonEntity.PayloadV1.Relationship);
  v18 = v28;
  v17 = v29;
  sub_24AE096E8();
  sub_24ADCBBAC(v18, v15);
  v30 = 1;
  v19 = sub_24AE096A8();
  LOBYTE(v18) = v20;
  (*(v16 + 8))(v9, v17);
  v21 = v26;
  v22 = v15 + *(v25 + 20);
  *v22 = v19;
  *(v22 + 8) = v18 & 1;
  sub_24ADC8834(v15, v21, type metadata accessor for PersonEntity.PayloadV1);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_24ADCBC10(v15, type metadata accessor for PersonEntity.PayloadV1);
}

uint64_t sub_24ADCB9EC()
{
  v0 = sub_24AE08DD8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_24AE08DC8();
  return sub_24AE08DB8();
}

unint64_t sub_24ADCBA98()
{
  result = qword_27EFA9900;
  if (!qword_27EFA9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9900);
  }

  return result;
}

uint64_t sub_24ADCBB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ADCBB74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ADCBBAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity.PayloadV1.Relationship(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADCBC10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ADCBD94()
{
  result = qword_27EFA9940;
  if (!qword_27EFA9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9940);
  }

  return result;
}

void sub_24ADCBF94()
{
  type metadata accessor for PersonModel();
  if (v0 <= 0x3F)
  {
    sub_24ADCC018();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC018()
{
  if (!qword_27EFA9998)
  {
    sub_24AE08378();
    sub_24ADCBB0C(&qword_27EFA99A0, MEMORY[0x277CB9DB8]);
    v0 = sub_24AE08448();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9998);
    }
  }
}

void sub_24ADCC0D4()
{
  type metadata accessor for PersonEntity.PayloadV1.Relationship(319);
  if (v0 <= 0x3F)
  {
    sub_24ADCC29C(319, &qword_27EFA99B8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC190()
{
  sub_24ADCC244();
  if (v0 <= 0x3F)
  {
    sub_24ADCC29C(319, &qword_27EFA99E8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ADCC244()
{
  if (!qword_27EFA99E0)
  {
    sub_24AE088E8();
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA99E0);
    }
  }
}

void sub_24ADCC29C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_24AE09438();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_24ADCC30C()
{
  result = qword_27EFA99F0;
  if (!qword_27EFA99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA99F0);
  }

  return result;
}

unint64_t sub_24ADCC364()
{
  result = qword_27EFA99F8;
  if (!qword_27EFA99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA99F8);
  }

  return result;
}

unint64_t sub_24ADCC3BC()
{
  result = qword_27EFA9A00;
  if (!qword_27EFA9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A00);
  }

  return result;
}

unint64_t sub_24ADCC414()
{
  result = qword_27EFA9A08;
  if (!qword_27EFA9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A08);
  }

  return result;
}

unint64_t sub_24ADCC468()
{
  result = qword_27EFA9A18;
  if (!qword_27EFA9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A18);
  }

  return result;
}

unint64_t sub_24ADCC4BC()
{
  result = qword_27EFA9A28;
  if (!qword_27EFA9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A28);
  }

  return result;
}

uint64_t sub_24ADCC510(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8878, &qword_24AE0E6E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ADCC580()
{
  result = qword_27EFA9A40;
  if (!qword_27EFA9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A40);
  }

  return result;
}

uint64_t sub_24ADCC5D4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A48, &qword_24AE0E930);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A50, &qword_24AE0E938);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9A58, &unk_24AE0E940);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ADCCA90();
  v15 = v32;
  sub_24AE09878();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24AE096F8();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24ADB4B80();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24AE09558();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA93A8, &qword_24AE0C6E0) + 48);
    *v24 = &type metadata for PersonEntity.PayloadV1.Relationship.ReplyState;
    sub_24AE09688();
    sub_24AE09548();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24ADCCAE4();
    sub_24AE09678();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24ADCCB38();
    sub_24AE09678();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v32);
  return v37 & 1;
}

unint64_t sub_24ADCCA90()
{
  result = qword_27EFA9A60;
  if (!qword_27EFA9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A60);
  }

  return result;
}

unint64_t sub_24ADCCAE4()
{
  result = qword_27EFA9A68;
  if (!qword_27EFA9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A68);
  }

  return result;
}

unint64_t sub_24ADCCB38()
{
  result = qword_27EFA9A70;
  if (!qword_27EFA9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9A70);
  }

  return result;
}

uint64_t sub_24ADCCB8C(uint64_t *a1, uint64_t a2)
{
  v6 = *(sub_24AE08E08() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24ADC6A64;

  return sub_24ADD0F58(a1, a2, v2 + v7);
}

uint64_t getEnumTagSinglePayload for PersonEntity.PayloadV1.Relationship.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersonEntity.PayloadV1.Relationship.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24ADCCDF0()
{
  result = qword_27EFA9AA0;
  if (!qword_27EFA9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AA0);
  }

  return result;
}

unint64_t sub_24ADCCE48()
{
  result = qword_27EFA9AA8;
  if (!qword_27EFA9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AA8);
  }

  return result;
}

unint64_t sub_24ADCCEA0()
{
  result = qword_27EFA9AB0;
  if (!qword_27EFA9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AB0);
  }

  return result;
}

unint64_t sub_24ADCCEF8()
{
  result = qword_27EFA9AB8;
  if (!qword_27EFA9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AB8);
  }

  return result;
}

unint64_t sub_24ADCCF50()
{
  result = qword_27EFA9AC0;
  if (!qword_27EFA9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AC0);
  }

  return result;
}

unint64_t sub_24ADCCFA8()
{
  result = qword_27EFA9AC8;
  if (!qword_27EFA9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AC8);
  }

  return result;
}

unint64_t sub_24ADCD000()
{
  result = qword_27EFA9AD0;
  if (!qword_27EFA9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AD0);
  }

  return result;
}

unint64_t sub_24ADCD058()
{
  result = qword_27EFA9AD8;
  if (!qword_27EFA9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AD8);
  }

  return result;
}

unint64_t sub_24ADCD0B0()
{
  result = qword_27EFA9AE0;
  if (!qword_27EFA9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AE0);
  }

  return result;
}

unint64_t sub_24ADCD108()
{
  result = qword_27EFA9AE8;
  if (!qword_27EFA9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9AE8);
  }

  return result;
}

uint64_t sub_24ADCD15C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x776F6C6C6F467369 && a2 == 0xEB00000000676E69;
  if (v3 || (sub_24AE097C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024AE13300 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F6C6C6F467369 && a2 == 0xEA00000000007265 || (sub_24AE097C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024AE13320 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024AE13340 == a2 || (sub_24AE097C8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E69646E65507369 && a2 == 0xEE00726566664F67 || (sub_24AE097C8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617453796C706572 && a2 == 0xEA00000000006574)
  {

    return 6;
  }

  else
  {
    v6 = sub_24AE097C8();

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

__n128 PersonEntityQuery.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(type metadata accessor for PersonEntityQuery() + 20);
  sub_24AE08DF8();
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for PersonEntityQuery()
{
  result = qword_27EFA9B28;
  if (!qword_27EFA9B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonEntityQuery.init()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  v9((v11 + v10), v6, v2);
  v12 = *(type metadata accessor for PersonEntityQuery() + 20);
  result = sub_24AE08DF8();
  *a1 = &unk_24AE0E978;
  a1[1] = v11;
  return result;
}

uint64_t PersonEntityQuery.customDefaultResult()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_24AE08378();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for PersonModel();
  v2[18] = v6;
  v7 = *(v6 - 8);
  v2[19] = v7;
  v8 = *(v7 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9AF0, &qword_24AE0ED38) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADCD7B4, 0, 0);
}

uint64_t sub_24ADCD7B4()
{
  v10 = v0;
  v1 = *(v0 + 104);
  *(v0 + 216) = *(type metadata accessor for PersonEntityQuery() + 20);
  v2 = sub_24AE08DE8();
  v3 = sub_24AE09408();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v9);
    _os_log_impl(&dword_24AD89000, v2, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x24C231F80](v5, -1, -1);
    MEMORY[0x24C231F80](v4, -1, -1);
  }

  *(v0 + 88) = 0;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_24ADCD93C;
  v7 = *(v0 + 104);

  return sub_24ADCE050((v0 + 88));
}

uint64_t sub_24ADCD93C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v7 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v5 = sub_24ADCDE0C;
  }

  else
  {
    v5 = sub_24ADCDA50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADCDA50()
{
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = qword_27EFAA638;
  v2 = qword_27EFA87F0;
  sub_24AE08288();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 200);
  v4 = qword_27EFAA640;
  v5 = MEMORY[0x277D84F90];
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = MEMORY[0x277D84F90];
  *&v35 = MEMORY[0x277D84F90];
  sub_24AE08288();
  *(&v35 + 1) = sub_24ADC2030(v5);
  *&v36 = v1;
  *(&v36 + 1) = v4;
  sub_24ADBC970(v3);

  *(v0 + 48) = v36;
  *(v0 + 64) = 0uLL;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 16) = v34;
  *(v0 + 32) = v35;
  v6 = *(v0 + 32);
  if (*(v6 + 16))
  {
    v7 = *(*(v0 + 152) + 80);
    sub_24ADD082C(v6 + ((v7 + 32) & ~v7), *(v0 + 184));
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  (*(v12 + 56))(v10, v8, 1, v11);
  sub_24ADD0890(v10, v9);
  v13 = (*(v12 + 48))(v9, 1, v11);
  v14 = *(v0 + 184);
  if (v13 == 1)
  {
    sub_24AD92BE4(v0 + 16, &qword_27EFA9AF8, &unk_24AE0ED50);
    sub_24AD92BE4(v14, &qword_27EFA9AF0, &qword_24AE0ED38);
    v15 = type metadata accessor for PersonEntity(0);
    v16 = 1;
  }

  else
  {
    v17 = *(v0 + 168);
    v33 = v17;
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);
    v20 = *(v0 + 120);
    v31 = *(v0 + 128);
    v32 = *(v0 + 112);
    v21 = *(v0 + 96);
    sub_24ADD0900(*(v0 + 176), v17, type metadata accessor for PersonModel);
    sub_24ADD082C(v17, v18);
    v15 = type metadata accessor for PersonEntity(0);
    v22 = *(v15 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    *(v21 + v22) = sub_24AE083D8();
    sub_24ADD082C(v18, v21);
    sub_24ADC8C00(v19);
    (*(v20 + 16))(v31, v19, v32);
    sub_24AE083A8();
    sub_24AD92BE4(v0 + 16, &qword_27EFA9AF8, &unk_24AE0ED50);
    (*(v20 + 8))(v19, v32);
    sub_24ADD0CE8(v18, type metadata accessor for PersonModel);
    sub_24ADD0CE8(v33, type metadata accessor for PersonModel);
    sub_24AD92BE4(v14, &qword_27EFA9AF0, &qword_24AE0ED38);
    v16 = 0;
  }

  (*(*(v15 - 8) + 56))(*(v0 + 96), v16, 1, v15);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v26 = *(v0 + 160);
  v25 = *(v0 + 168);
  v28 = *(v0 + 128);
  v27 = *(v0 + 136);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_24ADCDE0C()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 104);
  v4 = v1;
  v5 = sub_24AE08DE8();
  v6 = sub_24AE093F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13220, &v24);
    *(v9 + 12) = 2114;
    v12 = v8;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_24AD89000, v5, v6, "%s - error: %{public}@", v9, 0x16u);
    sub_24AD92BE4(v10, &qword_27EFA9668, &qword_24AE0DA90);
    MEMORY[0x24C231F80](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C231F80](v11, -1, -1);
    MEMORY[0x24C231F80](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 96);
  v15 = type metadata accessor for PersonEntity(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24ADCE050(uint64_t *a1)
{
  v2[4] = v1;
  v4 = sub_24AE08388();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[7] = v7;
  v2[8] = v8;

  return MEMORY[0x2822009F8](sub_24ADCE118, 0, 0);
}

uint64_t sub_24ADCE118()
{
  v21 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(type metadata accessor for PersonEntityQuery() + 20);
  sub_24AE08288();
  v3 = sub_24AE08DE8();
  v4 = sub_24AE09408();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v20);
    *(v6 + 12) = 2080;
    *(v0 + 24) = v5;
    sub_24AE08288();
    v8 = sub_24AE08FF8();
    v10 = sub_24AD9F840(v8, v9, &v20);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_24AD89000, v3, v4, "%s - will call fetchWithOptions: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v7, -1, -1);
    MEMORY[0x24C231F80](v6, -1, -1);
  }

  v11 = *(v0 + 56);
  v12 = *(v0 + 32);
  v14 = *v12;
  v13 = v12[1];
  *(v0 + 16) = *(v0 + 64);
  sub_24ADD0C24(&qword_27EFA9B00, type metadata accessor for PersonEntityQuery);
  sub_24AE084C8();
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 72) = v16;
  *v16 = v0;
  v16[1] = sub_24ADCE3CC;
  v17 = *(v0 + 56);

  return v19(v0 + 16, v17);
}

uint64_t sub_24ADCE3CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v10 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v8 = sub_24ADBA5E0;
  }

  else
  {
    v8 = sub_24ADCE540;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24ADCE540()
{
  v21 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0xD000000000000015, 0x800000024AE13150, &v20);
    *(v7 + 12) = 2080;
    type metadata accessor for PersonModel();
    sub_24ADAE700();
    v9 = sub_24AE08E28();
    v11 = sub_24AD9F840(v9, v10, &v20);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - did receive fetchWithOptions: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = *(v0 + 80);
  v13 = v12[2];
  if (v13)
  {
    v14 = sub_24ADBD574(v12[2], 0);
    v15 = *(type metadata accessor for PersonModel() - 8);
    v16 = sub_24ADC1CD0(&v20, v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v13, v12);
    sub_24ADC3C28();
    if (v16 == v13)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v14 = MEMORY[0x277D84F90];
LABEL_7:
  v17 = *(v0 + 56);

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t PersonEntityQuery.entities(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_24AE08378();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(type metadata accessor for PersonModel() - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v8 = type metadata accessor for PersonEntity(0);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADCE928, 0, 0);
}

uint64_t sub_24ADCE928()
{
  v19 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(type metadata accessor for PersonEntityQuery() + 20);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AD9F840(0x7365697469746E65, 0xEE00293A726F6628, &v18);
    *(v7 + 12) = 2082;
    v9 = MEMORY[0x24C231100](v6, &type metadata for PersonModel.UniqueIdentifier);
    v11 = sub_24AD9F840(v9, v10, &v18);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - ids: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v8, -1, -1);
    MEMORY[0x24C231F80](v7, -1, -1);
  }

  v12 = v0[3];
  v13 = sub_24AE08288();
  v14 = sub_24ADAE028(v13);

  v0[2] = v14;
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_24ADCEB30;
  v16 = v0[4];

  return sub_24ADCE050(v0 + 2);
}

uint64_t sub_24ADCEB30(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v8 = *v2;
  v3[16] = a1;
  v3[17] = v1;

  v5 = v3[2];

  if (v1)
  {
    v6 = sub_24ADCEEF0;
  }

  else
  {
    v6 = sub_24ADCEC4C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADCEC4C()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  if (v2)
  {
    v31 = v0[12];
    v32 = v0[13];
    v3 = v0[9];
    v4 = v0[6];
    v35 = MEMORY[0x277D84F90];
    sub_24ADFB354(0, v2, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    v5 = v35;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = *(v3 + 72);
    v28 = (v4 + 8);
    v29 = (v4 + 16);
    v27 = v0;
    do
    {
      v33 = v5;
      v34 = v2;
      v7 = v0[14];
      v9 = v0[10];
      v8 = v0[11];
      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[5];
      sub_24ADD082C(v6, v8);
      sub_24ADD082C(v8, v9);
      v13 = *(v31 + 20);
      *(v7 + v13) = sub_24AE083D8();
      v14 = v7;
      v5 = v33;
      sub_24ADD082C(v9, v14);
      sub_24ADC8C00(v11);
      (*v29)(v10, v11, v12);
      sub_24AE083A8();
      (*v28)(v11, v12);
      sub_24ADD0CE8(v9, type metadata accessor for PersonModel);
      sub_24ADD0CE8(v8, type metadata accessor for PersonModel);
      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_24ADFB354(v15 > 1, v16 + 1, 1);
        v5 = v33;
      }

      v0 = v27;
      v17 = v27[14];
      *(v5 + 16) = v16 + 1;
      sub_24ADD0900(v17, v5 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v16, type metadata accessor for PersonEntity);
      v6 += v30;
      v2 = v34 - 1;
    }

    while (v34 != 1);
    v18 = v27[16];
  }

  else
  {
    v19 = v0[16];

    v5 = MEMORY[0x277D84F90];
  }

  v20 = v0[14];
  v21 = v0[10];
  v22 = v0[11];
  v24 = v0[7];
  v23 = v0[8];

  v25 = v0[1];

  return v25(v5);
}

uint64_t sub_24ADCEEF0()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

uint64_t PersonEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_24ADCEFA8, 0, 0);
}

uint64_t sub_24ADCEFA8()
{
  v14 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = *(type metadata accessor for PersonEntityQuery() + 20);
  sub_24AE08288();
  v4 = sub_24AE08DE8();
  v5 = sub_24AE09408();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[7];
    v6 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_24AD9F840(0xD000000000000013, 0x800000024AE13240, &v13);
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_24AD9F840(v7, v6, &v13);
    _os_log_impl(&dword_24AD89000, v4, v5, "%s - string: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v9, -1, -1);
    MEMORY[0x24C231F80](v8, -1, -1);
  }

  v0[5] = 0;
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_24ADCF174;
  v11 = v0[9];

  return sub_24ADCE050(v0 + 5);
}

uint64_t sub_24ADCF174(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[10];
  v8 = *v2;
  v4[11] = v1;

  if (v1)
  {
    v6 = sub_24ADBAFDC;
  }

  else
  {
    v6 = sub_24ADCF290;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADCF290()
{
  v10 = v0;
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = qword_27EFAA638;
  sub_24AE08288();
  v6 = sub_24ADAE274(&unk_285E2F630);
  v9[0] = MEMORY[0x277D84F90];
  v9[1] = MEMORY[0x277D84F90];
  v9[6] = 0;
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = sub_24ADC2030(MEMORY[0x277D84F90]);
  v9[4] = v5;
  v9[5] = v6;
  v9[7] = v3;
  v9[8] = v2;
  sub_24AE08288();
  sub_24ADBC970(v1);

  sub_24ADCF3AC(v9, v4);
  v7 = v0[1];

  return v7();
}

uint64_t sub_24ADCF3AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_24AE08948();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24AE086E8();
  v64 = *(v59 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_24AE08F78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B40, &unk_24AE0EF00);
  v11 = *(v69 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v69);
  v61 = v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v70 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v68 = v48 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v48 - v20;
  v23 = *a1;
  v22 = a1[1];
  v24 = a1[3];
  v71 = a1[2];
  v26 = a1[4];
  v25 = a1[5];
  v27 = a1[6];
  v28 = a1[8];
  v29 = v22;
  v30 = sub_24AE08718();
  v31 = *(v30 - 8);
  v66 = *(v31 + 56);
  v67 = v30;
  v65 = v31 + 56;
  v66(v21, 1, 1);
  v32 = *(v29 + 16);
  if (v32)
  {
    v48[0] = v24;
    v49 = v27;
    v50 = v23;
    v51 = v28;
    v52 = v21;
    v72 = MEMORY[0x277D84F90];
    v33 = v29;
    sub_24ADFB398(0, v32, 0);
    v34 = v72;
    v56 = "isFutureFollower";
    v55 = *MEMORY[0x277CC9120];
    v54 = (v64 + 104);
    v62 = v11 + 32;
    v48[1] = v33;
    v35 = (v33 + 40);
    v36 = v61;
    v63 = v25;
    v64 = v26;
    do
    {
      v37 = *(v35 - 8);
      v38 = *v35;
      if (*(v35 - 8) && v37 == 1)
      {
        v39 = *v35;
        sub_24AE08288();
        sub_24AE08F08();
        v40 = type metadata accessor for ModelsModule();
        v42 = v58;
        v41 = v59;
        *v58 = v40;
        (*v54)(v42, v55, v41);
        sub_24AE08938();
        v36 = v61;
        v43 = v70;
        sub_24AE08728();
        (v66)(v43, 0, 1, v67);
      }

      else
      {
        v43 = v70;
        (v66)(v70, 1, 1, v67);
        sub_24AE08288();
      }

      v44 = sub_24ADD0C6C(v43, v68);
      MEMORY[0x28223BE20](v44);
      LOBYTE(v48[-2]) = v37;
      v48[-1] = v38;
      type metadata accessor for PersonEntity(0);
      sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity);
      sub_24AE08458();

      v72 = v34;
      v46 = *(v34 + 16);
      v45 = *(v34 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_24ADFB398(v45 > 1, v46 + 1, 1);
        v34 = v72;
      }

      *(v34 + 16) = v46 + 1;
      (*(v11 + 32))(v34 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v46, v36, v69);
      v35 += 2;
      --v32;
    }

    while (v32);

    sub_24ADC3E14(v49);
  }

  else
  {

    sub_24ADC3E14(v27);
  }

  type metadata accessor for PersonEntity(0);
  sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity);
  return sub_24AE08468();
}

uint64_t PersonEntityQuery.allEntities()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_24ADCFA78, 0, 0);
}

uint64_t sub_24ADCFA78()
{
  v11 = v0;
  v1 = v0[7];
  v2 = v1 + *(type metadata accessor for PersonEntityQuery() + 20);
  v3 = sub_24AE08DE8();
  v4 = sub_24AE09408();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24AD9F840(0x7469746E456C6C61, 0xED00002928736569, &v10);
    _os_log_impl(&dword_24AD89000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C231F80](v6, -1, -1);
    MEMORY[0x24C231F80](v5, -1, -1);
  }

  v0[5] = 0;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_24ADCFC04;
  v8 = v0[7];

  return sub_24ADCE050(v0 + 5);
}

uint64_t sub_24ADCFC04(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[8];
  v8 = *v2;
  v4[9] = v1;

  if (v1)
  {
    v6 = sub_24ADBB798;
  }

  else
  {
    v6 = sub_24ADCFD20;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADCFD20()
{
  v8 = v0;
  if (qword_27EFA87E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[6];
  v3 = qword_27EFAA638;
  sub_24AE08288();
  v4 = sub_24ADAE274(&unk_285E2F658);
  v7[0] = MEMORY[0x277D84F90];
  v7[1] = MEMORY[0x277D84F90];
  v7[2] = MEMORY[0x277D84F90];
  v7[3] = sub_24ADC2030(MEMORY[0x277D84F90]);
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = 0;
  v7[7] = 0;
  v7[8] = 0xE000000000000000;
  sub_24ADBC970(v1);

  sub_24ADCF3AC(v7, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_24ADCFE28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24AD8E628;

  return PersonEntityQuery.allEntities()(a1);
}

uint64_t sub_24ADCFEC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24AE08E08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  sub_24AE08DF8();
  v11 = *(v5 + 32);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v11((v13 + v12), v8, v4);
  v14 = a2 + *(a1 + 20);
  result = sub_24AE08DF8();
  *a2 = &unk_24AE0EEF8;
  a2[1] = v13;
  return result;
}

uint64_t sub_24ADD0070(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24ADAE93C;

  return PersonEntityQuery.entities(for:)(a1);
}

uint64_t sub_24ADD0104(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CBA250] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_24ADD0C24(&qword_27EFA9B38, type metadata accessor for PersonEntityQuery);
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return MEMORY[0x28210C0E8](a1, a2, v7);
}

uint64_t sub_24ADD01E8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_24ADD0C24(&qword_27EFA9938, type metadata accessor for PersonEntityQuery);
  *v6 = v2;
  v6[1] = sub_24AD9B61C;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_24ADD02CC(uint64_t a1, uint64_t a2)
{
  v55 = sub_24AE08378();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v55);
  v54 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v44 - v7;
  v8 = type metadata accessor for PersonModel();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PersonEntity(0);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v51 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B48, &qword_24AE0EF10);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = *(a2 + 16);
  if (v19)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9110, &qword_24AE0E3C0);
    v20 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v21 = *(v9 + 72);
    v48 = (v3 + 16);
    v49 = v21;
    v46 = v15 + 16;
    v47 = (v3 + 8);
    v45 = (v15 + 8);
    v22 = MEMORY[0x277D84F90];
    v44 = xmmword_24AE0A280;
    v23 = v56;
    do
    {
      v58 = v22;
      v59 = v19;
      v57 = v20;
      v24 = v52;
      sub_24ADD082C(v20, v52);
      v25 = *(v23 + 20);
      v26 = sub_24AE083D8();
      v27 = v51;
      *&v51[v25] = v26;
      sub_24ADD082C(v24, v27);
      v28 = v18;
      v29 = v15;
      v30 = v14;
      v31 = v53;
      sub_24ADC8C00(v53);
      v32 = v55;
      (*v48)(v54, v31, v55);
      sub_24AE083A8();
      v33 = v31;
      v14 = v30;
      v15 = v29;
      v18 = v28;
      (*v47)(v33, v32);
      sub_24ADD0CE8(v24, type metadata accessor for PersonModel);
      sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity);
      sub_24AE082A8();
      v34 = v27;
      v22 = v58;
      sub_24ADD0CE8(v34, type metadata accessor for PersonEntity);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B50, &qword_24AE0EF18);
      v35 = *(v15 + 72);
      v36 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = v44;
      (*(v15 + 16))(v37 + v36, v28, v14);
      v38 = sub_24AE08288();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_24ADAB564(0, v22[2] + 1, 1, v22);
      }

      v40 = v22[2];
      v39 = v22[3];
      v41 = v59;
      if (v40 >= v39 >> 1)
      {
        v22 = sub_24ADAB564((v39 > 1), v40 + 1, 1, v22);
      }

      (*v45)(v18, v14);
      v22[2] = v40 + 1;
      v22[v40 + 4] = v38;
      v20 = v57 + v49;
      v19 = v41 - 1;
    }

    while (v19);
  }

  sub_24ADD0C24(&qword_27EFA9960, type metadata accessor for PersonEntity);
  sub_24AE08278();

  v42 = sub_24AE08288();

  return v42;
}

uint64_t sub_24ADD082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9AF0, &qword_24AE0ED38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ADD0B1C()
{
  result = qword_27EFA9B18;
  if (!qword_27EFA9B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFA9B20, qword_24AE0EE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B18);
  }

  return result;
}

uint64_t sub_24ADD0BA8()
{
  result = sub_24AE08E08();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ADD0C24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24ADD0C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD0CE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PersonEntityQuery.Dependencies.fetchWithOptions.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PersonEntityQuery.Dependencies.init(fetchWithOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADD0DE0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_24AE08E08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_24AE08DF8();
  v11 = *(v5 + 32);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  result = (v11)(v13 + v12, v8, v4);
  *a2 = a1;
  a2[1] = v13;
  return result;
}

uint64_t sub_24ADD0F58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v5 = sub_24AE08E08();
  v3[4] = v5;
  v6 = *(v5 - 8);
  v3[5] = v6;
  v3[6] = *(v6 + 64);
  v3[7] = swift_task_alloc();
  v7 = sub_24AE089E8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(sub_24AE08A08() - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = *a1;
  v3[11] = v11;
  v3[12] = v12;

  return MEMORY[0x2822009F8](sub_24ADD10B0, 0, 0);
}

uint64_t sub_24ADD10B0()
{
  v1 = v0[11];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D09048], v0[8]);
  sub_24AE08A18();
  v2 = sub_24AE08C18();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = *(MEMORY[0x277D09498] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24ADD1194;
  v7 = v0[11];

  return MEMORY[0x28215FBB8](v7);
}

uint64_t sub_24ADD1194(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_24ADD1294, 0, 0);
}

uint64_t sub_24ADD1294()
{
  v1 = v0[14];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  (*(v4 + 16))(v2, v0[3], v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[15] = v6;
  *(v6 + 16) = v1;
  (*(v4 + 32))(v6 + v5, v2, v3);
  v7 = *(MEMORY[0x277D08920] + 4);

  v8 = swift_task_alloc();
  v0[16] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8808, &qword_24AE0A2A8);
  *v8 = v0;
  v8[1] = sub_24ADD13FC;

  return MEMORY[0x28215EB08](v0 + 2, 0xD02AB486CEDC0000, 0, &unk_24AE0A2A0, v6, v9);
}

uint64_t sub_24ADD13FC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_24ADC6870;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_24ADD1518;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24ADD1518()
{
  v22 = v0;
  v1 = v0[12];
  v2 = v0[2];
  if (v1)
  {
    v3 = v0[17];
    v4 = v0[12];
    sub_24AE08288();
    v5 = sub_24ADD1F78(v2, v1);

    v2 = v5;
  }

  v6 = v0[3];
  sub_24AE08288();
  v7 = sub_24AE08DE8();
  v8 = sub_24AE093E8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AD9F840(0x6576694C6C616572, 0xEA00000000002928, v21);
    *(v11 + 12) = 2080;
    type metadata accessor for PersonModel();
    sub_24ADAE700();
    v13 = sub_24AE08E28();
    v15 = sub_24AD9F840(v13, v14, v21);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_24AD89000, v7, v8, "%s - result %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C231F80](v12, -1, -1);
    MEMORY[0x24C231F80](v11, -1, -1);
  }

  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[7];

  v19 = v0[1];

  return v19(v2);
}

unint64_t *sub_24ADD1730(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_24AE08288();
    v8 = sub_24ADD1B10(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_24ADD17CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PersonModel();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9718, &qword_24AE0DD28);
  result = sub_24AE09628();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_24ADD082C(v23 + v45 * v22, v42);
    sub_24ADC3C30(v27, v18);
    v28 = *(v14 + 40);
    sub_24AE09838();
    v46 = 0x3A3156444953;
    v47 = 0xE600000000000000;
    sub_24AE08288();
    MEMORY[0x24C230FB0](v25, v26);
    sub_24AE09048();

    result = sub_24AE09868();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v25;
    v37[1] = v26;
    result = sub_24ADC3C30(v18, *(v14 + 56) + v32 * v45);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ADD1B10(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[0] = a2;
  v40 = a1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B58, &unk_24AE0EFA0);
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v8 = (v38 - v7);
  v9 = type metadata accessor for PersonModel();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  result = MEMORY[0x28223BE20](v9 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v14 = 0;
  v48 = a3;
  v15 = *(a3 + 64);
  v39 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = a4 + 56;
  v45 = v19;
  v46 = v13;
  v47 = v8;
  v52 = a4;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v50 = (v18 - 1) & v18;
LABEL_14:
    v49 = v14;
    v23 = v20 | (v14 << 6);
    v24 = (v48[6] + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_24ADD082C(v48[7] + *(v43 + 72) * v23, v13);
    *v8 = v26;
    v8[1] = v25;
    sub_24ADD082C(v13, v8 + *(v44 + 48));
    if (!*(a4 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_6;
    }

    v41 = v23;
    v27 = *(a4 + 40);
    sub_24AE09838();
    v53 = 0x3A3156444953;
    v54 = 0xE600000000000000;
    swift_bridgeObjectRetain_n();
    MEMORY[0x24C230FB0](v26, v25);
    sub_24AE09048();

    v28 = sub_24AE09868();
    v29 = -1 << *(a4 + 32);
    v30 = v28 & ~v29;
    if ((*(v57 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v51 = ~v29;
      while (1)
      {
        v31 = (*(a4 + 48) + 16 * v30);
        v32 = *v31;
        v33 = v31[1];
        v55 = 0x3A3156444953;
        v56 = 0xE600000000000000;
        sub_24AE08288();
        MEMORY[0x24C230FB0](v32, v33);
        v35 = v55;
        v34 = v56;
        v55 = 0x3A3156444953;
        v56 = 0xE600000000000000;
        MEMORY[0x24C230FB0](v26, v25);
        if (v35 == v55 && v34 == v56)
        {
          break;
        }

        v36 = sub_24AE097C8();

        if (v36)
        {
          goto LABEL_23;
        }

        a4 = v52;
        v30 = (v30 + 1) & v51;
        if (((*(v57 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_23:
      v8 = v47;
      sub_24ADD2138(v47);
      v13 = v46;
      sub_24ADD21A0(v46);

      *(v40 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v37 = __OFADD__(v42++, 1);
      a4 = v52;
      v19 = v45;
      v14 = v49;
      v18 = v50;
      if (v37)
      {
        __break(1u);
        return sub_24ADD17CC(v40, v38[0], v42, v48);
      }
    }

    else
    {
LABEL_6:
      v8 = v47;
      sub_24ADD2138(v47);
      v13 = v46;
      sub_24ADD21A0(v46);

      v19 = v45;
      v14 = v49;
      v18 = v50;
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_24ADD17CC(v40, v38[0], v42, v48);
    }

    v22 = *(v39 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v50 = (v22 - 1) & v22;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ADD1F78(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_24AE08288();
      v10 = sub_24ADD1730(v13, v7, a1, a2);
      MEMORY[0x24C231F80](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  sub_24AE08288();
  v10 = sub_24ADD1B10((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_24ADD2138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B58, &unk_24AE0EFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD21A0(uint64_t a1)
{
  v2 = type metadata accessor for PersonModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD21FC()
{
  sub_24ADD23B0(v0 + OBJC_IVAR____TtC10FindMyCore34AnyDisplayRepresentationImageCache_cachedDisplayRepresentationImage);
  v1 = *(v0 + OBJC_IVAR____TtC10FindMyCore34AnyDisplayRepresentationImageCache_imageBuilder + 8);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for AnyDisplayRepresentationImageCache()
{
  result = qword_27EFA9B70;
  if (!qword_27EFA9B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ADD22A4()
{
  sub_24ADD234C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_24ADD234C()
{
  if (!qword_27EFA9B80)
  {
    sub_24AE08478();
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9B80);
    }
  }
}

uint64_t sub_24ADD23B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8E60, &unk_24AE0B0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 GetItemCachedLocationIntent.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  sub_24ADBA644(v15);
  v4 = v15[10];
  v5 = v15[11];
  v6 = v15[8];
  a2[10] = v15[9];
  a2[11] = v4;
  v7 = v15[12];
  a2[12] = v5;
  a2[13] = v7;
  v8 = v15[6];
  v9 = v15[7];
  v10 = v15[4];
  a2[6] = v15[5];
  a2[7] = v8;
  a2[8] = v9;
  a2[9] = v6;
  v11 = v15[2];
  v12 = v15[3];
  v13 = v15[0];
  a2[2] = v15[1];
  a2[3] = v11;
  a2[4] = v12;
  a2[5] = v10;
  result = *a1;
  *a2 = *a1;
  a2[1] = v13;
  return result;
}

uint64_t GetItemCachedLocationIntent.item.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[12];
  v30 = v1[11];
  v31 = v3;
  v4 = v1[12];
  v32 = v1[13];
  v5 = v1[6];
  v6 = v1[8];
  v26 = v1[7];
  v7 = v26;
  v27 = v6;
  v8 = v1[8];
  v9 = v1[10];
  v28 = v1[9];
  v10 = v28;
  v29 = v9;
  v11 = v1[2];
  v12 = v1[4];
  v22 = v1[3];
  v13 = v22;
  v23 = v12;
  v14 = v1[4];
  v15 = v1[6];
  v24 = v1[5];
  v16 = v24;
  v25 = v15;
  v17 = v1[2];
  v21[0] = v1[1];
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[13];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_24ADD2528(v21, &v20);
}

uint64_t sub_24ADD2528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B88, &qword_24AE0F020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 GetItemCachedLocationIntent.item.setter(uint64_t a1)
{
  v3 = v1[12];
  v15[10] = v1[11];
  v15[11] = v3;
  v15[12] = v1[13];
  v4 = v1[8];
  v15[6] = v1[7];
  v15[7] = v4;
  v5 = v1[10];
  v15[8] = v1[9];
  v15[9] = v5;
  v6 = v1[4];
  v15[2] = v1[3];
  v15[3] = v6;
  v7 = v1[6];
  v15[4] = v1[5];
  v15[5] = v7;
  v8 = v1[2];
  v15[0] = v1[1];
  v15[1] = v8;
  sub_24ADD2638(v15);
  v9 = *(a1 + 176);
  v1[11] = *(a1 + 160);
  v1[12] = v9;
  v1[13] = *(a1 + 192);
  v10 = *(a1 + 112);
  v1[7] = *(a1 + 96);
  v1[8] = v10;
  v11 = *(a1 + 144);
  v1[9] = *(a1 + 128);
  v1[10] = v11;
  v12 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v12;
  v13 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v13;
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

uint64_t sub_24ADD2638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9B88, &qword_24AE0F020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  *(v3 + 992) = *v2;
  v5 = v2[10];
  v6 = v2[12];
  v7 = v2[13];
  *(v3 + 384) = v2[11];
  *(v3 + 400) = v6;
  *(v3 + 416) = v7;
  v8 = v2[6];
  v9 = v2[8];
  v10 = v2[9];
  *(v3 + 320) = v2[7];
  *(v3 + 336) = v9;
  *(v3 + 352) = v10;
  *(v3 + 368) = v5;
  v11 = v2[2];
  v12 = v2[4];
  v13 = v2[5];
  *(v3 + 256) = v2[3];
  *(v3 + 272) = v12;
  *(v3 + 288) = v13;
  *(v3 + 304) = v8;
  *(v3 + 984) = a2;
  *(v3 + 976) = a1;
  *(v3 + 224) = v4;
  *(v3 + 240) = v11;
  sub_24ADD2528(v3 + 224, v3 + 432);

  return MEMORY[0x2822009F8](sub_24ADD2770, 0, 0);
}

uint64_t sub_24ADD2770()
{
  v1 = *(v0 + 400);
  *(v0 + 176) = *(v0 + 384);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 416);
  v2 = *(v0 + 336);
  *(v0 + 112) = *(v0 + 320);
  *(v0 + 128) = v2;
  v3 = *(v0 + 368);
  *(v0 + 144) = *(v0 + 352);
  *(v0 + 160) = v3;
  v4 = *(v0 + 272);
  *(v0 + 48) = *(v0 + 256);
  *(v0 + 64) = v4;
  v5 = *(v0 + 304);
  *(v0 + 80) = *(v0 + 288);
  *(v0 + 96) = v5;
  v6 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 32) = v6;
  if (get_enum_tag_for_layout_string_10FindMyCore10ItemEntityVSg_0(v0 + 16) == 1)
  {
    **(v0 + 984) = 1;
    *(v0 + 1016) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 992);
    v10 = *(v0 + 64);
    *(v0 + 672) = *(v0 + 48);
    *(v0 + 688) = v10;
    v11 = *(v0 + 128);
    *(v0 + 736) = *(v0 + 112);
    *(v0 + 752) = v11;
    v12 = *(v0 + 96);
    *(v0 + 704) = *(v0 + 80);
    *(v0 + 720) = v12;
    v13 = *(v0 + 208);
    *(v0 + 816) = *(v0 + 192);
    *(v0 + 832) = v13;
    v14 = *(v0 + 176);
    *(v0 + 784) = *(v0 + 160);
    *(v0 + 800) = v14;
    *(v0 + 768) = *(v0 + 144);
    v15 = *(v0 + 32);
    *(v0 + 640) = *(v0 + 16);
    *(v0 + 656) = v15;
    v19 = (v9 + *v9);
    v16 = v9[1];
    v17 = swift_task_alloc();
    *(v0 + 1008) = v17;
    *v17 = v0;
    v17[1] = sub_24ADD2948;
    v18 = *(v0 + 1000);

    return v19(v0 + 848, v0 + 640, v0 + 1017);
  }
}

uint64_t sub_24ADD2948()
{
  v2 = *(*v1 + 1008);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24ADD2AE8;
  }

  else
  {
    v3 = sub_24ADD2A58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ADD2A58()
{
  v1 = *(v0 + 976);
  sub_24ADD2638(v0 + 224);
  v2 = *(v0 + 848);
  v3 = *(v0 + 864);
  v4 = *(v0 + 896);
  *(v1 + 32) = *(v0 + 880);
  *(v1 + 48) = v4;
  *v1 = v2;
  *(v1 + 16) = v3;
  v5 = *(v0 + 912);
  v6 = *(v0 + 928);
  v7 = *(v0 + 960);
  *(v1 + 96) = *(v0 + 944);
  *(v1 + 112) = v7;
  *(v1 + 64) = v5;
  *(v1 + 80) = v6;
  *(v1 + 128) = 1;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24ADD2AE8()
{
  v1 = *(v0 + 984);
  sub_24ADD2638(v0 + 224);
  *v1 = *(v0 + 1017);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_24ADD2B58()
{
  result = qword_27EFA9B90;
  if (!qword_27EFA9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B90);
  }

  return result;
}

uint64_t GetItemCachedLocationIntent.FetchLocationError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t GetItemCachedLocationIntent.Result.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24ADAE7A8(v11, &v10);
}

unint64_t sub_24ADD2CD0()
{
  result = qword_27EFA9B98;
  if (!qword_27EFA9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9B98);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_24ADD2D60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_24ADD2DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24ADD2E74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_24ADD2EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV12DependenciesV05fetchG0yAA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKcvg()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _s10FindMyCore27GetItemCachedLocationIntentV12DependenciesV05fetchG0AeA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKc_tcfC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_24ADD2F94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[20] = a1;
  v3[21] = a3;
  v5 = sub_24AE08BA8();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();
  v8 = sub_24AE08BB8();
  v3[25] = v8;
  v9 = *(v8 - 8);
  v3[26] = v9;
  v10 = *(v9 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BA8, &qword_24AE0F310) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v12 = sub_24AE08AC8();
  v3[30] = v12;
  v13 = *(v12 - 8);
  v3[31] = v13;
  v14 = *(v13 + 64) + 15;
  v3[32] = swift_task_alloc();
  v15 = sub_24AE089F8();
  v3[33] = v15;
  v16 = *(v15 - 8);
  v3[34] = v16;
  v17 = *(v16 + 64) + 15;
  v3[35] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AF0, &qword_24AE0A788) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v19 = *(*(sub_24AE088E8() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();
  v20 = sub_24AE08D28();
  v3[38] = v20;
  v21 = *(v20 - 8);
  v3[39] = v21;
  v22 = *(v21 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
  v3[43] = v23;
  v24 = *(v23 - 8);
  v3[44] = v24;
  v25 = *(v24 + 64) + 15;
  v3[45] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB8, &qword_24AE0F320) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v27 = sub_24AE08928();
  v3[47] = v27;
  v28 = *(v27 - 8);
  v3[48] = v28;
  v29 = *(v28 + 64) + 15;
  v3[49] = swift_task_alloc();
  v30 = swift_task_alloc();
  v31 = *a2;
  v32 = a2[1];
  v3[50] = v30;
  v3[51] = v31;
  v3[52] = v32;

  return MEMORY[0x2822009F8](sub_24ADD3398, 0, 0);
}

uint64_t sub_24ADD3398()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 368);
  v4 = [objc_allocWithZone(MEMORY[0x277D49698]) init];
  *(v0 + 424) = v4;
  sub_24AE08288();
  ItemModel.BAIdentifier.init(rawValue:)(v3);
  v5 = type metadata accessor for ItemModel.BAIdentifier();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_24ADD50F4(*(v0 + 368));
    sub_24ADD2B58();
    v6 = swift_allocError();
    *v7 = 1;
    swift_willThrow();

    *(v0 + 144) = v6;
    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 584) & 1) == 0)
    {
      v52 = *(v0 + 168);

      *v52 = 0;
      *(v0 + 586) = 0;
      swift_willThrowTypedImpl();
      v10 = *(v0 + 144);
    }

    else
    {
      v9 = *(v0 + 168);

      *v9 = 1;
      *(v0 + 585) = 1;
      swift_willThrowTypedImpl();
      v10 = v6;
    }

    v54 = *(v0 + 392);
    v53 = *(v0 + 400);
    v56 = *(v0 + 360);
    v55 = *(v0 + 368);
    v58 = *(v0 + 328);
    v57 = *(v0 + 336);
    v59 = *(v0 + 320);
    v61 = *(v0 + 288);
    v60 = *(v0 + 296);
    v62 = *(v0 + 280);
    v71 = *(v0 + 256);
    v73 = *(v0 + 232);
    v75 = *(v0 + 224);
    v76 = *(v0 + 216);
    v78 = *(v0 + 192);

    v63 = *(v0 + 8);

    return v63();
  }

  else
  {
    v77 = v4;
    v12 = *(v0 + 392);
    v11 = *(v0 + 400);
    v13 = *(v0 + 376);
    v14 = *(v0 + 384);
    v15 = *(v0 + 368);
    v16 = *(v14 + 16);
    v16(v12, v15, v13);
    sub_24ADD515C(v15);
    (*(v14 + 32))(v11, v12, v13);
    v17 = [objc_allocWithZone(MEMORY[0x277D49680]) init];
    *(v0 + 432) = v17;
    [v17 setSubscribe_];
    [v17 setCachePolicy_];
    if (qword_27EFA8678 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 400);
    v20 = *(v0 + 376);
    v19 = *(v0 + 384);
    v74 = *(v0 + 352);
    v70 = *(v0 + 344);
    v72 = *(v0 + 360);
    type metadata accessor for SPBeaconType(0);
    v21 = sub_24AE091A8();
    [v17 setSearchTypes_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BC0, &qword_24AE0F328);
    v22 = *(v19 + 72);
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_24AE0A280;
    v16(v24 + v23, v18, v20);
    v25 = sub_24AE091A8();

    [v17 setSearchIdentifiers_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BC8, &qword_24AE0F330);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_24AE0F2E0;
    v27 = *MEMORY[0x277D49700];
    v28 = *MEMORY[0x277D49708];
    *(v26 + 32) = *MEMORY[0x277D49700];
    *(v26 + 40) = v28;
    v69 = v17;
    v29 = *MEMORY[0x277D49728];
    v30 = *MEMORY[0x277D49730];
    *(v26 + 48) = *MEMORY[0x277D49728];
    *(v26 + 56) = v30;
    v31 = *MEMORY[0x277D49738];
    v32 = *MEMORY[0x277D49740];
    *(v26 + 64) = *MEMORY[0x277D49738];
    *(v26 + 72) = v32;
    v33 = *MEMORY[0x277D49748];
    v67 = *MEMORY[0x277D49750];
    v34 = *MEMORY[0x277D49750];
    *(v26 + 80) = *MEMORY[0x277D49748];
    *(v26 + 88) = v34;
    v35 = *MEMORY[0x277D49758];
    v66 = *MEMORY[0x277D49768];
    v36 = *MEMORY[0x277D49768];
    *(v26 + 96) = *MEMORY[0x277D49758];
    *(v26 + 104) = v36;
    v65 = *MEMORY[0x277D49770];
    v68 = *MEMORY[0x277D49760];
    v37 = *MEMORY[0x277D49760];
    *(v26 + 112) = *MEMORY[0x277D49770];
    *(v26 + 120) = v37;
    type metadata accessor for SPBeaconLocationSource(0);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v45 = v67;
    v46 = v35;
    v47 = v66;
    v48 = v65;
    v49 = v68;
    v50 = sub_24AE091A8();

    [v69 setSearchLocationSources_];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 152;
    *(v0 + 24) = sub_24ADD3ADC;
    swift_continuation_init();
    *(v0 + 136) = v70;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    sub_24ADD51D0(0, &qword_27EFA9BD0, 0x277D49688);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    sub_24AE09298();
    (*(v74 + 32))(boxed_opaque_existential_1, v72, v70);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24ADD4FBC;
    *(v0 + 104) = &block_descriptor;
    [v77 locationForContext:v69 completion:?];
    (*(v74 + 8))(boxed_opaque_existential_1, v70);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_24ADD3ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  if (v2)
  {
    v3 = sub_24ADD48F8;
  }

  else
  {
    v3 = sub_24ADD3BEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ADD3BEC()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 152);
  *(v0 + 448) = v2;
  v3 = [v2 locationsByBeaconIdentifier];
  sub_24ADD51D0(0, &qword_27EFA9BD8, 0x277D49620);
  sub_24ADA6E98();
  v4 = sub_24AE08E18();

  if (*(v4 + 16) && (v5 = sub_24ADD6D88(*(v0 + 400)), (v6 & 1) != 0))
  {
    v7 = *(v0 + 312);
    v59 = *(v0 + 336);
    v61 = *(v0 + 320);
    v8 = *(v0 + 296);
    v63 = *(v0 + 304);
    v10 = *(v0 + 280);
    v9 = *(v0 + 288);
    v11 = *(v0 + 272);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v55 = *(v0 + 264);
    v57 = *(v0 + 240);
    v14 = *(*(v4 + 56) + 8 * v5);
    *(v0 + 456) = v14;
    v15 = v14;

    [v15 latitude];
    [v15 longitude];
    [v15 horizontalAccuracy];
    v16 = [v15 timestamp];
    sub_24AE088D8();

    v17 = sub_24AE08DA8();
    *(v0 + 464) = v17;
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    *(v0 + 472) = v19;
    *(v0 + 480) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(v9, 1, 1, v17);
    *(v0 + 576) = *MEMORY[0x277D09078];
    v20 = *(v11 + 104);
    *(v0 + 488) = v20;
    *(v0 + 496) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v20(v10);
    *(v0 + 580) = *MEMORY[0x277D090F8];
    v21 = *(v12 + 104);
    *(v0 + 504) = v21;
    *(v0 + 512) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v21(v13);
    sub_24AE08CE8();
    v22 = sub_24AE08A68();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    *(v0 + 520) = sub_24AE08A58();
    (*(v7 + 16))(v61, v59, v63);
    v25 = sub_24AE08AE8();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_24AE08AD8();
    *(v0 + 528) = v28;
    v29 = *(MEMORY[0x277D090A0] + 4);
    v64 = (*MEMORY[0x277D090A0] + MEMORY[0x277D090A0]);
    v30 = swift_task_alloc();
    *(v0 + 536) = v30;
    *v30 = v0;
    v30[1] = sub_24ADD4154;
    v31 = *(v0 + 328);

    return v64(v31, v28);
  }

  else
  {
    v34 = *(v0 + 424);
    v33 = *(v0 + 432);
    v35 = *(v0 + 400);
    v36 = *(v0 + 376);
    v37 = *(v0 + 384);

    sub_24ADD2B58();
    v38 = swift_allocError();
    *v39 = 0;
    swift_willThrow();

    (*(v37 + 8))(v35, v36);
    *(v0 + 144) = v38;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
    if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 584) & 1) == 0)
    {
      v43 = *(v0 + 168);

      *v43 = 0;
      *(v0 + 586) = 0;
      swift_willThrowTypedImpl();
      v42 = *(v0 + 144);
    }

    else
    {
      v41 = *(v0 + 168);

      *v41 = 1;
      *(v0 + 585) = 1;
      swift_willThrowTypedImpl();
      v42 = v38;
    }

    v45 = *(v0 + 392);
    v44 = *(v0 + 400);
    v47 = *(v0 + 360);
    v46 = *(v0 + 368);
    v49 = *(v0 + 328);
    v48 = *(v0 + 336);
    v50 = *(v0 + 320);
    v52 = *(v0 + 288);
    v51 = *(v0 + 296);
    v53 = *(v0 + 280);
    v56 = *(v0 + 256);
    v58 = *(v0 + 232);
    v60 = *(v0 + 224);
    v62 = *(v0 + 216);
    v65 = *(v0 + 192);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_24ADD4154()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 528);

  if (v0)
  {
    v6 = sub_24ADD4B0C;
  }

  else
  {
    v6 = sub_24ADD4288;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADD4288()
{
  v1 = v0[50];
  v2 = v0[29];
  v3 = v0[24];
  sub_24AE08A88();
  v4 = sub_24AE08948();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v0[69] = sub_24AE08A78();
  sub_24AE08908();
  sub_24AD9B35C(MEMORY[0x277D84F90]);
  sub_24AE08B88();
  v5 = *(MEMORY[0x277D090B8] + 4);
  v11 = (*MEMORY[0x277D090B8] + MEMORY[0x277D090B8]);
  v6 = swift_task_alloc();
  v0[70] = v6;
  *v6 = v0;
  v6[1] = sub_24ADD4408;
  v7 = v0[41];
  v8 = v0[28];
  v9 = v0[24];

  return v11(v8, v9, v7, 0);
}

uint64_t sub_24ADD4408()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  *(*v1 + 568) = v0;

  (*(v2[23] + 8))(v2[24], v2[22]);
  if (v0)
  {
    v5 = sub_24ADD4D54;
  }

  else
  {
    v5 = sub_24ADD4570;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24ADD4570()
{
  v31 = *(v0 + 552);
  v32 = *(v0 + 520);
  v24 = *(v0 + 580);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v20 = *(v0 + 576);
  v22 = *(v0 + 488);
  v18 = *(v0 + 472);
  v19 = *(v0 + 480);
  v17 = *(v0 + 464);
  v1 = *(v0 + 456);
  v28 = *(v0 + 448);
  v29 = *(v0 + 432);
  v27 = *(v0 + 424);
  v36 = *(v0 + 400);
  v37 = *(v0 + 392);
  v34 = *(v0 + 384);
  v35 = *(v0 + 376);
  v38 = *(v0 + 368);
  v39 = *(v0 + 360);
  v2 = *(v0 + 328);
  v33 = *(v0 + 336);
  v3 = *(v0 + 312);
  v23 = *(v0 + 320);
  v4 = *(v0 + 296);
  v30 = *(v0 + 304);
  v13 = *(v0 + 288);
  v42 = *(v0 + 280);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  v40 = *(v0 + 232);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  v41 = *(v0 + 192);
  v21 = *(v0 + 160);
  sub_24AE08CF8();
  sub_24AE08D08();
  sub_24AE08C88();
  v9 = [v1 timestamp];
  sub_24AE088D8();

  (*(v8 + 16))(v6, v5, v7);
  sub_24AE08D98();
  v18(v13, 0, 1, v17);
  v22(v42, v20, v14);
  v25(v15, v24, v16);
  sub_24AE08CE8();
  Location.fmuiPublishedLocation.getter(v21);

  v10 = *(v3 + 8);
  v10(v23, v30);
  (*(v8 + 8))(v5, v7);
  v10(v2, v30);
  v10(v33, v30);
  (*(v34 + 8))(v36, v35);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24ADD48F8()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  swift_willThrow();

  (*(v6 + 8))(v4, v5);
  v7 = *(v0 + 440);
  *(v0 + 144) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v0 + 584) & 1) == 0)
  {
    v11 = *(v0 + 168);

    *v11 = 0;
    *(v0 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v10 = *(v0 + 144);
  }

  else
  {
    v9 = *(v0 + 168);

    *v9 = 1;
    *(v0 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v10 = v7;
  }

  v13 = *(v0 + 392);
  v12 = *(v0 + 400);
  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v17 = *(v0 + 328);
  v16 = *(v0 + 336);
  v18 = *(v0 + 320);
  v20 = *(v0 + 288);
  v19 = *(v0 + 296);
  v21 = *(v0 + 280);
  v24 = *(v0 + 256);
  v25 = *(v0 + 232);
  v26 = *(v0 + 224);
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_24ADD4B0C()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  v4 = *(v0 + 432);
  v31 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 336);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v31, v5);
  v10 = *(v0 + 544);
  *(v0 + 144) = v10;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v0 + 584) & 1) == 0)
  {
    v14 = *(v0 + 168);

    *v14 = 0;
    *(v0 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v13 = *(v0 + 144);
  }

  else
  {
    v12 = *(v0 + 168);

    *v12 = 1;
    *(v0 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v13 = v10;
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v18 = *(v0 + 360);
  v17 = *(v0 + 368);
  v20 = *(v0 + 328);
  v19 = *(v0 + 336);
  v21 = *(v0 + 320);
  v23 = *(v0 + 288);
  v22 = *(v0 + 296);
  v24 = *(v0 + 280);
  v27 = *(v0 + 256);
  v28 = *(v0 + 232);
  v29 = *(v0 + 224);
  v30 = *(v0 + 216);
  v32 = *(v0 + 192);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24ADD4D54()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 520);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 384);
  v32 = *(v0 + 376);
  v34 = *(v0 + 400);
  v7 = *(v0 + 328);
  v30 = *(v0 + 336);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);

  v10 = *(v8 + 8);
  v10(v7, v9);
  v10(v30, v9);
  (*(v6 + 8))(v34, v32);
  v11 = *(v0 + 568);
  *(v0 + 144) = v11;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8B10, &unk_24AE0A7D0);
  if (swift_dynamicCast() && (*(v0 + 584) & 1) == 0)
  {
    v15 = *(v0 + 168);

    *v15 = 0;
    *(v0 + 586) = 0;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v14 = *(v0 + 144);
  }

  else
  {
    v13 = *(v0 + 168);

    *v13 = 1;
    *(v0 + 585) = 1;
    sub_24ADD2B58();
    swift_willThrowTypedImpl();
    v14 = v11;
  }

  v17 = *(v0 + 392);
  v16 = *(v0 + 400);
  v19 = *(v0 + 360);
  v18 = *(v0 + 368);
  v21 = *(v0 + 328);
  v20 = *(v0 + 336);
  v22 = *(v0 + 320);
  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v25 = *(v0 + 280);
  v28 = *(v0 + 256);
  v29 = *(v0 + 232);
  v31 = *(v0 + 224);
  v33 = *(v0 + 216);
  v35 = *(v0 + 192);

  v26 = *(v0 + 8);

  return v26();
}

void sub_24ADD4FBC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
    sub_24AE092A8();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB0, &qword_24AE0F318);
    sub_24AE092B8();
  }

  else
  {
    __break(1u);
  }
}

id sub_24ADD506C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE0, &qword_24AE0F338);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24AE0F2F0;
  v1 = *MEMORY[0x277D49808];
  v5 = *MEMORY[0x277D49810];
  v2 = *MEMORY[0x277D49810];
  *(v0 + 32) = *MEMORY[0x277D49808];
  *(v0 + 40) = v2;
  qword_27EFA9BA0 = v0;
  v3 = v1;

  return v5;
}

uint64_t sub_24ADD50F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BB8, &qword_24AE0F320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD515C(uint64_t a1)
{
  v2 = type metadata accessor for ItemModel.BAIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ADD51D0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

__n128 GetPersonCachedLocationIntent.init(dependencies:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = *(type metadata accessor for GetPersonCachedLocationIntent() + 20);
  v5 = type metadata accessor for PersonEntity(0);
  v7 = *a1;
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  result = v7;
  *a2 = v7;
  return result;
}

uint64_t type metadata accessor for GetPersonCachedLocationIntent()
{
  result = qword_27EFA9C00;
  if (!qword_27EFA9C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GetPersonCachedLocationIntent.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GetPersonCachedLocationIntent() + 20);

  return sub_24ADD5338(v3, a1);
}

uint64_t sub_24ADD5338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GetPersonCachedLocationIntent.person.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GetPersonCachedLocationIntent() + 20);

  return sub_24ADD53EC(a1, v3);
}

uint64_t sub_24ADD53EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV7performAC6ResultVyYaAC05FetchG5ErrorOYKF(uint64_t a1, uint64_t a2)
{
  v3[19] = v2;
  v3[20] = a2;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for PersonEntity(0);
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v7 = *(v6 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADD55A0, 0, 0);
}

uint64_t sub_24ADD55A0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  PersonCachedLocationIntent = type metadata accessor for GetPersonCachedLocationIntent();
  sub_24ADD5338(v4 + *(PersonCachedLocationIntent + 20), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 160);
    sub_24ADD59C0(*(v0 + 168));
    *v6 = 1;
    *(v0 + 208) = 1;
    sub_24ADD5A28();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 192);
    v8 = *(v0 + 168);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 152);
    sub_24ADD5A7C(*(v0 + 168), *(v0 + 192));
    v12 = *v11;
    v13 = v11[1];
    v17 = (v12 + *v12);
    v14 = v12[1];
    v15 = swift_task_alloc();
    *(v0 + 200) = v15;
    *v15 = v0;
    v15[1] = sub_24ADD577C;
    v16 = *(v0 + 192);

    return v17(v0 + 16, v16, v0 + 209);
  }
}

uint64_t sub_24ADD577C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24ADD593C;
  }

  else
  {
    v3 = sub_24ADD588C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24ADD588C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  sub_24ADD5AE0(*(v0 + 192));
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 64);
  *(v2 + 32) = *(v0 + 48);
  *(v2 + 48) = v5;
  *v2 = v3;
  *(v2 + 16) = v4;
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v8 = *(v0 + 128);
  *(v2 + 96) = *(v0 + 112);
  *(v2 + 112) = v8;
  *(v2 + 64) = v6;
  *(v2 + 80) = v7;
  *(v2 + 128) = 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24ADD593C()
{
  v1 = *(v0 + 160);
  sub_24ADD5AE0(*(v0 + 192));
  *v1 = *(v0 + 209);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24ADD59C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9BE8, &qword_24AE0F340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ADD5A28()
{
  result = qword_27EFA9BF0;
  if (!qword_27EFA9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9BF0);
  }

  return result;
}

uint64_t sub_24ADD5A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ADD5AE0(uint64_t a1)
{
  v2 = type metadata accessor for PersonEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GetPersonCachedLocationIntent.FetchLocationError.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t GetPersonCachedLocationIntent.Result.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_24ADAE7A8(v11, &v10);
}

unint64_t sub_24ADD5C60()
{
  result = qword_27EFA9BF8;
  if (!qword_27EFA9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9BF8);
  }

  return result;
}

void sub_24ADD5CDC()
{
  sub_24ADD5D58();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24ADD5D58()
{
  if (!qword_27EFA9C10)
  {
    type metadata accessor for PersonEntity(255);
    v0 = sub_24AE09438();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFA9C10);
    }
  }
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV12DependenciesV05fetchG0yAA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKcvg()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _s10FindMyCore29GetPersonCachedLocationIntentV12DependenciesV05fetchG0AeA09PublishedG0VAA0E6EntityVYaYbAC05FetchG5ErrorOYKc_tcfC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static GetPersonCachedLocationIntent.Dependencies.live()@<X0>(void *a1@<X8>)
{
  v2 = sub_24AE08E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_24AE08DF8();
  v9 = *(v3 + 32);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  result = (v9)(v11 + v10, v6, v2);
  *a1 = &unk_24AE0F4F0;
  a1[1] = v11;
  return result;
}

uint64_t sub_24ADD5F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[43] = a3;
  v4[44] = a4;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_24AE08E08();
  v4[45] = v5;
  v6 = *(v5 - 8);
  v4[46] = v6;
  v4[47] = *(v6 + 64);
  v4[48] = swift_task_alloc();
  v7 = sub_24AE089E8();
  v4[49] = v7;
  v8 = *(v7 - 8);
  v4[50] = v8;
  v9 = *(v8 + 64) + 15;
  v4[51] = swift_task_alloc();
  v10 = *(*(sub_24AE08A08() - 8) + 64) + 15;
  v4[52] = swift_task_alloc();
  v11 = *(*(type metadata accessor for PersonModel() - 8) + 64) + 15;
  v4[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ADD610C, 0, 0);
}

uint64_t sub_24ADD610C()
{
  v1 = v0[52];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[49];
  sub_24ADD082C(v0[42], v0[53]);
  (*(v3 + 104))(v2, *MEMORY[0x277D09048], v4);
  sub_24AE08A18();
  v5 = sub_24AE08C18();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = *(MEMORY[0x277D09498] + 4);
  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_24ADD6208;
  v10 = v0[52];

  return MEMORY[0x28215FBB8](v10);
}

uint64_t sub_24ADD6208(uint64_t a1)
{
  v2 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = a1;

  return MEMORY[0x2822009F8](sub_24ADD6308, 0, 0);
}

uint64_t sub_24ADD6308()
{
  v1 = v0[55];
  v2 = v0[53];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[43];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9070, &qword_24AE0B990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AE0A280;
  v9 = v2[1];
  *(inited + 32) = *v2;
  *(inited + 40) = v9;
  sub_24AE08288();
  v10 = sub_24ADDB998(inited);
  v0[56] = v10;
  swift_setDeallocating();
  sub_24ADD761C(inited + 32);
  (*(v6 + 16))(v3, v7, v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v0[57] = v12;
  *(v12 + 16) = v1;
  *(v12 + 24) = v10;
  (*(v6 + 32))(v12 + v11, v3, v5);
  v13 = *(MEMORY[0x277D08920] + 4);

  sub_24AE08288();
  v14 = swift_task_alloc();
  v0[58] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8AA0, &qword_24AE0A628);
  *v14 = v0;
  v14[1] = sub_24ADD64F0;

  return MEMORY[0x28215EB08](v0 + 40, 0xD02AB486CEDC0000, 0, &unk_24AE0A620, v12, v15);
}

uint64_t sub_24ADD64F0()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  v5 = *(v2 + 456);
  if (v0)
  {

    v6 = sub_24ADD6800;
  }

  else
  {

    v6 = sub_24ADD6638;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24ADD6638()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 320);
  if (*(v2 + 16) && (v3 = *(v0 + 320), v4 = sub_24ADD6B6C(**(v0 + 424), *(*(v0 + 424) + 8)), (v5 & 1) != 0))
  {
    v6 = *(v0 + 440);
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    v9 = *(v0 + 408);
    v10 = *(v0 + 384);
    v11 = *(v0 + 328);
    v12 = (*(v2 + 56) + (v4 << 7));
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    *(v0 + 48) = v12[2];
    *(v0 + 64) = v13;
    *(v0 + 16) = v15;
    *(v0 + 32) = v14;
    v16 = v12[7];
    v18 = v12[4];
    v17 = v12[5];
    *(v0 + 112) = v12[6];
    *(v0 + 128) = v16;
    *(v0 + 80) = v18;
    *(v0 + 96) = v17;
    sub_24ADAE7A8(v0 + 16, v0 + 144);

    sub_24ADD21A0(v8);
    v19 = *(v0 + 64);
    v21 = *(v0 + 16);
    v20 = *(v0 + 32);
    v11[2] = *(v0 + 48);
    v11[3] = v19;
    *v11 = v21;
    v11[1] = v20;
    v22 = *(v0 + 128);
    v24 = *(v0 + 80);
    v23 = *(v0 + 96);
    v11[6] = *(v0 + 112);
    v11[7] = v22;
    v11[4] = v24;
    v11[5] = v23;

    v25 = *(v0 + 8);
  }

  else
  {
    v26 = *(v0 + 440);

    v27 = *(v0 + 416);
    v28 = *(v0 + 408);
    v29 = *(v0 + 384);
    v30 = *(v0 + 352);
    sub_24ADD21A0(*(v0 + 424));
    *v30 = 0;
    *(v0 + 472) = 0;
    sub_24ADD5A28();
    swift_willThrowTypedImpl();

    v25 = *(v0 + 8);
  }

  return v25();
}

uint64_t sub_24ADD6800()
{
  v2 = *(v0 + 440);
  v1 = *(v0 + 448);

  v3 = *(v0 + 416);
  v4 = *(v0 + 408);
  v5 = *(v0 + 384);
  v6 = *(v0 + 352);
  sub_24ADD21A0(*(v0 + 424));
  *v6 = 0;
  *(v0 + 472) = 0;
  sub_24ADD5A28();
  swift_willThrowTypedImpl();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24ADD68D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(sub_24AE08E08() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_24AD8E628;

  return sub_24ADD5F8C(a1, a2, v3 + v9, a3);
}

unint64_t sub_24ADD69DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AE09838();
  sub_24AE09858();
  if (a2)
  {
    sub_24AE08288();
    sub_24AE09048();
  }

  v6 = sub_24AE09868();

  return sub_24ADD6E5C(a1, a2, v6);
}

unint64_t sub_24ADD6A80(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AE089B8();
  v5 = MEMORY[0x277D08FF0];
  sub_24ADD7670(&qword_27EFA97D0, MEMORY[0x277D08FF0]);
  v6 = sub_24AE08EA8();
  return sub_24ADD747C(a1, v6, MEMORY[0x277D08FF0], &qword_27EFA9C20, v5, MEMORY[0x277D09000]);
}

unint64_t sub_24ADD6B6C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24AE09838();
  MEMORY[0x24C230FB0](a1, a2);
  sub_24AE09048();

  v6 = sub_24AE09868();
  return sub_24ADD6FA0(a1, a2, v6);
}

unint64_t sub_24ADD6C14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_24AE09838();
  v8 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (a1 != 0xC000000000000000 || a3 | a2)
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_7;
    }

    v9 = 3;
LABEL_6:
    MEMORY[0x24C231780](v9);
    v10 = a1 & 1;
LABEL_7:
    MEMORY[0x24C231780](v10);
    goto LABEL_9;
  }

  if (!v8)
  {
    v9 = 1;
    goto LABEL_6;
  }

  MEMORY[0x24C231780](2);
  MEMORY[0x24C231780](a1 & 1);
  sub_24AE09048();
LABEL_9:
  v11 = sub_24AE09868();

  return sub_24ADD70F8(a1, a2, a3, v11);
}

unint64_t sub_24ADD6D1C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_24AE09838();
  MEMORY[0x24C231780](a1);
  v4 = sub_24AE09868();

  return sub_24ADD740C(a1, v4);
}

unint64_t sub_24ADD6D88(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_24AE08928();
  v5 = MEMORY[0x277CC95F0];
  sub_24ADD7670(&qword_27EFA8EC0, MEMORY[0x277CC95F0]);
  v6 = sub_24AE08EA8();
  return sub_24ADD747C(a1, v6, MEMORY[0x277CC95F0], &qword_27EFA9C18, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_24ADD6E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v10 = (*(v3 + 48) + 16 * v5);
      v11 = v10[1];
      if (!v11)
      {
        break;
      }

      if (!a2)
      {
        v9 = v10[1];
LABEL_4:
        sub_24AE08288();

        goto LABEL_5;
      }

      if (*v10 == a1 && v11 == a2)
      {
        v15 = v10[1];
        swift_bridgeObjectRetain_n();
LABEL_18:
        swift_bridgeObjectRelease_n();
        return v5;
      }

      v13 = v10[1];
      v14 = sub_24AE097C8();
      swift_bridgeObjectRetain_n();
      if (v14)
      {
        goto LABEL_18;
      }

      swift_bridgeObjectRelease_n();
LABEL_5:
      v5 = (v5 + 1) & v8;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!a2)
    {

      return v5;
    }

    goto LABEL_4;
  }

  return v5;
}

unint64_t sub_24ADD6FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 & ~(-1 << *(v3 + 32));
  if ((*(v3 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = (*(v3 + 48) + 16 * v4);
    v6 = *v5;
    v7 = v5[1];
    sub_24AE08288();
    MEMORY[0x24C230FB0](v6, v7);
    MEMORY[0x24C230FB0](a1, a2);
  }

  return v4;
}

unint64_t sub_24ADD70F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v10 = ~v5;
  v11 = a1 != 0xC000000000000001;
  if (a3 | a2)
  {
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v12 = a1 != 0xC000000000000000;
  }

  v29 = a1 >> 62;
  v30 = a1 & 0xC000000000000000;
  v13 = a1 >> 62 != 3 || v11;
  v14 = a1 >> 62 != 3 || v12;
  v27 = v14;
  v28 = v13;
  while (1)
  {
    v17 = (*(v4 + 48) + 24 * v6);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = *v17 >> 62;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        if (v30 == 0x8000000000000000)
        {
LABEL_22:
          sub_24ADC3E58(v18);
          sub_24ADC3E58(a1);
          if (((v18 ^ a1) & 1) == 0)
          {
            return v6;
          }

          goto LABEL_15;
        }

LABEL_12:
        v15 = a1;
LABEL_13:
        sub_24ADC3E34(v15);
        v16 = v18;
      }

      else if (v18 == 0xC000000000000000 && (v20 | v19) == 0)
      {
        if ((v27 & 1) == 0)
        {
          sub_24ADC3E58(0xC000000000000000);
          v24 = 0xC000000000000000;
          goto LABEL_45;
        }

        sub_24ADC3E34(a1);
        v16 = 0xC000000000000000;
      }

      else
      {
        if ((v28 & 1) == 0)
        {
          sub_24ADC3E58(0xC000000000000001);
          v24 = 0xC000000000000001;
          goto LABEL_45;
        }

        sub_24ADC3E34(a1);
        v16 = 0xC000000000000001;
      }

      sub_24ADC3E58(v16);
      sub_24ADC3E58(a1);
      goto LABEL_15;
    }

    if (!v21)
    {
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }

    if (v30 != 0x4000000000000000 || ((v18 ^ a1) & 1) != 0)
    {
      sub_24ADC3E34(a1);
      v15 = v18;
      goto LABEL_13;
    }

    if (v19 == a2 && v20 == a3)
    {
      break;
    }

    v26 = sub_24AE097C8();
    sub_24ADC3E34(a1);
    sub_24ADC3E34(v18);
    sub_24ADC3E58(v18);
    sub_24ADC3E58(a1);
    if (v26)
    {
      return v6;
    }

LABEL_15:
    v6 = (v6 + 1) & v10;
    if (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  sub_24ADC3E34(a1);
  sub_24ADC3E34(v18);
  sub_24ADC3E58(v18);
  v24 = a1;
LABEL_45:
  sub_24ADC3E58(v24);
  return v6;
}

unint64_t sub_24ADD740C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24ADD747C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_24ADD7670(v24, v25);
      v20 = sub_24AE08EF8();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_24ADD7670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CombinedUniqueIdentifier.value.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    MEMORY[0x24C230FB0](v1, v2);
    v3 = 0x3A315644494142;
    v4 = 0xE700000000000000;
    v6 = 977882438;
  }

  else
  {
    MEMORY[0x24C230FB0](v1, v2);
    v3 = 0x3A3156444953;
    v4 = 0xE600000000000000;
    v6 = 978341190;
  }

  MEMORY[0x24C230FB0](v3, v4);

  return v6;
}

uint64_t CombinedUniqueIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    MEMORY[0x24C231780](1);
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();
}

uint64_t CombinedUniqueIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_24AE09838();
  if (v3)
  {
    MEMORY[0x24C231780](1);
  }

  else
  {
    MEMORY[0x24C231780](0);
  }

  MEMORY[0x24C230FB0](v1, v2);
  sub_24AE09048();

  return sub_24AE09868();
}

uint64_t sub_24ADD7924()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24AE09838();
  CombinedUniqueIdentifier.hash(into:)();
  return sub_24AE09868();
}

uint64_t sub_24ADD797C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_24AE09838();
  CombinedUniqueIdentifier.hash(into:)();
  return sub_24AE09868();
}

uint64_t CombinedUniqueIdentifier.id.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return CombinedUniqueIdentifier.value.getter();
}

uint64_t sub_24ADD7A0C@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  v6 = *(v1 + 16);
  result = CombinedUniqueIdentifier.value.getter();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s10FindMyCore24CombinedUniqueIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if (a1[2])
  {
    if (a2[2])
    {
      goto LABEL_6;
    }

LABEL_5:
    v7 = *a2;
    v8 = a2[1];
    sub_24ADD7DC4();
    sub_24ADD7DC4();
    sub_24ADD7DCC();
    sub_24ADD7DCC();
    return 0;
  }

  if (a2[2])
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_24ADD7DC4();
  sub_24ADD7DC4();
  MEMORY[0x24C230FB0](v3, v2);
  MEMORY[0x24C230FB0](v5, v4);
  sub_24ADD7DCC();
  sub_24ADD7DCC();

  return 1;
}

unint64_t sub_24ADD7CBC()
{
  result = qword_27EFA9C28;
  if (!qword_27EFA9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFA9C28);
  }

  return result;
}

uint64_t sub_24ADD7D1C(uint64_t a1, unsigned int a2)
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

uint64_t sub_24ADD7D64(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_24ADD7DD4(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_24AE09838();
  MEMORY[0x24C231780](v3);
  v5 = sub_24AE09868();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t DistanceFromUser.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for DistanceFromUser()
{
  result = qword_27EFA9CA0;
  if (!qword_27EFA9CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 DistanceFromUser.eta.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DistanceFromUser() + 24));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

uint64_t DistanceFromUser.init(from:to:eta:)@<X0>(void **a1@<X0>, void **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v40 - v13;
  v15 = type metadata accessor for DistanceFromUser();
  v46 = *(v15 - 8);
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *a2;
  if (*a2)
  {
    if (v19)
    {
      v21 = a3[1];
      v43 = *a3;
      v44 = a4;
      v41 = a3[2];
      v42 = v21;
      [v20 distanceFromLocation_];
      v22 = objc_opt_self();
      v23 = [v22 meters];
      v40[1] = sub_24ADD83C4();
      sub_24AE085E8();
      v24 = [v22 meters];
      sub_24AE08618();

      sub_24AE085F8();
      v26 = v25;
      v27 = *(v45 + 8);
      result = v27(v12, v8);
      v29 = v26 / 30.0;
      if (COERCE__INT64(fabs(v26 / 30.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v29 > -9.22337204e18)
      {
        if (v29 < 9.22337204e18)
        {
          v30 = v29 * 30.0;
          v31 = [v22 meters];
          sub_24AE085E8();
          [v19 horizontalAccuracy];
          v33 = v32 * v32;
          [v20 horizontalAccuracy];
          v35 = v34;

          v27(v14, v8);
          v18[*(v15 + 20)] = v30 / sqrt(v33 + v35 * v35 + 3600.0) < 1.5;
          v36 = &v18[*(v15 + 24)];
          v37 = v42;
          *v36 = v43;
          *(v36 + 1) = v37;
          *(v36 + 2) = v41;
          v38 = v44;
          sub_24ADD8410(v18, v44);
          return (*(v46 + 56))(v38, 0, 1, v15);
        }

        goto LABEL_13;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }
  }

  else
  {
    v20 = v19;
  }

  v39 = *(v46 + 56);

  return v39(a4, 1, 1, v15);
}

unint64_t sub_24ADD83C4()
{
  result = qword_27EFA9C38;
  if (!qword_27EFA9C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFA9C38);
  }

  return result;
}

uint64_t sub_24ADD8410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceFromUser();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DistanceFromUser.FormatOption.hashValue.getter()
{
  v1 = *v0;
  sub_24AE09838();
  MEMORY[0x24C231780](v1);
  return sub_24AE09868();
}

uint64_t DistanceFromUser.formatted(excluding:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA8D98, &qword_24AE0B490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v95 - v5;
  v6 = sub_24AE08718();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = *(v112 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v111 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v95 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C40, &qword_24AE0F6D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C48, &qword_24AE0F6D8);
  v105 = *(v15 - 8);
  v106 = v15;
  v16 = *(v105 + 64);
  MEMORY[0x28223BE20](v15);
  v102 = &v95 - v17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C50, &qword_24AE0F6E0);
  v99 = *(v101 - 8);
  v18 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v20 = &v95 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C58, &qword_24AE0F6E8);
  v103 = *(v21 - 8);
  v104 = v21;
  v22 = *(v103 + 64);
  MEMORY[0x28223BE20](v21);
  v100 = &v95 - v23;
  v98 = sub_24AE086E8();
  v97 = *(v98 - 8);
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_24AE08948();
  v96 = *(v109 - 8);
  v27 = *(v96 + 64);
  v28 = MEMORY[0x28223BE20](v109);
  v30 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v95 - v31;
  v33 = sub_24AE08F78();
  v95 = *(v33 - 8);
  v34 = *(v95 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v95 - v38;
  v40 = sub_24ADAE338(&unk_285E2F6A8);
  v41 = *(a1 + 16);
  v42 = *(v40 + 16);
  v108 = v11;
  if (v41 <= v42 >> 3)
  {
    v116 = v40;
    sub_24ADD99B0(a1);
    v43 = v116;
  }

  else
  {
    v43 = sub_24ADD9AB4(a1, v40);
  }

  v44 = type metadata accessor for DistanceFromUser();
  if (v115[*(v44 + 20)] == 1)
  {
    v45 = sub_24ADD7DD4(0, v43);

    if (v45)
    {
      sub_24AE08F08();
      type metadata accessor for ModelsModule();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      v115 = v47;
      sub_24AE08938();
      v48 = v95;
      (*(v95 + 16))(v37, v39, v33);
      v49 = v96;
      (*(v96 + 16))(v30, v32, v109);
      v50 = [v47 bundleURL];
      sub_24AE087F8();

      (*(v97 + 104))(v26, *MEMORY[0x277CC9118], v98);
      v51 = v114;
      sub_24AE08728();

      (*(v49 + 8))(v32, v109);
      (*(v48 + 8))(v39, v33);
      if (qword_27EFA8738 != -1)
      {
        swift_once();
      }

      v53 = qword_27EFAA198;
      v52 = unk_27EFAA1A0;
      v55 = qword_27EFAA1A8;
      v54 = unk_27EFAA1B0;
      v56 = word_27EFAA1B8;
      v57 = HIBYTE(word_27EFAA1B8);
      v58 = type metadata accessor for LabelInfo();
      v59 = &v51[*(v58 + 20)];
      *v59 = v53;
      *(v59 + 1) = v52;
      *(v59 + 2) = v55;
      *(v59 + 3) = v54;
      v59[32] = v56;
      v59[33] = v57;
      (*(*(v58 - 8) + 56))(v51, 0, 1, v58);
      sub_24AE08288();
      return sub_24AE08288();
    }

    else
    {
      v68 = type metadata accessor for LabelInfo();
      v69 = *(*(v68 - 8) + 56);
      v70 = v68;
      v71 = v114;

      return v69(v71, 1, 1, v70);
    }
  }

  else
  {
    v61 = v44;
    if (sub_24ADD7DD4(1u, v43))
    {
      sub_24ADD83C4();
      sub_24AE08608();
      v62 = v102;
      sub_24AE08738();
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C60, &qword_24AE0F6F0);
      v64 = v107;
      (*(*(v63 - 8) + 56))(v107, 1, 1, v63);
      v65 = v100;
      sub_24AE08568();
      sub_24AD92BE4(v64, &qword_27EFA9C40, &qword_24AE0F6D0);
      (*(v105 + 8))(v62, v106);
      (*(v99 + 8))(v20, v101);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
      sub_24AD9B548(&qword_27EFA9C68, &qword_27EFA9C58, &qword_24AE0F6E8);
      v66 = v104;
      sub_24AE08628();
      (*(v103 + 8))(v65, v66);
      v67 = v117;
    }

    else
    {
      v67 = 0;
    }

    v72 = v113;
    v73 = v110;
    v74 = sub_24ADD7DD4(2u, v43);

    v75 = v114;
    if (v74 && (v76 = &v115[*(v61 + 24)], v77 = *v76, v77 != 5))
    {
      LOBYTE(v116) = *v76;
      v117 = *(v76 + 8);
      object = DistanceFromUser.ETA.formatted()().value._object;
      if (v77 <= 1)
      {
        if (v77)
        {
          if (qword_27EFA8718 != -1)
          {
            swift_once();
          }

          v83 = &qword_27EFAA0F8;
        }

        else
        {
          if (qword_27EFA8738 != -1)
          {
            swift_once();
          }

          v83 = &qword_27EFAA198;
        }
      }

      else if (v77 == 2)
      {
        if (qword_27EFA8710 != -1)
        {
          swift_once();
        }

        v83 = &qword_27EFAA0D0;
      }

      else if (v77 == 3)
      {
        if (qword_27EFA8700 != -1)
        {
          swift_once();
        }

        v83 = &qword_27EFAA080;
      }

      else
      {
        if (qword_27EFA8720 != -1)
        {
          swift_once();
        }

        v83 = &qword_27EFAA120;
      }

      v79 = v83[1];
      v115 = *v83;
      v80 = v83[2];
      v81 = v83[3];
      v84 = *(v83 + 32);
      v85 = *(v83 + 33);
      sub_24AE08288();
      sub_24AE08288();
      v82 = v84 | (v85 << 8);
      v72 = v113;
      v75 = v114;
    }

    else
    {
      object = 0;
      v115 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
    }

    LocalizedStringResource(separating:_:)(v67, object, v73);

    v86 = v112;
    if ((*(v112 + 48))(v73, 1, v72) == 1)
    {
      sub_24ADDA6DC(v115, v79);
      sub_24AD92BE4(v73, &qword_27EFA8D98, &qword_24AE0B490);
      v87 = type metadata accessor for LabelInfo();
      return (*(*(v87 - 8) + 56))(v75, 1, 1, v87);
    }

    else
    {
      v88 = *(v86 + 32);
      v89 = v73;
      v90 = v108;
      v88(v108, v89, v72);
      (*(v86 + 16))(v111, v90, v72);
      if (v79)
      {
        (*(v86 + 8))(v90, v72);
        v91 = HIBYTE(v82);
        v92 = v115;
      }

      else
      {
        if (qword_27EFA8738 != -1)
        {
          swift_once();
        }

        v92 = qword_27EFAA198;
        v79 = unk_27EFAA1A0;
        v80 = qword_27EFAA1A8;
        v81 = unk_27EFAA1B0;
        LOBYTE(v82) = word_27EFAA1B8;
        v91 = HIBYTE(word_27EFAA1B8);
        v115 = *(v112 + 8);
        sub_24AE08288();
        sub_24AE08288();
        (v115)(v108, v72);
        v75 = v114;
      }

      v88(v75, v111, v72);
      v93 = type metadata accessor for LabelInfo();
      v94 = &v75[*(v93 + 20)];
      *v94 = v92;
      *(v94 + 1) = v79;
      *(v94 + 2) = v80;
      *(v94 + 3) = v81;
      v94[32] = v82 & 1;
      v94[33] = v91;
      return (*(*(v93 - 8) + 56))(v75, 0, 1, v93);
    }
  }
}

uint64_t DistanceFromUser.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AE08EB8();
  v1 = type metadata accessor for DistanceFromUser();
  v2 = *(v0 + *(v1 + 20));
  sub_24AE09858();
  v3 = (v0 + *(v1 + 24));
  v4 = *v3;
  if (v4 == 5)
  {
    return sub_24AE09858();
  }

  v7 = *(v3 + 1);
  v6 = *(v3 + 2);
  sub_24AE09858();
  MEMORY[0x24C231780](v4);

  return sub_24AE09988();
}

uint64_t DistanceFromUser.hashValue.getter()
{
  sub_24AE09838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AE08EB8();
  v1 = type metadata accessor for DistanceFromUser();
  v2 = *(v0 + *(v1 + 20));
  sub_24AE09858();
  v3 = (v0 + *(v1 + 24));
  v4 = *v3;
  if (v4 == 5)
  {
    sub_24AE09858();
  }

  else
  {
    v6 = *(v3 + 1);
    v5 = *(v3 + 2);
    sub_24AE09858();
    MEMORY[0x24C231780](v4);
    sub_24AE09988();
  }

  return sub_24AE09868();
}

uint64_t sub_24ADD949C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AE08EB8();
  v4 = *(v2 + *(a2 + 20));
  sub_24AE09858();
  v5 = (v2 + *(a2 + 24));
  v6 = *v5;
  if (v6 == 5)
  {
    return sub_24AE09858();
  }

  v9 = *(v5 + 1);
  v8 = *(v5 + 2);
  sub_24AE09858();
  MEMORY[0x24C231780](v6);

  return sub_24AE09988();
}

uint64_t sub_24ADD95A8(uint64_t a1, uint64_t a2)
{
  sub_24AE09838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C70, &qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AE08EB8();
  v4 = *(v2 + *(a2 + 20));
  sub_24AE09858();
  v5 = (v2 + *(a2 + 24));
  v6 = *v5;
  if (v6 == 5)
  {
    sub_24AE09858();
  }

  else
  {
    v8 = *(v5 + 1);
    v7 = *(v5 + 2);
    sub_24AE09858();
    MEMORY[0x24C231780](v6);
    sub_24AE09988();
  }

  return sub_24AE09868();
}

uint64_t static DistanceFromUser.< infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0);
  return sub_24AE08ED8() & 1;
}

uint64_t sub_24ADD9748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0);
  return sub_24AE08ED8() & 1;
}

BOOL sub_24ADD97E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0);
  return (sub_24AE08ED8() & 1) == 0;
}

BOOL sub_24ADD987C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0);
  return (sub_24AE08ED8() & 1) == 0;
}

uint64_t sub_24ADD9918()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9C78, &qword_27EFA9C30, &unk_24AE0F6C0);
  return sub_24AE08ED8() & 1;
}

uint64_t sub_24ADD99B0(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_24AE08288();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_24ADD9F34(*(*(v2 + 48) + (v10 | (v9 << 6))), &v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_24ADD9AB4(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {
              sub_24AE08288();
              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v50 << 6)));
        v19 = *(v6 + 40);
        sub_24AE09838();
        MEMORY[0x24C231780](v5);
        v20 = sub_24AE09868();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;
    v23 = sub_24AE08288();
    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_24ADDA044(v42, v14, v6, v2, v52);

      MEMORY[0x24C231F80](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v30 | (v50 << 6)));
      v31 = *(v6 + 40);
      sub_24AE09838();
      v2 = &v51;
      MEMORY[0x24C231780](v5);
      v32 = sub_24AE09868();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_24ADDA218(v14, v45, v47, v6);
LABEL_43:
    sub_24ADC3C28();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_24ADD9F34@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24AE09838();
  MEMORY[0x24C231780](a1);
  result = sub_24AE09868();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    v14 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_24ADAD50C();
      v13 = v14;
    }

    *a2 = *(*(v13 + 48) + v9);
    result = sub_24ADDA420(v9);
    *v2 = v14;
  }

  else
  {
LABEL_5:
    *a2 = 3;
  }

  return result;
}

uint64_t sub_24ADDA044(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_24AE09838();
    MEMORY[0x24C231780](v17);
    result = sub_24AE09868();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_24ADDA218(v7, a2, v9, a3);
}

uint64_t sub_24ADDA218(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9010, &qword_24AE0F8A0);
  result = sub_24AE094C8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_24AE09838();
    MEMORY[0x24C231780](v16);
    result = sub_24AE09868();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_24ADDA420(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24AE09498();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + v6);
        sub_24AE09838();
        MEMORY[0x24C231780](v12);
        v13 = sub_24AE09868() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + v2);
          v16 = (v14 + v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s10FindMyCore16DistanceFromUserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFA9C30, &unk_24AE0F6C0);
  sub_24AD9B548(&qword_27EFA9CC0, &qword_27EFA9C30, &unk_24AE0F6C0);
  if (sub_24AE08EF8())
  {
    v4 = type metadata accessor for DistanceFromUser();
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      v5 = *(v4 + 24);
      v6 = a1 + v5;
      v7 = *(a1 + v5);
      v8 = (a2 + v5);
      v9 = *v8;
      if (v7 == 5)
      {
        if (v9 == 5)
        {
          return 1;
        }
      }

      else
      {
        v11 = (*v8 ^ v7);
        if (v9 != 5 && v11 == 0)
        {
          v13 = *(v6 + 8);
          v14 = *(v6 + 16);
          v15 = v8[1];
          v16 = v8[2];
          if (sub_24AE09978())
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}