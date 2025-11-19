uint64_t sub_252A0DC78(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065756C61;
  v3 = 0x5672656767697274;
  v4 = a1;
  v5 = 0x8000000252E68060;
  v6 = 0x656C756465686373;
  v7 = 0xED00007478655464;
  if (a1 != 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0x8000000252E68080;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x8000000252E68030;
  v9 = 0xD000000000000015;
  if (a1 != 1)
  {
    v9 = 0x4972656767697274;
    v8 = 0xEB000000006E6F63;
  }

  if (!a1)
  {
    v9 = 0x5672656767697274;
    v8 = 0xEC00000065756C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x8000000252E68060;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007478655464;
      if (v10 != 0x656C756465686373)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x8000000252E68080;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x8000000252E68030;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x4972656767697274;
      v2 = 0xEB000000006E6F63;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_252E37DB4();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_252A0DE70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xEE00657475636578;
  v4 = 0x6574656C706D6F63;
  if (a1 == 2)
  {
    v4 = 0x456F547964616572;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v5 = 0xD000000000000010;
  v6 = 0x8000000252E67F20;
  if (a1)
  {
    v5 = 0x6553746E65746E69;
    v6 = 0xEF6E6F697463656CLL;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x456F547964616572;
    }

    else
    {
      v11 = 0x6574656C706D6F63;
    }

    if (a2 == 2)
    {
      v10 = 0xEE00657475636578;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x6553746E65746E69;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v10 = 0x8000000252E67F20;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_252E37DB4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_252A0DFD8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6553746E65746E69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v4 = 0x8000000252E67F20;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6572506E69676562;
    v4 = 0xEF737365636F7270;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x456F547964616572;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (v2 == 3)
    {
      v4 = 0xEE00657475636578;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6553746E65746E69;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xEF6E6F697463656CLL;
    }

    else
    {
      v5 = 0x8000000252E67F20;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF737365636F7270;
    if (v3 != 0x6572506E69676562)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE00657475636578;
    if (v3 != 0x456F547964616572)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6574656C706D6F63)
    {
LABEL_34:
      v7 = sub_252E37DB4();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_252A0E1E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B08, &qword_252E41A00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B10, &qword_252E5B650);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (*(v0 + 16))
  {
    if (sub_252E35DA4() || sub_252E35DB4())
    {

      v9 = 1;
    }

    else
    {
      sub_252E35D44();
      v11 = sub_252E35C84();
      v9 = 1;
      v12 = (*(*(v11 - 8) + 48))(v8, 1, v11);
      sub_25293847C(v8, &qword_27F541B10, &qword_252E5B650);
      if (v12 == 1)
      {
        if (sub_252E35D84())
        {
        }

        else
        {
          sub_252E35D64();
          v13 = sub_252E35D54();
          v14 = (*(*(v13 - 8) + 48))(v4, 1, v13);
          sub_25293847C(v4, &qword_27F541B08, &qword_252E41A00);
          if (v14 == 1 && sub_252E35D34())
          {
            v15 = sub_252B085DC();

            v9 = v15 ^ 1;
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

BOOL sub_252A0E3E4()
{
  v1 = *(v0 + 7);
  v2 = *(v0 + 10);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  v6 = sub_252C760C8(v5);

  v8 = sub_252C7613C(v7);

  v10 = sub_252C75D8C(v9);

  v12 = sub_252C762B4(v11);

  v13 = *(v6 + 16);

  if (v13 >= 3)
  {

LABEL_4:

    goto LABEL_5;
  }

  v14 = *(v8 + 16);

  if (v14 >= 3)
  {
    goto LABEL_4;
  }

  v16 = *(v10 + 16);

  if (v16 < 2)
  {
    goto LABEL_9;
  }

  v18 = *v0;
  v19 = v0[1];
  v20 = v0[2];
  v21 = *(v0 + 6);
  v22 = v0[4];
  v26 = *(v0 + 136);
  v27 = *(v0 + 152);
  v28 = *(v0 + 168);
  v23 = *(v0 + 88);
  v24 = *(v0 + 104);
  v25 = *(v0 + 120);
  v29 = *(v0 + 23);
  v30 = *(v0 + 200);
  v31 = *(v0 + 216);
  v32 = *(v0 + 232);
  v33 = *(v0 + 31);
  v46 = *(v0 + 456);
  v47 = *(v0 + 472);
  v48 = *(v0 + 488);
  v42 = *(v0 + 392);
  v43 = *(v0 + 408);
  v44 = *(v0 + 424);
  v45 = *(v0 + 440);
  v38 = *(v0 + 328);
  v39 = *(v0 + 344);
  v40 = *(v0 + 360);
  v41 = *(v0 + 376);
  v34 = *(v0 + 264);
  v35 = *(v0 + 280);
  v36 = *(v0 + 296);
  v37 = *(v0 + 312);
  if (sub_252A11078())
  {
LABEL_9:
    v17 = *(v12 + 16);

    return v17 > 1;
  }

LABEL_5:

  return 1;
}

uint64_t sub_252A0E5E4()
{
  v56 = sub_252E32A64();
  v0 = *(v56 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252CC5C94(qword_2864A6E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B18, &qword_252E41A08);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B20, qword_252E41A10);
  result = sub_252E37B34();
  v5 = result;
  v6 = 0;
  v7 = v3[8];
  v44 = v3 + 8;
  v8 = 1 << *(v3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  v54 = (v0 + 8);
  v47 = v3;
  v48 = result + 64;
  v45 = v11;
  v46 = result;
  if ((v9 & v7) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v6 << 6);
      v16 = v3[6];
      v17 = v3[7];
      v18 = *(v16 + 8 * v15);
      v19 = *(v17 + 8 * v15);
      v20 = *(v19 + 16);
      if (v20)
      {
        v50 = *(v16 + 8 * v15);
        v51 = v15;
        v52 = v10;
        v53 = v6;
        v63 = MEMORY[0x277D84F90];

        sub_2529AA3A0(0, v20, 0);
        v21 = v63;
        v49 = v19;
        v22 = (v19 + 40);
        do
        {
          v59 = v21;
          v60 = v20;
          v23 = *(v22 - 1);
          v58 = *v22;
          v61 = v23;
          v62 = v58;

          v24 = v55;
          sub_252E32A44();
          v57 = sub_252947DBC();
          v25 = sub_252E37784();
          v26 = *v54;
          v27 = v56;
          (*v54)(v24, v56);
          v61 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
          sub_2529508A0();
          v28 = sub_252E36EA4();
          v30 = v29;

          v61 = v28;
          v62 = v30;
          sub_252E32A34();
          v31 = sub_252E37784();
          v26(v24, v27);

          v61 = v31;
          sub_252E36EA4();

          v32 = sub_252E36FA4();
          v34 = v33;

          v21 = v59;
          v63 = v59;
          v36 = *(v59 + 16);
          v35 = *(v59 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_2529AA3A0((v35 > 1), v36 + 1, 1);
            v21 = v63;
          }

          *(v21 + 16) = v36 + 1;
          v37 = v21 + 16 * v36;
          *(v37 + 32) = v32;
          *(v37 + 40) = v34;
          v22 += 2;
          v20 = v60 - 1;
        }

        while (v60 != 1);
        v5 = v46;
        v3 = v47;
        v10 = v52;
        v6 = v53;
        v11 = v45;
        v18 = v50;
        v15 = v51;
      }

      else
      {
        v38 = *(v17 + 8 * v15);

        v21 = MEMORY[0x277D84F90];
      }

      v39 = sub_252C75848(v21);

      *(v48 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(v5[6] + 8 * v15) = v18;
      *(v5[7] + 8 * v15) = v39;
      v40 = v5[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        break;
      }

      v5[2] = v42;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        qword_27F575728 = v5;
        return result;
      }

      v14 = v44[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252A0EA28()
{
  result = sub_2529FC004(&unk_2864A5DF0);
  qword_27F575730 = result;
  return result;
}

uint64_t sub_252A0EA50()
{
  v58 = sub_252E32A64();
  v1 = *(v58 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 128);
  v5 = *(v4 + 16);
  if (v5)
  {
    v67 = MEMORY[0x277D84F90];
    result = sub_2529AA540(0, v5, 0);
    v7 = 0;
    v55 = (v1 + 8);
    v56 = v4 + 32;
    v8 = v67;
    v53 = v5;
    v54 = v4;
LABEL_3:
    if (v7 < *(v4 + 16))
    {
      v61 = v8;
      v9 = (v56 + 16 * v7);
      v10 = v9[1];
      v65 = *v9;
      v66 = v10;
      v59 = v10;

      v11 = v57;
      sub_252E32A44();
      sub_252947DBC();
      v12 = sub_252E37784();
      v13 = *v55;
      v14 = v58;
      (*v55)(v11, v58);
      v65 = v12;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      sub_2529508A0();
      v15 = sub_252E36EA4();
      v16 = v7;
      v18 = v17;

      v65 = v15;
      v66 = v18;
      sub_252E32A34();
      v19 = sub_252E37784();
      v13(v11, v14);

      v65 = v19;
      sub_252E36EA4();

      v64 = sub_252E36FA4();
      v21 = v20;

      if (qword_27F53F240 != -1)
      {
        swift_once();
      }

      v60 = v16 + 1;
      v22 = qword_27F575728 + 64;
      v23 = 1 << *(qword_27F575728 + 32);
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v25 = v24 & *(qword_27F575728 + 64);
      v26 = (v23 + 63) >> 6;
      v63 = qword_27F575728;

      v27 = 0;
LABEL_11:
      if (v25)
      {
        v28 = v27;
LABEL_16:
        v29 = 0;
        v30 = (v28 << 9) | (8 * __clz(__rbit64(v25)));
        v31 = *(v63 + 56);
        v62 = *(*(v63 + 48) + v30);
        v32 = *(v31 + v30);
        v25 &= v25 - 1;
        v33 = 1 << *(v32 + 32);
        if (v33 < 64)
        {
          v34 = ~(-1 << v33);
        }

        else
        {
          v34 = -1;
        }

        v35 = v34 & *(v32 + 56);
        v36 = (v33 + 63) >> 6;
        while (v35)
        {
LABEL_25:
          v38 = (*(v32 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v35)))));
          if (*v38 != v64 || v38[1] != v21)
          {
            v35 &= v35 - 1;
            result = sub_252E37DB4();
            if ((result & 1) == 0)
            {
              continue;
            }
          }

          v40 = 0;
          v41 = v62;
          goto LABEL_32;
        }

        while (1)
        {
          v37 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v37 >= v36)
          {
            v27 = v28;
            goto LABEL_11;
          }

          v35 = *(v32 + 56 + 8 * v37);
          ++v29;
          if (v35)
          {
            v29 = v37;
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
        while (1)
        {
          v28 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v28 >= v26)
          {

            v41 = 0;
            v40 = 1;
LABEL_32:
            v7 = v60;
            v8 = v61;
            v67 = v61;
            v43 = *(v61 + 16);
            v42 = *(v61 + 24);
            v44 = v43 + 1;
            v45 = v53;
            if (v43 >= v42 >> 1)
            {
              result = sub_2529AA540((v42 > 1), v43 + 1, 1);
              v8 = v67;
            }

            *(v8 + 16) = v44;
            v46 = v8 + 16 * v43;
            *(v46 + 32) = v41;
            *(v46 + 40) = v40;
            v4 = v54;
            if (v7 != v45)
            {
              goto LABEL_3;
            }

            goto LABEL_37;
          }

          v25 = *(v22 + 8 * v28);
          ++v27;
          if (v25)
          {
            goto LABEL_16;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
    v44 = *(MEMORY[0x277D84F90] + 16);
    v47 = MEMORY[0x277D84F90];
    if (v44)
    {
LABEL_37:
      v48 = (v8 + 40);
      v47 = MEMORY[0x277D84F90];
      do
      {
        if ((*v48 & 1) == 0)
        {
          v49 = *(v48 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_2529F8264(0, *(v47 + 2) + 1, 1, v47);
          }

          v51 = *(v47 + 2);
          v50 = *(v47 + 3);
          if (v51 >= v50 >> 1)
          {
            v47 = sub_2529F8264((v50 > 1), v51 + 1, 1, v47);
          }

          *(v47 + 2) = v51 + 1;
          *&v47[8 * v51 + 32] = v49;
        }

        v48 += 16;
        --v44;
      }

      while (v44);
    }

    return v47;
  }

  return result;
}

void sub_252A0EF78()
{
  v1 = *v0;
  v2 = v0[60];
  if (*(v2 + 16) || (__dst[0] = *v0, memcpy(&__dst[1], v0 + 1, 0x1D8uLL), v10 = v2, v11 = *(v0 + 61), v8 = *(sub_252A0EA50() + 16), , !v8))
  {
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v1;
      while (v4 < *(v1 + 16))
      {
        v6 = *(v5 + 512);
        if (*(v6 + 16) || (memcpy(__dst, (v5 + 32), sizeof(__dst)), v10 = v6, v11 = *(v5 + 520), v7 = *(sub_252A0EA50() + 16), , !v7))
        {
          ++v4;
          v5 += 504;
          if (v3 != v4)
          {
            continue;
          }
        }

        return;
      }

      __break(1u);
    }
  }
}

unint64_t sub_252A0F090()
{
  v1 = *v0;
  memcpy(v10, v0 + 1, sizeof(v10));
  v9 = v1;
  result = sub_252A0F154();
  if (result)
  {
    LOBYTE(result) = 1;
    return result & 1;
  }

  v3 = *(v1 + 16);
  if (!v3)
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v4 = 0;
  v5 = (v1 + 32);
  v6 = v3 - 1;
  while (v4 < *(v1 + 16))
  {
    memcpy(v8, v5, sizeof(v8));
    result = sub_252A0F154();
    if ((result & 1) == 0)
    {
      v5 += 504;
      if (v6 != v4++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_252A0F154()
{
  v0 = sub_252A0EA50();
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_24:

    v0 = 0;
LABEL_26:
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  if (qword_27F53F240 != -1)
  {
    swift_once();
  }

  v2 = 0;
  v3 = v0 + 32;
  v4 = qword_27F575728;
  v21 = v1;
  v22 = v0;
  v19 = qword_27F575728;
  v20 = v0 + 32;
  while (1)
  {
    if (v2 >= *(v0 + 16))
    {
      goto LABEL_36;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_6;
    }

    v5 = sub_252A488EC(*(v3 + 8 * v2));
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(*(v4 + 56) + 8 * v5);
    type metadata accessor for HomeStore();
    v23 = v7;

    v8 = static HomeStore.shared.getter();
    v9 = sub_2529DA828();

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        break;
      }

      goto LABEL_5;
    }

    v10 = sub_252E378C4();
    if (v10)
    {
      break;
    }

LABEL_5:

    v1 = v21;
    v0 = v22;
    v4 = v19;
    v3 = v20;
LABEL_6:
    if (++v2 == v1)
    {
      goto LABEL_24;
    }
  }

  v11 = 0;
  v0 = v9 & 0xC000000000000001;
  while (v0)
  {
    v12 = MEMORY[0x2530ADF00](v11, v9);
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_34;
    }

LABEL_16:
    v24 = v12;
    v14 = sub_252A10390(&v24, v23);

    if (v14)
    {

      v0 = 1;
      goto LABEL_26;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_5;
    }
  }

  if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v12 = *(v9 + 8 * v11 + 32);

  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_16;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_27:
  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_27F544D60);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_252E379F4();

  v24 = 0x207365686374614DLL;
  v25 = 0xEF203A656E656373;
  if (v0)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v0)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v16, v17);

  sub_252CC3D90(v24, v25, 0xD000000000000078, 0x8000000252E71D80);

  return v0;
}

uint64_t sub_252A0F454()
{
  v160 = sub_252E32E84();
  v145 = *(v160 - 8);
  v1 = *(v145 + 64);
  v2 = MEMORY[0x28223BE20](v160);
  v150 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v159 = (&v145 - v5);
  MEMORY[0x28223BE20](v4);
  v158 = &v145 - v6;
  v7 = v0[5];
  v169 = v0[4];
  v170 = v7;
  v8 = v0[7];
  v171 = v0[6];
  v172 = v8;
  v9 = v0[1];
  v165 = *v0;
  v166 = v9;
  v10 = v0[3];
  v167 = v0[2];
  v168 = v10;
  v11 = *(v0 + 16);
  memcpy(v174, v0 + 136, sizeof(v174));
  v173 = v11;
  v12 = sub_252BAC7E4();
  if (*(v11 + 16))
  {
    type metadata accessor for HomeStore();
    v13 = static HomeStore.shared.getter();
    v14 = HomeStore.scenes(matching:)(v12);
    LOBYTE(v16) = v15;

    if ((v16 & 1) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFFF8;
      if (v14 >> 62)
      {
        goto LABEL_54;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {

        v19 = 0;
        v20 = MEMORY[0x277D84F90];
        v164 = MEMORY[0x277D84F90];
        v149 = v14 + 32;
        v150 = (v14 & 0xC000000000000001);
        v157 = (v145 + 8);
        v145 = MEMORY[0x277D84F90];
        v146 = i;
        v147 = v17;
        v148 = v14;
        while (1)
        {
          if (v150)
          {
            v22 = MEMORY[0x2530ADF00](v19, v14);
            v23 = __OFADD__(v19, 1);
            v24 = v19 + 1;
            if (v23)
            {
              goto LABEL_52;
            }
          }

          else
          {
            if (v19 >= *(v17 + 16))
            {
              goto LABEL_53;
            }

            v21 = *(v149 + 8 * v19);

            v23 = __OFADD__(v19, 1);
            v24 = v19 + 1;
            if (v23)
            {
              goto LABEL_52;
            }
          }

          v155 = v24;
          v154 = v22;
          v151 = OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate;
          v25 = [*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
          v26 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v27 = sub_252E373A4();

          v163 = v20;
          v153 = v27;
          v156 = v26;
          if ((v27 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_252E37874();
            sub_252E373E4();
            v17 = *(&v165 + 1);
            v27 = v165;
            v12 = *(&v166 + 1);
            v16 = v166;
            v28 = v167;
          }

          else
          {
            v29 = -1 << *(v27 + 32);
            v17 = v27 + 56;
            v16 = ~v29;
            v30 = -v29;
            v31 = v30 < 64 ? ~(-1 << v30) : -1;
            v28 = v31 & *(v27 + 56);

            v12 = 0;
          }

          v152 = v16;
          v32 = (v16 + 64) >> 6;
          v159 = v17;
          if ((v27 & 0x8000000000000000) == 0)
          {
            break;
          }

          while (1)
          {
            v37 = sub_252E37904();
            if (!v37)
            {
              break;
            }

            v161 = v37;
            swift_dynamicCast();
            v36 = v162;
            v14 = v12;
            v35 = v28;
            if (!v162)
            {
              break;
            }

LABEL_26:
            v38 = v27;
            type metadata accessor for Action();
            v39 = swift_allocObject();
            *(v39 + 16) = v36;
            v40 = v36;
            v41 = [v40 uniqueIdentifier];
            v42 = v158;
            sub_252E32E64();

            v43 = sub_252E32E24();
            v45 = v44;
            (*v157)(v42, v160);
            *(v39 + 24) = v43;
            *(v39 + 32) = v45;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v46 = 1;
              v27 = v38;
            }

            else
            {
              objc_opt_self();
              v27 = v38;
              if (!swift_dynamicCastObjCClass())
              {
                objc_opt_self();
                v47 = swift_dynamicCastObjCClass();
                v28 = v35;
                v17 = v159;
                if (v47)
                {
                  v46 = 3;
                }

                else
                {
                  objc_opt_self();
                  v46 = 4 * (swift_dynamicCastObjCClass() != 0);
                }

                goto LABEL_31;
              }

              v46 = 2;
            }

            v28 = v35;
            v17 = v159;
LABEL_31:

            *(v39 + 40) = v46;
            MEMORY[0x2530AD700]();
            if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            v16 = &v163;
            sub_252E372D4();
            v20 = v163;
            v12 = v14;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_38:
          sub_25291AE30();

          if (v20 >> 62)
          {
            v16 = sub_252E378C4();
          }

          else
          {
            v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = v147;
          v14 = v148;
          v49 = v146;
          v12 = v154;
          v19 = v155;

          if (v16)
          {
            v50 = [*(v12 + v151) home];
            v20 = MEMORY[0x277D84F90];
            if (v50)
            {
              v51 = v50;
              v52 = type metadata accessor for Home();
              v53 = *(v52 + 48);
              v54 = *(v52 + 52);
              swift_allocObject();
              sub_2529E65BC(v51);

              MEMORY[0x2530AD700](v55);
              if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v12 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              v16 = &v164;
              sub_252E372D4();
              v145 = v164;
            }

            else
            {
            }
          }

          else
          {

            v20 = MEMORY[0x277D84F90];
          }

          if (v19 == v49)
          {
            sub_252929F10(v14, 0);
            v56 = v145;
            goto LABEL_138;
          }
        }

LABEL_18:
        v33 = v12;
        v34 = v28;
        v14 = v12;
        if (v28)
        {
LABEL_22:
          v35 = (v34 - 1) & v34;
          v36 = *(*(v27 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v34)))));
          if (!v36)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        while (1)
        {
          v14 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v14 >= v32)
          {
            goto LABEL_38;
          }

          v34 = *(v17 + 8 * v14);
          ++v33;
          if (v34)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        ;
      }
    }

    sub_252929F10(v14, v16 & 1);
  }

  v57 = type metadata accessor for HomeStore();
  v58 = static HomeStore.shared.getter();
  v59 = HomeStore.services(matching:supporting:)(v12, 0);
  LODWORD(v61) = v60;

  if ((v61 & 1) == 0)
  {
    v156 = v59 & 0xFFFFFFFFFFFFFF8;
    if (v59 >> 62)
    {
      goto LABEL_87;
    }

    v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v157 = v62;
    if (v62)
    {
LABEL_59:
      *&v165 = MEMORY[0x277D84F90];
      sub_2529AA380(0, v62 & ~(v62 >> 63), 0);
      if ((v62 & 0x8000000000000000) == 0)
      {
        LODWORD(v153) = v61;
        v154 = v57;
        v155 = v12;
        v63 = 0;
        v64 = v165;
        v158 = (v59 & 0xC000000000000001);
        v65 = v59;
        do
        {
          if (v158)
          {
            MEMORY[0x2530ADF00](v63, v59);
          }

          else
          {
            v66 = *(v59 + 8 * v63 + 32);
          }

          v67 = v62;
          sub_252CDB4B0();
          v69 = v68;

          if (v69)
          {
            v70 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v71 = *(v69 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
          }

          else
          {
            v70 = 0;
            v71 = 0;
          }

          *&v165 = v64;
          v73 = *(v64 + 16);
          v72 = *(v64 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_2529AA380((v72 > 1), v73 + 1, 1);
            v64 = v165;
          }

          ++v63;
          *(v64 + 16) = v73 + 1;
          v74 = v64 + 16 * v73;
          *(v74 + 32) = v70;
          *(v74 + 40) = v71;
          v62 = v67;
          v59 = v65;
        }

        while (v67 != v63);
        v57 = v154;
        v12 = v155;
        LOBYTE(v61) = v153;
        while (1)
        {
          v75 = sub_252C75A1C(v64);

          v76 = *(v75 + 16);

          if (!v76)
          {
            goto LABEL_90;
          }

          v77 = 0;
          v56 = MEMORY[0x277D84F90];
          *&v165 = MEMORY[0x277D84F90];
          v61 = v59 & 0xC000000000000001;
          while (1)
          {
            if (v157 == v77)
            {
              v82 = v59;
LABEL_137:
              sub_252929F10(v82, 0);
LABEL_138:
              v144 = sub_252C758E0(v56);

              return v144;
            }

            if (!v61)
            {
              break;
            }

            MEMORY[0x2530ADF00](v77, v59);
            v12 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_85;
            }

LABEL_77:
            sub_252CDB4B0();
            v57 = v79;

            ++v77;
            if (v57)
            {
              MEMORY[0x2530AD700](v80);
              if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v81 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_252E372A4();
              }

              sub_252E372D4();
              v56 = v165;
              v77 = v12;
            }
          }

          if (v77 >= *(v156 + 16))
          {
            goto LABEL_86;
          }

          v78 = *(v59 + 8 * v77 + 32);

          v12 = v77 + 1;
          if (!__OFADD__(v77, 1))
          {
            goto LABEL_77;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          v157 = sub_252E378C4();
          if (!v157)
          {
            goto LABEL_90;
          }

          v83 = sub_252E378C4();
          if (v83)
          {
            v62 = v83;
            goto LABEL_59;
          }

LABEL_113:
          v64 = MEMORY[0x277D84F90];
        }
      }

      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }
  }

LABEL_90:
  sub_252929F10(v59, v61 & 1);
  v84 = static HomeStore.shared.getter();
  v85 = HomeStore.accessories(matching:supporting:)(v12, 0);
  v87 = v86;

  if (v87)
  {
    v88 = v85;
    v89 = 1;
LABEL_135:
    sub_252929F10(v88, v89);
    return 0;
  }

  v152 = v85 & 0xFFFFFFFFFFFFFF8;
  if (!(v85 >> 62))
  {
    v57 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v151 = v57;
    if (v57)
    {
      goto LABEL_94;
    }

LABEL_134:
    v88 = v85;
    v89 = 0;
    goto LABEL_135;
  }

  v151 = sub_252E378C4();
  if (!v151)
  {
    goto LABEL_134;
  }

  v112 = sub_252E378C4();
  if (!v112)
  {
    v91 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  v57 = v112;
LABEL_94:
  *&v165 = MEMORY[0x277D84F90];
  sub_2529AA380(0, v57 & ~(v57 >> 63), 0);
  if (v57 < 0)
  {
    goto LABEL_112;
  }

  v90 = 0;
  v156 = v85;
  v157 = (v85 & 0xC000000000000001);
  v91 = v165;
  v153 = (v145 + 8);
  v154 = (v145 + 32);
  v155 = v57;
  do
  {
    if (v157)
    {
      v92 = MEMORY[0x2530ADF00](v90, v85);
    }

    else
    {
      v92 = *(v85 + 8 * v90 + 32);
    }

    v93 = [*(v92 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v93)
    {
      v94 = type metadata accessor for Home();
      v95 = *(v94 + 48);
      v96 = *(v94 + 52);
      v97 = swift_allocObject();
      v98 = v93;
      v99 = [v98 uniqueIdentifier];
      sub_252E32E64();

      v100 = [v98 name];
      v101 = sub_252E36F34();
      v103 = v102;

      v104 = [v98 assistantIdentifier];
      v158 = v101;
      if (v104)
      {
        v105 = v104;
        sub_252E36F34();
      }

      v106 = v160;
      (*v154)(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v159, v160);

      swift_setDeallocating();
      (*v153)(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v106);

      v107 = *(*v97 + 48);
      v108 = *(*v97 + 52);
      swift_deallocClassInstance();
      v57 = v155;
      v85 = v156;
      v93 = v158;
    }

    else
    {

      v103 = 0;
    }

    *&v165 = v91;
    v110 = *(v91 + 16);
    v109 = *(v91 + 24);
    if (v110 >= v109 >> 1)
    {
      sub_2529AA380((v109 > 1), v110 + 1, 1);
      v91 = v165;
    }

    ++v90;
    *(v91 + 16) = v110 + 1;
    v111 = v91 + 16 * v110;
    *(v111 + 32) = v93;
    *(v111 + 40) = v103;
  }

  while (v57 != v90);
LABEL_115:
  v113 = sub_252C75A1C(v91);

  v114 = *(v113 + 16);

  if (!v114)
  {
    goto LABEL_134;
  }

  v116 = 0;
  v56 = MEMORY[0x277D84F90];
  *&v165 = MEMORY[0x277D84F90];
  v117 = v85 & 0xC000000000000001;
  v118 = (v145 + 32);
LABEL_117:
  v119 = v116;
  while (v117)
  {
    result = MEMORY[0x2530ADF00](v119, v85);
    v120 = result;
    v116 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      goto LABEL_139;
    }

LABEL_121:
    v121 = [*(v120 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) home];
    if (v121)
    {
      v159 = v118;
      v122 = v121;
      v123 = type metadata accessor for Home();
      v124 = *(v123 + 48);
      v125 = *(v123 + 52);
      v126 = swift_allocObject();
      *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v122;
      v127 = v122;
      v128 = [v127 uniqueIdentifier];
      sub_252E32E64();

      v129 = [v127 name];
      v130 = sub_252E36F34();
      v157 = v131;
      v158 = v130;

      v132 = [v127 assistantIdentifier];
      if (v132)
      {
        v133 = v85;
        v134 = v132;
        v155 = sub_252E36F34();
        v136 = v135;

        v85 = v133;
        v137 = v136;
        v138 = v155;
      }

      else
      {

        v138 = 0;
        v137 = 0;
      }

      v118 = v159;
      v139 = (*v159)(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v150, v160);
      v140 = (v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v141 = v157;
      *v140 = v158;
      v140[1] = v141;
      *(v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v142 = (v126 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v142 = v138;
      v142[1] = v137;
      MEMORY[0x2530AD700](v139);
      if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v143 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v56 = v165;
      if (v116 == v151)
      {
LABEL_136:
        v82 = v85;
        goto LABEL_137;
      }

      goto LABEL_117;
    }

    ++v119;
    if (v116 == v151)
    {
      goto LABEL_136;
    }
  }

  if (v119 >= *(v152 + 16))
  {
    goto LABEL_140;
  }

  v120 = *(v85 + 8 * v119 + 32);

  v116 = v119 + 1;
  if (!__OFADD__(v119, 1))
  {
    goto LABEL_121;
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}

uint64_t sub_252A10390(char **a1, uint64_t a2)
{
  v51 = a2;
  v50 = sub_252E32A64();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [*&(*a1)[OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate] actions];
  sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_2529E6100();
  v9 = sub_252E373A4();

  v10 = sub_252B2E20C(v9);
  v11 = v2;

  if (v10 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      break;
    }

    v45[1] = v11;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    sub_252E379F4();

    strcpy(v56, "Checking for ");
    HIWORD(v56[1]) = -4864;
    v14 = *&v7[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v15 = *&v7[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
    v45[0] = &v7[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v16 = sub_252AD26C8(v14, v15);
    MEMORY[0x2530AD570](v16);

    MEMORY[0x2530AD570](544106784, 0xE400000000000000);
    v17 = v51;
    v18 = sub_252E373B4();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(v56[0], v56[1], 0xD000000000000078, 0x8000000252E71D80);

    v19 = v17 + 56;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v17 + 56);
    v23 = (v20 + 63) >> 6;
    v46 = (v4 + 8);

    v11 = 0;
    v7 = MEMORY[0x277D84F90];
    v47 = v23;
    for (j = v19; v22; v19 = j)
    {
      v57 = v7;
LABEL_14:
      v25 = (*(v51 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v22)))));
      v26 = *v25;
      v55 = v25[1];
      v56[0] = v26;
      v56[1] = v55;

      v27 = v49;
      sub_252E32A44();
      sub_252947DBC();
      v28 = sub_252E37784();
      v54 = *v46;
      v29 = v50;
      v54(v27, v50);
      v56[0] = v28;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      v52 = sub_2529508A0();
      v30 = sub_252E36EA4();
      v32 = v31;

      v56[0] = v30;
      v56[1] = v32;
      sub_252E32A34();
      v33 = sub_252E37784();
      v54(v27, v29);

      v56[0] = v33;
      sub_252E36EA4();

      v34 = sub_252E36FA4();
      v36 = v35;

      v7 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
      }

      v4 = *(v7 + 2);
      v37 = *(v7 + 3);
      if (v4 >= v37 >> 1)
      {
        v7 = sub_2529F7A80((v37 > 1), v4 + 1, 1, v7);
      }

      v22 &= v22 - 1;
      *(v7 + 2) = v4 + 1;
      v38 = &v7[16 * v4];
      *(v38 + 4) = v34;
      *(v38 + 5) = v36;
      v23 = v47;
    }

    while (1)
    {
      v24 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v24 >= v23)
      {

        v56[0] = sub_252AD26C8(*v45[0], *(v45[0] + 8));
        v56[1] = v39;
        MEMORY[0x28223BE20](v56[0]);
        v45[-2] = v56;
        v40 = sub_2529ED970(sub_25296A69C, &v45[-4], v7);

        return v40 & 1;
      }

      v22 = *(v19 + 8 * v24);
      ++v11;
      if (v22)
      {
        v57 = v7;
        v11 = v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544D60);
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v56, "Found scene: ");
  HIWORD(v56[1]) = -4864;
  v42 = *&v7[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  v43 = *&v7[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];

  MEMORY[0x2530AD570](v42, v43);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E71EB0);
  sub_252CC3D90(v56[0], v56[1], 0xD000000000000078, 0x8000000252E71D80);

  v40 = 0;
  return v40 & 1;
}

uint64_t sub_252A10A34()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 26);
  result = *(v0 + 64);
  v4 = *(v0 + 192);
  v5 = *(v0 + 256);
  if (result != 4)
  {
    result = sub_252A0CE08(result, 0);
    if ((result & 1) == 0)
    {
      return 1;
    }
  }

  if (v2 != 4)
  {
    if (sub_252A0C910(v2, 2u))
    {
      return 1;
    }

    result = sub_252A0C910(v2, 3u);
    if (result)
    {
      return 1;
    }
  }

  if (v1 != 2)
  {
    if ((v1 & 1) == 0 || (v16 = sub_252E37DB4(), swift_bridgeObjectRelease_n(), (v16 & 1) == 0))
    {
      swift_bridgeObjectRelease_n();
    }

    return 1;
  }

  if (*(v5 + 16))
  {
    return 1;
  }

  v6 = 0;
  v7 = *(v4 + 16);
  do
  {
    v9 = v7 != v6;
    if (v7 == v6)
    {
      break;
    }

    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    v10 = *(v4 + 32 + v6);
    if (StateSemantic.rawValue.getter() == 7827308 && v11 == 0xE300000000000000)
    {
      goto LABEL_21;
    }

    v12 = sub_252E37DB4();

    if (v12)
    {
      return v9;
    }

    if (StateSemantic.rawValue.getter() == 0x6D756964656DLL && v13 == 0xE600000000000000)
    {
      goto LABEL_21;
    }

    v14 = sub_252E37DB4();

    if (v14)
    {
      return v9;
    }

    if (StateSemantic.rawValue.getter() == 1751607656 && v15 == 0xE400000000000000)
    {
LABEL_21:

      return 1;
    }

    v8 = sub_252E37DB4();

    ++v6;
  }

  while ((v8 & 1) == 0);
  return v9;
}

uint64_t sub_252A10C68(unint64_t a1)
{
  v2 = *(v1 + 208);
  if (v2 == 9)
  {
    return (v2 == 9) & (sub_252B9D64C(a1) ^ 1);
  }

  v3 = a1;
  v4 = sub_252A0D524(v2, 0);
  a1 = v3;
  if ((v4 & 1) == 0)
  {
    return (v2 == 9) & (sub_252B9D64C(a1) ^ 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_252A10CC8()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      v1 = 0;
      return v1 & 1;
    }
  }

  else if (*(v0 + 8))
  {
    v1 = 1;
    goto LABEL_7;
  }

  v1 = sub_252E37DB4();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_252A10D90()
{
  v1 = *(v0 + 209);
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1)
    {
      v2 = sub_252E37DB4();
    }

    else
    {
      v2 = 1;
    }
  }

  return v2 & 1;
}

void sub_252A10E18(char *a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = *(v3 + 16);
  if (v4 < 2 || (v5 = sub_2529A78B0(0, *(v1 + 192)), v4 = *(v3 + 16), !v5))
  {
    if (v4)
    {
      v8 = *(v3 + 32);
    }

    else
    {
      v8 = 77;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
LABEL_14:
    v8 = 0;
LABEL_15:
    *a1 = v8;
    return;
  }

  v6 = 0;
  while (v6 < *(v3 + 16))
  {
    v8 = *(v3 + 32 + v6);
    if (StateSemantic.rawValue.getter() == 28271 && v9 == 0xE200000000000000)
    {
    }

    else
    {
      v7 = sub_252E37DB4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (v4 == ++v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_252A10F24()
{
  v0 = sub_252A12828();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v4 = *v2++;
      sub_252A9AD58(v4);
      v5 = sub_252A9B42C();
      if (v5 != 71)
      {
        if (qword_27F53F2B0 != -1)
        {
          v12 = v5;
          swift_once();
          v5 = v12;
        }

        v6 = off_27F541CE0;
        if (*(off_27F541CE0 + 2))
        {
          v7 = sub_252A45194(v5);
          if (v8)
          {
            v9 = *(v6[7] + 8 * v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v3 = sub_2529F7A6C(0, *(v3 + 2) + 1, 1, v3);
            }

            v11 = *(v3 + 2);
            v10 = *(v3 + 3);
            if (v11 >= v10 >> 1)
            {
              v3 = sub_2529F7A6C((v10 > 1), v11 + 1, 1, v3);
            }

            *(v3 + 2) = v11 + 1;
            *&v3[8 * v11 + 32] = v9;
          }
        }
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_252A11078()
{
  v87 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v83 = *(v0 + 128);
  v84 = v1;
  v2 = *(v0 + 176);
  v85 = *(v0 + 160);
  v86 = v2;
  v3 = *(v0 + 80);
  v79 = *(v0 + 64);
  v80 = v3;
  v4 = *(v0 + 112);
  v81 = *(v0 + 96);
  v82 = v4;
  v5 = *(v0 + 16);
  v75 = *v0;
  v76 = v5;
  v6 = *(v0 + 48);
  v77 = *(v0 + 32);
  v78 = v6;
  v7 = *(v0 + 192);
  memcpy(v74, (v0 + 200), sizeof(v74));

  v9 = sub_252C75D8C(v8);

  if (*(v9 + 16) == 2)
  {
    v67 = 0;
    if (sub_252DA0454(0, v9))
    {
      v10 = *(v9 + 32);
      v11 = v10 & 0x3F;
      v12 = ((1 << v10) + 63) >> 6;
      v13 = 8 * v12;

      if (v11 <= 0xD)
      {
        goto LABEL_4;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_4:
        v70 = v7;
        v65 = &v64;
        v66 = v12;
        MEMORY[0x28223BE20](v14);
        v68 = &v64 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v68, v13);
        v69 = 0;
        v15 = 0;
        v16 = 1 << *(v9 + 32);
        v17 = -1;
        if (v16 < 64)
        {
          v17 = ~(-1 << v16);
        }

        v18 = v17 & *(v9 + 56);
        v19 = (v16 + 63) >> 6;
        while (v18)
        {
          v21 = __clz(__rbit64(v18));
          v18 &= v18 - 1;
LABEL_15:
          v7 = v21 | (v15 << 6);
          LOBYTE(v71[0]) = *(*(v9 + 48) + v7);
          if (StateSemantic.rawValue.getter() == 28271 && v24 == 0xE200000000000000)
          {
          }

          else
          {
            v20 = sub_252E37DB4();

            if ((v20 & 1) == 0)
            {
              *&v68[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
              v25 = __OFADD__(v69++, 1);
              if (v25)
              {
                __break(1u);
                goto LABEL_21;
              }
            }
          }
        }

        v22 = v15;
        while (1)
        {
          v15 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v15 >= v19)
          {
            v26 = sub_252C540C0(v68, v66, v69, v9);
            v7 = v70;
            goto LABEL_24;
          }

          v23 = *(v9 + 56 + 8 * v15);
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v18 = (v23 - 1) & v23;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_85;
      }

      v60 = swift_slowAlloc();

      v26 = sub_252A19280(v60, v12, v9, sub_252A11988);
      swift_bridgeObjectRelease_n();
      MEMORY[0x2530AED00](v60, -1, -1);
LABEL_24:
      if (qword_27F53F268 != -1)
      {
        swift_once();
      }

      v27 = sub_252A11F64(qword_27F575750, v26);

      LODWORD(v19) = v27 ^ 1;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if (*(v9 + 16) == 2)
    {
      if (sub_252DA0454(1, v9))
      {
        LODWORD(v69) = v19;
        v70 = v7;
        v28 = *(v9 + 32);
        v29 = v28 & 0x3F;
        v30 = ((1 << v28) + 63) >> 6;
        v31 = 8 * v30;

        if (v29 <= 0xD)
        {
          goto LABEL_30;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {

LABEL_30:
          v64 = &v64;
          v65 = v30;
          MEMORY[0x28223BE20](v32);
          v66 = &v64 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
          bzero(v66, v31);
          v68 = 0;
          v19 = 0;
          v33 = 1 << *(v9 + 32);
          v34 = -1;
          if (v33 < 64)
          {
            v34 = ~(-1 << v33);
          }

          v35 = v34 & *(v9 + 56);
          v36 = (v33 + 63) >> 6;
          while (v35)
          {
            v38 = __clz(__rbit64(v35));
            v35 &= v35 - 1;
LABEL_41:
            v7 = v38 | (v19 << 6);
            LOBYTE(v71[0]) = *(*(v9 + 48) + v7);
            if (StateSemantic.rawValue.getter() == 6710895 && v41 == 0xE300000000000000)
            {
            }

            else
            {
              v37 = sub_252E37DB4();

              if ((v37 & 1) == 0)
              {
                *&v66[(v7 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v7;
                v25 = __OFADD__(v68++, 1);
                if (v25)
                {
                  __break(1u);
                  goto LABEL_47;
                }
              }
            }
          }

          v39 = v19;
          while (1)
          {
            v19 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v19 >= v36)
            {
              v43 = sub_252C540C0(v66, v65, v68, v9);
              goto LABEL_50;
            }

            v40 = *(v9 + 56 + 8 * v19);
            ++v39;
            if (v40)
            {
              v38 = __clz(__rbit64(v40));
              v35 = (v40 - 1) & v40;
              goto LABEL_41;
            }
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v61 = swift_slowAlloc();

        v62 = v67;
        v63 = sub_252A19280(v61, v30, v9, sub_252A124E4);
        if (v62)
        {

          swift_bridgeObjectRelease_n();
          result = MEMORY[0x2530AED00](v61, -1, -1);
          __break(1u);
          return result;
        }

        v43 = v63;
        swift_bridgeObjectRelease_n();
        MEMORY[0x2530AED00](v61, -1, -1);
LABEL_50:
        v7 = v70;
        if (qword_27F53F268 != -1)
        {
          swift_once();
        }

        v44 = sub_252A11F64(qword_27F575750, v43);

        v42 = v44 ^ 1;
        LODWORD(v19) = v69;
      }

      else
      {
        v42 = 0;
      }

      v45 = *(v9 + 16) == 2;
      LODWORD(v68) = v42;
      if (v45 && ((sub_252DA0454(10, v9) & 1) != 0 || (sub_252DA0454(9, v9) & 1) != 0))
      {
        v46 = sub_252DA0454(18, v9);
        goto LABEL_58;
      }
    }

    else
    {
LABEL_47:
      LODWORD(v68) = 0;
    }
  }

  else
  {
LABEL_21:
    LODWORD(v19) = 0;
    LODWORD(v68) = 0;
  }

  v46 = 0;
LABEL_58:
  LODWORD(v67) = v46;

  v71[8] = v83;
  v71[9] = v84;
  v71[10] = v85;
  v71[11] = v86;
  v71[4] = v79;
  v71[5] = v80;
  v71[6] = v81;
  v71[7] = v82;
  v71[0] = v75;
  v71[1] = v76;
  v71[2] = v77;
  v71[3] = v78;
  v72 = v7;
  memcpy(v73, v74, sizeof(v73));
  LODWORD(v70) = sub_252E10C30(v71);
  if (qword_27F53F4E8 != -1)
  {
LABEL_86:
    swift_once();
  }

  v47 = sub_252E36AD4();
  v66 = __swift_project_value_buffer(v47, qword_27F544D60);
  *&v71[0] = 0;
  *(&v71[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E71E20);
  if (v19)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  LODWORD(v69) = v19;
  if (v19)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v48, v49);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E71E40);
  v50 = v68;
  if (v68)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v68)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v51, v52);

  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E71E60);
  v53 = v67;
  if (v67)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v67)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v54, v55);

  MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E71E80);
  if (v70)
  {
    v56 = 1702195828;
  }

  else
  {
    v56 = 0x65736C6166;
  }

  if (v70)
  {
    v57 = 0xE400000000000000;
  }

  else
  {
    v57 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v56, v57);

  sub_252CC3D90(*&v71[0], *(&v71[0] + 1), 0xD000000000000078, 0x8000000252E71D80);

  v58 = *MEMORY[0x277D85DE8];
  return (v69 | v50 | v53 | v70) & 1;
}

uint64_t sub_252A11988(char *a1)
{
  v6 = *a1;
  if (StateSemantic.rawValue.getter() == 28271 && v1 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252E37DB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252A11A10(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_252E378C4())
    {
      return 1;
    }
  }

  else if (!*(a1 + 16))
  {
    return 1;
  }

  if (!v4)
  {
    v6 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_252E378C4();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_252E378C4();
LABEL_14:
  if (v6 >= v7)
  {
    v8 = a1;
  }

  else
  {
    v8 = v2;
  }

  if (v6 < v7)
  {
    v2 = a1;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_252E37874();
    type metadata accessor for Service();
    sub_252A19940(&qword_27F541EB0, type metadata accessor for Service);
    result = sub_252E373E4();
    v8 = v42;
    v10 = v43;
    v11 = v44;
    v12 = v45;
    v13 = v46;
  }

  else
  {
    v14 = -1 << *(v8 + 32);
    v10 = v8 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v8 + 56);

    v12 = 0;
  }

  v36 = v10;
  v17 = (v11 + 64) >> 6;
  v18 = v2 & 0xC000000000000001;
  v37 = v2;
  v40 = v2 + 56;
  v35 = v2 & 0xC000000000000001;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v20 = v13;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!sub_252E37904())
        {
          goto LABEL_52;
        }

        type metadata accessor for Service();
        swift_dynamicCast();
        v23 = v41;
        v39 = v20;
        if (!v18)
        {
          goto LABEL_37;
        }

LABEL_26:
        v19 = sub_252E37914();

        v13 = v39;
        if (v19)
        {
          sub_25291AE30();

          return 0;
        }
      }

      v21 = v13;
      if (!v13)
      {
        v22 = v12;
        while (1)
        {
          v12 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            return result;
          }

          if (v12 >= v17)
          {
            break;
          }

          v21 = *(v10 + 8 * v12);
          ++v22;
          if (v21)
          {
            goto LABEL_33;
          }
        }

LABEL_52:
        sub_25291AE30();

        return 1;
      }

LABEL_33:
      v39 = (v21 - 1) & v21;
      v23 = *(*(v8 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v21)))));
      v41 = v23;

      if (v18)
      {
        goto LABEL_26;
      }

LABEL_37:
      if (*(v37 + 16))
      {
        break;
      }

      v13 = v39;
    }

    v24 = *(v37 + 40);
    sub_252E37EC4();
    sub_252E32E84();
    sub_252A19940(&qword_27F540680, MEMORY[0x277CC95F0]);
    sub_252E36E94();
    v38 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    MEMORY[0x2530AE390](*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
    v25 = (v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v26 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v27 = *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    sub_252E37044();

    v28 = sub_252E37F14();
    v29 = -1 << *(v37 + 32);
    v30 = v28 & ~v29;
    if ((*(v40 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      break;
    }

LABEL_51:

    v10 = v36;
    v18 = v35;
    v13 = v39;
  }

  v31 = ~v29;
  while (1)
  {
    v32 = *(*(v37 + 48) + 8 * v30);

    if ((sub_252E32E54() & 1) == 0 || *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v23 + v38))
    {

      goto LABEL_41;
    }

    if (*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v25 && *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v25[1])
    {
      break;
    }

    v34 = sub_252E37DB4();

    if (v34)
    {
      goto LABEL_55;
    }

LABEL_41:
    v30 = (v30 + 1) & v31;
    if (((*(v40 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

LABEL_55:
  sub_25291AE30();

  return 0;
}

uint64_t sub_252A11F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v25 = v4;
  v26 = v8 & *(v4 + 56);
  v9 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v12 = v26;
    if (!v26)
    {
      break;
    }

LABEL_18:
    v26 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v25 + 48) + (__clz(__rbit64(v12)) | (v11 << 6)));
      v15 = *(v6 + 40);
      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      result = sub_252E37F14();
      v16 = ~(-1 << *(v6 + 32));
      for (i = result & v16; ((*(v6 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v16)
      {
        v27 = *(*(v6 + 48) + i);
        v18 = StateSemantic.rawValue.getter();
        v20 = v19;
        if (v18 == StateSemantic.rawValue.getter() && v20 == v21)
        {

LABEL_30:

          v24 = 0;
          goto LABEL_31;
        }

        v23 = sub_252E37DB4();

        if (v23)
        {
          goto LABEL_30;
        }
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v9)
    {
      break;
    }

    v12 = *(v5 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_18;
    }
  }

  v24 = 1;
LABEL_31:

  return v24;
}

uint64_t sub_252A1218C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_252E37EC4();

      sub_252E37044();
      v20 = sub_252E37F14();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A12374(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      v15 = *(v6 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      result = sub_252E37F14();
      v16 = -1 << *(v6 + 32);
      v17 = result & ~v16;
      if ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(v6 + 48) + 8 * v17) != v14)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A124E4(char *a1)
{
  v6 = *a1;
  if (StateSemantic.rawValue.getter() == 6710895 && v1 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_252E37DB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_252A12574()
{
  v1 = *(v0 + 64);
  if (v1 == 4)
  {
    goto LABEL_2;
  }

  v3 = *(v0 + 24);
  if (sub_252A0CE08(*(v0 + 64), 2u))
  {
LABEL_4:
    v2 = 1;
    return v2 & 1;
  }

  if ((sub_252A0CE08(v1, 3u) & 1) == 0)
  {
    goto LABEL_2;
  }

  v5 = *v0;
  v6 = *(v0 + 2);
  v7 = *(v0 + 25);
  *v8 = *(v0 + 41);
  *&v8[15] = *(v0 + 7);
  memcpy(v9, v0 + 65, sizeof(v9));
  sub_252A10E18(&v10);
  if (v10 != 77 && sub_2529A78B0(v10, &unk_2864A43B0))
  {
    goto LABEL_4;
  }

  if (v3 == 2)
  {
LABEL_2:
    v2 = 0;
    return v2 & 1;
  }

  if (v3)
  {
    v2 = sub_252E37DB4();
  }

  else
  {
    v2 = 1;
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

BOOL sub_252A12698()
{
  *v8 = *v0;
  *&v8[9] = *(v0 + 9);
  v1 = *(v0 + 25);
  v9 = *(v0 + 26);
  *v10 = *(v0 + 42);
  *&v10[14] = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 216);
  v20 = *(v0 + 232);
  v34 = *(v0 + 456);
  v35 = *(v0 + 472);
  v36 = *(v0 + 488);
  v30 = *(v0 + 392);
  v31 = *(v0 + 408);
  v32 = *(v0 + 424);
  v33 = *(v0 + 440);
  v26 = *(v0 + 328);
  v27 = *(v0 + 344);
  v28 = *(v0 + 360);
  v29 = *(v0 + 376);
  v22 = *(v0 + 264);
  v23 = *(v0 + 280);
  v4 = *(v0 + 256);
  v24 = *(v0 + 296);
  v25 = *(v0 + 312);
  v15 = *(v0 + 129);
  v16 = *(v0 + 145);
  *v17 = *(v0 + 161);
  *&v17[15] = *(v0 + 176);
  v11 = *(v0 + 65);
  v12 = *(v0 + 81);
  v13 = *(v0 + 97);
  v14 = *(v0 + 113);
  v21 = *(v0 + 248);
  if (sub_252A12574())
  {
    return 1;
  }

  if (v2 == 4 || (v6 = sub_252A0CE08(v2, 1u), result = 1, (v6 & 1) == 0))
  {
    if (sub_2529A78B0(10, v3) || sub_2529A78B0(9, v3))
    {
      return !*(v4 + 16) && v1 == 3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252A12828()
{
  v37 = *(v0 + 96);
  v36 = *(v37 + 16);
  if (!v36)
  {
    goto LABEL_41;
  }

  v1 = 0;
  v38 = 0;
  while (2)
  {
    if (v1 >= *(v37 + 16))
    {
      __break(1u);
      goto LABEL_49;
    }

    v2 = *(v37 + 32 + 8 * v1++);
    v39[0] = MEMORY[0x277D84FA0];
    v3 = 1 << *(v2 + 32);
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    else
    {
      v4 = -1;
    }

    v5 = v4 & *(v2 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    while (v5)
    {
LABEL_16:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(v2 + 48) + ((v7 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      v13 = sub_252A9B42C();
      if (v13 != 71)
      {
        v14 = v13;
        if (sub_252A9AD58(v13) == 0xD00000000000001CLL && 0x8000000252E64890 == v15)
        {
LABEL_10:
        }

        else
        {
          v17 = sub_252E37DB4();

          if ((v17 & 1) == 0)
          {
            sub_252DA7FE0(&v40, v14);
            if (qword_27F53F310 != -1)
            {
              swift_once();
            }

            v18 = qword_27F5757B8;
            if (*(qword_27F5757B8 + 16))
            {
              v19 = sub_252A45194(v14);
              if (v20)
              {
                v21 = *(v18 + 56);
                v22 = *(v21 + 8 * v19);
                v23 = *(v22 + 16);
                if (v23)
                {
                  v24 = *(v21 + 8 * v19);

                  v25 = 32;
                  do
                  {
                    sub_252DA7FE0(&v40, *(v22 + v25++));
                    --v23;
                  }

                  while (v23);
                  goto LABEL_10;
                }
              }
            }
          }
        }
      }
    }

    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_46:

        return MEMORY[0x277D84F90];
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(v2 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_16;
      }
    }

    if (*(v39[0] + 16))
    {
      if (v38)
      {
        v26 = sub_252DFAF54(v39[0], v38);

        v38 = v26;
        if (!v26[2])
        {
          goto LABEL_46;
        }
      }

      else
      {
        v38 = v39[0];
      }
    }

    else
    {
    }

    if (v1 != v36)
    {
      continue;
    }

    break;
  }

  if (!v38)
  {
LABEL_41:
    if (qword_27F53F4E8 == -1)
    {
LABEL_42:
      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544D60);
      sub_252E379F4();

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
      v35 = MEMORY[0x2530AD730](v37, v34);
      MEMORY[0x2530AD570](v35);

      sub_252CC3D90(0xD000000000000027, 0x8000000252E71D50, 0xD000000000000078, 0x8000000252E71D80);
      goto LABEL_43;
    }

LABEL_49:
    swift_once();
    goto LABEL_42;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D60);
  sub_252E379F4();

  v39[0] = 0xD000000000000015;
  v39[1] = 0x8000000252E71E00;
  sub_252A198EC();
  v28 = sub_252E373B4();
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E71E00, 0xD000000000000078, 0x8000000252E71D80);

  v29 = *(v38 + 16);
  if (v29)
  {
    v30 = sub_252DFA48C(*(v38 + 16), 0);
    v31 = sub_252E08698(v39, v30 + 32, v29, v38);
    result = sub_25291AE30();
    if (v31 == v29)
    {
      return v30;
    }

    __break(1u);
    return result;
  }

LABEL_43:

  return MEMORY[0x277D84F90];
}

BOOL sub_252A12D08()
{
  memcpy(__dst, v0, 0x1F8uLL);
  if (qword_27F53F520 != -1)
  {
    goto LABEL_178;
  }

  while (1)
  {
    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_27F544E08);
    sub_2529353AC(__dst, v139);
    v2 = sub_252E36AC4();
    v3 = sub_252E374C4();
    sub_252935408(__dst);
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v138 = v5;
      *v4 = 136315138;
      memcpy(__src, __dst, sizeof(__src));
      sub_2529353AC(__dst, v139);
      v6 = HomeAutomationIntent.description.getter();
      v8 = v7;
      memcpy(v139, __src, sizeof(v139));
      sub_252935408(v139);
      v9 = sub_252BE2CE0(v6, v8, &v138);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_252917000, v2, v3, "Checking services: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x2530AED00](v5, -1, -1);
      MEMORY[0x2530AED00](v4, -1, -1);
    }

    v10 = __dst[0];
    v11 = *(__dst[0] + 16);
    if (!v11)
    {
      break;
    }

    v12 = 0;
    v13 = __dst[0] + 168;
    v14 = MEMORY[0x277D84F90];
    while (v12 < v10[2])
    {
      v15 = *v13;
      v16 = *(*v13 + 16);
      v17 = *(v14 + 2);
      v18 = v17 + v16;
      if (__OFADD__(v17, v16))
      {
        goto LABEL_160;
      }

      v19 = *v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v18 <= *(v14 + 3) >> 1)
      {
        if (*(v15 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v21 = v17 + v16;
        }

        else
        {
          v21 = v17;
        }

        v14 = sub_2529F80DC(isUniquelyReferenced_nonNull_native, v21, 1, v14);
        if (*(v15 + 16))
        {
LABEL_18:
          v22 = *(v14 + 2);
          if ((*(v14 + 3) >> 1) - v22 < v16)
          {
            goto LABEL_168;
          }

          memcpy(&v14[v22 + 32], (v15 + 32), v16);

          if (v16)
          {
            v23 = *(v14 + 2);
            v24 = __OFADD__(v23, v16);
            v25 = v23 + v16;
            if (v24)
            {
              goto LABEL_171;
            }

            *(v14 + 2) = v25;
          }

          goto LABEL_7;
        }
      }

      if (v16)
      {
        goto LABEL_161;
      }

LABEL_7:
      ++v12;
      v13 += 504;
      if (v11 == v12)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_23:
  v26 = __dst[17];
  v139[0] = __dst[17];

  sub_25297ADE8(v14);
  v27 = *(v139[0] + 16);
  v136 = v11;
  if (v27)
  {
    v132 = v26;
    v28 = (v139[0] + 32);
    v134 = MEMORY[0x277D84F90];
    v29 = (v139[0] + 32);
    v30 = *(v139[0] + 16);
    while (1)
    {
      v32 = *v29++;
      v31 = v32;
      __src[0] = v32;
      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000012 || 0x8000000252E65350 != v33)
      {
        v35 = sub_252E37DB4();

        if (v35)
        {
          goto LABEL_26;
        }

        __src[0] = v31;
        if (AccessoryTypeSemantic.rawValue.getter() != 0x706F4D746F626F72 || v36 != 0xE800000000000000)
        {
          v37 = sub_252E37DB4();

          if ((v37 & 1) == 0)
          {
            v38 = v134;
            v39 = swift_isUniquelyReferenced_nonNull_native();
            v139[0] = v134;
            if ((v39 & 1) == 0)
            {
              sub_2529AA4C0(0, *(v134 + 16) + 1, 1);
              v38 = v139[0];
            }

            v41 = *(v38 + 16);
            v40 = *(v38 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_2529AA4C0((v40 > 1), v41 + 1, 1);
              v38 = v139[0];
            }

            *(v38 + 16) = v41 + 1;
            v134 = v38;
            *(v38 + v41 + 32) = v31;
            v11 = v136;
          }

          goto LABEL_26;
        }
      }

LABEL_26:
      if (!--v30)
      {
        v42 = MEMORY[0x277D84F90];
        while (1)
        {
          v44 = *v28++;
          v43 = v44;
          __src[0] = v44;
          if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v45)
          {
            break;
          }

          v47 = sub_252E37DB4();

          if (v47)
          {
            goto LABEL_49;
          }

          __src[0] = v43;
          if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v48 == 0xE800000000000000)
          {
            break;
          }

          v52 = sub_252E37DB4();

          if (v52)
          {
            goto LABEL_49;
          }

LABEL_54:
          if (!--v27)
          {
            v26 = v132;
            v53 = v134;
            goto LABEL_59;
          }
        }

LABEL_49:
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v139[0] = v42;
        if ((v49 & 1) == 0)
        {
          sub_2529AA4C0(0, *(v42 + 16) + 1, 1);
          v42 = v139[0];
        }

        v51 = *(v42 + 16);
        v50 = *(v42 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2529AA4C0((v50 > 1), v51 + 1, 1);
          v42 = v139[0];
        }

        *(v42 + 16) = v51 + 1;
        *(v42 + v51 + 32) = v43;
        goto LABEL_54;
      }
    }
  }

  v53 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
LABEL_59:

  v54 = *(v53 + 16);

  if (v54)
  {
    v55 = *(v42 + 16);

    if (!v55)
    {
      return 0;
    }
  }

  else
  {
  }

  v57 = 0;
  v58 = 0x8000000252E65350;
  do
  {
    v60 = v57;
    v61 = *(v26 + 16);
    v131 = v61;
    if (v60 == v61)
    {
      break;
    }

    if (v60 >= v61)
    {
      goto LABEL_174;
    }

    v62 = *(v26 + 32 + v60);
    LOBYTE(v139[0]) = v62;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v63)
    {
      goto LABEL_72;
    }

    v64 = sub_252E37DB4();

    if (v64)
    {
      break;
    }

    LOBYTE(v139[0]) = v62;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v65 == 0xE800000000000000)
    {
LABEL_72:

      break;
    }

    v59 = sub_252E37DB4();

    v57 = v60 + 1;
  }

  while ((v59 & 1) == 0);
  v130 = v60;
  if (v11)
  {
    v66 = 0;
    v67 = v10 + 21;
    v68 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v66 >= v10[2])
      {
        goto LABEL_162;
      }

      v69 = *v67;
      v70 = *(*v67 + 16);
      v71 = *(v68 + 2);
      v72 = v71 + v70;
      if (__OFADD__(v71, v70))
      {
        goto LABEL_163;
      }

      v73 = *v67;

      v74 = swift_isUniquelyReferenced_nonNull_native();
      if (v74 && v72 <= *(v68 + 3) >> 1)
      {
        if (!*(v69 + 16))
        {
          goto LABEL_75;
        }
      }

      else
      {
        if (v71 <= v72)
        {
          v75 = v71 + v70;
        }

        else
        {
          v75 = v71;
        }

        v68 = sub_2529F80DC(v74, v75, 1, v68);
        if (!*(v69 + 16))
        {
LABEL_75:

          if (v70)
          {
            goto LABEL_164;
          }

          goto LABEL_76;
        }
      }

      v76 = *(v68 + 2);
      if ((*(v68 + 3) >> 1) - v76 < v70)
      {
        goto LABEL_169;
      }

      memcpy(&v68[v76 + 32], (v69 + 32), v70);

      if (v70)
      {
        v77 = *(v68 + 2);
        v24 = __OFADD__(v77, v70);
        v78 = v77 + v70;
        if (v24)
        {
          goto LABEL_172;
        }

        *(v68 + 2) = v78;
      }

LABEL_76:
      ++v66;
      v67 += 63;
      if (v11 == v66)
      {
        goto LABEL_92;
      }
    }
  }

  v68 = MEMORY[0x277D84F90];
LABEL_92:
  v79 = 0;
  v80 = *(v68 + 2);
  v129 = v80;
  do
  {
    v135 = v79;
    if (v80 == v79)
    {
      break;
    }

    if (v79 >= *(v68 + 2))
    {
      goto LABEL_175;
    }

    v82 = v68[v79 + 32];
    LOBYTE(v139[0]) = v82;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v83)
    {
      goto LABEL_101;
    }

    v84 = sub_252E37DB4();

    if (v84)
    {
      break;
    }

    LOBYTE(v139[0]) = v82;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v85 == 0xE800000000000000)
    {
LABEL_101:

      break;
    }

    v81 = sub_252E37DB4();

    v79 = v135 + 1;
  }

  while ((v81 & 1) == 0);

  v86 = 0;
  v87 = __dst[18];
  v133 = *(__dst[18] + 16);
  v88 = __dst[18] + 32;
  do
  {
    v90 = v86;
    if (v133 == v86)
    {
      break;
    }

    if (v86 >= *(v87 + 16))
    {
      goto LABEL_176;
    }

    v91 = *(v88 + v86);
    LOBYTE(v139[0]) = v91;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v92)
    {
      goto LABEL_111;
    }

    v93 = sub_252E37DB4();

    if (v93)
    {
      break;
    }

    LOBYTE(v139[0]) = v91;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v94 == 0xE800000000000000)
    {
LABEL_111:

      break;
    }

    v89 = sub_252E37DB4();

    v86 = v90 + 1;
  }

  while ((v89 & 1) == 0);
  if (v11)
  {
    v95 = 0;
    v96 = v10 + 22;
    v97 = MEMORY[0x277D84F90];
    while (v95 < v10[2])
    {
      v98 = v10;
      v99 = v58;
      v100 = *v96;
      v101 = *(*v96 + 16);
      v102 = *(v97 + 2);
      v103 = v102 + v101;
      if (__OFADD__(v102, v101))
      {
        goto LABEL_166;
      }

      v104 = *v96;

      v105 = swift_isUniquelyReferenced_nonNull_native();
      if (!v105 || v103 > *(v97 + 3) >> 1)
      {
        if (v102 <= v103)
        {
          v106 = v102 + v101;
        }

        else
        {
          v106 = v102;
        }

        v97 = sub_2529F80DC(v105, v106, 1, v97);
      }

      if (*(v100 + 16))
      {
        v107 = *(v97 + 2);
        if ((*(v97 + 3) >> 1) - v107 < v101)
        {
          goto LABEL_170;
        }

        memcpy(&v97[v107 + 32], (v100 + 32), v101);

        if (v101)
        {
          v108 = *(v97 + 2);
          v24 = __OFADD__(v108, v101);
          v109 = v108 + v101;
          if (v24)
          {
            goto LABEL_173;
          }

          *(v97 + 2) = v109;
        }
      }

      else
      {

        if (v101)
        {
          goto LABEL_167;
        }
      }

      ++v95;
      v96 += 63;
      v58 = v99;
      v10 = v98;
      if (v136 == v95)
      {
        goto LABEL_130;
      }
    }

    goto LABEL_165;
  }

  v97 = MEMORY[0x277D84F90];
LABEL_130:
  v110 = 0;
  v111 = *(v97 + 2);
  while (v111 != v110)
  {
    if (v110 >= *(v97 + 2))
    {
      goto LABEL_177;
    }

    v113 = v97[v110 + 32];
    LOBYTE(v139[0]) = v113;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && v58 == v114)
    {
      goto LABEL_139;
    }

    v115 = sub_252E37DB4();

    if (v115)
    {
      goto LABEL_140;
    }

    LOBYTE(v139[0]) = v113;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x706F4D746F626F72 && v116 == 0xE800000000000000)
    {
LABEL_139:

LABEL_140:

      return 1;
    }

    v112 = sub_252E37DB4();

    ++v110;
    if (v112)
    {
      goto LABEL_140;
    }
  }

  result = 1;
  if (v130 == v131 && v133 == v90 && v129 == v135)
  {
    v117 = 0;
    v118 = __dst[24];
    v119 = *(__dst[24] + 16);
    v120 = __dst[24] + 32;
    do
    {
      result = v119 != v117;
      if (v119 == v117)
      {
        break;
      }

      if (v117 >= *(v118 + 16))
      {
        __break(1u);
        return result;
      }

      v122 = v119 != v117;
      v123 = *(v120 + v117);
      LOBYTE(v139[0]) = v123;
      if (StateSemantic.rawValue.getter() == 0x6E61656C63 && v124 == 0xE500000000000000)
      {
        goto LABEL_140;
      }

      v125 = sub_252E37DB4();

      if (v125)
      {
        return v119 != v117;
      }

      LOBYTE(v139[0]) = v123;
      if (StateSemantic.rawValue.getter() == 0x6D7575636176 && v126 == 0xE600000000000000)
      {
        goto LABEL_140;
      }

      v127 = sub_252E37DB4();

      if (v127)
      {
        return v119 != v117;
      }

      LOBYTE(v139[0]) = v123;
      if (StateSemantic.rawValue.getter() == 7368557 && v128 == 0xE300000000000000)
      {
        goto LABEL_140;
      }

      v121 = sub_252E37DB4();

      ++v117;
      result = v122;
    }

    while ((v121 & 1) == 0);
  }

  return result;
}

void sub_252A13A70()
{
  v1 = v0[12];
  if (!*(v0[18] + 16) && !*(v0[17] + 16))
  {
    return;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v4 = *(v1 + 32 + 8 * v3);
    if (*(v4 + 16))
    {
      break;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return;
    }
  }

  v5 = *(v4 + 40);
  sub_252E37EC4();

  sub_252E37044();
  v6 = sub_252E37F14();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_5:

    goto LABEL_6;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v4 + 48) + 16 * v8);
    v11 = *v10 == 0xD00000000000001CLL && 0x8000000252E64890 == v10[1];
    if (v11 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_252A13BEC()
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = 0;
  v4 = v1 + 32;
  v38 = *(v0 + 344);
  v33 = v1;
  v34 = (v38 + 40);
  v31 = v1 + 32;
  v32 = v2;
  do
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_25;
    }

    v35 = v3;
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v37 = *v5;
    v7 = *(v38 + 16);
    v39 = v6;

    v36 = v7;
    if (!v7)
    {
LABEL_21:

LABEL_22:
      result = 0;
      break;
    }

    v8 = 0;
    v9 = v34;
    ++v35;
    while (1)
    {
      if (v8 >= *(v38 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v43 = sub_252E36FA4();
      v44 = v12;
      v41 = 32;
      v42 = 0xE100000000000000;
      sub_252947DBC();
      v40 = v11;

      v13 = sub_252E37794();

      v14 = sub_252C75848(v13);

      v43 = sub_252E36FA4();
      v44 = v15;
      v41 = 32;
      v42 = 0xE100000000000000;
      v16 = sub_252E37794();

      v17 = sub_252C75848(v16);

      v18 = *(v17 + 32);
      v19 = v18 & 0x3F;
      v20 = ((1 << v18) + 63) >> 6;
      v21 = 8 * v20;
      swift_bridgeObjectRetain_n();

      if (v19 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v31 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
        v23 = sub_252DFB6DC(&v31 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v20, v17, v14);

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v28 = swift_slowAlloc();

        v23 = sub_252DFAFD4(v28, v20, v17, v14);

        MEMORY[0x2530AED00](v28, -1, -1);
      }

      v24 = *(v23 + 16);
      if (v24)
      {
        break;
      }

LABEL_7:
      ++v8;
      v9 += 2;
      if (v36 == v8)
      {
        goto LABEL_21;
      }
    }

    if (v24 <= *(v17 + 16) >> 3)
    {
      v43 = v17;
      sub_2529AAA28(v23);

      v26 = v43;
    }

    else
    {
      v25 = sub_2529AB8D0(v23, v17);

      v26 = v25;
    }

    v27 = *(v26 + 16);

    if (v27)
    {
      goto LABEL_7;
    }

    result = 1;
    v1 = v33;
    v3 = v35;
    v4 = v31;
  }

  while (v35 != v32);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252A13FE0()
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = 0;
  v4 = v1 + 32;
  v38 = *(v0 + 352);
  v33 = v1;
  v34 = (v38 + 40);
  v31 = v1 + 32;
  v32 = v2;
  do
  {
    if (v3 >= *(v1 + 16))
    {
      goto LABEL_25;
    }

    v35 = v3;
    v5 = (v4 + 16 * v3);
    v6 = v5[1];
    v37 = *v5;
    v7 = *(v38 + 16);
    v39 = v6;

    v36 = v7;
    if (!v7)
    {
LABEL_21:

LABEL_22:
      result = 0;
      break;
    }

    v8 = 0;
    v9 = v34;
    ++v35;
    while (1)
    {
      if (v8 >= *(v38 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v43 = sub_252E36FA4();
      v44 = v12;
      v41 = 32;
      v42 = 0xE100000000000000;
      sub_252947DBC();
      v40 = v11;

      v13 = sub_252E37794();

      v14 = sub_252C75848(v13);

      v43 = sub_252E36FA4();
      v44 = v15;
      v41 = 32;
      v42 = 0xE100000000000000;
      v16 = sub_252E37794();

      v17 = sub_252C75848(v16);

      v18 = *(v17 + 32);
      v19 = v18 & 0x3F;
      v20 = ((1 << v18) + 63) >> 6;
      v21 = 8 * v20;
      swift_bridgeObjectRetain_n();

      if (v19 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        bzero(&v31 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
        v23 = sub_252DFB6DC(&v31 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v20, v17, v14);

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v28 = swift_slowAlloc();

        v23 = sub_252DFAFD4(v28, v20, v17, v14);

        MEMORY[0x2530AED00](v28, -1, -1);
      }

      v24 = *(v23 + 16);
      if (v24)
      {
        break;
      }

LABEL_7:
      ++v8;
      v9 += 2;
      if (v36 == v8)
      {
        goto LABEL_21;
      }
    }

    if (v24 <= *(v17 + 16) >> 3)
    {
      v43 = v17;
      sub_2529AAA28(v23);

      v26 = v43;
    }

    else
    {
      v25 = sub_2529AB8D0(v23, v17);

      v26 = v25;
    }

    v27 = *(v26 + 16);

    if (v27)
    {
      goto LABEL_7;
    }

    result = 1;
    v1 = v33;
    v3 = v35;
    v4 = v31;
  }

  while (v35 != v32);
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252A143D4()
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = *(v0 + 160);
  v36 = *(v38 + 16);
  if (!v36 || (v1 = *(v0 + 360), (v32 = *(v1 + 16)) == 0))
  {
    result = 0;
    goto LABEL_23;
  }

  v2 = 0;
  v41 = 0;
  v33 = (v38 + 40);
  v34 = v1 + 32;
  v31 = v1;
LABEL_6:
  if (v2 >= *(v1 + 16))
  {
    goto LABEL_25;
  }

  v4 = (v34 + 16 * v2);
  v5 = v4[1];
  v37 = *v4;
  v35 = v2 + 1;
  v39 = v5;

  v6 = 0;
  v7 = v33;
  while (1)
  {
    if (v6 >= *(v38 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v44 = sub_252E36FA4();
    v45 = v10;
    v42 = 32;
    v43 = 0xE100000000000000;
    sub_252947DBC();

    v11 = sub_252E37794();

    v12 = sub_252C75848(v11);

    v40 = v8;
    v44 = sub_252E36FA4();
    v45 = v13;
    v42 = 32;
    v43 = 0xE100000000000000;
    v14 = sub_252E37794();

    v15 = sub_252C75848(v14);

    v16 = *(v15 + 32);
    LODWORD(v8) = v16 & 0x3F;
    v17 = ((1 << v16) + 63) >> 6;
    v18 = (8 * v17);
    swift_bridgeObjectRetain_n();

    if (v8 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x28223BE20](isStackAllocationSafe);
      bzero(&v30 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v18);
      v20 = v41;
      v21 = sub_252DFB6DC(&v30 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0), v17, v15, v12);
      v41 = v20;
      if (v20)
      {

        v29 = v41;
        swift_willThrow();

        __break(1u);
LABEL_27:

        result = MEMORY[0x2530AED00](v18, -1, -1);
        __break(1u);
        return result;
      }

      v22 = v21;

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v18 = swift_slowAlloc();

      v27 = v41;
      v22 = sub_252DFAFD4(v18, v17, v15, v12);

      v41 = v27;
      if (v27)
      {
        goto LABEL_27;
      }

      MEMORY[0x2530AED00](v18, -1, -1);
    }

    v23 = v22[2];
    if (v23)
    {
      break;
    }

LABEL_9:
    ++v6;
    v7 += 2;
    if (v36 == v6)
    {

      result = 0;
      v1 = v31;
      v2 = v35;
      if (v35 == v32)
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }
  }

  if (v23 <= *(v15 + 16) >> 3)
  {
    v44 = v15;
    sub_2529AAA28(v22);

    v25 = v44;
  }

  else
  {
    v24 = sub_2529AB8D0(v22, v15);

    v25 = v24;
  }

  v26 = *(v25 + 16);

  if (v26)
  {
    goto LABEL_9;
  }

  result = 1;
LABEL_23:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252A14800()
{
  v92 = v0[6];
  v93 = v0[7];
  v94 = v0[8];
  v1 = *(v0 + 19);
  v95 = *(v0 + 18);
  v88 = v0[2];
  v89 = v0[3];
  v90 = v0[4];
  v91 = v0[5];
  v86 = *v0;
  v87 = v0[1];
  v2 = *(v0 + 20);
  v3 = *(v0 + 21);
  memcpy(v96, v0 + 11, sizeof(v96));
  v4 = v0[7];
  v103 = v0[6];
  v104 = v4;
  v105 = v0[8];
  v5 = *(v0 + 18);
  v6 = v0[3];
  v99 = v0[2];
  v100 = v6;
  v7 = v0[5];
  v101 = v0[4];
  v102 = v7;
  v8 = v0[1];
  v97 = *v0;
  v98 = v8;
  v106 = v5;
  v107 = v1;
  v108 = v2;
  v109 = v3;
  memcpy(v110, v0 + 11, sizeof(v110));
  v9 = sub_252BAC7E4();
  v10 = sub_252BADB6C();
  KeyPath = swift_getKeyPath();
  LOBYTE(v2) = sub_2529304DC(KeyPath, v9);

  if ((v2 & 1) == 0)
  {
    v12 = swift_getKeyPath();
    v13 = sub_252BAF91C(v12, v9);

    if (!v13)
    {
      if (*(v1 + 16) > 1uLL || *(v3 + 16) >= 2uLL)
      {
        type metadata accessor for HomeStore();
        v23 = static HomeStore.shared.getter();
        v24 = HomeStore.services(matching:supporting:)(v9, 0);
        v26 = v25;

        if (v26)
        {
LABEL_16:
          sub_252929F10(v24, v26 & 1);
          if (qword_27F53F520 != -1)
          {
            swift_once();
          }

          v27 = sub_252E36AD4();
          __swift_project_value_buffer(v27, qword_27F544E08);
          v19 = sub_252E36AC4();
          v20 = sub_252E374C4();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            v22 = "Couldn't get targetedServices";
LABEL_20:
            _os_log_impl(&dword_252917000, v19, v20, v22, v21, 2u);
            MEMORY[0x2530AED00](v21, -1, -1);
          }

LABEL_21:

          return 0;
        }

        if (v24 >> 62)
        {
          if (!sub_252E378C4())
          {
            goto LABEL_16;
          }
        }

        else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

LABEL_45:

        if (v24 >> 62)
        {
          v45 = sub_252E378C4();
          v84 = v10;
          if (v45)
          {
LABEL_47:
            v10 = 0;
            v85 = v24 & 0xC000000000000001;
            v46 = MEMORY[0x277D84F90];
            v47 = v24 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (v85)
              {
                v48 = MEMORY[0x2530ADF00](v10, v24);
                v49 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_68;
                }
              }

              else
              {
                if (v10 >= *(v47 + 16))
                {
                  goto LABEL_69;
                }

                v48 = *(v24 + 8 * v10 + 32);

                v49 = (v10 + 1);
                if (__OFADD__(v10, 1))
                {
                  goto LABEL_68;
                }
              }

              v50 = v24;
              v51 = [*(v48 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
              v52 = sub_252E36F34();
              v54 = v53;

              if (qword_27F53F8B8 != -1)
              {
                swift_once();
              }

              v55 = off_27F546230;
              if (*(off_27F546230 + 2) && (v56 = sub_252A44A10(v52, v54), (v57 & 1) != 0))
              {
                v58 = *(v55[7] + 8 * v56);
              }

              else
              {
                v58 = 0;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v46 = sub_2529F7B8C(0, *(v46 + 2) + 1, 1, v46);
              }

              v24 = v50;
              v60 = *(v46 + 2);
              v59 = *(v46 + 3);
              if (v60 >= v59 >> 1)
              {
                v46 = sub_2529F7B8C((v59 > 1), v60 + 1, 1, v46);
              }

              *(v46 + 2) = v60 + 1;
              *&v46[8 * v60 + 32] = v58;
              ++v10;
            }

            while (v49 != v45);
LABEL_89:

            v75 = sub_252DF9734(v46);

            if (*(v75 + 16) == 1)
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v76 = sub_252E36AD4();
              __swift_project_value_buffer(v76, qword_27F544D60);
              *&v97 = 0;
              *(&v97 + 1) = 0xE000000000000000;
              sub_252E379F4();

              *&v97 = 0xD000000000000013;
              *(&v97 + 1) = 0x8000000252E71ED0;
              v77 = MEMORY[0x2530AD730](v75, &type metadata for HomeDeviceType);
              v79 = v78;

              MEMORY[0x2530AD570](v77, v79);

              MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E71EF0);
              v80 = type metadata accessor for Service();
              v67 = MEMORY[0x2530AD730](v24, v80);
              v69 = v81;
              goto LABEL_93;
            }

LABEL_94:

            return 1;
          }
        }

        else
        {
          v45 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v84 = v10;
          if (v45)
          {
            goto LABEL_47;
          }
        }

        v46 = MEMORY[0x277D84F90];
        goto LABEL_89;
      }

      type metadata accessor for HomeStore();
      v41 = v10;
      v42 = static HomeStore.shared.getter();
      v30 = v41;
      v24 = HomeStore.services(matching:supporting:)(v9, v41);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        if (v24 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_44;
          }
        }

        else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_44:
          v10 = v41;
          goto LABEL_45;
        }
      }

      sub_252929F10(v24, v44 & 1);
      if (qword_27F53F520 != -1)
      {
        swift_once();
      }

      v83 = sub_252E36AD4();
      __swift_project_value_buffer(v83, qword_27F544E08);
      v71 = sub_252E36AC4();
      v72 = sub_252E374C4();
      if (!os_log_type_enabled(v71, v72))
      {
        goto LABEL_101;
      }

      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "Couldn't get targetedServices";
      goto LABEL_100;
    }
  }

  if (*(v1 + 16) <= 1uLL && *(v3 + 16) < 2uLL)
  {
    type metadata accessor for HomeStore();
    v28 = v10;
    v29 = static HomeStore.shared.getter();
    v30 = v28;
    v15 = HomeStore.accessories(matching:supporting:)(v9, v28);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      if (v15 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_25;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        v10 = v28;
        goto LABEL_26;
      }
    }

    sub_252929F10(v15, v32 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v70 = sub_252E36AD4();
    __swift_project_value_buffer(v70, qword_27F544E08);
    v71 = sub_252E36AC4();
    v72 = sub_252E374C4();
    if (!os_log_type_enabled(v71, v72))
    {
LABEL_101:

      return 0;
    }

    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "Couldn't get targetedAccessories";
LABEL_100:
    _os_log_impl(&dword_252917000, v71, v72, v74, v73, 2u);
    MEMORY[0x2530AED00](v73, -1, -1);
    goto LABEL_101;
  }

  type metadata accessor for HomeStore();
  v14 = static HomeStore.shared.getter();
  v15 = HomeStore.accessories(matching:supporting:)(v9, 0);
  v17 = v16;

  if (v17)
  {
    goto LABEL_8;
  }

  if (v15 >> 62)
  {
    if (!sub_252E378C4())
    {
LABEL_8:
      sub_252929F10(v15, v17 & 1);
      if (qword_27F53F520 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_9;
    }
  }

  else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_26:

  if (v15 >> 62)
  {
    v33 = sub_252E378C4();
    v84 = v10;
    if (v33)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v33 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v84 = v10;
    if (v33)
    {
LABEL_28:
      v10 = 0;
      v34 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x2530ADF00](v10, v15);
          v35 = v36;
          v37 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v10 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_67;
          }

          v35 = *(v15 + 8 * v10 + 32);

          v37 = (v10 + 1);
          if (__OFADD__(v10, 1))
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            swift_once();
LABEL_9:
            v18 = sub_252E36AD4();
            __swift_project_value_buffer(v18, qword_27F544E08);
            v19 = sub_252E36AC4();
            v20 = sub_252E374C4();
            if (os_log_type_enabled(v19, v20))
            {
              v21 = swift_slowAlloc();
              *v21 = 0;
              v22 = "Couldn't get targetedAccessories";
              goto LABEL_20;
            }

            goto LABEL_21;
          }
        }

        v38 = (*(*v35 + 256))(v36);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2529F7B8C(0, *(v34 + 2) + 1, 1, v34);
        }

        v40 = *(v34 + 2);
        v39 = *(v34 + 3);
        if (v40 >= v39 >> 1)
        {
          v34 = sub_2529F7B8C((v39 > 1), v40 + 1, 1, v34);
        }

        *(v34 + 2) = v40 + 1;
        *&v34[8 * v40 + 32] = v38;
        ++v10;
        if (v37 == v33)
        {
          goto LABEL_75;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_75:

  v61 = sub_252DF9734(v34);

  if (*(v61 + 16) != 1)
  {
    goto LABEL_94;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v62 = sub_252E36AD4();
  __swift_project_value_buffer(v62, qword_27F544D60);
  *&v97 = 0;
  *(&v97 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v97 = 0xD000000000000013;
  *(&v97 + 1) = 0x8000000252E71ED0;
  v63 = MEMORY[0x2530AD730](v61, &type metadata for HomeDeviceType);
  v65 = v64;

  MEMORY[0x2530AD570](v63, v65);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E71EF0);
  v66 = type metadata accessor for Accessory();
  v67 = MEMORY[0x2530AD730](v15, v66);
  v69 = v68;
LABEL_93:

  MEMORY[0x2530AD570](v67, v69);

  sub_252CC3D90(v97, *(&v97 + 1), 0xD000000000000078, 0x8000000252E71D80);

  return 0;
}

BOOL sub_252A15404()
{
  if (*(v0[4] + 16))
  {
    return 1;
  }

  if (*(v0[6] + 16))
  {
    return 1;
  }

  if (*(v0[13] + 16))
  {
    return 1;
  }

  if (*(v0[16] + 16))
  {
    return 1;
  }

  if (*(v0[17] + 16))
  {
    return 1;
  }

  if (*(v0[18] + 16))
  {
    return 1;
  }

  if (*(v0[19] + 16))
  {
    return 1;
  }

  if (*(v0[20] + 16))
  {
    return 1;
  }

  if (*(v0[21] + 16))
  {
    return 1;
  }

  return *(v0[28] + 16) != 0;
}

BOOL sub_252A154CC()
{
  result = 0;
  if (*(v0 + 8) == 3 && *(v0 + 9) == 3)
  {
    if (*(v0 + 10))
    {
      if (!*(v0 + 16) && *(v0 + 24) == 2 && *(v0 + 25) == 3 && *(v0 + 26) == 4)
      {
        result = 0;
        if (!*(*(v0 + 32) + 16) && *(v0 + 40) == 4)
        {
          if (*(*(v0 + 48) + 16))
          {
            return 0;
          }

          result = 0;
          if (!*(*(v0 + 56) + 16) && *(v0 + 64) == 4)
          {
            if (*(*(v0 + 72) + 16) || *(*(v0 + 80) + 16) || *(*(v0 + 88) + 16) || *(*(v0 + 96) + 16) || *(*(v0 + 104) + 16) || *(*(v0 + 112) + 16) || *(*(v0 + 120) + 16) || *(*(v0 + 128) + 16) || *(*(v0 + 136) + 16) || *(*(v0 + 144) + 16) || *(*(v0 + 152) + 16) || *(*(v0 + 160) + 16) || *(*(v0 + 168) + 16) || *(*(v0 + 176) + 16) || *(*(v0 + 184) + 16) || *(*(v0 + 192) + 16))
            {
              return 0;
            }

            result = 0;
            if (!*(*(v0 + 200) + 16) && *(v0 + 208) == 9 && *(v0 + 209) == 2)
            {
              if (*(*(v0 + 216) + 16))
              {
                return 0;
              }

              result = 0;
              if (((*(*(v0 + 224) + 16) == 0) & *(v0 + 232)) == 1 && !*(v0 + 248))
              {
                result = 0;
                if (((*(*(v0 + 256) + 16) == 0) & *(v0 + 289)) == 1 && !*(v0 + 296) && !*(v0 + 304))
                {
                  if (*(*(v0 + 328) + 16) || *(*(v0 + 336) + 16) || *(*(v0 + 344) + 16) || *(*(v0 + 352) + 16) || *(*(v0 + 360) + 16) || *(*(v0 + 376) + 16))
                  {
                    return 0;
                  }

                  v2 = *(v0 + 392);
                  if (v2 >> 62)
                  {
                    v3 = sub_252E378C4();
                  }

                  else
                  {
                    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  return v3 == 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_252A15750()
{
  v1 = *(v0 + 96);
  v2 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  v25 = *(v1 + 16);
  if (v25)
  {
    v3 = 0;
    v23 = v1;
    v24 = v1 + 32;
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_29:
        __break(1u);
        return;
      }

      v4 = *(v24 + 8 * v3++);
      v5 = 1 << *(v4 + 32);
      if (v5 < 64)
      {
        v6 = ~(-1 << v5);
      }

      else
      {
        v6 = -1;
      }

      v7 = v6 & *(v4 + 56);
      v8 = (v5 + 63) >> 6;

      v9 = 0;
      while (v7)
      {
LABEL_15:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = (*(v4 + 48) + ((v9 << 10) | (16 * v11)));
        v13 = *v12;
        v14 = v12[1];

        v15 = sub_252A9B42C();
        if (v15 != 71)
        {
          v16 = v15;
          if (sub_252A9AD58(v15) == 0xD00000000000001CLL && 0x8000000252E64890 == v17)
          {
          }

          else
          {
            v19 = sub_252E37DB4();

            if ((v19 & 1) == 0)
            {
              sub_252DA7FE0(&v26, v16);
            }
          }
        }
      }

      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v10 >= v8)
        {
          break;
        }

        v7 = *(v4 + 56 + 8 * v10);
        ++v9;
        if (v7)
        {
          v9 = v10;
          goto LABEL_15;
        }
      }

      v1 = v23;
      if (v3 != v25)
      {
        continue;
      }

      break;
    }

    v2 = v27;
  }

  v20 = *(v2 + 16);
  if (v20)
  {
    v21 = sub_252DFA48C(*(v2 + 16), 0);
    v22 = sub_252E08698(&v26, v21 + 32, v20, v2);
    sub_25291AE30();
    if (v22 == v20)
    {
      return;
    }

    __break(1u);
  }
}

uint64_t sub_252A15974()
{
  v1 = *v0;
  v2 = sub_252CC6AF4(MEMORY[0x277D84F90]);
  v37 = *(v1 + 16);
  if (!v37)
  {
    return v2;
  }

  v3 = 0;
  v4 = (v1 + 32);
  while (v3 < *(v1 + 16))
  {
    memcpy(__dst, v4, 0x1F8uLL);
    ++v3;
    v5 = 7628147;
    v6 = 0xD000000000000012;
    v7 = 0x656E4F6863696877;
    if (__dst[208] != 8)
    {
      v7 = 0;
    }

    v8 = 0xEF64656C69614673;
    if (__dst[208] != 8)
    {
      v8 = 0xE000000000000000;
    }

    if (__dst[208] != 7)
    {
      v6 = v7;
    }

    v9 = 0x8000000252E678E0;
    if (__dst[208] != 7)
    {
      v9 = v8;
    }

    if (__dst[208] == 5)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0xD000000000000010;
    }

    v11 = 0x8000000252E678C0;
    if (__dst[208] == 5)
    {
      v11 = 0x8000000252E678A0;
    }

    if (__dst[208] <= 6u)
    {
      v6 = v10;
      v9 = v11;
    }

    v12 = 2003789939;
    if (__dst[208] != 3)
    {
      v12 = 0x746E756F63;
    }

    v13 = 0xE400000000000000;
    if (__dst[208] != 3)
    {
      v13 = 0xE500000000000000;
    }

    if (__dst[208] == 2)
    {
      v12 = 0x656C67676F74;
      v13 = 0xE600000000000000;
    }

    if (__dst[208])
    {
      v5 = 7628135;
    }

    if (__dst[208] <= 1u)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v5 = v12;
      v14 = v13;
    }

    if (__dst[208] <= 4u)
    {
      v15 = v5;
    }

    else
    {
      v15 = v6;
    }

    if (__dst[208] <= 4u)
    {
      v16 = v14;
    }

    else
    {
      v16 = v9;
    }

    sub_2529353AC(__dst, v38);
    sub_2529353AC(__dst, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v2;
    v19 = sub_252A44A10(v15, v16);
    v20 = v2[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_54;
    }

    v23 = v18;
    if (v2[3] >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_252E03A60();
        v2 = v38[0];
        if (v23)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      sub_252DFFEF4(v22, isUniquelyReferenced_nonNull_native);
      v2 = v38[0];
      v24 = sub_252A44A10(v15, v16);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_56;
      }

      v19 = v24;
      if (v23)
      {
LABEL_43:

        goto LABEL_47;
      }
    }

    v2[(v19 >> 6) + 8] |= 1 << v19;
    v26 = (v2[6] + 16 * v19);
    *v26 = v15;
    v26[1] = v16;
    *(v2[7] + 8 * v19) = MEMORY[0x277D84F90];
    v27 = v2[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_55;
    }

    v2[2] = v29;
LABEL_47:
    v30 = v2[7];
    v31 = *(v30 + 8 * v19);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *(v30 + 8 * v19) = v31;
    if ((v32 & 1) == 0)
    {
      v31 = sub_2529F7FB0(0, *(v31 + 2) + 1, 1, v31);
      *(v30 + 8 * v19) = v31;
    }

    v34 = *(v31 + 2);
    v33 = *(v31 + 3);
    if (v34 >= v33 >> 1)
    {
      *(v30 + 8 * v19) = sub_2529F7FB0((v33 > 1), v34 + 1, 1, v31);
    }

    sub_252935408(__dst);
    v35 = *(v30 + 8 * v19);
    *(v35 + 16) = v34 + 1;
    memcpy((v35 + 504 * v34 + 32), __dst, 0x1F8uLL);
    v4 += 504;
    if (v37 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252A15CE0()
{
  v1 = *(v0 + 17);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v3++;
      LOBYTE(v126) = v5;
      v6 = sub_252A47F84(&v126);
      if ((v7 & 1) == 0)
      {
        v8 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
        }

        v10 = *(v4 + 2);
        v9 = *(v4 + 3);
        if (v10 >= v9 >> 1)
        {
          v4 = sub_2529F7B8C((v9 > 1), v10 + 1, 1, v4);
        }

        *(v4 + 2) = v10 + 1;
        *&v4[8 * v10 + 32] = v8;
      }

      --v2;
    }

    while (v2);
LABEL_19:
    v20 = sub_252C759A0(v4);

    if (qword_27F53F248 != -1)
    {
      swift_once();
    }

    v21 = sub_252A12374(qword_27F575730, v20);

    v22 = v21 ^ 1;
    return v22 & 1;
  }

  v11 = *(v0 + 18);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v14 = *v13++;
      LOBYTE(v126) = v14;
      v15 = sub_252A47F84(&v126);
      if ((v16 & 1) == 0)
      {
        v17 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
        }

        v19 = *(v4 + 2);
        v18 = *(v4 + 3);
        if (v19 >= v18 >> 1)
        {
          v4 = sub_2529F7B8C((v18 > 1), v19 + 1, 1, v4);
        }

        *(v4 + 2) = v19 + 1;
        *&v4[8 * v19 + 32] = v17;
      }

      --v12;
    }

    while (v12);
    goto LABEL_19;
  }

  v24 = *(v0 + 19);
  v25 = *(v0 + 20);
  v26 = *(v0 + 21);
  v27 = v0[7];
  v132 = v0[6];
  v133 = v27;
  v28 = *(v0 + 16);
  v29 = v0[3];
  v128 = v0[2];
  v129 = v29;
  v30 = v0[5];
  v130 = v0[4];
  v131 = v30;
  v31 = v0[1];
  v126 = *v0;
  v127 = v31;
  v134 = v28;
  v135 = v1;
  v136 = v11;
  v137 = v24;
  v138 = v25;
  v139 = v26;
  memcpy(v140, v0 + 11, sizeof(v140));
  v32 = sub_252BAC7E4();
  v33 = v0[7];
  v132 = v0[6];
  v133 = v33;
  v34 = *(v0 + 16);
  v35 = v0[3];
  v128 = v0[2];
  v129 = v35;
  v36 = v0[5];
  v130 = v0[4];
  v131 = v36;
  v37 = v0[1];
  v126 = *v0;
  v127 = v37;
  v134 = v34;
  v135 = v1;
  v136 = v11;
  v137 = v24;
  v138 = v25;
  v139 = v26;
  memcpy(v140, v0 + 11, sizeof(v140));
  v38 = sub_252BADB6C();
  v39 = v38;
  if (*(v26 + 16) || *(v24 + 16) || ![v38 attribute])
  {
    type metadata accessor for HomeStore();
    v40 = static HomeStore.shared.getter();
    v41 = HomeStore.accessories(matching:supporting:)(v32, 0);
    v43 = v42;

    if (v43)
    {
      sub_252929F10(v41, 1);

LABEL_110:
      v22 = 0;
      return v22 & 1;
    }
  }

  else
  {
    type metadata accessor for HomeStore();
    v44 = static HomeStore.shared.getter();
    v45 = v39;
    v41 = HomeStore.accessories(matching:supporting:)(v32, v39);
    v47 = v46;

    if (v47)
    {
      sub_252929F10(v41, 1);

      goto LABEL_110;
    }
  }

  v120 = v41 >> 62;
  if (v41 >> 62)
  {
    goto LABEL_117;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_109:

    goto LABEL_110;
  }

LABEL_32:
  if (qword_27F53F248 != -1)
  {
    swift_once();
  }

  v48 = qword_27F575730;
  v49 = qword_27F575730 + 56;
  v50 = 1 << *(qword_27F575730 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(qword_27F575730 + 56);
  v53 = (v50 + 63) >> 6;
  v54 = v41 & 0xFFFFFFFFFFFFFF8;
  v121 = v41 + 32;
  v122 = v41 & 0xC000000000000001;

  v55 = 0;
  do
  {
LABEL_38:
    if (v52)
    {
      goto LABEL_43;
    }

    do
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        if (!sub_252E378C4())
        {
          goto LABEL_109;
        }

        goto LABEL_32;
      }

      if (v56 >= v53)
      {

        goto LABEL_109;
      }

      v52 = *(v49 + 8 * v56);
      ++v55;
    }

    while (!v52);
    v55 = v56;
LABEL_43:
    v57 = *(*(v48 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v52)))));
    if (v120)
    {
      v58 = sub_252E378C4();
    }

    else
    {
      v58 = *(v54 + 16);
    }

    v52 &= v52 - 1;
  }

  while (!v58);
  v59 = 0;
  v124 = v57;
  v118 = v53;
  v119 = v49;
  v116 = v58;
  v117 = v54;
  while (1)
  {
    if (v122)
    {
      v60 = v59;
      v61 = MEMORY[0x2530ADF00](v59, v41);
      v125 = v61;
    }

    else
    {
      if (v59 >= *(v54 + 16))
      {
        goto LABEL_116;
      }

      v125 = *(v121 + 8 * v59);
      v60 = v59;
    }

    v123 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      goto LABEL_115;
    }

    v62 = (*v125 + 256);
    v63 = *v62;
    if ((*v62)(v61) == v57)
    {

      goto LABEL_107;
    }

    v64 = (*(*v125 + 272))();
    v65 = v64;
    if (*(v64 + 16))
    {
      v66 = *(v64 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v57);
      v67 = sub_252E37F14();
      v68 = -1 << *(v65 + 32);
      v69 = v67 & ~v68;
      if ((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69))
      {
        v70 = ~v68;
        while (*(*(v65 + 48) + 8 * v69) != v57)
        {
          v69 = (v69 + 1) & v70;
          if (((*(v65 + 56 + ((v69 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v69) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        goto LABEL_106;
      }
    }

LABEL_57:

    v72 = v63(v71);
    if (v72 == 41)
    {
      break;
    }

    v73 = MEMORY[0x277D84FA0];
    v74 = v125;
    if (v72 == 38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v73 = sub_252E379A4();
      v75 = v73 + 56;
      v76 = qword_2864A5E48;
      v77 = *(v73 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v76);
      result = sub_252E37F14();
      v78 = ~(-1 << *(v73 + 32));
      v79 = result & v78;
      v80 = (result & v78) >> 6;
      v81 = *(v73 + 56 + 8 * v80);
      v82 = 1 << (result & v78);
      v83 = *(v73 + 48);
      if ((v82 & v81) == 0)
      {
        v74 = v125;
LABEL_70:
        *(v75 + 8 * v80) = v82 | v81;
        *(v83 + 8 * v79) = v76;
        v93 = *(v73 + 16);
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          goto LABEL_120;
        }

        goto LABEL_75;
      }

      v74 = v125;
      while (*(v83 + 8 * v79) != v76)
      {
        v79 = (v79 + 1) & v78;
        v80 = v79 >> 6;
        v81 = *(v75 + 8 * (v79 >> 6));
        v82 = 1 << v79;
        if (((1 << v79) & v81) == 0)
        {
          goto LABEL_70;
        }
      }
    }

LABEL_76:
    if (*(v73 + 16))
    {
      v97 = *(v73 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v57);
      v98 = sub_252E37F14();
      v74 = v125;
      v99 = -1 << *(v73 + 32);
      v100 = v98 & ~v99;
      if ((*(v73 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100))
      {
        v101 = ~v99;
        while (*(*(v73 + 48) + 8 * v100) != v57)
        {
          v100 = (v100 + 1) & v101;
          if (((*(v73 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
          {
            goto LABEL_81;
          }
        }

LABEL_106:

LABEL_107:

        v22 = 1;
        return v22 & 1;
      }
    }

LABEL_81:

    if (v57 != 42)
    {

      goto LABEL_102;
    }

    v102 = [*(v74 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_25293F638(0, &qword_27F540170, 0x277CD1760);
    v103 = sub_252E37264();

    v114 = v41;
    v115 = v39;
    if (!(v103 >> 62))
    {
      v104 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v104)
      {
        goto LABEL_84;
      }

      goto LABEL_101;
    }

    v104 = sub_252E378C4();
    if (v104)
    {
LABEL_84:
      v39 = 0;
      v41 = v103 & 0xC000000000000001;
      do
      {
        if (v41)
        {
          v105 = MEMORY[0x2530ADF00](v39, v103);
        }

        else
        {
          if (v39 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_114;
          }

          v105 = *(v103 + 8 * v39 + 32);
        }

        v106 = v105;
        v107 = (v39 + 1);
        if (__OFADD__(v39, 1))
        {
          goto LABEL_113;
        }

        objc_opt_self();
        v108 = swift_dynamicCastObjCClass();
        if (v108)
        {
          v110 = v108;

          v111 = [v110 userSettings];
          v41 = v114;
          v39 = v115;
          v49 = v119;
          v57 = v124;
          if (!v111)
          {

            goto LABEL_103;
          }

          v112 = v111;
          v113 = [v111 supportedFeatures];

          if ((v113 & 2) == 0)
          {
            goto LABEL_103;
          }

          goto LABEL_107;
        }

        ++v39;
        v109 = v107 == v104;
        v57 = v124;
      }

      while (!v109);
    }

LABEL_101:

    v41 = v114;
    v39 = v115;
LABEL_102:
    v49 = v119;
LABEL_103:
    v54 = v117;
    v59 = v123;
    v53 = v118;
    if (v123 == v116)
    {
      goto LABEL_38;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
  v73 = sub_252E379A4();
  v84 = v73 + 56;
  v85 = qword_2864A5E70;
  v86 = *(v73 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](v85);
  result = sub_252E37F14();
  v87 = ~(-1 << *(v73 + 32));
  v88 = result & v87;
  v89 = (result & v87) >> 6;
  v90 = *(v73 + 56 + 8 * v89);
  v91 = 1 << (result & v87);
  v92 = *(v73 + 48);
  if ((v91 & v90) != 0)
  {
    v74 = v125;
    while (*(v92 + 8 * v88) != v85)
    {
      v88 = (v88 + 1) & v87;
      v89 = v88 >> 6;
      v90 = *(v84 + 8 * (v88 >> 6));
      v91 = 1 << v88;
      if (((1 << v88) & v90) == 0)
      {
        goto LABEL_74;
      }
    }

    goto LABEL_76;
  }

  v74 = v125;
LABEL_74:
  *(v84 + 8 * v89) = v91 | v90;
  *(v92 + 8 * v88) = v85;
  v96 = *(v73 + 16);
  v94 = __OFADD__(v96, 1);
  v95 = v96 + 1;
  if (!v94)
  {
LABEL_75:
    *(v73 + 16) = v95;
    goto LABEL_76;
  }

  __break(1u);
LABEL_120:
  __break(1u);
  return result;
}

void sub_252A1673C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 32 + v3);
      if ((sub_252A167C4(&v4) & 1) == 0 && v2 != ++v3)
      {
        continue;
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_252A167C4(char *a1)
{
  v1 = *a1;
  if (AccessoryTypeSemantic.rawValue.getter() == 0x72656B61657073 && v2 == 0xE700000000000000)
  {
LABEL_8:

    goto LABEL_9;
  }

  v4 = sub_252E37DB4();

  if ((v4 & 1) == 0)
  {
    if (AccessoryTypeSemantic.rawValue.getter() != 0x5F79616C70726961 || v5 != 0xEF72656B61657073)
    {
      v8 = sub_252E37DB4();

      if (v8)
      {
        goto LABEL_9;
      }

      if (AccessoryTypeSemantic.rawValue.getter() != 0xD000000000000011 || 0x8000000252E65660 != v9)
      {
        v10 = sub_252E37DB4();

        if (v10)
        {
          goto LABEL_9;
        }

        if (AccessoryTypeSemantic.rawValue.getter() != 0x646F70656D6F68 || v11 != 0xE700000000000000)
        {
          v12 = sub_252E37DB4();

          if (v12)
          {
            goto LABEL_9;
          }

          if (AccessoryTypeSemantic.rawValue.getter() != 0x5F646F70656D6F68 || v13 != 0xEC000000696E696DLL)
          {
            v14 = sub_252E37DB4();

            v6 = v14 ^ 1;
            return v6 & 1;
          }
        }
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v6 = 0;
  return v6 & 1;
}

uint64_t sub_252A169C8()
{
  if (*(v0[13] + 16) || *(v0[28] + 16) || *(v0[20] + 16))
  {
    return 1;
  }

  v3 = v0[11];
  if (*(v0[6] + 16))
  {
    v4 = v0[47];
    v5 = (v4 + 32);
    v6 = *(v4 + 16);

    while (2)
    {
      if (!v6)
      {
LABEL_21:

        return 1;
      }

      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          v7 = sub_252E37DB4();

          ++v5;
          --v6;
          if ((v7 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      break;
    }
  }

  v8 = *(v3 + 16);
  v9 = (v3 + 32);
  while (2)
  {
    v11 = v8-- != 0;
    v1 = v11;
    if (v11)
    {
      switch(*v9)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v10 = sub_252E37DB4();

          ++v9;
          if ((v10 & 1) == 0)
          {
            continue;
          }

          break;
        default:
          goto LABEL_21;
      }
    }

    return v1;
  }
}

uint64_t sub_252A16EC4()
{
  v1 = *v0;
  __dst[0] = *v0;
  memcpy(&__dst[1], v0 + 1, 0x1F0uLL);
  if (sub_252A1715C())
  {
    return 0;
  }

  __dst[0] = v1;
  memcpy(&__dst[1], v0 + 1, 0x1F0uLL);
  v2 = sub_252A10F24();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    do
    {
      v5 = *&v2[v4];
      v6 = vdupq_n_s64(v5);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A9460, v6), vceqq_s64(unk_2864A9470, v6)), vuzp1q_s32(vceqq_s64(xmmword_2864A9480, v6), vceqq_s64(unk_2864A9490, v6))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A94A0, v6), vceqq_s64(unk_2864A94B0, v6)), xmmword_252E419B0)) & 0xF) != 0 || qword_2864A94C0 == v5 || unk_2864A94C8 == v5 || qword_2864A94D0 == v5)
      {
        goto LABEL_25;
      }

      v4 += 8;
    }

    while (--v3);
  }

  v8 = *(v1 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = v1 + 32;
  while (1)
  {
    if (v9 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    memcpy(__dst, (v10 + 504 * v9), sizeof(__dst));
    memcpy(v17, (v10 + 504 * v9), sizeof(v17));
    sub_2529353AC(__dst, v16);
    v11 = sub_252A10F24();
    v12 = *(v11 + 2);
    if (v12)
    {
      break;
    }

LABEL_13:
    ++v9;
    sub_252935408(__dst);

    result = 0;
    if (v9 == v8)
    {
      return result;
    }
  }

  v13 = 32;
  while (1)
  {
    v14 = *&v11[v13];
    v15 = vdupq_n_s64(v14);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A9460, v15), vceqq_s64(unk_2864A9470, v15)), vuzp1q_s32(vceqq_s64(xmmword_2864A9480, v15), vceqq_s64(unk_2864A9490, v15))))) & 1) != 0 || (vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A94A0, v15), vceqq_s64(unk_2864A94B0, v15)), xmmword_252E419B0)) & 0xF) != 0 || qword_2864A94C0 == v14 || unk_2864A94C8 == v14 || qword_2864A94D0 == v14)
    {
      break;
    }

    v13 += 8;
    if (!--v12)
    {
      goto LABEL_13;
    }
  }

  sub_252935408(__dst);
LABEL_25:

  return 1;
}

uint64_t sub_252A1715C()
{
  v1 = v0[13];
  v2 = v0[17];
  v20 = v0[20];
  v21 = v0[21];
  v22 = v0[19];
  v3 = v0[24];
  v4 = v0[28];
  result = sub_2529FC02C(&unk_2864A9408);
  v6 = result;
  v26 = *(v3 + 16);
  if (v26)
  {
    v23 = v2;
    v24 = v1;
    v7 = 0;
    v25 = v4;
    v8 = result + 56;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
        return result;
      }

      if (*(v6 + 16))
      {
        v9 = *(v3 + 32 + v7);
        v10 = *(v6 + 40);
        sub_252E37EC4();
        StateSemantic.rawValue.getter();
        sub_252E37044();

        result = sub_252E37F14();
        v11 = -1 << *(v6 + 32);
        v12 = result & ~v11;
        if ((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          break;
        }
      }

LABEL_3:
      if (++v7 == v26)
      {

        return 1;
      }
    }

    v13 = ~v11;
    while (1)
    {
      v27 = *(*(v6 + 48) + v12);
      v14 = StateSemantic.rawValue.getter();
      v16 = v15;
      if (v14 == StateSemantic.rawValue.getter() && v16 == v17)
      {
        break;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_18;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_18:

    v1 = v24;
    v4 = v25;
    if (*(v23 + 16))
    {
      return 1;
    }
  }

  else
  {

    if (*(v2 + 16))
    {
      return 1;
    }
  }

  if ((!*(v1 + 16) || sub_252A173B0(v1)) && (!*(v4 + 16) || sub_252A173B0(v4)) && !*(v22 + 16) && !*(v21 + 16))
  {
    return *(v20 + 16) != 0;
  }

  return 1;
}

BOOL sub_252A173B0(uint64_t a1)
{
  v45 = sub_252E32A64();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v45);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v38 - v6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v48 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v7, 0);
    v8 = v48;
    v38 = (v2 + 8);
    v9 = (a1 + 40);
    do
    {
      v42 = v7;
      v43 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      v40 = v9;
      v41 = v11;

      sub_252E32A04();
      v46 = v10;
      v47 = v11;
      v12 = v39;
      sub_252E32A44();
      sub_252947DBC();
      v13 = sub_252E37784();
      v14 = *v38;
      v15 = v45;
      (*v38)(v12, v45);
      v46 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      sub_2529508A0();
      v16 = sub_252E36EA4();
      v18 = v17;

      v46 = v16;
      v47 = v18;
      sub_252E32A34();
      v19 = sub_252E37784();
      v14(v12, v15);

      v46 = v19;
      sub_252E36EA4();

      v20 = sub_252E36FA4();
      v22 = v21;

      v46 = v20;
      v47 = v22;
      v23 = v44;
      v24 = sub_252E37784();

      v46 = v24;
      v25 = sub_252E36EA4();
      v27 = v26;

      v14(v23, v45);
      v8 = v43;
      v48 = v43;
      v29 = *(v43 + 16);
      v28 = *(v43 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2529AA3A0((v28 > 1), v29 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v29 + 1;
      v30 = v8 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v9 = v40 + 2;
      v7 = v42 - 1;
    }

    while (v42 != 1);
  }

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 16), &v46);

  v32 = sub_252C97064(0xD00000000000001FLL, 0x8000000252E6A290, 0x6E6F6D6D6F43, 0xE600000000000000, &v46);
  v34 = v33;
  __swift_destroy_boxed_opaque_existential_1(&v46);
  if (v34)
  {
    v35 = sub_252AD2A70(v8, v32, v34);

    v36 = v35[2];

    return v36 != 0;
  }

  else
  {

    return 0;
  }
}

id sub_252A1778C(uint64_t a1, int a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - v13;
  v49 = *(v2 + 200);
  v15 = *(v2 + 256);
  v16 = *(v15 + 16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v18 = *(v17 - 8);
  v19 = v18;
  if (v16)
  {
    (*(v18 + 16))(v14, v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);
    (*(v19 + 56))(v14, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v14, 1, 1, v17);
  }

  sub_252A1987C(v14, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v12, 1, v20) == 1)
  {
    sub_25293847C(v14, &qword_27F541AF8, &qword_252E419F8);
    v23 = v12;
LABEL_8:
    sub_25293847C(v23, &qword_27F541AF8, &qword_252E419F8);
    return 0;
  }

  v48 = a2;
  v24 = a1;
  sub_252E35834();
  v47 = v51;
  v25 = v52;
  v26 = *(v21 + 8);
  v26(v12, v20);
  if (v25)
  {
    v23 = v14;
    goto LABEL_8;
  }

  sub_252A1987C(v14, v9);
  if (v22(v9, 1, v20) == 1)
  {
    sub_25293847C(v9, &qword_27F541AF8, &qword_252E419F8);
    v28 = v48;
  }

  else
  {
    sub_252E35814();
    LODWORD(v12) = v50;
    v26(v9, v20);
    v28 = v48;
    if (v12 != 4)
    {
      if (qword_27F53F2C0 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }
  }

  if (!*(v49 + 16))
  {
    goto LABEL_22;
  }

LABEL_16:
  v33 = *(v49 + 32);
  if (qword_27F53F2C0 != -1)
  {
    v46 = *(v49 + 32);
    swift_once();
    v33 = v46;
  }

  v34 = off_27F541CF0;
  if (*(off_27F541CF0 + 2) && (v35 = sub_252A45288(v33), (v36 & 1) != 0))
  {
    v32 = *(v34[7] + 8 * v35);
  }

  else
  {
LABEL_22:
    v32 = 0;
  }

  while (1)
  {
    v37 = v47;
    if ((v28 & 1) != 0 || v24 != 9)
    {
      break;
    }

    if ((~*&v47 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v47 <= -9.22337204e18)
    {
      goto LABEL_31;
    }

    if (v47 < 9.22337204e18)
    {
      v38 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v39 = sub_252E36F04();
      v40 = [v38 initWithIdentifier:0 displayString:v39];

      v41 = v40;
      [v41 setIntegerValue_];
      [v41 setUnit_];
      [v41 setType_];

      sub_25293847C(v14, &qword_27F541AF8, &qword_252E419F8);
      return v41;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
LABEL_13:
    v29 = off_27F541CF0;
    if (*(off_27F541CF0 + 2))
    {
      v30 = sub_252A45288(v12);
      if (v31)
      {
        v32 = *(v29[7] + 8 * v30);
        if (v32)
        {
          continue;
        }
      }
    }

    goto LABEL_16;
  }

  v42 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v43 = sub_252E36F04();
  v44 = [v42 initWithIdentifier:0 displayString:v43];

  v45 = v44;
  [v45 setDoubleValue_];
  [v45 setUnit_];
  [v45 setType_];

  sub_25293847C(v14, &qword_27F541AF8, &qword_252E419F8);
  return v45;
}

id sub_252A17D08()
{
  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);
  v3 = sub_252C56114();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    if (sub_252C562FC())
    {
      type metadata accessor for HomeAttributeValue();
      return HomeAttributeValue.__allocating_init(stringValue:unit:)(v6, v5, 0);
    }
  }

  v8 = sub_252C5645C();
  if (!v9)
  {
    return 0;
  }

  v10 = v8;
  v11 = v9;
  type metadata accessor for HomeAttributeValue();
  return HomeAttributeValue.__allocating_init(stringValue:unit:)(v10, v11, 0);
}

uint64_t sub_252A17DD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF80;
  *(inited + 32) = 15;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setDoubleValue_];
  [v5 setUnit_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = 16;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setDoubleValue_];
  [v9 setUnit_];
  [v9 setType_];

  *(inited + 56) = v9;
  *(inited + 64) = 18;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setDoubleValue_];
  [v13 setUnit_];
  [v13 setType_];

  *(inited + 72) = v13;
  *(inited + 80) = 17;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setDoubleValue_];
  [v17 setUnit_];
  [v17 setType_];

  *(inited + 88) = v17;
  v18 = sub_252CC5AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
  result = swift_arrayDestroy();
  qword_27F575738 = v18;
  return result;
}

uint64_t sub_252A180A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  *(inited + 32) = 14;
  v1 = type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(inited + 48) = 16;
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 56) = v5;
  *(inited + 64) = 8;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 72) = v9;
  *(inited + 80) = 27;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = 22;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 104) = v17;
  *(inited + 112) = 10;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 120) = v21;
  *(inited + 128) = 13;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 144) = 28;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setBoolValue_];
  [v25 setType_];

  *(inited + 152) = v25;
  v26 = sub_252CC6090(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF0, "FH\a");
  result = swift_arrayDestroy();
  qword_27F575740 = v26;
  return result;
}

uint64_t sub_252A1841C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419D0;
  *(inited + 32) = 14;
  v1 = type metadata accessor for HomeAttributeValue();
  *(inited + 40) = HomeAttributeValue.__allocating_init(stringValue:unit:)(4605519, 0xE300000000000000, 0);
  *(inited + 48) = 16;
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 56) = v5;
  *(inited + 64) = 8;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 72) = v9;
  *(inited + 80) = 27;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(inited + 88) = v13;
  *(inited + 96) = 22;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(inited + 104) = v17;
  *(inited + 112) = 10;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(inited + 120) = v21;
  *(inited + 128) = 13;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  v22 = sub_252CC6090(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF0, "FH\a");
  result = swift_arrayDestroy();
  qword_27F575748 = v22;
  return result;
}

uint64_t sub_252A18728()
{
  result = sub_2529FC02C(&unk_2864A9238);
  qword_27F575750 = result;
  return result;
}

uint64_t sub_252A18750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v129 = *(a1 + 10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = *(a1 + 26);
  v8 = *(a1 + 32);
  v110 = *(a1 + 40);
  v133 = *(a1 + 48);
  v148 = *(a1 + 56);
  v111 = *(a1 + 64);
  v149 = *(a1 + 72);
  v150 = *(a1 + 80);
  v152 = *(a1 + 88);
  v151 = *(a1 + 96);
  v153 = *(a1 + 104);
  v154 = *(a1 + 112);
  v156 = *(a1 + 120);
  v158 = *(a1 + 128);
  v159 = *(a1 + 136);
  v160 = *(a1 + 144);
  v161 = *(a1 + 152);
  v163 = *(a1 + 160);
  v165 = *(a1 + 168);
  v167 = *(a1 + 192);
  v169 = *(a1 + 200);
  if (v3 == 3)
  {
    v3 = *(v2 + 8);
  }

  v127 = v3;
  if (v4 == 3)
  {
    v4 = *(v2 + 9);
  }

  v128 = v4;
  v114 = *(a1 + 208);
  v115 = *(a1 + 209);
  v155 = *(a1 + 216);
  v157 = *(a1 + 224);
  v139 = *(a1 + 232);
  v140 = *(a1 + 240);
  v118 = *(a1 + 248);
  v144 = *(a1 + 280);
  v142 = *(a1 + 288);
  v141 = *(a1 + 289);
  v143 = *(a1 + 312);
  v162 = *(a1 + 328);
  v164 = *(a1 + 336);
  v166 = *(a1 + 344);
  v168 = *(a1 + 352);
  v171 = *(a1 + 360);
  v108 = *(a1 + 368);
  v109 = *(a1 + 256);
  v117 = *(a1 + 376);
  v146 = *(a1 + 384);
  v126 = *(v2 + 10);
  v9 = *(v2 + 24);
  v10 = *(v2 + 25);
  v11 = *(v2 + 26);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 48);
  v15 = *(v2 + 56);
  v16 = *(v2 + 64);
  v17 = *(v2 + 72);
  v18 = *(v2 + 80);
  v19 = *(v2 + 96);
  v85 = *(v2 + 88);
  v86 = *(v2 + 104);
  v87 = *(v2 + 112);
  v88 = *(v2 + 120);
  v89 = *(v2 + 128);
  v90 = *(v2 + 136);
  v91 = *(v2 + 144);
  v92 = *(v2 + 152);
  v93 = *(v2 + 160);
  v94 = *(v2 + 168);
  v95 = *(v2 + 192);
  v96 = *(v2 + 200);
  v112 = *(v2 + 208);
  v113 = *(v2 + 209);
  v97 = *(v2 + 216);
  v98 = *(v2 + 224);
  v132 = *(v2 + 232);
  v99 = *(v2 + 248);
  v100 = *(v2 + 240);
  v138 = *(v2 + 280);
  v136 = *(v2 + 288);
  v135 = *(v2 + 289);
  v137 = *(v2 + 312);
  v101 = *(v2 + 256);
  v102 = *(v2 + 328);
  v103 = *(v2 + 336);
  v104 = *(v2 + 344);
  v105 = *(v2 + 352);
  v106 = *(v2 + 360);
  v107 = *(v2 + 368);
  v116 = *(v2 + 376);
  v170 = *(a1 + 16);
  v147 = *(v2 + 384);
  if (!v170)
  {
    v170 = *(v2 + 16);
    v20 = *(a1 + 32);
    v130 = v15;
    v124 = v16;
    v84 = v19;
    v21 = *(a1 + 26);
    v120 = v13;
    v22 = *(a1 + 25);
    v122 = v12;
    v23 = v14;
    v24 = v17;
    v25 = v18;
    v26 = *(a1 + 24);
    v27 = v10;
    v28 = v11;

    v11 = v28;
    v10 = v27;
    v5 = v26;
    v18 = v25;
    v17 = v24;
    v14 = v23;
    v12 = v122;
    v6 = v22;
    v13 = v120;
    v7 = v21;
    v19 = v84;
    v16 = v124;
    v15 = v130;
    v8 = v20;
  }

  if (v5 == 2)
  {
    v29 = v9;
  }

  else
  {
    v29 = v5;
  }

  v121 = v29;
  if (v6 == 3)
  {
    v30 = v10;
  }

  else
  {
    v30 = v6;
  }

  v123 = v30;
  if (v7 == 4)
  {
    v31 = v11;
  }

  else
  {
    v31 = v7;
  }

  v125 = v31;
  if (*(v8 + 16))
  {
    v131 = v8;
  }

  else
  {

    v131 = v12;
  }

  v33 = v108;
  v32 = v109;
  v34 = v133;
  v35 = v110;
  if (v110 == 4)
  {
    v35 = v13;
  }

  v134 = v35;
  if (*(v34 + 16))
  {
  }

  else
  {

    v34 = v14;
  }

  v36 = v118;
  if (*(v148 + 16))
  {
  }

  else
  {

    v148 = v15;
  }

  v37 = v111;
  if (v111 == 4)
  {
    v37 = v16;
  }

  v119 = v37;
  if (*(v149 + 16))
  {
  }

  else
  {

    v149 = v17;
  }

  if (*(v150 + 16))
  {
  }

  else
  {

    v150 = v18;
  }

  if (*(v151 + 16))
  {
  }

  else
  {

    v151 = v19;
  }

  if (*(v152 + 16))
  {
  }

  else
  {
  }

  if (*(v153 + 16))
  {
  }

  else
  {
  }

  if (*(v154 + 16))
  {
  }

  else
  {
  }

  if (*(v156 + 16))
  {
  }

  else
  {
  }

  if (*(v158 + 16))
  {
  }

  else
  {
  }

  if (*(v159 + 16))
  {
  }

  else
  {
  }

  if (*(v160 + 16))
  {
  }

  else
  {
  }

  if (*(v161 + 16))
  {
  }

  else
  {
  }

  if (*(v163 + 16))
  {
  }

  else
  {
  }

  if (*(v165 + 16))
  {
  }

  else
  {
  }

  if (*(v167 + 16))
  {
  }

  else
  {
  }

  if (*(v169 + 16))
  {
  }

  else
  {
  }

  if (v114 == 9)
  {
    v38 = v112;
  }

  else
  {
    v38 = v114;
  }

  if (v115 == 2)
  {
    v39 = v113;
  }

  else
  {
    v39 = v115;
  }

  if (*(v155 + 16))
  {
  }

  else
  {
  }

  if (*(v157 + 16))
  {

    v40 = v36;
    if (v36)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v40 = v36;
  if (!v36)
  {
LABEL_85:
    v140 = v100;
  }

LABEL_86:
  if (!*(v109 + 16))
  {
    v32 = v101;
  }

  if (*(v162 + 16))
  {
  }

  else
  {
  }

  if (*(v164 + 16))
  {
  }

  else
  {
  }

  if (*(v166 + 16))
  {
  }

  else
  {
  }

  if (*(v168 + 16))
  {
  }

  else
  {
  }

  v41 = v34;
  if (*(v171 + 16))
  {
  }

  else
  {
  }

  sub_25297B278(v116);
  v42 = v146;
  if (v146 == 22)
  {
LABEL_112:
    v147 = v42;
    if (*(v108 + 16))
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  v43 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  v45 = v44;
  if (v43 != HomeAutomationIntent.UsoTaskType.rawValue.getter() || v45 != v46)
  {
    v47 = sub_252E37DB4();

    v42 = v147;
    if ((v47 & 1) == 0)
    {
      v42 = v146;
    }

    goto LABEL_112;
  }

  if (*(v108 + 16))
  {
    goto LABEL_114;
  }

LABEL_113:
  v33 = v107;
LABEL_114:

  _s7BuilderCMa_1();
  swift_initStackObject();
  v48 = sub_252E1E238();
  v49 = v48;
  if (v127 != 3)
  {
    *(v48 + 24) = v127;
  }

  if (v128 != 3)
  {
    *(v48 + 25) = v128;
  }

  if (v170)
  {
    v50 = *(v48 + 32);
    *(v48 + 32) = v170;
  }

  if ((v129 & v126 & 1) == 0)
  {
    *(v49 + 40) = 0;
  }

  if (v121 == 2)
  {
    if (v123 == 3)
    {
      goto LABEL_124;
    }
  }

  else
  {
    *(v49 + 41) = v121;
    if (v123 == 3)
    {
LABEL_124:
      if (v125 == 4)
      {
        goto LABEL_126;
      }

      goto LABEL_125;
    }
  }

  *(v49 + 42) = v123;
  if (v125 != 4)
  {
LABEL_125:
    *(v49 + 43) = v125;
  }

LABEL_126:
  v51 = *(v49 + 48);
  *(v49 + 48) = v131;

  if (v134 != 4)
  {
    *(v49 + 56) = v134;
  }

  v52 = sub_252E1F2EC(v41);

  v53 = *(v52 + 72);
  *(v52 + 72) = v148;

  if (v119 != 4)
  {
    *(v52 + 80) = v119;
  }

  v54 = *(v52 + 88);
  *(v52 + 88) = v149;

  v55 = *(v52 + 96);
  *(v52 + 96) = v150;

  v56 = *(v52 + 112);
  *(v52 + 112) = v151;

  v57 = *(v52 + 104);
  *(v52 + 104) = v152;

  v58 = *(v52 + 120);
  *(v52 + 120) = v153;

  v59 = *(v52 + 128);
  *(v52 + 128) = v154;

  v60 = *(v52 + 136);
  *(v52 + 136) = v156;

  v61 = *(v52 + 144);
  *(v52 + 144) = v158;

  v62 = *(v52 + 152);
  *(v52 + 152) = v159;

  v63 = *(v52 + 160);
  *(v52 + 160) = v160;

  v64 = *(v52 + 168);
  *(v52 + 168) = v161;

  v65 = sub_252E1F3E8(v163);

  v66 = *(v65 + 184);
  *(v65 + 184) = v165;

  v67 = *(v65 + 208);
  *(v65 + 208) = v167;

  v68 = *(v65 + 216);
  *(v65 + 216) = v169;

  if (v38 != 9)
  {
    *(v65 + 224) = v38;
  }

  if (v39 != 2)
  {
    *(v65 + 225) = v39;
  }

  v69 = *(v65 + 232);
  *(v65 + 232) = v155;

  v70 = *(v65 + 240);
  *(v65 + 240) = v157;

  if ((v139 & v132 & 1) == 0)
  {
    *(v65 + 248) = 0;
  }

  if (v40)
  {
    v71 = *(v65 + 264);
    *(v65 + 256) = v140;
    *(v65 + 264) = v40;
  }

  if (v141)
  {
    v72 = v136;
  }

  else
  {
    v72 = v142;
  }

  if (v141)
  {
    v73 = v138;
  }

  else
  {
    v73 = v144;
  }

  if (v143 == 2)
  {
    v74 = v137;
  }

  else
  {
    v74 = v143;
  }

  v75 = *(v65 + 272);
  *(v65 + 272) = v32;

  *(v65 + 280) = v74;
  *(v65 + 288) = v73;
  *(v65 + 296) = v72;
  *(v65 + 297) = v141 & v135;
  v76 = *(v65 + 304);
  *(v65 + 304) = v162;

  v77 = *(v65 + 312);
  *(v65 + 312) = v164;

  v78 = *(v65 + 320);
  *(v65 + 320) = v166;

  v79 = *(v65 + 328);
  *(v65 + 328) = v168;

  v80 = *(v65 + 336);
  *(v65 + 336) = v171;

  v81 = sub_252E1F258(v117);

  *(v81 + 376) = v147;
  v82 = *(v81 + 392);
  *(v81 + 392) = v33;

  sub_252E1E4F8(a2);
}

void *sub_252A19280(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_252A195C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_252A19310(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C53500(v20, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_252A19458(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_252C53CA8(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_252A195C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C540C0(v20, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A1970C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_252C53048(v18, a2, v19, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A1987C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AF8, &qword_252E419F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A198EC()
{
  result = qword_27F541B00;
  if (!qword_27F541B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541B00);
  }

  return result;
}

uint64_t sub_252A19940(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252A199A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 528) = v8;
  *(v9 + 520) = v32;
  *(v9 + 504) = v28;
  *(v9 + 512) = v31;
  *(v9 + 818) = v30;
  *(v9 + 817) = v29;
  *(v9 + 488) = a6;
  *(v9 + 496) = a8;
  *(v9 + 816) = a7;
  *(v9 + 472) = a4;
  *(v9 + 480) = a5;
  *(v9 + 456) = a2;
  *(v9 + 464) = a3;
  *(v9 + 448) = a1;
  v10 = type metadata accessor for CompletionSnippetModel();
  *(v9 + 536) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 544) = swift_task_alloc();
  v12 = type metadata accessor for SnippetResponseViewIds();
  *(v9 + 552) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  *(v9 + 584) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450) - 8) + 64) + 15;
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v15 = type metadata accessor for HomeAutomationSnippetModels();
  *(v9 + 608) = v15;
  v16 = *(v15 - 8);
  *(v9 + 616) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 624) = swift_task_alloc();
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0) - 8) + 64) + 15;
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  v19 = *(*(sub_252E36014() - 8) + 64) + 15;
  *(v9 + 664) = swift_task_alloc();
  v20 = sub_252E36AB4();
  *(v9 + 672) = v20;
  v21 = *(v20 - 8);
  *(v9 + 680) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 688) = swift_task_alloc();
  v23 = sub_252E34014();
  *(v9 + 696) = v23;
  v24 = *(v23 - 8);
  *(v9 + 704) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 712) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A19CA8, 0, 0);
}

uint64_t sub_252A19CA8()
{
  if (*(v0 + 817))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(sub_252B680FC() + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet);
  }

  *(v0 + 819) = v1;
  (*(*(v0 + 704) + 16))(*(v0 + 712), *(v0 + 488), *(v0 + 696));
  if (qword_27F53F648 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 688);
  v3 = *(v0 + 456);
  v4 = qword_27F544FD0;
  *(v0 + 720) = qword_27F544FD0;
  v5 = v4;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  *(v0 + 728) = v7;
  *v7 = v0;
  v7[1] = sub_252A19E60;
  v8 = *(v0 + 464);

  return v10();
}

uint64_t sub_252A19E60(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v7 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {
    v5 = sub_252A1C35C;
  }

  else
  {
    v5 = sub_252A19F78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252A19F78()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 736);
  v2 = *(v0 + 819);
  v3 = sub_252E36AD4();
  *(v0 + 752) = __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();

  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000019, 0x8000000252E72160, 0xD000000000000075, 0x8000000252E71F50);

  if (v2 & 1) != 0 || (v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(), sub_252929E74((v8 + 16), v0 + 16), , v9 = *(v0 + 48), __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40)), v10 = sub_252E338F4(), __swift_destroy_boxed_opaque_existential_1((v0 + 16)), (v10))
  {
    sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E722D0, 0xD000000000000075, 0x8000000252E71F50);
    v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v11 + 16), v0 + 296);

    v12 = *(v0 + 328);
    __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
    v13 = sub_252E338F4();
    __swift_destroy_boxed_opaque_existential_1((v0 + 296));
    if (v13)
    {
      v14 = *(v0 + 664);
      sub_252E36004();
    }

    else
    {
      v15 = *(v0 + 712);
      v16 = *(v0 + 664);
      sub_252E33F64();
    }

    v17 = *(v0 + 736);
    v18 = *(v0 + 712);
    v19 = *(v0 + 664);
    v20 = *(v0 + 656);
    v21 = *(v0 + 616);
    v22 = *(v0 + 608);
    v23 = *(v0 + 528);
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);
    sub_252E33F74();
    (*(v24 + 8))(v25, v24);
    v26 = *(v0 + 360);
    v27 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1((v0 + 336), v26);
    sub_252BDE100();
    v29 = v28;
    *(v0 + 760) = v28;
    (*(v21 + 56))(v20, 1, 1, v22);
    v30 = v29;
    v31 = swift_task_alloc();
    *(v0 + 768) = v31;
    *v31 = v0;
    v31[1] = sub_252A1A350;
    v32 = *(v0 + 712);
    v33 = *(v0 + 656);
    v34 = *(v0 + 448);
    v35 = *(v0 + 818);

    return sub_252A1C534(v34, v35, v30, v32, v33, v26, v27);
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 776) = v37;
    *v37 = v0;
    v37[1] = sub_252A1A668;
    v38 = *(v0 + 648);
    v39 = *(v0 + 528);
    v40 = *(v0 + 520);
    v41 = *(v0 + 512);
    v42 = *(v0 + 472);
    v43 = *(v0 + 480);

    return sub_252A1D2C0(v38, v42);
  }
}

uint64_t sub_252A1A350()
{
  v1 = *(*v0 + 768);
  v2 = *(*v0 + 760);
  v3 = *(*v0 + 656);
  v5 = *v0;

  sub_252A1EC2C(v3);

  return MEMORY[0x2822009F8](sub_252A1A480, 0, 0);
}

uint64_t sub_252A1A480()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 600);
  v17 = *(v0 + 592);
  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 560);
  v22 = *(v0 + 544);
  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252A1A668()
{
  v1 = *(*v0 + 776);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252A1A764, 0, 0);
}

uint64_t sub_252A1A764()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 752);
    v164 = *(v0 + 656);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);
    v7 = *(v0 + 512);
    sub_252A1EC2C(v1);
    sub_252CC3D90(0xD00000000000003BLL, 0x8000000252E72180, 0xD000000000000075, 0x8000000252E71F50);
    (*(v6 + 8))(v7, v6);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v8);
    (*(v2 + 56))(v164, 1, 1, v3);
    v10 = swift_task_alloc();
    *(v0 + 808) = v10;
    *v10 = v0;
    v10[1] = sub_252A1C05C;
    v11 = *(v0 + 736);
    v12 = *(v0 + 712);
    v13 = *(v0 + 656);
    v14 = *(v0 + 448);
    v15 = *(v0 + 818);
    v16 = v8;
    v17 = v9;
LABEL_58:

    return sub_252A1C534(v14, v15, v11, v12, v13, v16, v17);
  }

  v18 = *(v0 + 752);
  v19 = *(v0 + 504);
  sub_252A1ECFC(v1, *(v0 + 640), type metadata accessor for HomeAutomationSnippetModels);
  sub_252E379F4();

  v20 = HomeAutomationSnippetModels.description.getter();
  MEMORY[0x2530AD570](v20);

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E721C0, 0xD000000000000075, 0x8000000252E71F50);

  if (v19)
  {
    v21 = *(v0 + 752);
    v22 = *(v0 + 712);
    v23 = *(v0 + 504);
    sub_252CC3D90(0xD00000000000003BLL, 0x8000000252E72290, 0xD000000000000075, 0x8000000252E71F50);
    if (sub_252E33FE4())
    {
      v24 = *(v0 + 712);

      v26 = sub_252E33FD4();
      if (*v25)
      {
        v27 = v25;
        v28 = *(v0 + 600);
        v29 = *(v0 + 496);
        v30 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
        sub_252E32CA4();
        v31 = sub_252E32CB4();
        v32 = *(v31 - 8);
        v33 = (*(v32 + 48))(v28, 1, v31);
        v34 = 0;
        if (v33 != 1)
        {
          v35 = *(v0 + 600);
          v34 = sub_252E32C74();
          (*(v32 + 8))(v35, v31);
        }

        [v30 setPunchOutUri_];

        MEMORY[0x2530AD700]();
        if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v146 = *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v26(v0 + 376, 0);
    }

    else
    {
      v36 = *(v0 + 592);
      v37 = *(v0 + 496);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_252E3C130;
      v39 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
      sub_252E32CA4();
      v40 = sub_252E32CB4();
      v41 = *(v40 - 8);
      v42 = 0;
      if ((*(v41 + 48))(v36, 1, v40) != 1)
      {
        v43 = *(v0 + 592);
        v42 = sub_252E32C74();
        (*(v41 + 8))(v43, v40);
      }

      v44 = *(v0 + 712);
      [v39 setPunchOutUri_];

      *(v38 + 32) = v39;
      sub_252E33FF4();
    }
  }

  v45 = *(v0 + 632);
  v46 = *(v0 + 584);
  v47 = *(v0 + 576);
  v48 = *(v0 + 552);
  sub_252A1EC94(*(v0 + 640), v45, type metadata accessor for HomeAutomationSnippetModels);
  sub_252B1E504(v45, v46);
  sub_252E379F4();

  v49 = sub_252B1E6EC();
  MEMORY[0x2530AD570](v49);

  MEMORY[0x2530AD570](0x56746C7573657220, 0xEF203A6449776569);
  sub_252A1EC94(v46, v47, type metadata accessor for SnippetResponseViewIds);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v51 = "isambiguationResponse";
  v52 = 0xD000000000000025;
  if (EnumCaseMultiPayload == 4)
  {
    v52 = 0xD000000000000023;
  }

  else
  {
    v51 = "HomeAutomation#CallToAction";
  }

  if (EnumCaseMultiPayload == 3)
  {
    v52 = 0xD000000000000022;
    v51 = "onfirmationResponse";
  }

  v53 = "e snippet result: ";
  if (EnumCaseMultiPayload == 1)
  {
    v54 = 0xD00000000000001BLL;
  }

  else
  {
    v54 = 0xD000000000000021;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v53 = "emperatureResponse";
  }

  if (!EnumCaseMultiPayload)
  {
    v54 = 0xD000000000000021;
    v53 = "ompletionResponse";
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v55 = v54;
  }

  else
  {
    v55 = v52;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v56 = v53;
  }

  else
  {
    v56 = v51;
  }

  v57 = *(v0 + 752);
  v58 = *(v0 + 712);
  v59 = *(v0 + 584);
  v60 = *(v0 + 568);
  v61 = *(v0 + 552);
  sub_252A1ED64(*(v0 + 576), type metadata accessor for SnippetResponseViewIds);
  MEMORY[0x2530AD570](v55, v56 | 0x8000000000000000);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E721E0, 0xD000000000000075, 0x8000000252E71F50);

  sub_252B1E6EC();
  sub_252E33FA4();
  sub_252A1EC94(v59, v60, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v62 = *(v0 + 712);
  v63 = *(v0 + 816);
  sub_252A1ED64(*(v0 + 568), type metadata accessor for SnippetResponseViewIds);
  sub_252E33F94();
  if (v63 == 1)
  {
    v64 = *(v0 + 752);
    v65 = *(v0 + 736);
    v66 = *(v0 + 640);
    v67 = *(v0 + 608);
    v68 = *(v0 + 528);
    v69 = *(v0 + 520);
    v70 = *(v0 + 512);
    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E72260, 0xD000000000000075, 0x8000000252E71F50);
    (*(v69 + 8))(v70, v69);
    v71 = *(v0 + 240);
    v72 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v71);
    *(v0 + 280) = v67;
    *(v0 + 288) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 256));
    sub_252A1EC94(v66, boxed_opaque_existential_0, type metadata accessor for HomeAutomationSnippetModels);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v74 = swift_allocObject();
    *(v0 + 784) = v74;
    *(v74 + 16) = xmmword_252E3C130;
    *(v74 + 32) = v65;
    v75 = *(MEMORY[0x277D5BE48] + 4);
    v76 = v65;
    v77 = swift_task_alloc();
    *(v0 + 792) = v77;
    *v77 = v0;
    v77[1] = sub_252A1B9D4;
    v78 = *(v0 + 712);
    v79 = *(v0 + 448);
    v80 = v0 + 256;
    v81 = v74;
    v82 = v71;
    v83 = v72;

    return MEMORY[0x2821BB478](v79, v80, v81, v78, v82, v83);
  }

  v84 = *(sub_252B680FC() + 161);

  if (v84 != 1)
  {
LABEL_57:
    v122 = *(v0 + 752);
    v123 = *(v0 + 656);
    v124 = *(v0 + 640);
    v125 = *(v0 + 616);
    v126 = *(v0 + 608);
    v127 = *(v0 + 528);
    v128 = *(v0 + 520);
    v129 = *(v0 + 512);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E72200, 0xD000000000000075, 0x8000000252E71F50);
    (*(v128 + 8))(v129, v128);
    v131 = *(v0 + 120);
    v130 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), v131);
    sub_252A1EC94(v124, v123, type metadata accessor for HomeAutomationSnippetModels);
    (*(v125 + 56))(v123, 0, 1, v126);
    v132 = swift_task_alloc();
    *(v0 + 800) = v132;
    *v132 = v0;
    v132[1] = sub_252A1BD1C;
    v11 = *(v0 + 736);
    v12 = *(v0 + 712);
    v13 = *(v0 + 656);
    v14 = *(v0 + 448);
    v15 = *(v0 + 818);
    v16 = v131;
    v17 = v130;
    goto LABEL_58;
  }

  v85 = sub_252B680FC();
  swift_beginAccess();
  v86 = *(v85 + 32);
  if (!(v86 >> 62))
  {
    v79 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v79)
    {
      goto LABEL_40;
    }

LABEL_52:

    goto LABEL_53;
  }

  if (v86 < 0)
  {
    v90 = *(v85 + 32);
  }

  v79 = sub_252E378C4();
  if (!v79)
  {
    goto LABEL_52;
  }

LABEL_40:
  v87 = v79 - 1;
  if (__OFSUB__(v79, 1))
  {
    __break(1u);
    goto LABEL_66;
  }

  if ((v86 & 0xC000000000000001) != 0)
  {
LABEL_66:

    v87 = MEMORY[0x2530ADF00](v87, v86);

    goto LABEL_45;
  }

  if ((v87 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v87 >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return MEMORY[0x2821BB478](v79, v80, v81, v78, v82, v83);
  }

  v87 = *(v86 + 8 * v87 + 32);
LABEL_45:

  v88 = sub_252C2A5D8();
  if (!(v88 >> 62))
  {
    v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_47;
  }

LABEL_68:
  v89 = sub_252E378C4();
LABEL_47:

  if (v89)
  {
    goto LABEL_57;
  }

LABEL_53:
  v91 = *(v0 + 608);
  sub_252A1EC94(*(v0 + 640), *(v0 + 624), type metadata accessor for HomeAutomationSnippetModels);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_252A1ED64(*(v0 + 624), type metadata accessor for HomeAutomationSnippetModels);
    goto LABEL_57;
  }

  v92 = *(v0 + 752);
  v93 = *(v0 + 584);
  v94 = *(v0 + 560);
  v95 = *(v0 + 552);
  v96 = *(v0 + 536);
  sub_252A1ECFC(*(v0 + 624), *(v0 + 544), type metadata accessor for CompletionSnippetModel);
  sub_252E379F4();
  *(v0 + 432) = 0;
  *(v0 + 440) = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E72230);
  sub_252E37AE4();
  sub_252CC3D90(*(v0 + 432), *(v0 + 440), 0xD000000000000075, 0x8000000252E71F50);

  sub_252A1EC94(v93, v94, type metadata accessor for SnippetResponseViewIds);
  swift_getEnumCaseMultiPayload();
  v97 = *(v0 + 744);
  v98 = *(v0 + 544);
  v99 = *(v0 + 536);
  v100 = *(v0 + 528);
  v101 = *(v0 + 520);
  v102 = *(v0 + 512);
  v103 = *(v0 + 448);
  sub_252A1ED64(*(v0 + 560), type metadata accessor for SnippetResponseViewIds);
  (*(v101 + 8))(v102, v101);
  v104 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
  *(v0 + 200) = v99;
  *(v0 + 208) = sub_252A1EDC4(&qword_27F541B28, type metadata accessor for CompletionSnippetModel);
  v105 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
  sub_252A1EC94(v98, v105, type metadata accessor for CompletionSnippetModel);
  sub_252E33CD4();
  v106 = *(v0 + 736);
  if (v97)
  {
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 640);
    v110 = *(v0 + 584);
    v111 = *(v0 + 544);

    sub_252A1ED64(v111, type metadata accessor for CompletionSnippetModel);
    sub_252A1ED64(v110, type metadata accessor for SnippetResponseViewIds);
    sub_252A1ED64(v109, type metadata accessor for HomeAutomationSnippetModels);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    sub_252E375C4();
    sub_252E36A74();
    v112 = *(v0 + 712);
    v113 = *(v0 + 704);
    v114 = *(v0 + 696);
    v115 = *(v0 + 664);
    v116 = *(v0 + 656);
    v117 = *(v0 + 648);
    v118 = *(v0 + 640);
    v119 = *(v0 + 632);
    v149 = *(v0 + 624);
    v151 = *(v0 + 600);
    v153 = *(v0 + 592);
    v155 = *(v0 + 584);
    v157 = *(v0 + 576);
    v159 = *(v0 + 568);
    v120 = *(v0 + 560);
    v162 = *(v0 + 544);
    (*(*(v0 + 680) + 8))(*(v0 + 688), *(v0 + 672));
    (*(v113 + 8))(v112, v114);
  }

  else
  {
    v134 = *(v0 + 640);
    v135 = *(v0 + 584);
    v136 = *(v0 + 544);

    sub_252A1ED64(v136, type metadata accessor for CompletionSnippetModel);
    sub_252A1ED64(v135, type metadata accessor for SnippetResponseViewIds);
    sub_252A1ED64(v134, type metadata accessor for HomeAutomationSnippetModels);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    v137 = *(v0 + 720);
    v138 = *(v0 + 712);
    v139 = *(v0 + 704);
    v140 = *(v0 + 696);
    v141 = *(v0 + 688);
    v142 = *(v0 + 680);
    v143 = *(v0 + 672);
    v144 = *(v0 + 664);
    v145 = *(v0 + 656);
    v147 = *(v0 + 648);
    v148 = *(v0 + 640);
    v150 = *(v0 + 632);
    v152 = *(v0 + 624);
    v154 = *(v0 + 600);
    v156 = *(v0 + 592);
    v158 = *(v0 + 584);
    v160 = *(v0 + 576);
    v161 = *(v0 + 568);
    v163 = *(v0 + 560);
    v165 = *(v0 + 544);
    sub_252E375C4();
    sub_252E36A74();
    (*(v142 + 8))(v141, v143);
    (*(v139 + 8))(v138, v140);
  }

  v121 = *(v0 + 8);

  return v121();
}

uint64_t sub_252A1B9D4()
{
  v1 = *v0;
  v2 = *(*v0 + 792);
  v3 = *(*v0 + 784);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 256));

  return MEMORY[0x2822009F8](sub_252A1BAF4, 0, 0);
}

uint64_t sub_252A1BAF4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 584);

  sub_252A1ED64(v2, type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v1, type metadata accessor for HomeAutomationSnippetModels);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v24 = *(v0 + 544);
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252A1BD1C()
{
  v1 = *(*v0 + 800);
  v2 = *(*v0 + 656);
  v4 = *v0;

  sub_252A1EC2C(v2);

  return MEMORY[0x2822009F8](sub_252A1BE34, 0, 0);
}

uint64_t sub_252A1BE34()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 584);

  sub_252A1ED64(v2, type metadata accessor for SnippetResponseViewIds);
  sub_252A1ED64(v1, type metadata accessor for HomeAutomationSnippetModels);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v3 = *(v0 + 720);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 624);
  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v24 = *(v0 + 544);
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252A1C05C()
{
  v1 = *(*v0 + 808);
  v2 = *(*v0 + 656);
  v4 = *v0;

  sub_252A1EC2C(v2);

  return MEMORY[0x2822009F8](sub_252A1C174, 0, 0);
}

uint64_t sub_252A1C174()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);
  v12 = *(v0 + 648);
  v13 = *(v0 + 640);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 600);
  v17 = *(v0 + 592);
  v18 = *(v0 + 584);
  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 560);
  v22 = *(v0 + 544);
  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252A1C35C()
{
  v1 = v0[90];
  v2 = v0[86];
  sub_252E375C4();
  sub_252E36A74();
  v21 = v0[93];
  v3 = v0[89];
  v4 = v0[88];
  v5 = v0[87];
  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];
  v9 = v0[80];
  v10 = v0[79];
  v14 = v0[78];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v11 = v0[70];
  v20 = v0[68];
  (*(v0[85] + 8))(v0[86], v0[84]);
  (*(v4 + 8))(v3, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252A1C534(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 152) = a7;
  *(v8 + 160) = v7;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  *(v8 + 264) = a2;
  *(v8 + 112) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0) - 8) + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  v10 = type metadata accessor for HomeAutomationSnippetModels();
  *(v8 + 184) = v10;
  v11 = *(v10 - 8);
  *(v8 + 192) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A1C654, 0, 0);
}

uint64_t sub_252A1C654()
{
  LODWORD(v1) = *(v0 + 264);
  if (v1 == 2)
  {
    v2 = [*(v0 + 120) catId];
    v1 = sub_252E36F34();
    v4 = v3;

    *(v0 + 96) = v1;
    *(v0 + 104) = v4;
    v5 = swift_task_alloc();
    *(v5 + 16) = v0 + 96;
    LOBYTE(v1) = sub_2529ED970(sub_25296A69C, v5, &unk_2864A7060);
    swift_arrayDestroy();
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 192);
  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544D18);
  sub_252E379F4();

  if (v1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  sub_252CC3D90(0xD000000000000011, 0x8000000252E722F0, 0xD000000000000075, 0x8000000252E71F50);

  v10 = (v6 + 48);
  v11 = *(v0 + 184);
  v12 = *(v0 + 136);
  if (v1)
  {
    v13 = *(v0 + 176);
    sub_252A1EE0C(v12, v13);
    if ((*v10)(v13, 1, v11) == 1)
    {
      sub_252A1EC2C(*(v0 + 176));
      v14 = *(MEMORY[0x277D5BE68] + 4);
      v15 = swift_task_alloc();
      *(v0 + 224) = v15;
      *v15 = v0;
      v15[1] = sub_252A1CE0C;
      v16 = *(v0 + 152);
      v17 = *(v0 + 160);
      v18 = *(v0 + 144);
      v19 = *(v0 + 120);
      v20 = *(v0 + 128);
      v21 = *(v0 + 112);

      return MEMORY[0x2821BB498](v21, v19, v20, v18, v16);
    }

    else
    {
      v33 = *(v0 + 208);
      v34 = *(v0 + 184);
      sub_252A1ECFC(*(v0 + 176), v33, type metadata accessor for HomeAutomationSnippetModels);
      *(v0 + 80) = v34;
      *(v0 + 88) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
      sub_252A1EC94(v33, boxed_opaque_existential_0, type metadata accessor for HomeAutomationSnippetModels);
      v36 = *(MEMORY[0x277D5BE60] + 4);
      v37 = swift_task_alloc();
      *(v0 + 216) = v37;
      *v37 = v0;
      v37[1] = sub_252A1CC68;
      v38 = *(v0 + 152);
      v39 = *(v0 + 160);
      v40 = *(v0 + 144);
      v41 = *(v0 + 120);
      v42 = *(v0 + 128);
      v43 = *(v0 + 112);

      return MEMORY[0x2821BB490](v43, v0 + 56, v41, v42, v40, v38);
    }
  }

  else
  {
    v22 = *(v0 + 168);
    sub_252A1EE0C(v12, v22);
    if ((*v10)(v22, 1, v11) == 1)
    {
      v23 = *(v0 + 120);
      sub_252A1EC2C(*(v0 + 168));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v24 = swift_allocObject();
      *(v0 + 248) = v24;
      *(v24 + 16) = xmmword_252E3C130;
      *(v24 + 32) = v23;
      v25 = *(MEMORY[0x277D5BE58] + 4);
      v26 = v23;
      v27 = swift_task_alloc();
      *(v0 + 256) = v27;
      *v27 = v0;
      v27[1] = sub_252A1D138;
      v28 = *(v0 + 152);
      v29 = *(v0 + 160);
      v30 = *(v0 + 144);
      v31 = *(v0 + 128);
      v32 = *(v0 + 112);

      return MEMORY[0x2821BB488](v32, v24, v31, v30, v28);
    }

    else
    {
      v44 = *(v0 + 200);
      v45 = *(v0 + 184);
      v46 = *(v0 + 120);
      sub_252A1ECFC(*(v0 + 168), v44, type metadata accessor for HomeAutomationSnippetModels);
      *(v0 + 40) = v45;
      *(v0 + 48) = sub_252A1EDC4(&qword_27F541B38, type metadata accessor for HomeAutomationSnippetModels);
      v47 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
      sub_252A1EC94(v44, v47, type metadata accessor for HomeAutomationSnippetModels);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v48 = swift_allocObject();
      *(v0 + 232) = v48;
      *(v48 + 16) = xmmword_252E3C130;
      *(v48 + 32) = v46;
      v49 = *(MEMORY[0x277D5BE38] + 4);
      v50 = v46;
      v51 = swift_task_alloc();
      *(v0 + 240) = v51;
      *v51 = v0;
      v51[1] = sub_252A1CF78;
      v52 = *(v0 + 152);
      v53 = *(v0 + 160);
      v54 = *(v0 + 144);
      v55 = *(v0 + 128);
      v56 = *(v0 + 112);

      return MEMORY[0x2821BB468](v56, v0 + 16, v48, v55, v54, v52);
    }
  }
}

uint64_t sub_252A1CC68()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v4 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));

  return MEMORY[0x2822009F8](sub_252A1CD6C, 0, 0);
}

uint64_t sub_252A1CD6C()
{
  sub_252A1ED64(v0[26], type metadata accessor for HomeAutomationSnippetModels);
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[21];
  v3 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A1CE0C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v9 = *v0;

  v3 = v1[26];
  v4 = v1[25];
  v5 = v1[22];
  v6 = v1[21];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_252A1CF78()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 16));

  return MEMORY[0x2822009F8](sub_252A1D098, 0, 0);
}

uint64_t sub_252A1D098()
{
  sub_252A1ED64(v0[25], type metadata accessor for HomeAutomationSnippetModels);
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[21];
  v3 = v0[22];

  v5 = v0[1];

  return v5();
}

uint64_t sub_252A1D138()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v10 = *v0;

  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[22];
  v7 = v1[21];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_252A1D2C0(uint64_t a1, int *a2)
{
  v2[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B30, &qword_252E41AB0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v2[6] = v5;
  v9 = (a2 + *a2);
  v6 = a2[1];
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_252A1D3FC;

  return v9(v5);
}

uint64_t sub_252A1D3FC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_252A1D578;
  }

  else
  {
    v3 = sub_252A1D510;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}