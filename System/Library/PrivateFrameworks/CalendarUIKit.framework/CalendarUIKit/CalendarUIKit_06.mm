uint64_t sub_1CAC24B90(uint64_t a1)
{
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CAD4BF74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (a1 != 1 && (a1 & 6) == 0)
  {
    if ((a1 & 0x20) != 0)
    {
      sub_1CAD4DEE4();
      if (qword_1EC462B10 == -1)
      {
        goto LABEL_14;
      }
    }

    else if ((a1 & 0x40) != 0)
    {
      sub_1CAD4DEE4();
      if (qword_1EC462B10 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((a1 & 8) == 0)
      {
        goto LABEL_6;
      }

      sub_1CAD4DEE4();
      if (qword_1EC462B10 == -1)
      {
LABEL_14:
        v8 = __swift_project_value_buffer(v3, qword_1EC47D850);
        (*(v4 + 16))(v6, v8, v3);
        sub_1CAD4C184();
        return sub_1CAD4BF94();
      }
    }

    swift_once();
    goto LABEL_14;
  }

LABEL_6:

  return MEMORY[0x1EEDC3C68](0, 0xE000000000000000);
}

uint64_t sub_1CAC24F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CAC24F60, 0, 0);
}

uint64_t sub_1CAC24F60()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 16) == *(v0 + 32) && v1 == *(v0 + 24);
    if (v2 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v3 = [*(v0 + 48) calendar];
LABEL_9:
      v7 = *(v0 + 8);

      return v7(v3);
    }
  }

  v4 = *(v0 + 56);
  v5 = sub_1CAD4DF54();
  v6 = [v4 calendarWithIdentifier_];

  v3 = v6;
  if (v6)
  {
    goto LABEL_9;
  }

  sub_1CAC23A1C();
  swift_allocError();
  *v9 = 3;
  swift_willThrow();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1CAC250A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v43 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v43 - v8;
  v10 = type metadata accessor for EventCalendarModelObject();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v14 + 104), v9, &qword_1EC464020);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_1EC464020;
    v16 = v9;
    goto LABEL_7;
  }

  sub_1CAC297D8(v9, v13, type metadata accessor for EventCalendarModelObject);
  sub_1CAB23A9C(v0 + *(v14 + 136), v3, &qword_1EC465AC0);
  v17 = type metadata accessor for EventOrganizerModelObject(0);
  if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
  {
    sub_1CAC29750(v13, type metadata accessor for EventCalendarModelObject);
    v15 = &qword_1EC465AC0;
    v16 = v3;
    goto LABEL_7;
  }

  sub_1CAB23A9C(&v3[*(v17 + 28)], v6, &qword_1EC465450);
  sub_1CAC29750(v3, type metadata accessor for EventOrganizerModelObject);
  v18 = sub_1CAD4BFF4();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_1CAC29750(v13, type metadata accessor for EventCalendarModelObject);
    v15 = &qword_1EC465450;
    v16 = v6;
LABEL_7:
    sub_1CAB21B68(v16, v15);
    return 0;
  }

  v21 = sub_1CAD4BFA4();
  v23 = v22;
  (*(v19 + 8))(v6, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAD5A590;
  *(inited + 32) = v21;
  v43[1] = inited + 32;
  *(inited + 40) = v23;

  v25 = sub_1CAD4DF54();
  v26 = [v25 stringRemovingMailto];

  if (v26)
  {
    v27 = sub_1CAD4DF94();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *(inited + 48) = v27;
  *(inited + 56) = v29;
  v30 = sub_1CAD4DF54();

  v31 = [v30 stringRemovingTel];

  if (v31)
  {
    v32 = sub_1CAD4DF94();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *(inited + 64) = v32;
  *(inited + 72) = v34;
  v44 = v13;
  v35 = *(v13 + 36);
  v36 = *(v35 + 16);

  v37 = (v35 + 40);
  v38 = -v36;
  v39 = -1;
  while (1)
  {
    if (v38 + v39 == -1)
    {

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
      swift_arrayDestroy();
      sub_1CAC29750(v44, type metadata accessor for EventCalendarModelObject);
      return 0;
    }

    if (++v39 >= *(v35 + 16))
    {
      break;
    }

    v40 = v37 + 2;
    v41 = *v37;
    v45[0] = *(v37 - 1);
    v45[1] = v41;
    MEMORY[0x1EEE9AC00](result);
    v43[-2] = v45;

    v42 = sub_1CAD41700(sub_1CAC297B0, &v43[-4], inited);

    v37 = v40;
    if (v42)
    {
      sub_1CAC29750(v44, type metadata accessor for EventCalendarModelObject);

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
      swift_arrayDestroy();
      return 1;
    }
  }

  __break(1u);
  return result;
}

id sub_1CAC256C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_1CAD4DF54();
  }

  else
  {
    v7 = 0;
  }

  sub_1CABD4070(0, &qword_1EC464E70);
  v8 = sub_1CAD4E1F4();

  if (a5)
  {
    v9 = sub_1CAD4DF54();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithTitle:v7 joinMethods:v8 conferenceDetails:v9];

  return v10;
}

uint64_t sub_1CAC257C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CAD4E5D4() + 1) & ~v5;
    do
    {
      sub_1CAD4EA84();

      sub_1CAD4E054();
      v9 = sub_1CAD4EAC4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CAC25970(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CAD4E5D4() + 1) & ~v5;
    while (1)
    {
      sub_1CAD4EA84();

      sub_1CAD4E054();
      v9 = sub_1CAD4EAC4();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for EventAttendeeModelObject(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CAC25B5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CAD4E5D4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1CAD4EA84();
      sub_1CAD4EAA4();
      if (v9)
      {

        sub_1CAD4E054();
      }

      v10 = sub_1CAD4EAC4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_12;
      }

      if (v3 >= v11)
      {
LABEL_12:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CAC25D28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for EventAttendeeModelObject(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_1CAB21B68(v5, &qword_1EC464E38))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_1CAC29A3C(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for EventAttendeeModelObject);
      sub_1CAC274EC(v10, v5);
      sub_1CAC29750(v10, type metadata accessor for EventAttendeeModelObject);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC25F30(unint64_t a1, uint64_t a2)
{
  v190 = *MEMORY[0x1E69E9840];
  v173 = sub_1CAD4BFF4();
  v5 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v157 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v148 - v11;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  v13 = MEMORY[0x1EEE9AC00](v172);
  v152 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v171 = &v148 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v151 = &v148 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v148 - v19;
  v181 = type metadata accessor for EventAttendeeModelObject(0);
  v21 = MEMORY[0x1EEE9AC00](v181);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v154 = (&v148 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v148 - v25);
  MEMORY[0x1EEE9AC00](v24);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v179 = (&v148 - v27);
  v164 = v20;
  v176 = v12;
  v153 = v28;
  v150 = v10;
  v149 = 0;
  v31 = a1 + 56;
  v30 = *(a1 + 56);
  v32 = -1 << *(a1 + 32);
  v167 = ~v32;
  if (-v32 < 64)
  {
    v33 = ~(-1 << -v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & v30;
  v155 = (63 - v32) >> 6;
  v166 = (v29 + 56);
  v168 = v29;
  v165 = (v29 + 48);
  v184 = (a2 + 56);
  v35 = (v5 + 48);
  v156 = (v5 + 32);
  v159 = (v5 + 8);

  v36 = 0;
  v170 = a2;
  v163 = a1;
  v162 = a1 + 56;
  v169 = v35;
LABEL_7:
  v37 = v34;
  v38 = v36;
  v183 = v34;
  if (v34)
  {
LABEL_15:
    v42 = (v37 - 1) & v37;
    v43 = v164;
    sub_1CAC29A3C(*(a1 + 48) + *(v168 + 72) * (__clz(__rbit64(v37)) | (v38 << 6)), v164, type metadata accessor for EventAttendeeModelObject);
    v44 = 0;
    v40 = v38;
    goto LABEL_16;
  }

  if (v155 <= v36 + 1)
  {
    v39 = v36 + 1;
  }

  else
  {
    v39 = v155;
  }

  v40 = (v39 - 1);
  v41 = v36;
  while (1)
  {
    v38 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v38 >= v155)
    {
      v42 = 0;
      v44 = 1;
      v43 = v164;
LABEL_16:
      v45 = v181;
      v161 = *v166;
      v161(v43, v44, 1, v181);
      v185 = a1;
      v186 = v31;
      v187 = v167;
      v188 = v40;
      v189 = v42;
      v160 = *v165;
      if (v160(v43, 1, v45) == 1)
      {
        sub_1CAB21B68(v43, &qword_1EC464E38);
        sub_1CAC297D0();
        return a2;
      }

      v174 = v42;
      v175 = v40;
      v40 = v179;
      sub_1CAC297D8(v43, v179, type metadata accessor for EventAttendeeModelObject);
      sub_1CAD4EA84();
      EventAttendeeModelObject.hash(into:)();
      v46 = sub_1CAD4EAC4();
      v47 = -1 << *(a2 + 32);
      a1 = v46 & ~v47;
      v38 = a1 >> 6;
      v2 = 1 << a1;
      v48 = &qword_1EC465450;
      if (((1 << a1) & v184[a1 >> 6]) != 0)
      {
        v183 = ~v47;
        v49 = v40[1];
        v182 = *v40;
        v50 = *(v168 + 72);
        v178 = v50;
        v177 = v49;
        do
        {
          sub_1CAC29A3C(*(a2 + 48) + v50 * a1, v26, type metadata accessor for EventAttendeeModelObject);
          v51 = v26[1];
          if (v51)
          {
            if (!v49)
            {
              goto LABEL_20;
            }

            v52 = *v26 == v182 && v51 == v49;
            if (!v52 && (sub_1CAD4E9E4() & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else if (v49)
          {
            goto LABEL_20;
          }

          v53 = v26[3];
          v54 = v40[3];
          if (v53)
          {
            if (!v54 || (v26[2] != v40[2] || v53 != v54) && (sub_1CAD4E9E4() & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else if (v54)
          {
            goto LABEL_20;
          }

          v55 = v26[5];
          v56 = v40[5];
          if (v55)
          {
            if (!v56 || (v26[4] != v40[4] || v55 != v56) && (sub_1CAD4E9E4() & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else if (v56)
          {
            goto LABEL_20;
          }

          v57 = v181[7];
          v58 = v40;
          v59 = *(v172 + 48);
          v60 = v171;
          sub_1CAB23A9C(v26 + v57, v171, v48);
          v180 = v59;
          sub_1CAB23A9C(v58 + v57, &v59[v60], v48);
          v61 = v48;
          v62 = *v169;
          v63 = v173;
          if ((*v169)(v60, 1, v173) == 1)
          {
            v64 = v62(&v180[v60], 1, v63);
            a2 = v170;
            v49 = v177;
            if (v64 != 1)
            {
              goto LABEL_47;
            }

            v158 = v62;
            v48 = &qword_1EC465450;
            sub_1CAB21B68(v60, &qword_1EC465450);
            v50 = v178;
            v40 = v179;
          }

          else
          {
            sub_1CAB23A9C(v60, v176, v61);
            if (v62(&v180[v60], 1, v63) == 1)
            {
              (*v159)(v176, v63);
              a2 = v170;
              v49 = v177;
LABEL_47:
              sub_1CAB21B68(v60, &qword_1EC463DA0);
              v50 = v178;
              v40 = v179;
              v48 = &qword_1EC465450;
              goto LABEL_20;
            }

            v158 = v62;
            v65 = v157;
            (*v156)(v157, &v180[v60], v63);
            sub_1CAC296FC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
            LODWORD(v180) = sub_1CAD4DED4();
            v66 = *v159;
            (*v159)(v65, v63);
            v66(v176, v63);
            sub_1CAB21B68(v60, v61);
            a2 = v170;
            v50 = v178;
            v40 = v179;
            v48 = v61;
            v49 = v177;
            if ((v180 & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          v67 = v181[8];
          v68 = *(v26 + v67);
          v69 = *(v26 + v67 + 8);
          v70 = (v40 + v67);
          if ((v68 != *v70 || v69 != v70[1]) && (sub_1CAD4E9E4() & 1) == 0 || *(v26 + v181[9]) != *(v40 + v181[9]))
          {
            goto LABEL_20;
          }

          v71 = v181[10];
          v72 = (v26 + v71);
          v73 = *(v26 + v71 + 8);
          v74 = (v40 + v71);
          v75 = v74[1];
          if (v73)
          {
            if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_1CAD4E9E4() & 1) == 0)
            {
              goto LABEL_20;
            }
          }

          else if (v75)
          {
            goto LABEL_20;
          }

          if (*(v26 + v181[11]) == *(v40 + v181[11]) && *(v26 + v181[12]) == *(v40 + v181[12]) && *(v26 + v181[13]) == *(v40 + v181[13]))
          {
            v76 = v181[14];
            v77 = (v26 + v76);
            v78 = *(v26 + v76 + 8);
            v79 = (v40 + v76);
            v80 = v79[1];
            if (v78)
            {
              if (v80 && (*v77 == *v79 && v78 == v80 || (sub_1CAD4E9E4() & 1) != 0))
              {
                goto LABEL_76;
              }
            }

            else if (!v80)
            {
              goto LABEL_76;
            }
          }

LABEL_20:
          sub_1CAC29750(v26, type metadata accessor for EventAttendeeModelObject);
          a1 = (a1 + 1) & v183;
          v38 = a1 >> 6;
          v2 = 1 << a1;
        }

        while ((v184[a1 >> 6] & (1 << a1)) != 0);
      }

      sub_1CAC29750(v40, type metadata accessor for EventAttendeeModelObject);
      v36 = v175;
      v34 = v174;
      a1 = v163;
      v31 = v162;
      goto LABEL_7;
    }

    v37 = *(v31 + 8 * v38);
    v41 = (v41 + 1);
    if (v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_76:
  sub_1CAC29750(v26, type metadata accessor for EventAttendeeModelObject);
  v82 = sub_1CAC29750(v40, type metadata accessor for EventAttendeeModelObject);
  v83 = *(a2 + 32);
  v177 = ((1 << v83) + 63) >> 6;
  v84 = 8 * v177;
  if ((v83 & 0x3Fu) > 0xD)
  {
    goto LABEL_155;
  }

LABEL_77:
  v176 = &v148;
  MEMORY[0x1EEE9AC00](v82);
  v86 = &v148 - ((v85 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v86, v184, v85);
  v87 = *&v86[8 * v38] & ~v2;
  v180 = v86;
  *&v86[8 * v38] = v87;
  v179 = (*(a2 + 16) - 1);
  v88 = v151;
  a1 = v154;
  while (2)
  {
    v38 = v163;
LABEL_80:
    v89 = v162;
    v90 = v155;
    v91 = v175;
    v92 = v174;
    do
    {
      if (!v92)
      {
        if (v90 <= v91 + 1)
        {
          v94 = v91 + 1;
        }

        else
        {
          v94 = v90;
        }

        v95 = (v94 - 1);
        while (1)
        {
          v93 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          if (v93 >= v90)
          {
            v97 = 0;
            v98 = 1;
            v91 = v95;
            goto LABEL_92;
          }

          v92 = *(v89 + 8 * v93);
          v91 = (v91 + 1);
          if (v92)
          {
            v91 = v93;
            goto LABEL_91;
          }
        }

        __break(1u);
LABEL_155:
        v146 = v84;

        v147 = v146;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v88 = swift_slowAlloc();
          memcpy(v88, v184, v147);
          v124 = v149;
          a2 = sub_1CAC27720(v88, v177, v170, a1, &v185);

          if (v124)
          {
            goto LABEL_160;
          }

          MEMORY[0x1CCAA9440](v88, -1, -1);
LABEL_153:
          sub_1CAC297D0();
          return a2;
        }

        a2 = v170;

        goto LABEL_77;
      }

      v93 = v91;
LABEL_91:
      v96 = __clz(__rbit64(v92));
      v97 = (v92 - 1) & v92;
      sub_1CAC29A3C(*(v38 + 48) + (v96 | (v93 << 6)) * v178, v88, type metadata accessor for EventAttendeeModelObject);
      v98 = 0;
LABEL_92:
      v99 = v181;
      v161(v88, v98, 1, v181);
      v185 = v38;
      v186 = v89;
      v187 = v167;
      v188 = v91;
      v189 = v97;
      if (v160(v88, 1, v99) == 1)
      {
        sub_1CAB21B68(v88, &qword_1EC464E38);
        a2 = sub_1CAC28160(v180, v177, v179, a2);
        goto LABEL_153;
      }

      v174 = v97;
      v175 = v91;
      sub_1CAC297D8(v88, a1, type metadata accessor for EventAttendeeModelObject);
      sub_1CAD4EA84();
      EventAttendeeModelObject.hash(into:)();
      v100 = sub_1CAD4EAC4();
      v101 = -1 << *(a2 + 32);
      v102 = v100 & ~v101;
      v103 = v102 >> 6;
      v104 = 1 << v102;
      if (((1 << v102) & v184[v102 >> 6]) == 0)
      {
LABEL_79:
        a1 = v154;
        sub_1CAC29750(v154, type metadata accessor for EventAttendeeModelObject);
        v38 = v163;
        v88 = v151;
        goto LABEL_80;
      }

      v2 = ~v101;
      v105 = *a1;
      v106 = *(a1 + 8);
      v107 = v153;
      v183 = v105;
      while (1)
      {
        sub_1CAC29A3C(*(a2 + 48) + v102 * v178, v107, type metadata accessor for EventAttendeeModelObject);
        v108 = v107[1];
        v109 = v107;
        if (v108)
        {
          if (!v106)
          {
            goto LABEL_96;
          }

          if (*v107 != v105 || v108 != v106)
          {
            v111 = sub_1CAD4E9E4();
            v109 = v153;
            if ((v111 & 1) == 0)
            {
              goto LABEL_96;
            }
          }
        }

        else if (v106)
        {
          goto LABEL_96;
        }

        v112 = v109[3];
        v113 = v154[3];
        if (v112)
        {
          if (!v113)
          {
            goto LABEL_96;
          }

          if (v109[2] != v154[2] || v112 != v113)
          {
            v114 = sub_1CAD4E9E4();
            v109 = v153;
            if ((v114 & 1) == 0)
            {
              goto LABEL_96;
            }
          }
        }

        else if (v113)
        {
          goto LABEL_96;
        }

        v115 = v109[5];
        v116 = v154[5];
        if (v115)
        {
          if (!v116)
          {
            goto LABEL_96;
          }

          if (v109[4] != v154[4] || v115 != v116)
          {
            v117 = sub_1CAD4E9E4();
            v109 = v153;
            if ((v117 & 1) == 0)
            {
              goto LABEL_96;
            }
          }
        }

        else if (v116)
        {
          goto LABEL_96;
        }

        v118 = v181[7];
        v119 = *(v172 + 48);
        v120 = v152;
        sub_1CAB23A9C(v109 + v118, v152, &qword_1EC465450);
        sub_1CAB23A9C(v154 + v118, v120 + v119, &qword_1EC465450);
        v121 = v173;
        v122 = v158;
        if (v158(v120, 1, v173) == 1)
        {
          v123 = v122(v120 + v119, 1, v121);
          a2 = v170;
          v124 = 1;
          if (v123 != 1)
          {
            goto LABEL_123;
          }

          sub_1CAB21B68(v120, &qword_1EC465450);
          v109 = v153;
          v105 = v183;
        }

        else
        {
          sub_1CAB23A9C(v120, v150, &qword_1EC465450);
          if (v122(v120 + v119, 1, v121) == 1)
          {
            (*v159)(v150, v121);
            a2 = v170;
LABEL_123:
            sub_1CAB21B68(v120, &qword_1EC463DA0);
            v109 = v153;
            v105 = v183;
            goto LABEL_96;
          }

          v125 = v157;
          (*v156)(v157, (v120 + v119), v121);
          sub_1CAC296FC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
          LODWORD(v182) = sub_1CAD4DED4();
          v126 = *v159;
          (*v159)(v125, v121);
          v126(v150, v121);
          sub_1CAB21B68(v152, &qword_1EC465450);
          a2 = v170;
          v109 = v153;
          v124 = 1;
          v105 = v183;
          if ((v182 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        v127 = v181[8];
        v128 = *(v109 + v127);
        v129 = *(v109 + v127 + 8);
        v130 = (v154 + v127);
        if (v128 != *v130 || v129 != v130[1])
        {
          v131 = sub_1CAD4E9E4();
          v109 = v153;
          if ((v131 & 1) == 0)
          {
            goto LABEL_96;
          }
        }

        if (*(v109 + v181[9]) != *(v154 + v181[9]))
        {
          goto LABEL_96;
        }

        v132 = v181[10];
        v133 = (v109 + v132);
        v134 = *(v109 + v132 + 8);
        v135 = (v154 + v132);
        v136 = v135[1];
        if (v134)
        {
          if (!v136)
          {
            goto LABEL_96;
          }

          if (*v133 != *v135 || v134 != v136)
          {
            v137 = sub_1CAD4E9E4();
            v109 = v153;
            if ((v137 & 1) == 0)
            {
              goto LABEL_96;
            }
          }
        }

        else if (v136)
        {
          goto LABEL_96;
        }

        if (*(v109 + v181[11]) != *(v154 + v181[11]) || *(v109 + v181[12]) != *(v154 + v181[12]) || *(v109 + v181[13]) != *(v154 + v181[13]))
        {
          goto LABEL_96;
        }

        v138 = v181[14];
        v139 = (v109 + v138);
        v140 = *(v109 + v138 + 8);
        v141 = (v154 + v138);
        v142 = v141[1];
        if (v140)
        {
          break;
        }

        if (!v142)
        {
          goto LABEL_146;
        }

LABEL_96:
        v107 = v109;
        sub_1CAC29750(v109, type metadata accessor for EventAttendeeModelObject);
        v102 = (v102 + 1) & v2;
        v103 = v102 >> 6;
        v104 = 1 << v102;
        if ((v184[v102 >> 6] & (1 << v102)) == 0)
        {
          goto LABEL_79;
        }
      }

      if (!v142)
      {
        goto LABEL_96;
      }

      if (*v139 != *v141 || v140 != v142)
      {
        v143 = sub_1CAD4E9E4();
        v109 = v153;
        if ((v143 & 1) == 0)
        {
          goto LABEL_96;
        }
      }

LABEL_146:
      sub_1CAC29750(v109, type metadata accessor for EventAttendeeModelObject);
      a1 = v154;
      sub_1CAC29750(v154, type metadata accessor for EventAttendeeModelObject);
      v144 = *&v180[8 * v103];
      *&v180[8 * v103] = v144 & ~v104;
      v52 = (v144 & v104) == 0;
      v38 = v163;
      v88 = v151;
      v89 = v162;
      v90 = v155;
      v91 = v175;
      v92 = v174;
    }

    while (v52);
    v145 = __OFSUB__(v179, 1);
    v179 = (v179 - 1);
    if (!v145)
    {
      a2 = v170;
      v88 = v151;
      a1 = v154;
      if (!v179)
      {

        a2 = MEMORY[0x1E69E7CD0];
        goto LABEL_153;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_160:

  result = MEMORY[0x1CCAA9440](v88, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1CAC274EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for EventAttendeeModelObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  sub_1CAD4EA84();
  EventAttendeeModelObject.hash(into:)();
  v10 = sub_1CAD4EAC4();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1CAC29A3C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for EventAttendeeModelObject);
      v15 = _s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_1CAC29750(v8, type metadata accessor for EventAttendeeModelObject);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24 = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CACCE940();
      v19 = v24;
    }

    a2 = v23;
    sub_1CAC297D8(*(v19 + 48) + v14 * v12, v23, type metadata accessor for EventAttendeeModelObject);
    sub_1CAC283C0(v12);
    v16 = 0;
    *v17 = v24;
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_1CAC27720(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v78 = a2;
  v92 = sub_1CAD4BFF4();
  v9 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92 - 8);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v94 = &v77 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v77 - v15;
  v98 = type metadata accessor for EventAttendeeModelObject(0);
  v16 = MEMORY[0x1EEE9AC00](v98);
  v18 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v99 = (&v77 - v19);
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21) & ((-1 << a4) - 1);
  v80 = a1;
  *(a1 + v21) = v22;
  v79 = v20 - 1;
  v86 = (v23 + 56);
  v88 = v23;
  v85 = (v23 + 48);
  v96 = a3 + 56;
  v89 = (v9 + 48);
  v81 = (v9 + 32);
  v82 = (v9 + 8);
  v93 = a3;
  v84 = a5;
  do
  {
    while (1)
    {
LABEL_3:
      v25 = *a5;
      v24 = a5[1];
      v27 = a5[2];
      v26 = a5[3];
      v28 = a5[4];
      v102 = v27;
      if (v28)
      {
        v29 = v26;
LABEL_12:
        v33 = (v28 - 1) & v28;
        v34 = v87;
        sub_1CAC29A3C(*(v25 + 48) + *(v88 + 72) * (__clz(__rbit64(v28)) | (v29 << 6)), v87, type metadata accessor for EventAttendeeModelObject);
        v35 = 0;
        v32 = v29;
      }

      else
      {
        v30 = (v27 + 64) >> 6;
        v31 = v30 <= v26 + 1 ? v26 + 1 : (v27 + 64) >> 6;
        v32 = v31 - 1;
        while (1)
        {
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            return MEMORY[0x1E69E7CD0];
          }

          if (v29 >= v30)
          {
            break;
          }

          v28 = *(v24 + 8 * v29);
          ++v26;
          if (v28)
          {
            goto LABEL_12;
          }
        }

        v33 = 0;
        v35 = 1;
        v34 = v87;
      }

      v36 = v98;
      (*v86)(v34, v35, 1, v98);
      *a5 = v25;
      a5[1] = v24;
      a5[2] = v102;
      a5[3] = v32;
      a5[4] = v33;
      if ((*v85)(v34, 1, v36) == 1)
      {
        sub_1CAB21B68(v34, &qword_1EC464E38);

        return sub_1CAC28160(v80, v78, v79, a3);
      }

      v37 = v99;
      sub_1CAC297D8(v34, v99, type metadata accessor for EventAttendeeModelObject);
      sub_1CAD4EA84();
      EventAttendeeModelObject.hash(into:)();
      v38 = sub_1CAD4EAC4();
      v39 = -1 << *(a3 + 32);
      v40 = v38 & ~v39;
      v41 = v40 >> 6;
      v42 = v96;
      v43 = 1 << v40;
      if (((1 << v40) & *(v96 + 8 * (v40 >> 6))) != 0)
      {
        break;
      }

LABEL_2:
      sub_1CAC29750(v37, type metadata accessor for EventAttendeeModelObject);
      a5 = v84;
    }

    v101 = ~v39;
    v44 = v37[1];
    v100 = *v37;
    v102 = *(v88 + 72);
    v45 = &qword_1EC465450;
    v95 = v44;
    while (1)
    {
      sub_1CAC29A3C(*(a3 + 48) + v102 * v40, v18, type metadata accessor for EventAttendeeModelObject);
      v46 = v18[1];
      if (v46)
      {
        if (!v44)
        {
          goto LABEL_17;
        }

        v47 = *v18 == v100 && v46 == v44;
        if (!v47 && (sub_1CAD4E9E4() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v44)
      {
        goto LABEL_17;
      }

      v48 = v18[3];
      v49 = v37[3];
      if (v48)
      {
        if (!v49 || (v18[2] != v37[2] || v48 != v49) && (sub_1CAD4E9E4() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v49)
      {
        goto LABEL_17;
      }

      v50 = v18[5];
      v51 = v37[5];
      if (v50)
      {
        if (!v51 || (v18[4] != v37[4] || v50 != v51) && (sub_1CAD4E9E4() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v51)
      {
        goto LABEL_17;
      }

      v52 = v98[7];
      v53 = v90;
      v54 = *(v91 + 48);
      sub_1CAB23A9C(v18 + v52, v90, v45);
      v97 = v54;
      sub_1CAB23A9C(v99 + v52, v53 + v54, v45);
      v55 = *v89;
      v56 = v45;
      v57 = v92;
      if ((*v89)(v53, 1, v92) == 1)
      {
        v58 = v55(v53 + v97, 1, v57);
        a3 = v93;
        v44 = v95;
        if (v58 != 1)
        {
          goto LABEL_44;
        }

        v45 = &qword_1EC465450;
        sub_1CAB21B68(v53, &qword_1EC465450);
        v37 = v99;
        v42 = v96;
      }

      else
      {
        sub_1CAB23A9C(v53, v94, v56);
        if (v55(v53 + v97, 1, v57) == 1)
        {
          (*v82)(v94, v57);
          a3 = v93;
          v44 = v95;
LABEL_44:
          sub_1CAB21B68(v53, &qword_1EC463DA0);
          v45 = &qword_1EC465450;
          v37 = v99;
          v42 = v96;
          goto LABEL_17;
        }

        (*v81)(v83, v53 + v97, v57);
        sub_1CAC296FC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
        LODWORD(v97) = sub_1CAD4DED4();
        v59 = *v82;
        (*v82)(v83, v57);
        v59(v94, v57);
        sub_1CAB21B68(v53, v56);
        a3 = v93;
        v45 = v56;
        v37 = v99;
        v44 = v95;
        v42 = v96;
        if ((v97 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v60 = v98[8];
      v61 = *(v18 + v60);
      v62 = *(v18 + v60 + 8);
      v63 = (v37 + v60);
      if ((v61 != *v63 || v62 != v63[1]) && (sub_1CAD4E9E4() & 1) == 0 || *(v18 + v98[9]) != *(v37 + v98[9]))
      {
        goto LABEL_17;
      }

      v64 = v98[10];
      v65 = (v18 + v64);
      v66 = *(v18 + v64 + 8);
      v67 = (v37 + v64);
      v68 = v67[1];
      if (v66)
      {
        if (!v68 || (*v65 != *v67 || v66 != v68) && (sub_1CAD4E9E4() & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v68)
      {
        goto LABEL_17;
      }

      if (*(v18 + v98[11]) != *(v37 + v98[11]) || *(v18 + v98[12]) != *(v37 + v98[12]) || *(v18 + v98[13]) != *(v37 + v98[13]))
      {
        goto LABEL_17;
      }

      v69 = v98[14];
      v70 = (v18 + v69);
      v71 = *(v18 + v69 + 8);
      v72 = (v37 + v69);
      v73 = v72[1];
      if (v71)
      {
        break;
      }

      if (!v73)
      {
        goto LABEL_67;
      }

LABEL_17:
      sub_1CAC29750(v18, type metadata accessor for EventAttendeeModelObject);
      v40 = (v40 + 1) & v101;
      v41 = v40 >> 6;
      v43 = 1 << v40;
      if ((*(v42 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
      {
        goto LABEL_2;
      }
    }

    if (!v73 || (*v70 != *v72 || v71 != v73) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_67:
    sub_1CAC29750(v18, type metadata accessor for EventAttendeeModelObject);
    result = sub_1CAC29750(v37, type metadata accessor for EventAttendeeModelObject);
    v75 = v80[v41];
    v80[v41] = v75 & ~v43;
    a5 = v84;
  }

  while ((v75 & v43) == 0);
  v76 = v79 - 1;
  if (!__OFSUB__(v79, 1))
  {
    --v79;
    if (!v76)
    {
      return MEMORY[0x1E69E7CD0];
    }

    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC28160(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E90);
  result = sub_1CAD4E674();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v25 = result + 56;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v18 = a4;
    v19 = *(a4 + 48);
    v20 = *(v26 + 72);
    sub_1CAC29A3C(v19 + v20 * (v15 | (v14 << 6)), v10, type metadata accessor for EventAttendeeModelObject);
    sub_1CAD4EA84();
    EventAttendeeModelObject.hash(into:)();
    sub_1CAD4EAC4();
    v21 = v25;
    v22 = sub_1CAD4E5E4();
    *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = sub_1CAC297D8(v10, *(v11 + 48) + v22 * v20, type metadata accessor for EventAttendeeModelObject);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v18;
    if (!a3)
    {
LABEL_18:

      return v11;
    }
  }

  v16 = v14;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_18;
    }

    v17 = a1[v14];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1CAC283C0(unint64_t a1)
{
  v22 = type metadata accessor for EventAttendeeModelObject(0);
  v3 = *(v22 - 8);
  result = MEMORY[0x1EEE9AC00](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1CAD4E5D4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = (v12 + 1) & v11;
      v14 = *(v3 + 72);
      while (1)
      {
        v15 = v14 * v10;
        sub_1CAC29A3C(*(v7 + 48) + v14 * v10, v6, type metadata accessor for EventAttendeeModelObject);
        sub_1CAD4EA84();
        EventAttendeeModelObject.hash(into:)();
        v16 = sub_1CAD4EAC4();
        sub_1CAC29750(v6, type metadata accessor for EventAttendeeModelObject);
        v17 = v16 & v11;
        if (a1 >= v13)
        {
          break;
        }

        if (v17 < v13)
        {
          goto LABEL_11;
        }

LABEL_12:
        v18 = v14 * a1;
        if ((v14 * a1) < v15 || *(v7 + 48) + v14 * a1 >= *(v7 + 48) + v15 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v10;
          if (v18 == v15)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v10;
LABEL_6:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (v17 < v13)
      {
        goto LABEL_6;
      }

LABEL_11:
      if (a1 < v17)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }

LABEL_16:

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v7 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v21;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1CAC28650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EC0);
    v3 = sub_1CAD4E7D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CAC1628C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CAC28754(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EA0);
    v7 = sub_1CAD4E7D4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1CAB23A9C(v9, v5, &qword_1EC464E98);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1CAC1628C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for EventAttendeeModelObject(0);
      result = sub_1CAC297D8(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for EventAttendeeModelObject);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CAC2893C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465AB0);
    v3 = sub_1CAD4E7D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1CAC1628C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CAC28A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EB0);
    v3 = sub_1CAD4E7D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1CAB23A9C(v4, &v11, &qword_1EC464558);
      v5 = v11;
      result = sub_1CAC16304(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1CABD3D54(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1CAC28B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E78);
    v3 = sub_1CAD4E7D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1CAC16398(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1CAC28C64(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[5];
  v18[1] = a1[4];
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  sub_1CAB23A9C(a1 + v8[7], v4, &qword_1EC465450);
  if (v5)
  {
    v9 = sub_1CAD4DF54();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = 0;
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v9 = 0;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = sub_1CAD4DF54();
  if (v7)
  {
LABEL_4:
    v11 = sub_1CAD4DF54();
    goto LABEL_8;
  }

LABEL_7:
  v11 = 0;
LABEL_8:
  v12 = sub_1CAD4BFF4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v4, 1, v12) != 1)
  {
    v14 = sub_1CAD4BFB4();
    (*(v13 + 8))(v4, v12);
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6966968]) initWithName:v9 emailAddress:v10 phoneNumber:v11 url:v14];

  if (v15)
  {
    [v15 setParticipantStatus_];
    [v15 setParticipantRole_];
    [v15 setParticipantType_];
    v16 = *(a1 + v8[14] + 8);
    v17 = v15;
    if (v16)
    {
      v16 = sub_1CAD4DF54();
    }

    [v15 setComment_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CAC28EFC(uint64_t a1)
{
  v3 = type metadata accessor for EventAttendeeModelObject(0);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v19 = v1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1CAD4E754();
    v23 = a1 + 56;
    result = sub_1CAD4E5C4();
    v7 = result;
    v8 = 0;
    v24 = *(a1 + 36);
    v20 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v23 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v11 = v21;
      sub_1CAC29A3C(*(a1 + 48) + *(v22 + 72) * v7, v21, type metadata accessor for EventAttendeeModelObject);
      sub_1CAC28C64(v11);
      sub_1CAC29750(v11, type metadata accessor for EventAttendeeModelObject);
      sub_1CAD4E734();
      sub_1CAD4E764();
      sub_1CAD4E774();
      result = sub_1CAD4E744();
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v12 = *(v23 + 8 * v10);
      if ((v12 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v24 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v7 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v20 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1CAC29744(v7, v24, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_4;
          }
        }

        result = sub_1CAC29744(v7, v24, 0);
      }

LABEL_4:
      ++v8;
      v7 = v9;
      if (v8 == v5)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC291EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1CAD4C1D4();
  v2[4] = swift_task_alloc();
  v3 = sub_1CAD4BF74();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_1CAD4DF44();
  v2[8] = swift_task_alloc();
  v4 = sub_1CAD4BF84();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CAC29384, 0, 0);
}

uint64_t sub_1CAC29384()
{
  v1 = [*(v0 + 16) requirementsToMoveToCalendar_];
  if ((v1 & 6) != 0)
  {
    sub_1CAC23A1C();
    swift_allocError();
    *v2 = 4;
    swift_willThrow();

    v3 = *(v0 + 8);
  }

  else
  {
    if (v1 != 1)
    {
      v17 = v1;
      sub_1CAD4DEE4();
      if (qword_1EC462B10 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 104);
      v14 = *(v0 + 112);
      v12 = *(v0 + 96);
      v4 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 72);
      v5 = *(v0 + 56);
      v7 = *(v0 + 40);
      v6 = *(v0 + 48);
      v11 = __swift_project_value_buffer(v7, qword_1EC47D850);
      v8 = *(v6 + 16);
      v8(v5, v11, v7);
      sub_1CAD4C184();
      sub_1CAD4BF94();
      sub_1CAC24B90(v17);
      sub_1CAD4DEE4();
      v8(v5, v11, v7);
      sub_1CAD4C184();
      sub_1CAD4BF94();
      sub_1CAD4DEE4();
      v8(v5, v11, v7);
      sub_1CAD4C184();
      sub_1CAD4BF94();
      v9 = *(v4 + 8);
      v9(v15, v16);
      v9(v12, v16);
      v9(v13, v16);
      v9(v14, v16);
    }

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_1CAC296FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC29744(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1CAC29750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAC297D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CAC29840()
{
  result = qword_1EDA5F790;
  if (!qword_1EDA5F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA5F790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventKitEditDataSourceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventKitEditDataSourceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CAC299E8()
{
  result = qword_1EC464EB8;
  if (!qword_1EC464EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464EB8);
  }

  return result;
}

uint64_t sub_1CAC29A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id EKSourceModelWrapper.constraints.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 constraints];
  *a1 = result;
  return result;
}

id EKSourceModelWrapper.isManaged.getter()
{
  v1 = *v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result sourceIsManaged_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t EKSourceModelWrapper.appGroupID.getter()
{
  v1 = [*v0 appGroupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

uint64_t EKSourceModelWrapper.ownerAddressSet.getter()
{
  v1 = [*v0 ownerAddresses];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1CAD4E334();

  return v3;
}

uint64_t EKSourceModelWrapper.ownerAddresses.getter()
{
  v1 = [*v0 ownerAddresses];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1CAD4E334();

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1CAC2A184(*(v3 + 16), 0);
  v6 = sub_1CAC2A628(&v8, v5 + 4, v4, v3);
  result = sub_1CAC297D0();
  if (v6 == v4)
  {
    return v5;
  }

  __break(1u);
  return result;
}

id sub_1CAC29E28(SEL *a1, SEL *a2)
{
  v4 = *v2;
  v5 = [*v2 *a1];
  if (v5)
  {
    v6 = v5;
LABEL_5:
    [v6 doubleValue];
    v10 = v9;

    return v10;
  }

  result = [v4 eventStore];
  if (result)
  {
    v8 = result;
    v6 = [result *a2];

    if (v6)
    {
      goto LABEL_5;
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC29EF4()
{
  v1 = [*v0 appGroupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4DF94();

  return v3;
}

id sub_1CAC29F90()
{
  v1 = *v0;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result sourceIsManaged_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC2A040()
{
  v1 = [*v0 ownerAddresses];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1CAD4E334();

  return v3;
}

void sub_1CAC2A0F0(uint64_t *a1@<X8>)
{
  v3 = [*v1 sourceIdentifier];
  v4 = sub_1CAD4DF94();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_1CAC2A148@<X0>(void *a1@<X8>)
{
  result = [*v1 constraints];
  *a1 = result;
  return result;
}

void *sub_1CAC2A184(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1CAC2A208(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1CAC2A290(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC464EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1CAC2A328(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CAC2A480(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 144 * (v17 | (v12 << 6)));
      v28[0] = *v18;
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v28[3] = v18[3];
      v28[4] = v19;
      v28[1] = v21;
      v28[2] = v20;
      v23 = v18[6];
      v22 = v18[7];
      v24 = v18[5];
      *(v29 + 10) = *(v18 + 122);
      v28[6] = v23;
      v29[0] = v22;
      v28[5] = v24;
      memmove(v11, v18, 0x8AuLL);
      if (v14 == v10)
      {
        sub_1CAC17240(v28, v27);
        goto LABEL_24;
      }

      v11 += 144;
      sub_1CAC17240(v28, v27);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = (63 - v7) >> 6;
    }

    v12 = v26 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1CAC2A628(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1CAC2A780(uint64_t a1)
{
  result = sub_1CAC2A7A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CAC2A7A8()
{
  result = qword_1EDA5F7A8;
  if (!qword_1EDA5F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA5F7A8);
  }

  return result;
}

uint64_t sub_1CAC2A814()
{
  swift_getAssociatedTypeWitness();
  result = sub_1CAD4DB14();
  if (v1 <= 0x3F)
  {
    result = sub_1CAD4E4D4();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1CAC2A958(void (*a1)(uint64_t))
{
  v3 = *v1;
  swift_getAssociatedTypeWitness();
  v4 = sub_1CAD4DB14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  (*(v5 + 16))(&v9 - v6, &v1[*(v3 + 96)], v4);
  a1(v4);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1CAC2AAB8()
{
  v1 = *(*v0 + 96);
  swift_getAssociatedTypeWitness();
  v2 = sub_1CAD4DB14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 136);
  v4 = sub_1CAD4E4D4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1CAC2AC44()
{
  sub_1CAC2AAB8();

  return swift_deallocClassInstance();
}

uint64_t sub_1CAC2ACB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CAC2AD08()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CAC2ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CAD4E9E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CAC2AE30(uint64_t a1)
{
  v2 = sub_1CAC2C4D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC2AE6C(uint64_t a1)
{
  v2 = sub_1CAC2C4D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC2AEA8()
{
  if (*v0)
  {
    return 0x6574756C6F736261;
  }

  else
  {
    return 0x65766974616C6572;
  }
}

uint64_t sub_1CAC2AEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65766974616C6572 && a2 == 0xE800000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC2AFB8(uint64_t a1)
{
  v2 = sub_1CAC2C41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC2AFF4(uint64_t a1)
{
  v2 = sub_1CAC2C41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC2B030()
{
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](0);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC2B074()
{
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](0);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC2B0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CAD4E9E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CAC2B14C(uint64_t a1)
{
  v2 = sub_1CAC2C528();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC2B188(uint64_t a1)
{
  v2 = sub_1CAC2C528();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventAlarmTrigger.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464FD0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v24 - v3;
  v4 = sub_1CAD4C0F4();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464FD8);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464FE0);
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v24 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC2C41C();
  sub_1CAD4EB04();
  sub_1CAC2C470(v32, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v28;
    v16 = v26;
    v17 = v11;
    v18 = v29;
    (*(v28 + 32))(v26, v17, v29);
    v35 = 1;
    sub_1CAC2C4D4();
    v19 = v27;
    v20 = v33;
    sub_1CAD4E8F4();
    sub_1CAC2C684(&qword_1EC462400, MEMORY[0x1E6969530]);
    v21 = v31;
    sub_1CAD4E984();
    (*(v30 + 8))(v19, v21);
    (*(v15 + 8))(v16, v18);
    return (*(v12 + 8))(v14, v20);
  }

  else
  {
    v34 = 0;
    sub_1CAC2C528();
    v23 = v33;
    sub_1CAD4E8F4();
    sub_1CAD4E954();
    (*(v25 + 8))(v8, v6);
    return (*(v12 + 8))(v14, v23);
  }
}

uint64_t EventAlarmTrigger.hash(into:)()
{
  v1 = sub_1CAD4C0F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CAC2C470(v0, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v4, v7, v1);
    MEMORY[0x1CCAA7D10](1);
    sub_1CAC2C684(&qword_1EC4623F8, MEMORY[0x1E6969530]);
    sub_1CAD4DEB4();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    v9 = *v7;
    MEMORY[0x1CCAA7D10](0);
    v10 = 0.0;
    if (v9 != 0.0)
    {
      v10 = v9;
    }

    return MEMORY[0x1CCAA7D30](*&v10);
  }
}

uint64_t EventAlarmTrigger.hashValue.getter()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t EventAlarmTrigger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465000);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v41 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465008);
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465010);
  v51 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for EventAlarmTrigger();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1CAC2C41C();
  v20 = v52;
  sub_1CAD4EAE4();
  if (!v20)
  {
    v42 = v16;
    v43 = v18;
    v52 = v13;
    v21 = v48;
    v22 = v49;
    v23 = v50;
    v24 = v10;
    v25 = v9;
    v26 = sub_1CAD4E8D4();
    if (*(v26 + 16) == 1)
    {
      v41 = v26;
      if (*(v26 + 32))
      {
        v55 = 1;
        sub_1CAC2C4D4();
        v27 = v23;
        sub_1CAD4E804();
        v28 = v51;
        sub_1CAD4C0F4();
        v49 = v7;
        sub_1CAC2C684(&qword_1EC465020, MEMORY[0x1E6969530]);
        v34 = v52;
        v35 = v46;
        sub_1CAD4E8C4();
        (*(v47 + 8))(v27, v35);
        (*(v28 + 8))(v25, v49);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v34;
      }

      else
      {
        v54 = 0;
        sub_1CAC2C528();
        sub_1CAD4E804();
        v32 = v51;
        sub_1CAD4E8A4();
        v38 = v37;
        (*(v45 + 8))(v21, v22);
        (*(v32 + 8))(v9, v7);
        swift_unknownObjectRelease();
        v39 = v42;
        *v42 = v38;
        swift_storeEnumTagMultiPayload();
        v36 = v39;
      }

      v40 = v43;
      sub_1CAC2C57C(v36, v43);
      sub_1CAC2C57C(v40, v44);
    }

    else
    {
      v29 = sub_1CAD4E704();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465018);
      *v31 = v24;
      sub_1CAD4E814();
      sub_1CAD4E6F4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v51 + 8))(v9, v7);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1CAC2BE30()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC2BE64()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC2BEA8()
{
  sub_1CAD4EA84();
  EventAlarmTrigger.hash(into:)();
  return sub_1CAD4EAC4();
}

BOOL EventAlarmModel.isRelative.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1CAC2C5E0(v6);
  }

  return EnumCaseMultiPayload != 1;
}

BOOL EventAlarmModel.isAbsolute.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 8))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_1CAD4C0F4();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  else
  {
    sub_1CAC2C5E0(v6);
  }

  return EnumCaseMultiPayload == 1;
}

uint64_t _s13CalendarUIKit17EventAlarmTriggerO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v30 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for EventAlarmTrigger();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v29 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v29 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v29 - v20);
  sub_1CAC2C470(a1, &v29 - v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = *v21;
    sub_1CAC2C470(a2, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v25 = v22 == *v19;
      return v25 & 1;
    }

    v21 = v19;
  }

  sub_1CAC2C5E0(v21);
  sub_1CAC2C470(a1, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = v16;
LABEL_10:
    sub_1CAC2C5E0(v27);
    v25 = 0;
    return v25 & 1;
  }

  v23 = v30;
  v24 = *(v30 + 32);
  v24(v9, v16, v4);
  sub_1CAC2C470(a2, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v23 + 8))(v9, v4);
    v27 = v13;
    goto LABEL_10;
  }

  v24(v7, v13, v4);
  v25 = sub_1CAD4C0A4();
  v26 = *(v23 + 8);
  v26(v7, v4);
  v26(v9, v4);
  return v25 & 1;
}

uint64_t type metadata accessor for EventAlarmTrigger()
{
  result = qword_1EC462300;
  if (!qword_1EC462300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CAC2C41C()
{
  result = qword_1EC464FE8;
  if (!qword_1EC464FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464FE8);
  }

  return result;
}

uint64_t sub_1CAC2C470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmTrigger();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAC2C4D4()
{
  result = qword_1EC464FF0;
  if (!qword_1EC464FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464FF0);
  }

  return result;
}

unint64_t sub_1CAC2C528()
{
  result = qword_1EC464FF8;
  if (!qword_1EC464FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464FF8);
  }

  return result;
}

uint64_t sub_1CAC2C57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmTrigger();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC2C5E0(uint64_t a1)
{
  v2 = type metadata accessor for EventAlarmTrigger();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAC2C684(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CAC2C6F4()
{
  sub_1CAC2C768();
  if (v0 <= 0x3F)
  {
    sub_1CAC2C798();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1CAC2C768()
{
  result = qword_1EC461F18;
  if (!qword_1EC461F18)
  {
    result = MEMORY[0x1E69E63B0];
    atomic_store(MEMORY[0x1E69E63B0], &qword_1EC461F18);
  }

  return result;
}

void sub_1CAC2C798()
{
  if (!qword_1EC462408)
  {
    v0 = sub_1CAD4C0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC462408);
    }
  }
}

uint64_t getEnumTagSinglePayload for CreateFamilyCalendarViewModel.FamilyCalendarScreens(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CreateFamilyCalendarViewModel.FamilyCalendarScreens(_WORD *result, int a2, int a3)
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

unint64_t sub_1CAC2C8EC()
{
  result = qword_1EC465030;
  if (!qword_1EC465030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465030);
  }

  return result;
}

unint64_t sub_1CAC2C944()
{
  result = qword_1EC465038;
  if (!qword_1EC465038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465038);
  }

  return result;
}

unint64_t sub_1CAC2C99C()
{
  result = qword_1EC465040;
  if (!qword_1EC465040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465040);
  }

  return result;
}

unint64_t sub_1CAC2C9F4()
{
  result = qword_1EC465048;
  if (!qword_1EC465048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465048);
  }

  return result;
}

unint64_t sub_1CAC2CA4C()
{
  result = qword_1EC465050;
  if (!qword_1EC465050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465050);
  }

  return result;
}

unint64_t sub_1CAC2CAA4()
{
  result = qword_1EC465058;
  if (!qword_1EC465058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465058);
  }

  return result;
}

unint64_t sub_1CAC2CAFC()
{
  result = qword_1EC465060;
  if (!qword_1EC465060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465060);
  }

  return result;
}

unint64_t sub_1CAC2CB54()
{
  result = qword_1EC465068;
  if (!qword_1EC465068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465068);
  }

  return result;
}

unint64_t sub_1CAC2CBAC()
{
  result = qword_1EC465070;
  if (!qword_1EC465070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465070);
  }

  return result;
}

uint64_t sub_1CAC2CC1C()
{
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  return *(v0 + 16);
}

uint64_t sub_1CAC2CC8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1CAC2CD04(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC2D958();
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CAC2CDE4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CAC2D958();
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  return sub_1CAC2F1E4(v5 + v3, a1, type metadata accessor for DisplayPerson);
}

uint64_t sub_1CAC2CE90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  return sub_1CAC2F1E4(v3 + v4, a2, type metadata accessor for DisplayPerson);
}

uint64_t sub_1CAC2CF3C(uint64_t a1)
{
  v2 = type metadata accessor for DisplayPerson(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CAC2F1E4(a1, v4, type metadata accessor for DisplayPerson);
  return sub_1CAC2CFDC(v4);
}

uint64_t sub_1CAC2CFDC(void *a1)
{
  v3 = type metadata accessor for DisplayPerson(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  sub_1CAC2F1E4(v1 + v6, v5, type metadata accessor for DisplayPerson);
  v7 = _s13CalendarUIKit13DisplayPersonV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1CAC2F330(v5, type metadata accessor for DisplayPerson);
  if (v7)
  {
    sub_1CAC2F1E4(a1, v5, type metadata accessor for DisplayPerson);
    swift_beginAccess();
    sub_1CAC2F00C(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1CAC2D958();
    sub_1CAD4C414();
  }

  return sub_1CAC2F330(a1, type metadata accessor for DisplayPerson);
}

uint64_t sub_1CAC2D1BC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  sub_1CAC2F070(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1CAC2D228()
{
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  return *(v0 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability);
}

uint64_t sub_1CAC2D2A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v5 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1CAC2D368(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability;
  if ((*(v2 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = result;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1CAC2D958();
  sub_1CAD4C414();
}

uint64_t sub_1CAC2D478(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1CAC2D494()
{
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  sub_1CAB380F0(v1);
  return v1;
}

uint64_t sub_1CAC2D524@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  v5 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1CAC2DA30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1CAB380F0(v4);
}

uint64_t sub_1CAC2D5EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1CAC2DA08;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1CAB380F0(v1);
  sub_1CAC2D958();
  sub_1CAD4C414();
  sub_1CABC6E64(v4);
}

uint64_t sub_1CAC2D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  v4 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  *v3 = a2;
  v3[1] = a3;
  sub_1CAB380F0(a2);
  return sub_1CABC6E64(v4);
}

uint64_t sub_1CAC2D770()
{
  sub_1CAC2F330(v0 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson, type metadata accessor for DisplayPerson);
  sub_1CABC6E64(*(v0 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler));
  v1 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1CAC2D86C()
{
  result = type metadata accessor for DisplayPerson(319);
  if (v1 <= 0x3F)
  {
    result = sub_1CAD4C464();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1CAC2D958()
{
  result = qword_1EC4650A8;
  if (!qword_1EC4650A8)
  {
    type metadata accessor for SingleAttendeeInfoViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4650A8);
  }

  return result;
}

uint64_t sub_1CAC2D9B0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  v4 = *v3;
  *v3 = v1;
  v3[1] = v2;
  sub_1CAB380F0(v1);
  return sub_1CABC6E64(v4);
}

void sub_1CAC2DA58()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__availability;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_1CAC2DA78@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SingleAttendeeInfoView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  *a1 = sub_1CAD4CC94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650D0);
  sub_1CAC2DC4C((a1 + *(v6 + 44)));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v7 = *(v12[1] + 16);

  sub_1CAC2F1E4(v1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleAttendeeInfoView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_1CAC2F24C(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650D8);
  v11 = a1 + *(result + 36);
  *v11 = v7;
  *(v11 + 8) = sub_1CAC2F2B0;
  *(v11 + 16) = v9;
  return result;
}

uint64_t sub_1CAC2DC4C@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650E0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for DisplayPerson(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  sub_1CAD4DBF4();
  v12 = v19;
  swift_getKeyPath();
  v19 = v12;
  sub_1CAC2D958();
  sub_1CAD4C424();

  v13 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  sub_1CAC2F1E4(v12 + v13, v11, type metadata accessor for DisplayPerson);

  v14 = *&v11[*(v9 + 32)];

  sub_1CAC2F330(v11, type metadata accessor for DisplayPerson);
  *v7 = sub_1CAD4CDA4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650E8);
  sub_1CAC2DED4(&v7[*(v15 + 44)]);
  sub_1CAB23A9C(v7, v5, &qword_1EC4650E0);
  *a1 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650F0);
  sub_1CAB23A9C(v5, a1 + *(v16 + 48), &qword_1EC4650E0);

  sub_1CAB21B68(v7, &qword_1EC4650E0);
  sub_1CAB21B68(v5, &qword_1EC4650E0);
}

uint64_t sub_1CAC2DED4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  v53 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v43 - v5;
  v51 = type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView(0);
  v6 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v8;
  v9 = type metadata accessor for DisplayPerson(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CAD4DBF4();
  v12 = v56;
  swift_getKeyPath();
  *&v56 = v12;
  v49 = sub_1CAC2D958();
  sub_1CAD4C424();

  v13 = OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__displayPerson;
  swift_beginAccess();
  sub_1CAC2F1E4(v12 + v13, v11, type metadata accessor for DisplayPerson);

  if (v11[1])
  {
    v14 = *v11;
    v15 = v11[1];
  }

  else
  {
    v15 = v11[3];
    if (v15)
    {
      v14 = v11[2];
    }

    else
    {
      if (qword_1EC462ED8 != -1)
      {
        swift_once();
      }

      v14 = qword_1EC47DFE8;
      v15 = unk_1EC47DFF0;
    }
  }

  sub_1CAC2F330(v11, type metadata accessor for DisplayPerson);
  *&v56 = v14;
  *(&v56 + 1) = v15;
  sub_1CABA6054();
  v16 = sub_1CAD4D444();
  v18 = v17;
  v20 = v19;
  LODWORD(v56) = sub_1CAD4CFC4();
  v21 = sub_1CAD4D3E4();
  v45 = v22;
  v46 = v21;
  v47 = v23;
  v48 = v24;
  sub_1CABA6128(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v25 = v50;
  sub_1CAD4DC04();
  swift_getKeyPath();
  v26 = v54;
  sub_1CAD4DC24();

  v27 = *(v53 + 8);
  v27(v25, v2);
  sub_1CAD4DBF4();
  v28 = v56;
  swift_getKeyPath();
  *&v56 = v28;
  sub_1CAD4C424();

  v29 = *(v28 + 16);

  v30 = v52;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v27(v30, v2);
  v31 = v56;
  v32 = v57;
  v33 = v51;
  *(v26 + *(v51 + 20)) = (v29 & 1) == 0;
  v34 = v58;
  v35 = v26 + *(v33 + 24);
  *v35 = v31;
  *(v35 + 16) = v32;
  *(v35 + 24) = v34;
  v36 = v55;
  sub_1CAC2F1E4(v26, v55, type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView);
  v38 = v45;
  v37 = v46;
  *a1 = v46;
  *(a1 + 8) = v38;
  v39 = v47 & 1;
  *(a1 + 16) = v47 & 1;
  v40 = KeyPath;
  *(a1 + 24) = v48;
  *(a1 + 32) = v40;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650F8);
  sub_1CAC2F1E4(v36, a1 + *(v41 + 48), type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView);
  sub_1CABA4F48(v37, v38, v39);

  sub_1CAC2F330(v26, type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView);
  sub_1CAC2F330(v36, type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView);
  sub_1CABA6128(v37, v38, v39);
}

uint64_t sub_1CAC2E454()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4650B0);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAC2D958();
  sub_1CAD4C424();

  v0 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit27SingleAttendeeInfoViewModel__deleteHandler);
  sub_1CAB380F0(v0);

  if (v0)
  {
    v0(result);
    return sub_1CABC6E64(v0);
  }

  return result;
}

uint64_t sub_1CAC2E51C()
{
  v1 = type metadata accessor for DisplayPerson(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView(0);
  v8 = *(v0 + *(v7 + 20));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465100);
  MEMORY[0x1CCAA6D30](v9);
  if (v8 == 1)
  {
    type metadata accessor for EventAttendeeModelObject(0);
    sub_1CAC2F330(v6, type metadata accessor for DisplayPerson);
    return sub_1CAD4D8F4();
  }

  else
  {
    v11 = (v0 + *(v7 + 24));
    v12 = *v11;
    v13 = *(v11 + 2);
    LOBYTE(v11) = *(v11 + 24);
    v18 = v12;
    v19 = v13;
    v20 = v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465158);
    MEMORY[0x1CCAA6D30](&v16, v14);
    v15 = sub_1CAD35974(v16, v17);
    sub_1CAC2F330(v4, type metadata accessor for DisplayPerson);
    return v15;
  }
}

uint64_t sub_1CAC2E6FC()
{
  v1 = type metadata accessor for DisplayPerson(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView(0);
  v8 = *(v0 + *(v7 + 20));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465100);
  if (v8 == 1)
  {
    MEMORY[0x1CCAA6D30](v9);
    v10 = *&v6[*(type metadata accessor for EventAttendeeModelObject(0) + 44)];
    switch(v10)
    {
      case 4:
        if (qword_1EC462EC8 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EC47DFC8;
        break;
      case 3:
        if (qword_1EC462EC0 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EC47DFB8;
        break;
      case 2:
        if (qword_1EC462EB8 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EC47DFA8;
        break;
      default:
        if (qword_1EC462ED0 != -1)
        {
          swift_once();
        }

        v11 = &qword_1EC47DFD8;
        break;
    }

LABEL_31:
    v16 = *v11;

    v4 = v6;
    goto LABEL_32;
  }

  MEMORY[0x1CCAA6D30](v9);
  v12 = (v0 + *(v7 + 24));
  v13 = *v12;
  v14 = *(v12 + 2);
  LOBYTE(v12) = *(v12 + 24);
  v21 = v13;
  v22 = v14;
  v23 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465158);
  MEMORY[0x1CCAA6D30](&v19, v15);
  if ((v20 & 1) == 0)
  {
    v17 = v19;
    if ([objc_opt_self() showTypeAsBusy_])
    {
      if (qword_1EC462EA0 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EC47DF78;
    }

    else if (v17 == 2)
    {
      if (qword_1EC462EA8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EC47DF88;
    }

    else
    {
      if (qword_1EC462EB0 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EC47DF98;
    }

    v6 = v4;
    goto LABEL_31;
  }

  v16 = 0;
LABEL_32:
  sub_1CAC2F330(v4, type metadata accessor for DisplayPerson);
  return v16;
}

uint64_t sub_1CAC2EA54()
{
  v1 = type metadata accessor for DisplayPerson(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView(0);
  if (*(v0 + *(v4 + 20)) == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465100);
    MEMORY[0x1CCAA6D30](v5);
    v6 = *&v3[*(type metadata accessor for EventAttendeeModelObject(0) + 44)];
    switch(v6)
    {
      case 4:
        v7 = sub_1CAD4D884();
        break;
      case 3:
        v7 = sub_1CAD4D804();
        break;
      case 2:
        v7 = sub_1CAD4D864();
        break;
      default:
        v7 = sub_1CAD4D8B4();
        break;
    }

    v13 = v7;
    sub_1CAC2F330(v3, type metadata accessor for DisplayPerson);
    return v13;
  }

  else
  {
    v8 = (v0 + *(v4 + 24));
    v9 = *v8;
    v10 = *(v8 + 2);
    LOBYTE(v8) = *(v8 + 24);
    v16 = v9;
    v17 = v10;
    v18 = v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465158);
    MEMORY[0x1CCAA6D30](&v14, v11);
    if ((v15 & 1) != 0 || ![objc_opt_self() showTypeAsBusy_])
    {
      return sub_1CAD4D8B4();
    }

    else
    {
      return sub_1CAD4D804();
    }
  }
}

uint64_t sub_1CAC2EBD4()
{
  v1 = type metadata accessor for SingleAttendeeInfoView.AttendeeStatusStringView(0);
  if (*(v0 + *(v1 + 20)) == 1)
  {

    return sub_1CAD4D8B4();
  }

  else
  {
    v3 = (v0 + *(v1 + 24));
    v4 = *v3;
    v5 = *(v3 + 2);
    LOBYTE(v3) = *(v3 + 24);
    v9 = v4;
    v10 = v5;
    v11 = v3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465158);
    MEMORY[0x1CCAA6D30](&v7, v6);
    if ((v8 & 1) != 0 || ![objc_opt_self() showTypeAsBusy_])
    {
      return sub_1CAD4D8B4();
    }

    else
    {
      return sub_1CAD4D804();
    }
  }
}

uint64_t sub_1CAC2ECA8@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_1CAC2E51C();
  v23 = sub_1CAD4D304();
  KeyPath = swift_getKeyPath();
  v21 = sub_1CAC2EA54();
  v20 = swift_getKeyPath();
  sub_1CAC2E6FC();
  sub_1CABA6054();
  v2 = sub_1CAD4D444();
  v4 = v3;
  v6 = v5;
  sub_1CAD4D304();
  v7 = sub_1CAD4D424();
  v9 = v8;
  v11 = v10;

  sub_1CABA6128(v2, v4, v6 & 1);

  sub_1CAC2EBD4();
  v12 = sub_1CAD4D3E4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1CABA6128(v7, v9, v11 & 1);

  *a1 = v24;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v23;
  *(a1 + 24) = v20;
  *(a1 + 32) = v21;
  *(a1 + 40) = v12;
  *(a1 + 48) = v14;
  *(a1 + 56) = v16 & 1;
  *(a1 + 64) = v18;

  sub_1CABA4F48(v12, v14, v16 & 1);

  sub_1CABA6128(v12, v14, v16 & 1);
}

double sub_1CAC2EECC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4CC94();
  v14 = 0;
  sub_1CAC2ECA8(&v8);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v15 = v8;
  v20[1] = v9;
  v20[2] = v10;
  v20[3] = v11;
  v21 = v12;
  v20[0] = v8;
  sub_1CAB23A9C(&v15, v7, &qword_1EC465150);
  sub_1CAB21B68(v20, &qword_1EC465150);
  *&v13[7] = v15;
  *&v13[71] = v19;
  *&v13[55] = v18;
  *&v13[39] = v17;
  *&v13[23] = v16;
  v3 = *v13;
  *(a1 + 33) = *&v13[16];
  v4 = *&v13[48];
  *(a1 + 49) = *&v13[32];
  *(a1 + 65) = v4;
  result = *&v13[63];
  *(a1 + 80) = *&v13[63];
  v6 = v14;
  *a1 = v2;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v6;
  *(a1 + 17) = v3;
  return result;
}

uint64_t sub_1CAC2F00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayPerson(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC2F070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayPerson(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1CAC2F12C()
{
  sub_1CAC2F474(319, &qword_1EC4650C8, type metadata accessor for SingleAttendeeInfoViewModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1CAC2F1E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC2F24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleAttendeeInfoView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC2F2B0()
{
  type metadata accessor for SingleAttendeeInfoView(0);

  return sub_1CAC2E454();
}

uint64_t sub_1CAC2F330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CAC2F3B8()
{
  sub_1CAC2F474(319, &qword_1EC465118, type metadata accessor for DisplayPerson, MEMORY[0x1E6981940]);
  if (v0 <= 0x3F)
  {
    sub_1CAC2F4D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CAC2F474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CAC2F4D8()
{
  if (!qword_1EC465120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465128);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC465120);
    }
  }
}

unint64_t sub_1CAC2F53C()
{
  result = qword_1EC465130;
  if (!qword_1EC465130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4650D8);
    sub_1CAC2F650(&qword_1EC465138, &qword_1EC465140);
    sub_1CAC2F5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465130);
  }

  return result;
}

unint64_t sub_1CAC2F5E0()
{
  result = qword_1EC465148;
  if (!qword_1EC465148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465148);
  }

  return result;
}

uint64_t sub_1CAC2F650(unint64_t *a1, uint64_t *a2)
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

BOOL sub_1CAC2F744(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  (*(a2 + 80))(a1, a2);
  v9 = (*(*(AssociatedTypeWitness - 8) + 48))(v8, 1, AssociatedTypeWitness) != 1;
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_1CAC2F894(uint64_t a1)
{
  v3 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser;
  swift_beginAccess();
  sub_1CAC359E8(v1 + v6, v5, type metadata accessor for LocationModelObject);
  v7 = sub_1CAD1B078(v5, a1);
  sub_1CAC35A50(v5, type metadata accessor for LocationModelObject);
  if (v7)
  {
    sub_1CAC359E8(a1, v5, type metadata accessor for LocationModelObject);
    swift_beginAccess();
    sub_1CABD4254(v5, v1 + v6);
    swift_endAccess();
    sub_1CAC31DC4();
    sub_1CAC35A50(v5, type metadata accessor for LocationModelObject);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1CAC3470C();
    sub_1CAD4C414();
  }

  return sub_1CAC35A50(a1, type metadata accessor for LocationModelObject);
}

void sub_1CAC2FA94()
{
  v1 = (v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v40 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v41 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v42 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v43 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v36 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v37 = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v38 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v39 = v5;
  v6 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v32 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v33 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v34 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v35 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
  MEMORY[0x1CCAA6D30](&v44);
  v55[8] = v52;
  v55[9] = v53;
  v55[10] = v54;
  v55[4] = v48;
  v55[5] = v49;
  v55[6] = v50;
  v55[7] = v51;
  v55[0] = v44;
  v55[1] = v45;
  v55[2] = v46;
  v55[3] = v47;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v55) == 1)
  {
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    sub_1CAB21B68(&v32, &qword_1EC463C00);
  }

  else
  {
    v40 = v52;
    v41 = v53;
    v42 = v54;
    v36 = v48;
    v37 = v49;
    v9 = v48;
    v38 = v50;
    v39 = v51;
    v32 = v44;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    sub_1CABF2B60(v48, *(&v48 + 1));
    sub_1CAB21B68(&v32, &qword_1EC463C00);
    if (*(&v9 + 1) >> 60 != 15)
    {
      v18 = objc_opt_self();
      v19 = sub_1CAD4C014();
      *&v23 = sub_1CAC35C60;
      *(&v23 + 1) = v0;
      *&v21 = MEMORY[0x1E69E9820];
      *(&v21 + 1) = 1107296256;
      *&v22 = sub_1CAC35D38;
      *(&v22 + 1) = &block_descriptor_71;
      v20 = _Block_copy(&v21);

      [v18 _mapItemFromHandle_completionHandler_];
      _Block_release(v20);

      sub_1CABB8C08(v9, *(&v9 + 1));
      return;
    }
  }

  v10 = v1[9];
  v40 = v1[8];
  v41 = v10;
  v11 = v1[11];
  v42 = v1[10];
  v43 = v11;
  v12 = v1[5];
  v36 = v1[4];
  v37 = v12;
  v13 = v1[7];
  v38 = v1[6];
  v39 = v13;
  v14 = v1[1];
  v32 = *v1;
  v33 = v14;
  v15 = v1[3];
  v34 = v1[2];
  v35 = v15;
  MEMORY[0x1CCAA6D30](&v21, v8);
  v52 = v29;
  v53 = v30;
  v54 = v31;
  v48 = v25;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v44 = v21;
  v45 = v22;
  v46 = v23;
  v47 = v24;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v44) == 1)
  {
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    sub_1CAB21B68(&v32, &qword_1EC463C00);
  }

  else
  {
    v40 = v29;
    v41 = v30;
    v42 = v31;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v32 = v21;
    v33 = v22;
    v16 = v22;
    v34 = v23;
    v35 = v24;
    v17 = v22;
    sub_1CAB21B68(&v32, &qword_1EC463C00);
    if (v16)
    {
      sub_1CAC3355C([objc_allocWithZone(MEMORY[0x1E696F270]) initWithCLLocation_]);
    }
  }
}

uint64_t sub_1CAC2FE3C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_1CAD4E304();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  v9[5] = a1;
  v10 = a1;

  sub_1CACA6D34(0, 0, v7, &unk_1CAD5F098, v9);
}

uint64_t sub_1CAC2FF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1CAC2FF70, 0, 0);
}

uint64_t sub_1CAC2FF70()
{
  sub_1CAD4E2C4();
  *(v0 + 32) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC30004, v2, v1);
}

uint64_t sub_1CAC30004()
{
  v1 = *(v0 + 24);

  v2 = v1;
  sub_1CAC3355C(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CAC30074()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v43 = &v38 - v1;
  v2 = sub_1CAD4BFF4();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v38 = v4;
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v38 - v5;
  v6 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for EventModelObject();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(v47 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v10, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v8);
  sub_1CAB21B68(v10, &qword_1EC463FA8);
  sub_1CAB23A9C(&v14[*(v12 + 68)], v17, &qword_1EC467A40);
  sub_1CAC35A50(v14, type metadata accessor for EventModelObject);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_1EC467A40;
    return sub_1CAB21B68(v17, v22);
  }

  sub_1CAC35848(v17, v21, type metadata accessor for EventVirtualConferenceModelObject);
  v24 = *(v21 + 2);
  v25 = v21;
  if (v24 && *(v24 + 16))
  {
    v26 = v46;
    sub_1CAC359E8(v24 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v46, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    v27 = v42;
    v17 = v43;
    sub_1CAB23A9C(v26 + *(v42 + 20), v43, &qword_1EC465450);
    v29 = v44;
    v28 = v45;
    if ((*(v44 + 48))(v17, 1, v45) == 1)
    {
      sub_1CAC35A50(v26, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
      sub_1CAC35A50(v25, type metadata accessor for EventVirtualConferenceModelObject);
      v22 = &qword_1EC465450;
      return sub_1CAB21B68(v17, v22);
    }

    v31 = *(v29 + 32);
    v41 = v25;
    v32 = v40;
    v31(v40, v17, v28);
    v43 = objc_opt_self();
    v33 = sub_1CAD4BFB4();
    LODWORD(v42) = *(v26 + *(v27 + 24));
    v34 = v39;
    (*(v29 + 16))(v39, v32, v28);
    v35 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v47;
    v31((v36 + v35), v34, v28);
    aBlock[4] = sub_1CAC35AB0;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CAC30C0C;
    aBlock[3] = &block_descriptor_64;
    v37 = _Block_copy(aBlock);

    [v43 displayDetailsForURL:v33 isBroadcast:v42 completionHandler:v37];
    _Block_release(v37);

    (*(v29 + 8))(v32, v28);
    sub_1CAC35A50(v46, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
    v30 = v41;
  }

  else
  {
    v30 = v21;
  }

  return sub_1CAC35A50(v30, type metadata accessor for EventVirtualConferenceModelObject);
}

uint64_t sub_1CAC30708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1CAD4BFF4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1CAD4E304();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v12 + 16))(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v11);
  v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a6;
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  (*(v12 + 32))(&v19[v18], &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  sub_1CACA6D34(0, 0, v16, &unk_1CAD5F080, v19);
}

uint64_t sub_1CAC30904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CAC3092C, 0, 0);
}

uint64_t sub_1CAC3092C()
{
  sub_1CAD4E2C4();
  *(v0 + 56) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC309C0, v2, v1);
}

uint64_t sub_1CAC309C0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_1CAC30A84(v3, v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1CAC30A84(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1CAC330E8(a2, a3);
  v6 = sub_1CAD4BFB4();
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  if (*(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcTitle + 8))
  {

    v7 = sub_1CAD4DF54();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_self() subtitleForURL:v6 displayedWithTitle:v7];

  if (v8)
  {
    v9 = sub_1CAD4DF94();
    v11 = v10;
  }

  else
  {
    if (qword_1EC462C08 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC47DA48;
    v11 = unk_1EC47DA50;
  }

  return sub_1CAC332A8(v9, v11);
}

uint64_t sub_1CAC30C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(a1 + 32);
  if (!a3)
  {
    v14 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = sub_1CAD4BFF4();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
    goto LABEL_6;
  }

  v14 = sub_1CAD4DF94();
  a3 = v15;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1CAD4BFC4();
  v16 = sub_1CAD4BFF4();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
LABEL_6:

  v18 = a2;
  v13(a2, v14, a3, a4, v12);

  return sub_1CAB21B68(v12, &qword_1EC465450);
}

char *sub_1CAC30DA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v56 = v54 - v2;
  v58 = type metadata accessor for EventAttendeeModelObject(0);
  v3 = *(v58 - 8);
  v4 = MEMORY[0x1EEE9AC00](v58);
  v60 = (v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v59 = v54 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v54 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = type metadata accessor for EventModelObject();
  v17 = (v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v15, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v13);
  sub_1CAB21B68(v15, &qword_1EC463FA8);
  v20 = *&v19[v17[37]];

  sub_1CAC35A50(v19, type metadata accessor for EventModelObject);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    v57 = v10;
    while (v23 < *(v21 + 16))
    {
      v25 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v26 = *(v3 + 72);
      sub_1CAC359E8(v21 + v25 + v26 * v23, v12, type metadata accessor for EventAttendeeModelObject);
      if (*&v12[*(v58 + 52)] == 2)
      {
        sub_1CAC35848(v12, v10, type metadata accessor for EventAttendeeModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E14(0, *(v24 + 2) + 1, 1);
          v24 = v65;
        }

        v29 = *(v24 + 2);
        v28 = *(v24 + 3);
        v17 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          sub_1CACB9E14(v28 > 1, v29 + 1, 1);
          v24 = v65;
        }

        *(v24 + 2) = v17;
        v30 = &v24[v25 + v29 * v26];
        v10 = v57;
        sub_1CAC35848(v57, v30, type metadata accessor for EventAttendeeModelObject);
      }

      else
      {
        sub_1CAC35A50(v12, type metadata accessor for EventAttendeeModelObject);
      }

      if (v22 == ++v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v31 = *(v24 + 2);
    if (v31)
    {
      v65 = MEMORY[0x1E69E7CC0];
      sub_1CACB9FB8(0, v31, 0);
      v32 = v65;
      v33 = &v24[(*(v3 + 80) + 32) & ~*(v3 + 80)];
      v34 = *(v3 + 72);
      v54[1] = v24;
      v55 = v34;
      for (i = v31 - 1; ; --i)
      {
        v36 = v59;
        sub_1CAC359E8(v33, v59, type metadata accessor for EventAttendeeModelObject);
        v37 = v36;
        v38 = v60;
        sub_1CAC359E8(v37, v60, type metadata accessor for EventAttendeeModelObject);
        v39 = v38[1];
        v57 = *v38;
        v40 = v38 + *(v58 + 28);
        v41 = v56;
        sub_1CAB23A9C(v40, v56, &qword_1EC465450);
        v42 = sub_1CAD4BFF4();
        v43 = *(v42 - 8);
        v44 = (*(v43 + 48))(v41, 1, v42);

        if (v44 == 1)
        {
          sub_1CAB21B68(v41, &qword_1EC465450);
          v45 = 0;
          v46 = 0xE000000000000000;
        }

        else
        {
          v45 = sub_1CAD4BFA4();
          v47 = v41;
          v46 = v48;
          (*(v43 + 8))(v47, v42);
        }

        sub_1CAC35A50(v60, type metadata accessor for EventAttendeeModelObject);
        sub_1CAC35A50(v59, type metadata accessor for EventAttendeeModelObject);
        v61 = v63;
        v62 = v64;
        v65 = v32;
        v50 = *(v32 + 2);
        v49 = *(v32 + 3);
        if (v50 >= v49 >> 1)
        {
          sub_1CACB9FB8((v49 > 1), v50 + 1, 1);
          v32 = v65;
        }

        *(v32 + 2) = v50 + 1;
        v51 = &v32[80 * v50];
        *(v51 + 4) = v57;
        *(v51 + 5) = v39;
        *(v51 + 3) = 0u;
        *(v51 + 4) = 0u;
        *(v51 + 10) = v45;
        *(v51 + 11) = v46;
        *(v51 + 48) = 1;
        v52 = v62;
        *(v51 + 98) = v61;
        *(v51 + 51) = v52;
        *(v51 + 13) = 0;
        if (!i)
        {
          break;
        }

        v33 += v55;
      }
    }

    else
    {

      v32 = MEMORY[0x1E69E7CC0];
    }

    v65 = v32;

    sub_1CAC34660(&v65);

    return v65;
  }

  return result;
}

double EventConferenceRoomModelObject.init(roomAttendee:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v8 = *a1;
  v7 = a1[1];
  v9 = type metadata accessor for EventAttendeeModelObject(0);
  sub_1CAB23A9C(a1 + *(v9 + 28), v6, &qword_1EC465450);
  v10 = sub_1CAD4BFF4();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v6, 1, v10);

  if (v12 == 1)
  {
    sub_1CAB21B68(v6, &qword_1EC465450);
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    v13 = sub_1CAD4BFA4();
    v14 = v15;
    (*(v11 + 8))(v6, v10);
  }

  sub_1CAC35A50(a1, type metadata accessor for EventAttendeeModelObject);
  *a2 = v8;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1CAC315BC(uint64_t a1)
{
  v66 = sub_1CAD4C124();
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v53 - v7;
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  v69 = *(v8 - 1);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v56 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v59 = v13;
  if (v20)
  {
    v60 = v8;
    v53 = v18;
    v54 = v16;
    v73 = MEMORY[0x1E69E7CC0];
    sub_1CACB9E14(0, v20, 0);
    v61 = (v2 + 8);
    v70 = v73;
    v68 = v20 - 1;
    v21 = 32;
    for (i = a1; ; a1 = i)
    {
      v67 = v21;
      v22 = (a1 + v21);
      v23 = v22[1];
      v72[0] = *v22;
      v72[1] = v23;
      v24 = v22[3];
      v72[2] = v22[2];
      v72[3] = v24;
      v72[4] = v22[4];
      v25 = v72[0];
      sub_1CABC2CD8(v72, v71);

      v26 = v63;
      sub_1CAD4BFE4();
      v27 = v64;
      sub_1CAB23A9C(v26, v64, &qword_1EC465450);
      v28 = v65;
      sub_1CAD4C114();
      v29 = sub_1CAD4C104();
      v31 = v30;
      (*v61)(v28, v66);
      sub_1CAB21B68(v26, &qword_1EC465450);
      v8 = v60;
      v32 = v60[7];
      v33 = sub_1CAD4BFF4();
      (*(*(v33 - 8) + 56))(&v15[v32], 1, 1, v33);
      v34 = &v15[v8[10]];
      v35 = &v15[v8[14]];
      *v15 = v25;
      *(v15 + 1) = 0u;
      *(v15 + 2) = 0u;
      sub_1CABD4E34(v27, &v15[v32]);
      sub_1CABC2D10(v72);
      v36 = &v15[v8[8]];
      *v36 = v29;
      v36[1] = v31;
      v15[v8[9]] = 0;
      *v34 = 0;
      *(v34 + 1) = 0;
      *&v15[v8[11]] = 0;
      *&v15[v8[12]] = 1;
      *&v15[v8[13]] = 2;
      *v35 = 0;
      *(v35 + 1) = 0;
      v37 = v70;
      v73 = v70;
      v39 = *(v70 + 16);
      v38 = *(v70 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1CACB9E14(v38 > 1, v39 + 1, 1);
        v37 = v73;
      }

      *(v37 + 16) = v39 + 1;
      v40 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v70 = v37;
      sub_1CAC35848(v15, v37 + v40 + *(v69 + 72) * v39, type metadata accessor for EventAttendeeModelObject);
      if (!v68)
      {
        break;
      }

      --v68;
      v21 = v67 + 80;
    }

    v13 = v59;
    v16 = v54;
    v18 = v53;
  }

  else
  {

    v70 = MEMORY[0x1E69E7CC0];
  }

  sub_1CAB23A9C(v57 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v18, &qword_1EC463FA8);
  v41 = v55;
  MEMORY[0x1CCAA6D30](v16);
  sub_1CAB21B68(v18, &qword_1EC463FA8);
  v42 = *(v41 + *(v56 + 140));

  result = sub_1CAC35A50(v41, type metadata accessor for EventModelObject);
  v44 = MEMORY[0x1E69E7CC0];
  if (!v42)
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v42 + 16);
  if (v45)
  {
    v46 = 0;
    v47 = v58;
    while (v46 < *(v42 + 16))
    {
      v48 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v49 = *(v69 + 72);
      sub_1CAC359E8(v42 + v48 + v49 * v46, v13, type metadata accessor for EventAttendeeModelObject);
      if (*&v13[v8[13]] == 2)
      {
        result = sub_1CAC35A50(v13, type metadata accessor for EventAttendeeModelObject);
      }

      else
      {
        sub_1CAC35848(v13, v47, type metadata accessor for EventAttendeeModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v72[0] = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E14(0, *(v44 + 16) + 1, 1);
          v47 = v58;
          v44 = *&v72[0];
        }

        v52 = *(v44 + 16);
        v51 = *(v44 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1CACB9E14(v51 > 1, v52 + 1, 1);
          v47 = v58;
          v44 = *&v72[0];
        }

        *(v44 + 16) = v52 + 1;
        result = sub_1CAC35848(v47, v44 + v48 + v52 * v49, type metadata accessor for EventAttendeeModelObject);
        v13 = v59;
      }

      if (v45 == ++v46)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    *&v72[0] = v44;
    sub_1CAD0F3AC(v70);
    (*(v57 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel_updateAttendeesHandler))(*&v72[0]);
  }

  return result;
}

void sub_1CAC31DC4()
{
  v1 = v0;
  v2 = sub_1CAD4DDA4();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v67);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v65 - v8;
  v10 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  *&v128 = v0;
  sub_1CAC3470C();
  sub_1CAD4C424();
  v16 = v0;

  v17 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser;
  swift_beginAccess();
  sub_1CAC359E8(v16 + v17, v15, type metadata accessor for LocationModelObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v38 = v15[7];
      v39 = v15[9];
      v103 = v15[8];
      v104 = v39;
      v40 = v15[9];
      v105 = v15[10];
      v41 = v15[3];
      v42 = v15[5];
      v99 = v15[4];
      v100 = v42;
      v43 = v15[5];
      v44 = v15[7];
      v101 = v15[6];
      v102 = v44;
      v45 = v15[1];
      v96[0] = *v15;
      v96[1] = v45;
      v46 = v15[3];
      v48 = *v15;
      v47 = v15[1];
      v97 = v15[2];
      v98 = v46;
      v114 = v103;
      v115 = v40;
      v116 = v15[10];
      v110 = v99;
      v111 = v43;
      v112 = v101;
      v113 = v38;
      v106 = v48;
      v107 = v47;
      v108 = v97;
      v109 = v41;
      nullsub_1(&v106);
      v49 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
      v50 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
      v124 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
      v125 = v49;
      v51 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
      v52 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
      v126 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
      v127 = v52;
      v53 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
      v54 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
      v120 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
      v121 = v53;
      v55 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
      v56 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
      v122 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
      v123 = v56;
      v57 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
      v117[0] = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
      v117[1] = v57;
      v58 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
      v60 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
      v59 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
      v118 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
      v119 = v58;
      v92 = v124;
      v93 = v51;
      v61 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
      v94 = v126;
      v95 = v61;
      v88 = v120;
      v89 = v55;
      v90 = v122;
      v91 = v50;
      v84 = v60;
      v85 = v59;
      v86 = v118;
      v87 = v54;
      v81 = v114;
      v82 = v115;
      v83 = v116;
      v77 = v110;
      v78 = v111;
      v79 = v112;
      v80 = v113;
      v73 = v106;
      v74 = v107;
      v75 = v108;
      v76 = v109;
      sub_1CABD3C1C(v96, &v128);
      sub_1CAB23A9C(v117, &v128, &qword_1EC463C30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
      sub_1CAD4DAC4();
      v136 = v92;
      v137 = v93;
      v138 = v94;
      v139 = v95;
      v132 = v88;
      v133 = v89;
      v134 = v90;
      v135 = v91;
      v128 = v84;
      v129 = v85;
      v130 = v86;
      v131 = v87;
      sub_1CAB21B68(&v128, &qword_1EC463C30);
      sub_1CAC2FA94();
      sub_1CABD3C78(v96);
      return;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v19 = v15[3];
      v130 = v15[2];
      v131 = v19;
      v132 = v15[4];
      v20 = v15[1];
      v128 = *v15;
      v129 = v20;
      v21 = sub_1CAC30DA4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1CAD34F64(0, *(v21 + 2) + 1, 1, v21);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1CAD34F64((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      v24 = &v21[80 * v23];
      *(v24 + 2) = v128;
      v25 = v129;
      v26 = v130;
      v27 = v132;
      *(v24 + 5) = v131;
      *(v24 + 6) = v27;
      *(v24 + 3) = v25;
      *(v24 + 4) = v26;
      sub_1CAC315BC(v21);
      return;
    }

    v63 = type metadata accessor for LocationModelObject;
    v64 = v15;
LABEL_15:
    sub_1CAC35A50(v64, v63);
    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1CAC35848(v15, v12, type metadata accessor for EventVirtualConferenceModelObject);
    sub_1CAC359E8(v12, v9, type metadata accessor for EventVirtualConferenceModelObject);
    (*(v66 + 56))(v9, 0, 1, v10);
    sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v6, &qword_1EC463FA8);
    v62 = v68;
    MEMORY[0x1CCAA6D30](v67);
    sub_1CAC358B0(v9, &v62[*(v69 + 60)]);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v6, &qword_1EC463FA8);
    sub_1CAC30074();
    sub_1CAB21B68(v9, &qword_1EC467A40);
    v63 = type metadata accessor for EventVirtualConferenceModelObject;
    v64 = v12;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v28 = *v15;
    v29 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 8);
    *&v128 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
    *(&v128 + 1) = v29;
    v129 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
    v117[0] = xmmword_1CAD5B720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4651D0);
    sub_1CAD4DAC4();
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = v1;
    *(v31 + 24) = v28;
    *&v130 = sub_1CAC35828;
    *(&v130 + 1) = v31;
    *&v128 = MEMORY[0x1E69E9820];
    *(&v128 + 1) = 1107296256;
    *&v129 = sub_1CAC35D38;
    *(&v129 + 1) = &block_descriptor_0;
    v32 = _Block_copy(&v128);

    v33 = v28;

    sub_1CABD4070(0, &qword_1EC466AF0);
    v35 = v70;
    v34 = v71;
    v36 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x1E69E7F88], v72);
    v37 = sub_1CAD4E444();
    (*(v34 + 8))(v35, v36);
    [v30 virtualConferenceForRoomType:v33 completion:v32 queue:v37];

    _Block_release(v32);
  }
}

uint64_t sub_1CAC32624(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_1CAD4E304();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a4;
  v12 = a1;
  v13 = a4;

  sub_1CACA6D34(0, 0, v9, &unk_1CAD5F068, v11);
}

uint64_t sub_1CAC3274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1CAC32770, 0, 0);
}

uint64_t sub_1CAC32770()
{
  sub_1CAD4E2C4();
  *(v0 + 48) = sub_1CAD4E2B4();
  v2 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC32804, v2, v1);
}

uint64_t sub_1CAC32804()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_1CAC328C4(v3, v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1CAC328C4(uint64_t a1, void *a2, void *a3)
{
  v31 = a3;
  v5 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus;
  v15 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 8);
  v33 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
  v34 = v15;
  v35 = *(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4651D0);
  MEMORY[0x1CCAA6D30](&v37);
  if (*(&v37 + 1) != 1)
  {
    return sub_1CABED134(v37, *(&v37 + 1));
  }

  if (a2)
  {
    *(&v35 + 1) = &type metadata for EKVirtualConferenceModelWrapper;
    v36 = &protocol witness table for EKVirtualConferenceModelWrapper;
    v33 = a2;
    v16 = a2;
    EventVirtualConferenceModelObject.init(_:)(&v33, v13);
    v17 = type metadata accessor for EventVirtualConferenceModelObject(0);
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    sub_1CAB23A9C(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v10, &qword_1EC463FA8);
    MEMORY[0x1CCAA6D30](v8);
    sub_1CAC358B0(v13, &v7[*(v5 + 60)]);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v10, &qword_1EC463FA8);
    sub_1CAC30074();
    sub_1CAB21B68(v13, &qword_1EC467A40);
    v18 = *(v14 + 8);
    v33 = *v14;
    v34 = v18;
    v35 = *(v14 + 16);
    v37 = xmmword_1CAD5D940;
  }

  else
  {
    v20 = type metadata accessor for EventVirtualConferenceModelObject(0);
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    sub_1CAB23A9C(a1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v10, &qword_1EC463FA8);
    MEMORY[0x1CCAA6D30](v8);
    sub_1CAC358B0(v13, &v7[*(v5 + 60)]);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v10, &qword_1EC463FA8);
    sub_1CAC30074();
    sub_1CAB21B68(v13, &qword_1EC467A40);
    if (qword_1EC462C10 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1CAD58380;
    v22 = [v31 title];
    v23 = sub_1CAD4DF94();
    v25 = v24;

    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1CABC6340();
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v26 = sub_1CAD4DF64();
    v28 = v27;

    v29 = *(v14 + 8);
    v33 = *v14;
    v34 = v29;
    v35 = *(v14 + 16);
    *&v37 = v26;
    *(&v37 + 1) = v28;
  }

  return sub_1CAD4DAC4();
}

void sub_1CAC32D30(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1CAC32DBC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CAC3470C();
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser;
  swift_beginAccess();
  return sub_1CAC359E8(v5 + v3, a1, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAC32E68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser;
  swift_beginAccess();
  return sub_1CAC359E8(v3 + v4, a2, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAC32F14(uint64_t a1)
{
  v2 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC359E8(a1, v4, type metadata accessor for LocationModelObject);
  return sub_1CAC2F894(v4);
}

uint64_t sub_1CAC32FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationModelObject(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC359E8(a2, v6, type metadata accessor for LocationModelObject);
  v7 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser;
  swift_beginAccess();
  sub_1CABD4254(v6, a1 + v7);
  swift_endAccess();
  sub_1CAC31DC4();
  return sub_1CAC35A50(v6, type metadata accessor for LocationModelObject);
}

uint64_t sub_1CAC33124(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1CAC331BC@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1CAC33260(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1CAC332D0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  v7 = v6[1];
  if (v7)
  {
    if (a2)
    {
      v8 = *v6 == a1 && v7 == a2;
      if (v8 || (sub_1CAD4E9E4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC3470C();
    sub_1CAD4C414();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v6 = a1;
  v6[1] = a2;
}

void *sub_1CAC3341C()
{
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem);
  v2 = v1;
  return v1;
}

id sub_1CAC3349C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC3470C();
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem);
  *a2 = v4;

  return v4;
}

void sub_1CAC3352C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAC3355C(v1);
}

void sub_1CAC3355C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem;
  v5 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC3470C();
    sub_1CAD4C414();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CABD4070(0, &qword_1EC4651C8);
  v6 = v5;
  v7 = a1;
  v8 = sub_1CAD4E494();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1CAC336C4@<X0>(unint64_t *a1@<X8>)
{
  v88 = a1;
  v91 = type metadata accessor for EventCalendarModelObject();
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v81 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for EventAttendeeModelObject(0);
  v98 = *(v92 - 1);
  v3 = MEMORY[0x1EEE9AC00](v92);
  v5 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3);
  v97 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v81 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81 - v11;
  v13 = type metadata accessor for EventModelObject();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v81 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v84 = &v81 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v83 = &v81 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v81 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v81 - v25;
  v95 = v1;
  v93 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, v12, &qword_1EC463FA8);
  v94 = v10;
  MEMORY[0x1CCAA6D30](v10);
  v90 = v12;
  sub_1CAB21B68(v12, &qword_1EC463FA8);
  v89 = v13;
  v27 = *&v26[*(v13 + 140)];
  v86 = v16;
  if (v27)
  {

    sub_1CAC35A50(v26, type metadata accessor for EventModelObject);
    v28 = *(v27 + 16);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v30 = 0;
      v31 = v92;
      v96 = *(v27 + 16);
      while (v30 < *(v27 + 16))
      {
        v32 = (*(v98 + 80) + 32) & ~*(v98 + 80);
        v10 = *(v98 + 72);
        sub_1CAC359E8(v27 + v32 + v10 * v30, v9, type metadata accessor for EventAttendeeModelObject);
        if (*&v9[*(v31 + 52)] == 2)
        {
          sub_1CAC35848(v9, v97, type metadata accessor for EventAttendeeModelObject);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v99 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1CACB9E14(0, *(v29 + 16) + 1, 1);
            v31 = v92;
            v29 = v99;
          }

          v13 = *(v29 + 16);
          v34 = *(v29 + 24);
          if (v13 >= v34 >> 1)
          {
            sub_1CACB9E14(v34 > 1, v13 + 1, 1);
            v31 = v92;
            v29 = v99;
          }

          *(v29 + 16) = v13 + 1;
          sub_1CAC35848(v97, v29 + v32 + v13 * v10, type metadata accessor for EventAttendeeModelObject);
          v28 = v96;
        }

        else
        {
          sub_1CAC35A50(v9, type metadata accessor for EventAttendeeModelObject);
        }

        if (v28 == ++v30)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

LABEL_13:

    v35 = *(v29 + 16);
    if (v35)
    {
      *&v99 = MEMORY[0x1E69E7CC0];
      sub_1CACB9F1C(0, v35, 0);
      v36 = v92;
      v13 = v99;
      v37 = v29 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v98 = *(v98 + 72);
      do
      {
        sub_1CAC359E8(v37, v5, type metadata accessor for EventAttendeeModelObject);
        if (v5[1])
        {
          v38 = *v5;
          v39 = v5[1];
        }

        else
        {
          v40 = (v5 + *(v36 + 8));
          v38 = *v40;
          v39 = v40[1];
        }

        sub_1CAC35A50(v5, type metadata accessor for EventAttendeeModelObject);
        *&v99 = v13;
        v42 = *(v13 + 16);
        v41 = *(v13 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1CACB9F1C((v41 > 1), v42 + 1, 1);
          v36 = v92;
          v13 = v99;
        }

        *(v13 + 16) = v42 + 1;
        v43 = v13 + 16 * v42;
        *(v43 + 32) = v38;
        *(v43 + 40) = v39;
        v37 += v98;
        --v35;
      }

      while (v35);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1CAC35A50(v26, type metadata accessor for EventModelObject);
    v13 = 0;
  }

  v44 = v93;
  v45 = v95;
  v46 = v90;
  sub_1CAB23A9C(v95 + v93, v90, &qword_1EC463FA8);
  v47 = v82;
  v48 = v94;
  MEMORY[0x1CCAA6D30](v94);
  sub_1CAB21B68(v46, &qword_1EC463FA8);
  v49 = v47[1];
  v96 = *v47;
  v97 = v49;

  sub_1CAC35A50(v47, type metadata accessor for EventModelObject);
  sub_1CAB23A9C(v45 + v44, v46, &qword_1EC463FA8);
  v50 = v83;
  MEMORY[0x1CCAA6D30](v48);
  sub_1CAB21B68(v46, &qword_1EC463FA8);
  v51 = v89;
  v52 = objc_allocWithZone(MEMORY[0x1E6992F70]);
  v53 = sub_1CAD4C084();
  v54 = sub_1CAD4C084();
  v92 = [v52 initWithStartDate:v53 endDate:v54];

  sub_1CAC35A50(v50, type metadata accessor for EventModelObject);
  sub_1CAB23A9C(v95 + v93, v46, &qword_1EC463FA8);
  v55 = v84;
  MEMORY[0x1CCAA6D30](v94);
  sub_1CAB21B68(v46, &qword_1EC463FA8);
  v56 = v55 + *(v51 + 104);
  v57 = *(v87 + 48);
  v58 = v57(v56, 1, v91);
  v59 = v85;
  if (v58 || (v60 = *(v56 + 184), v61 = *(v56 + 216), v105 = *(v56 + 200), *v106 = v61, *&v106[10] = *(v56 + 226), v62 = *(v56 + 120), v63 = *(v56 + 152), v101 = *(v56 + 136), v102 = v63, v103 = *(v56 + 168), v104 = v60, v99 = *(v56 + 104), v100 = v62, sub_1CABED4EC(&v99) == 1))
  {
    sub_1CAC35A50(v55, type metadata accessor for EventModelObject);
    v98 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v27 = *(v56 + 112);
    v98 = *(v56 + 104);

    sub_1CAC35A50(v55, type metadata accessor for EventModelObject);
  }

  v64 = v90;
  sub_1CAB23A9C(v95 + v93, v90, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v94);
  sub_1CAB21B68(v64, &qword_1EC463FA8);
  v65 = v59 + *(v89 + 104);
  if (v57(v65, 1, v91) || (v66 = *(v65 + 184), v67 = *(v65 + 216), v105 = *(v65 + 200), *v106 = v67, *&v106[10] = *(v65 + 226), v68 = *(v65 + 120), v69 = *(v65 + 152), v101 = *(v65 + 136), v102 = v69, v103 = *(v65 + 168), v104 = v66, v99 = *(v65 + 104), v100 = v68, sub_1CABED4EC(&v99) == 1) || *(v65 + 224) == 2)
  {
    LOBYTE(v28) = 0;
  }

  else
  {
    LOBYTE(v28) = *(v65 + 241);
  }

  sub_1CAC35A50(v59, type metadata accessor for EventModelObject);
  v70 = v90;
  sub_1CAB23A9C(v95 + v93, v90, &qword_1EC463FA8);
  v71 = v86;
  MEMORY[0x1CCAA6D30](v94);
  sub_1CAB21B68(v70, &qword_1EC463FA8);
  v72 = *(v89 + 104);
  if (!v57(v71 + v72, 1, v91))
  {
    v31 = v81;
    sub_1CAC359E8(v71 + v72, v81, type metadata accessor for EventCalendarModelObject);
    sub_1CAC35A50(v71, type metadata accessor for EventModelObject);
    v75 = *(v31 + 184);
    v76 = *(v31 + 216);
    v105 = *(v31 + 200);
    *v106 = v76;
    *&v106[10] = *(v31 + 226);
    v77 = *(v31 + 120);
    v78 = *(v31 + 152);
    v101 = *(v31 + 136);
    v102 = v78;
    v103 = *(v31 + 168);
    v104 = v75;
    v99 = *(v31 + 104);
    v100 = v77;
    if (sub_1CABED4EC(&v99) != 1 && v106[8] != 2)
    {
      v74 = v106[22];
      v10 = v97;
      v30 = v96;
      v9 = v92;
LABEL_38:
      result = sub_1CAC35A50(v31, type metadata accessor for EventCalendarModelObject);
      goto LABEL_39;
    }

    v10 = v97;
    v30 = v96;
    v9 = v92;
    if (qword_1EC462F58 == -1)
    {
LABEL_37:
      v74 = BYTE2(dword_1EC4676BC);
      goto LABEL_38;
    }

LABEL_43:
    swift_once();
    goto LABEL_37;
  }

  result = sub_1CAC35A50(v71, type metadata accessor for EventModelObject);
  v74 = 1;
  v10 = v97;
  v30 = v96;
  v9 = v92;
LABEL_39:
  v79 = v88;
  *v88 = v30;
  v79[1] = v10;
  v80 = v98;
  v79[2] = v9;
  v79[3] = v80;
  v79[4] = v27;
  v79[5] = v13;
  *(v79 + 48) = v28;
  *(v79 + 49) = v74 & 1;
  return result;
}

uint64_t sub_1CAC342A4()
{
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, &qword_1EC463FA8);
  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 16);
  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus + 24);

  sub_1CABED134(v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 144);
  v12[8] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 128);
  v12[9] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 176);
  v12[10] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 160);
  v12[11] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 80);
  v12[4] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 64);
  v12[5] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 112);
  v12[6] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 96);
  v12[7] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 16);
  v12[0] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v12[1] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 48);
  v12[2] = *(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location + 32);
  v12[3] = v8;
  sub_1CAB21B68(v12, &qword_1EC463C30);

  sub_1CAC35A50(v0 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__selectedLocationFromChooser, type metadata accessor for LocationModelObject);

  v9 = OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel___observationRegistrar;
  v10 = sub_1CAD4C464();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1CAC34424()
{
  sub_1CAC342A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationViewModel()
{
  result = qword_1EC4651B0;
  if (!qword_1EC4651B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CAC344D0()
{
  sub_1CAC34608();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LocationModelObject(319);
    if (v1 <= 0x3F)
    {
      sub_1CAD4C464();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1CAC34608()
{
  if (!qword_1EC4651C0)
  {
    type metadata accessor for EventModelObject();
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4651C0);
    }
  }
}

uint64_t sub_1CAC34660(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CACED4EC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1CAC34838(v5);
  *a1 = v2;
  return result;
}

void sub_1CAC346CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem);
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem) = v2;
  v4 = v2;
}

unint64_t sub_1CAC3470C()
{
  result = qword_1EC463FB8;
  if (!qword_1EC463FB8)
  {
    type metadata accessor for LocationViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463FB8);
  }

  return result;
}

uint64_t keypath_set_45Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1CAC347EC(void *a1)
{
  v2 = v1[4];
  v3 = (v1[2] + *a1);
  *v3 = v1[3];
  v3[1] = v2;
}

uint64_t sub_1CAC34838(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1CAD4E244();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1CAC34B04(v7, v8, a1, v4);
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
    return sub_1CAC34930(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CAC34930(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 80 * a3);
    v6 = result - a3 + 1;
LABEL_5:
    v34 = a3;
    v25 = v6;
    v26 = v5;
    while (1)
    {
      v32[0] = *v5;
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[4];
      v32[3] = v5[3];
      v32[4] = v9;
      v32[1] = v7;
      v32[2] = v8;
      v10 = *(v5 - 1);
      v12 = *(v5 - 4);
      v11 = *(v5 - 3);
      v33[3] = *(v5 - 2);
      v33[4] = v10;
      v33[1] = v12;
      v33[2] = v11;
      v33[0] = *(v5 - 5);
      if (*(&v32[0] + 1))
      {
        v13 = *&v32[0];
      }

      else
      {
        v13 = 0;
      }

      if (*(&v32[0] + 1))
      {
        v14 = *(&v32[0] + 1);
      }

      else
      {
        v14 = 0xE000000000000000;
      }

      if (*(&v33[0] + 1))
      {
        v15 = *&v33[0];
      }

      else
      {
        v15 = 0;
      }

      if (*(&v33[0] + 1))
      {
        v16 = *(&v33[0] + 1);
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      if (v13 == v15 && v14 == v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = sub_1CAD4E9E4();
      }

      sub_1CABC2CD8(v32, &v27);
      sub_1CABC2CD8(v33, &v27);

      sub_1CABC2D10(v33);
      result = sub_1CABC2D10(v32);
      if ((v17 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v5 = v26 + 5;
        v6 = v25 - 1;
        if (v34 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v18 = v5 - 5;
      v28 = v5[1];
      v29 = v5[2];
      v30 = v5[3];
      v31 = v5[4];
      v27 = *v5;
      v19 = *(v5 - 2);
      v5[2] = *(v5 - 3);
      v5[3] = v19;
      v5[4] = *(v5 - 1);
      v20 = *(v5 - 4);
      *v5 = *(v5 - 5);
      v5[1] = v20;
      *v18 = v27;
      v21 = v28;
      v22 = v29;
      v23 = v31;
      v18[3] = v30;
      v18[4] = v23;
      v18[1] = v21;
      v18[2] = v22;
      if (!v6)
      {
        goto LABEL_4;
      }

      ++v6;
      v5 -= 5;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CAC34B04(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v119 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_139:
    v5 = v9;
    v9 = *v119;
    if (!*v119)
    {
      goto LABEL_177;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_171:
      result = sub_1CACED054(v5);
      v5 = result;
    }

    v144 = v5;
    v113 = *(v5 + 16);
    if (v113 >= 2)
    {
      while (*a3)
      {
        v114 = *(v5 + 16 * v113);
        v115 = *(v5 + 16 * (v113 - 1) + 40);
        sub_1CAC3540C((*a3 + 80 * v114), (*a3 + 80 * *(v5 + 16 * (v113 - 1) + 32)), (*a3 + 80 * v115), v9);
        if (v6)
        {
        }

        if (v115 < v114)
        {
          goto LABEL_164;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1CACED054(v5);
        }

        if (v113 - 2 >= *(v5 + 16))
        {
          goto LABEL_165;
        }

        v116 = (v5 + 16 * v113);
        *v116 = v114;
        v116[1] = v115;
        v144 = v5;
        result = sub_1CACECFC8(v113 - 1);
        v5 = v144;
        v113 = *(v144 + 16);
        if (v113 <= 1)
        {
        }
      }

      goto LABEL_175;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v122 = v9;
    if (v8 + 1 >= v7)
    {
      ++v8;
    }

    else
    {
      v12 = v6;
      v13 = *a3;
      v14 = (*a3 + 80 * v11);
      v134 = *v14;
      v15 = v14[1];
      v16 = v14[2];
      v17 = v14[4];
      v137 = v14[3];
      v138 = v17;
      v135 = v15;
      v136 = v16;
      v120 = v10;
      v18 = (v13 + 80 * v10);
      v19 = v18[4];
      v21 = v18[1];
      v20 = v18[2];
      v142 = v18[3];
      v143 = v19;
      v140 = v21;
      v141 = v20;
      v139 = *v18;
      if (*(&v134 + 1))
      {
        v22 = v134;
      }

      else
      {
        v22 = 0;
      }

      if (*(&v134 + 1))
      {
        v5 = *(&v134 + 1);
      }

      else
      {
        v5 = 0xE000000000000000;
      }

      if (*(&v139 + 1))
      {
        v23 = v139;
      }

      else
      {
        v23 = 0;
      }

      if (*(&v139 + 1))
      {
        v24 = *(&v139 + 1);
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      if (v22 == v23 && v5 == v24)
      {
        v124 = 0;
      }

      else
      {
        v124 = sub_1CAD4E9E4();
      }

      sub_1CABC2CD8(&v134, &v129);
      sub_1CABC2CD8(&v139, &v129);

      sub_1CABC2D10(&v139);
      result = sub_1CABC2D10(&v134);
      v25 = v10 + 2;
      if (v10 + 2 >= v7)
      {
        v8 = v10 + 2;
      }

      else
      {
        v26 = (v13 + 80 * v10 + 160);
        while (1)
        {
          v8 = v25;
          v128[0] = *v26;
          v27 = v26[1];
          v28 = v26[2];
          v29 = v26[4];
          v128[3] = v26[3];
          v128[4] = v29;
          v128[1] = v27;
          v128[2] = v28;
          v30 = *(v26 - 1);
          v32 = *(v26 - 4);
          v31 = *(v26 - 3);
          v132 = *(v26 - 2);
          v133 = v30;
          v130 = v32;
          v131 = v31;
          v129 = *(v26 - 5);
          v33 = *(&v128[0] + 1) ? *&v128[0] : 0;
          v5 = *(&v128[0] + 1) ? *(&v128[0] + 1) : 0xE000000000000000;
          v34 = *(&v129 + 1) ? v129 : 0;
          v35 = *(&v129 + 1) ? *(&v129 + 1) : 0xE000000000000000;
          v36 = v33 == v34 && v5 == v35 ? 0 : sub_1CAD4E9E4();
          sub_1CABC2CD8(v128, v127);
          sub_1CABC2CD8(&v129, v127);

          sub_1CABC2D10(&v129);
          result = sub_1CABC2D10(v128);
          if ((v124 ^ v36))
          {
            break;
          }

          v25 = v8 + 1;
          v26 += 5;
          v9 = v122;
          if (v7 == v8 + 1)
          {
            v11 = v8;
            v8 = v7;
            goto LABEL_45;
          }
        }

        v11 = v8 - 1;
        v9 = v122;
      }

LABEL_45:
      v6 = v12;
      if (v124)
      {
        if (v8 < v10)
        {
          goto LABEL_168;
        }

        if (v10 > v11)
        {
          goto LABEL_56;
        }

        v37 = 80 * v8 - 80;
        v38 = v8;
        v39 = 80 * v10;
        v40 = v38;
        do
        {
          if (v10 != --v38)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_174;
            }

            v41 = (v42 + v37);
            v130 = *(v42 + v39 + 16);
            v131 = *(v42 + v39 + 32);
            v132 = *(v42 + v39 + 48);
            v133 = *(v42 + v39 + 64);
            v129 = *(v42 + v39);
            result = memmove((v42 + v39), (v42 + v37), 0x50uLL);
            v41[1] = v130;
            v41[2] = v131;
            v41[3] = v132;
            v41[4] = v133;
            *v41 = v129;
            v9 = v122;
          }

          ++v10;
          v37 -= 80;
          v39 += 80;
        }

        while (v10 < v38);
        v8 = v40;
      }

      v10 = v120;
    }

LABEL_56:
    v43 = a3[1];
    if (v8 < v43)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_167;
      }

      if (v8 - v10 < a4)
      {
        v44 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          goto LABEL_169;
        }

        if (v44 >= v43)
        {
          v44 = a3[1];
        }

        if (v44 < v10)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (v8 != v44)
        {
          break;
        }
      }
    }

LABEL_88:
    if (v8 < v10)
    {
      goto LABEL_166;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CACED068(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v67 = *(v9 + 2);
    v66 = *(v9 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_1CACED068((v66 > 1), v67 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v68;
    v69 = &v9[16 * v67];
    *(v69 + 4) = v10;
    *(v69 + 5) = v8;
    v70 = *v119;
    if (!*v119)
    {
      goto LABEL_176;
    }

    if (v67)
    {
      while (1)
      {
        v5 = v68 - 1;
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v71 = *(v9 + 4);
          v72 = *(v9 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_108:
          if (v74)
          {
            goto LABEL_155;
          }

          v87 = &v9[16 * v68];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_158;
          }

          v93 = &v9[16 * v5 + 32];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_162;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v5 = v68 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v97 = &v9[16 * v68];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_122:
        if (v92)
        {
          goto LABEL_157;
        }

        v100 = &v9[16 * v5];
        v102 = *(v100 + 4);
        v101 = *(v100 + 5);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_160;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_129:
        v108 = v5 - 1;
        if (v5 - 1 >= v68)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
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
          goto LABEL_170;
        }

        if (!*a3)
        {
          goto LABEL_173;
        }

        v109 = v8;
        v110 = *&v9[16 * v108 + 32];
        v111 = *&v9[16 * v5 + 40];
        sub_1CAC3540C((*a3 + 80 * v110), (*a3 + 80 * *&v9[16 * v5 + 32]), (*a3 + 80 * v111), v70);
        if (v6)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1CACED054(v9);
        }

        if (v108 >= *(v9 + 2))
        {
          goto LABEL_152;
        }

        v112 = &v9[16 * v108];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v144 = v9;
        result = sub_1CACECFC8(v5);
        v9 = v144;
        v68 = *(v144 + 16);
        v8 = v109;
        if (v68 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = &v9[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_153;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_154;
      }

      v82 = &v9[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_156;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_159;
      }

      if (v86 >= v78)
      {
        v104 = &v9[16 * v5 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_163;
        }

        if (v73 < v107)
        {
          v5 = v68 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_139;
    }
  }

  v117 = v6;
  v45 = *a3;
  v46 = (*a3 + 80 * v8);
  v125 = v8;
  v121 = v44;
  v47 = v10 - v8 + 1;
LABEL_66:
  v48 = v47;
  v123 = v46;
  while (1)
  {
    v134 = *v46;
    v49 = v46[1];
    v50 = v46[2];
    v51 = v46[4];
    v137 = v46[3];
    v138 = v51;
    v135 = v49;
    v136 = v50;
    v52 = *(v46 - 1);
    v54 = *(v46 - 4);
    v53 = *(v46 - 3);
    v142 = *(v46 - 2);
    v143 = v52;
    v140 = v54;
    v141 = v53;
    v139 = *(v46 - 5);
    v5 = *(&v134 + 1);
    if (*(&v134 + 1))
    {
      v55 = v134;
    }

    else
    {
      v55 = 0;
    }

    if (*(&v134 + 1))
    {
      v56 = *(&v134 + 1);
    }

    else
    {
      v56 = 0xE000000000000000;
    }

    if (*(&v139 + 1))
    {
      v57 = v139;
    }

    else
    {
      v57 = 0;
    }

    if (*(&v139 + 1))
    {
      v58 = *(&v139 + 1);
    }

    else
    {
      v58 = 0xE000000000000000;
    }

    if (v55 == v57 && v56 == v58)
    {
      v59 = 0;
    }

    else
    {
      v59 = sub_1CAD4E9E4();
    }

    sub_1CABC2CD8(&v134, &v129);
    sub_1CABC2CD8(&v139, &v129);

    sub_1CABC2D10(&v139);
    result = sub_1CABC2D10(&v134);
    if ((v59 & 1) == 0)
    {
LABEL_65:
      v46 = v123 + 5;
      --v47;
      if (++v125 != v121)
      {
        goto LABEL_66;
      }

      v8 = v121;
      v6 = v117;
      v9 = v122;
      goto LABEL_88;
    }

    if (!v45)
    {
      break;
    }

    v60 = v46 - 5;
    v130 = v46[1];
    v131 = v46[2];
    v132 = v46[3];
    v133 = v46[4];
    v129 = *v46;
    v61 = *(v46 - 2);
    v46[2] = *(v46 - 3);
    v46[3] = v61;
    v46[4] = *(v46 - 1);
    v62 = *(v46 - 4);
    *v46 = *(v46 - 5);
    v46[1] = v62;
    *v60 = v129;
    v63 = v130;
    v64 = v131;
    v65 = v133;
    v60[3] = v132;
    v60[4] = v65;
    v60[1] = v63;
    v60[2] = v64;
    if (!v48)
    {
      goto LABEL_65;
    }

    ++v48;
    v46 -= 5;
  }

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
  return result;
}

uint64_t sub_1CAC3540C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 80;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 80;
  if (v8 < v10)
  {
    v11 = __dst;
    if (a4 != __dst || &__dst[80 * v8] <= a4)
    {
      memmove(a4, __dst, 80 * v8);
    }

    v12 = &v4[80 * v8];
    if (v7 < 80)
    {
LABEL_6:
      v6 = v11;
      goto LABEL_69;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v54 = v11;
      v44 = *v6;
      v15 = *(v6 + 1);
      v16 = *(v6 + 2);
      v17 = *(v6 + 4);
      v47 = *(v6 + 3);
      v48 = v17;
      v45 = v15;
      v46 = v16;
      v18 = *(v4 + 4);
      v20 = *(v4 + 1);
      v19 = *(v4 + 2);
      v52 = *(v4 + 3);
      v53 = v18;
      v50 = v20;
      v51 = v19;
      v21 = v4;
      v49 = *v4;
      v22 = *(&v44 + 1) ? v44 : 0;
      v23 = *(&v44 + 1) ? *(&v44 + 1) : 0xE000000000000000;
      v24 = *(&v49 + 1) ? v49 : 0;
      v25 = *(&v49 + 1) ? *(&v49 + 1) : 0xE000000000000000;
      v26 = v22 == v24 && v23 == v25 ? 0 : sub_1CAD4E9E4();
      sub_1CABC2CD8(&v44, v43);
      sub_1CABC2CD8(&v49, v43);

      sub_1CABC2D10(&v49);
      sub_1CABC2D10(&v44);
      if (v26)
      {
        break;
      }

      v13 = v4;
      v4 += 80;
      v14 = v54;
      if (v54 != v21)
      {
        goto LABEL_8;
      }

LABEL_9:
      v11 = v14 + 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v54;
    v27 = v54 == v6;
    v6 += 80;
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v14, v13, 0x50uLL);
    goto LABEL_9;
  }

  v54 = __dst;
  if (a4 != __src || &__src[80 * v10] <= a4)
  {
    memmove(a4, __src, 80 * v10);
  }

  v12 = &v4[80 * v10];
  if (v9 >= 80 && v6 > v54)
  {
    v42 = v4;
    do
    {
      v11 = v6 - 80;
      v5 -= 80;
      v28 = v12;
      while (1)
      {
        v12 = v28;
        v44 = *(v28 - 5);
        v29 = *(v28 - 4);
        v30 = *(v28 - 3);
        v31 = *(v28 - 1);
        v47 = *(v28 - 2);
        v48 = v31;
        v45 = v29;
        v46 = v30;
        v32 = *(v6 - 2);
        v51 = *(v6 - 3);
        v52 = v32;
        v53 = *(v6 - 1);
        v33 = *(v6 - 4);
        v49 = *v11;
        v50 = v33;
        v34 = *(&v44 + 1) ? v44 : 0;
        v35 = *(&v44 + 1) ? *(&v44 + 1) : 0xE000000000000000;
        v36 = *(&v49 + 1) ? v49 : 0;
        v37 = *(&v49 + 1) ? *(&v49 + 1) : 0xE000000000000000;
        v38 = v34 == v36 && v35 == v37 ? 0 : sub_1CAD4E9E4();
        sub_1CABC2CD8(&v44, v43);
        sub_1CABC2CD8(&v49, v43);

        sub_1CABC2D10(&v49);
        sub_1CABC2D10(&v44);
        v39 = v5 + 80;
        if (v38)
        {
          break;
        }

        v28 -= 80;
        v4 = v42;
        if (v39 < v12 || v5 >= v12 || v39 != v12)
        {
          memmove(v5, v12 - 80, 0x50uLL);
        }

        v5 -= 80;
        if (v28 <= v42)
        {
          v12 -= 80;
          goto LABEL_69;
        }
      }

      v4 = v42;
      if (v39 < v6 || v5 >= v6 || v39 != v6)
      {
        memmove(v5, v6 - 80, 0x50uLL);
      }

      if (v28 <= v42)
      {
        break;
      }

      v6 -= 80;
    }

    while (v11 > v54);
    goto LABEL_6;
  }

LABEL_69:
  v40 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v40])
  {
    memmove(v6, v4, 80 * v40);
  }

  return 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CAC35848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC358B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC35920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CABCCCB0;

  return sub_1CAC3274C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1CAC359E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC35A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAC35AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1CAD4BFF4() - 8);
  v12 = *(v5 + 16);
  v13 = v5 + ((*(v11 + 80) + 24) & ~*(v11 + 80));

  return sub_1CAC30708(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_1CAC35B54(uint64_t a1)
{
  v4 = *(sub_1CAD4BFF4() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CABCD46C;

  return sub_1CAC30904(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1CAC35C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CABCD46C;

  return sub_1CAC2FF50(a1, v4, v5, v7, v6);
}

void sub_1CAC35D3C(uint64_t a1)
{
  v2 = v1;
  v58 = *MEMORY[0x1E69E9840];
  v4 = sub_1CAD4BC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v9 = [v8 primaryAppleAccountSource];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() calendarForEntityType:0 eventStore:v8];
    v53 = v10;
    [v11 setSource_];
    sub_1CAC37B7C(a1);
    v12 = sub_1CAD4E324();

    [v11 setSharees_];

    swift_getKeyPath();
    v13 = OBJC_IVAR____TtC13CalendarUIKit29CreateFamilyCalendarViewModel___observationRegistrar;
    v56 = v2;
    sub_1CAC38670();
    v54 = v13;
    sub_1CAD4C424();

    v14 = *(v2 + 48);
    v56 = *(v2 + 40);
    v57 = v14;

    sub_1CAD4BBD4();
    sub_1CABA6054();
    v15 = sub_1CAD4E544();
    v17 = v16;
    (*(v5 + 8))(v7, v4);

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
    }

    v19 = sub_1CAD4DF54();

    [v11 setTitle_];

    swift_getKeyPath();
    v56 = v2;
    sub_1CAD4C424();

    v20 = *(v2 + 64);
    swift_getKeyPath();
    if (v20 == 1)
    {
      v56 = v2;
      sub_1CAD4C424();

      v21 = sub_1CAD4D7C4();

      [v11 setCGColor_];
    }

    else
    {
      v56 = v2;
      sub_1CAD4C424();

      if (*(v2 + 104))
      {

        v21 = sub_1CAD4DF54();
      }

      else
      {
        v21 = 0;
      }

      [v11 setSymbolicColorName_];
    }

    v56 = 0;
    v33 = [v8 saveCalendar:v11 commit:1 error:&v56];
    v34 = v56;
    if (v33)
    {
      swift_getKeyPath();
      v56 = v2;
      v35 = v34;
      sub_1CAD4C424();

      v36 = *(v2 + 128);

      v36(1, 0);
    }

    else
    {
      v37 = v56;
      v38 = sub_1CAD4BF54();

      swift_willThrow();
      if (qword_1EC462F10 != -1)
      {
        swift_once();
      }

      v39 = sub_1CAD4C564();
      __swift_project_value_buffer(v39, qword_1EC47E040);
      v40 = v38;
      v41 = sub_1CAD4C544();
      v42 = sub_1CAD4E3E4();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v56 = v52;
        *v43 = 136315394;
        *(v43 + 4) = sub_1CAD39738(0xD000000000000015, 0x80000001CAD76040, &v56);
        *(v43 + 12) = 2080;
        v55 = v38;
        v44 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E10);
        v45 = sub_1CAD4DFF4();
        v47 = v8;
        v48 = sub_1CAD39738(v45, v46, &v56);

        *(v43 + 14) = v48;
        v8 = v47;
        _os_log_impl(&dword_1CAB19000, v41, v42, "%s unable to save calendar with error: %s", v43, 0x16u);
        v49 = v52;
        swift_arrayDestroy();
        MEMORY[0x1CCAA9440](v49, -1, -1);
        MEMORY[0x1CCAA9440](v43, -1, -1);
      }

      swift_getKeyPath();
      v56 = v2;
      sub_1CAD4C424();

      v50 = *(v2 + 128);
      v51 = v38;

      v50(v38, 1);
    }
  }

  else
  {
    v22 = v8;
    if (qword_1EC462F10 != -1)
    {
      swift_once();
    }

    v23 = sub_1CAD4C564();
    __swift_project_value_buffer(v23, qword_1EC47E040);
    v24 = sub_1CAD4C544();
    v25 = sub_1CAD4E3E4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v56 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1CAD39738(0xD000000000000015, 0x80000001CAD76040, &v56);
      _os_log_impl(&dword_1CAB19000, v24, v25, "%s Calendar data class is disabled in iCloud settings.)", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1CCAA9440](v27, -1, -1);
      MEMORY[0x1CCAA9440](v26, -1, -1);
    }

    swift_getKeyPath();
    v56 = v2;
    sub_1CAC38670();
    sub_1CAD4C424();

    v28 = *(v2 + 128);
    v56 = 0;
    v57 = 0xE000000000000000;

    sub_1CAD4E694();
    MEMORY[0x1CCAA7330](0xD000000000000015, 0x80000001CAD76040);
    MEMORY[0x1CCAA7330](0xD000000000000034, 0x80000001CAD76060);
    v29 = v56;
    v30 = v57;
    sub_1CAC38740();
    v31 = swift_allocError();
    *v32 = v29;
    v32[1] = v30;
    v28(v31, 1);
  }
}

void *sub_1CAC365B0()
{
  swift_getKeyPath();
  sub_1CAC38670();
  sub_1CAD4C424();

  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_1CAC36628()
{
  swift_getKeyPath();
  sub_1CAC38670();
  sub_1CAD4C424();

  return swift_unknownObjectRetain();
}

uint64_t sub_1CAC3669C()
{
  swift_getKeyPath();
  sub_1CAC38670();
  sub_1CAD4C424();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_1CAC3671C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40) == a1 && *(v2 + 48) == a2;
  if (v5 || (sub_1CAD4E9E4() & 1) != 0)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC38670();
    sub_1CAD4C414();
  }
}

uint64_t sub_1CAC3684C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v10 = v1;
  sub_1CAC38670();
  sub_1CAD4C424();

  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v7 = *(v1 + 88);
  v6 = *(v10 + 96);
  v8 = *(v10 + 104);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
}

uint64_t sub_1CAC368F0()
{
  swift_getKeyPath();
  sub_1CAC38670();
  sub_1CAD4C424();

  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_1CAC36970()
{
  swift_getKeyPath();
  sub_1CAC38670();
  sub_1CAD4C424();
}

uint64_t sub_1CAC369E4(uint64_t a1)
{
  if (*(*(v1 + 16) + 16) == *(a1 + 16))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC38670();
    sub_1CAD4C414();
  }
}

uint64_t sub_1CAC36AFC(_OWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  v7 = *(a2 + 32);
  v4 = v7;
  v8 = v3;
  v9 = v2;
  a1[4] = *a2;
  a1[5] = v3;
  a1[6] = v4;
  sub_1CAC38548(&v9, v6);
  sub_1CAC385A4(&v8, v6);
  sub_1CAC38600(&v7, v6);
}

uint64_t sub_1CAC36B94(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1CAC36BD0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 120);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC38670();
    sub_1CAD4C414();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CABD4070(0, &qword_1EC465200);
  v5 = v4;
  v6 = a1;
  v7 = sub_1CAD4E494();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 120);
LABEL_8:
  *(v2 + 120) = a1;
}

uint64_t sub_1CAC36D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
}

uint64_t sub_1CAC36D6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v56 - v2;
  v4 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1CAD4DEE4();
  v6 = CUIKBundle();
  sub_1CAD4C184();
  v0[3] = sub_1CAD4DFC4();
  v0[4] = v7;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = nullsub_1;
  v0[17] = 0;
  sub_1CAD4C454();
  v8 = v0[4];
  v0[5] = v0[3];
  v0[6] = v8;
  v62 = v0;
  v9 = objc_opt_self();

  v63 = v9;
  v10 = [v9 defaultCalendarColorNames];
  if (!v10)
  {
    goto LABEL_38;
  }

  v11 = v10;
  v12 = sub_1CAD4E214();

  v13 = sub_1CACA2C4C(v12);

  if (!v13)
  {
    goto LABEL_38;
  }

  v61 = v3;
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = v13 + 40;
    v59 = v14 - 1;
    v64 = MEMORY[0x1E69E7CC0];
    v60 = v13 + 40;
    do
    {
      v17 = (v16 + 16 * v15);
      v18 = v15;
      while (1)
      {
        if (v18 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v20 = *(v17 - 1);
        v19 = *v17;
        v15 = v18 + 1;
        v21 = objc_opt_self();

        v22 = sub_1CAD4DF54();
        v23 = [v21 displayColorForSymbolicName_];

        if (v23)
        {
          break;
        }

        v17 += 2;
        ++v18;
        if (v14 == v15)
        {
          goto LABEL_19;
        }
      }

      v24 = v23;
      v58 = sub_1CAD4D7D4();
      v25 = sub_1CAD4DF54();
      v26 = [v63 localizedColorNameForColorName_];

      if (!v26)
      {
        goto LABEL_37;
      }

      v27 = sub_1CAD4DF94();
      v56 = v28;
      v57 = v27;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = v58;
      }

      else
      {
        v29 = v58;
        v64 = sub_1CAD34E44(0, *(v64 + 2) + 1, 1, v64);
      }

      v31 = *(v64 + 2);
      v30 = *(v64 + 3);
      if (v31 >= v30 >> 1)
      {
        v64 = sub_1CAD34E44((v30 > 1), v31 + 1, 1, v64);
      }

      v32 = v64;
      *(v64 + 2) = v31 + 1;
      v33 = &v32[40 * v31];
      v34 = v56;
      v35 = v57;
      *(v33 + 4) = v29;
      *(v33 + 5) = v35;
      *(v33 + 6) = v34;
      *(v33 + 7) = v20;
      *(v33 + 8) = v19;
      v16 = v60;
    }

    while (v59 != v18);
  }

  else
  {
    v64 = MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  v60 = v13;
  v36 = v64;
  v62[7] = v64;
  v37 = *(v36 + 2);

  v63 = v37;
  if (v37)
  {
    v38 = 0;
    v39 = 0x6E65657267;
    v40 = v64 + 64;
    while (v38 < *(v64 + 2))
    {
      v41 = *v40;
      if (*v40)
      {
        v43 = *(v40 - 4);
        v42 = *(v40 - 3);
        v44 = *(v40 - 2);
        v45 = *(v40 - 1);
        if (sub_1CAD4E004() == v39 && v46 == 0xE500000000000000)
        {

          goto LABEL_34;
        }

        v48 = v39;
        v49 = sub_1CAD4E9E4();

        if (v49)
        {

          goto LABEL_34;
        }

        v39 = v48;
      }

      ++v38;
      v40 += 40;
      if (v63 == v38)
      {
        goto LABEL_31;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_31:

  v50 = v62[7];
  if (!v50[2])
  {
LABEL_38:
    result = sub_1CAD4E794();
    __break(1u);
    return result;
  }

  v43 = v50[4];
  v42 = v50[5];
  v44 = v50[6];
  v45 = v50[7];
  v41 = v50[8];

LABEL_34:
  v51 = v61;

  v52 = v62;
  *(v62 + 64) = 0;
  v52[9] = v43;
  v52[10] = v42;
  v52[11] = v44;
  v52[12] = v45;
  v52[13] = v41;
  v53 = sub_1CAD4E304();
  (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
  v54 = swift_allocObject();
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v52;

  sub_1CACA6D34(0, 0, v51, &unk_1CAD5F428, v54);

  return v52;
}

uint64_t sub_1CAC3740C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CAC3749C();
}

uint64_t sub_1CAC374BC()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CAC375F4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465220);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CAC37AA4;
  v0[13] = &block_descriptor_1;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CAC375F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1CAC37880;
  }

  else
  {
    v2 = sub_1CAC37704;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1CAC37704()
{
  sub_1CAC36BD0(*(v0 + 144));
  if (sub_1CAC11E64())
  {
    v2 = *(v0 + 152);
    v1 = *(v0 + 160);
    v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    swift_getKeyPath();
    *(v0 + 80) = v2;
    sub_1CAC38670();
    sub_1CAD4C424();

    v4 = [v3 initWithFamilyCircle_];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    *(v0 + 80) = v2;
    sub_1CAD4C414();

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1CAC37880()
{
  v18 = v0;
  swift_willThrow();
  if (qword_1EC462F10 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_1CAD4C564();
  __swift_project_value_buffer(v2, qword_1EC47E040);
  v3 = v1;
  v4 = sub_1CAD4C544();
  v5 = sub_1CAD4E3E4();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[20];
  v7 = v0[21];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1CAD39738(0xD000000000000012, 0x80000001CAD76190, v17);
    *(v9 + 12) = 2080;
    v0[10] = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E10);
    v12 = sub_1CAD4DFF4();
    v14 = sub_1CAD39738(v12, v13, v17);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1CAB19000, v4, v5, "%s unable to request family circle with error: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCAA9440](v10, -1, -1);
    MEMORY[0x1CCAA9440](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1CAC37AA4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC466E10);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1CAC37B7C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_1CAD4E604())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x1E69E7CD0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465210);
  v3 = sub_1CAD4E674();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_1CAD4E5F4();
  sub_1CABD4070(0, &qword_1EC464318);
  sub_1CAC38794();
  result = sub_1CAD4E354();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_1CAD4E624();
    if (!v16)
    {
LABEL_34:
      sub_1CAC297D0();

      return v3;
    }

    *&v27 = v16;
    sub_1CABD4070(0, &qword_1EC464318);
    swift_dynamicCast();
LABEL_25:
    sub_1CABD4070(0, &qword_1EC464318);
    swift_dynamicCast();
    result = sub_1CAD4E634();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1CAC37EF8()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC13CalendarUIKit29CreateFamilyCalendarViewModel___observationRegistrar;
  v2 = sub_1CAD4C464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1CAC37FB8()
{
  sub_1CAC37EF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CreateFamilyCalendarViewModel()
{
  result = qword_1EC4651E0;
  if (!qword_1EC4651E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAC38064()
{
  result = sub_1CAD4C464();
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

uint64_t sub_1CAC38144(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1CAC3818C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CAC381F4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1CAC38200(void *a1, void *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if (sub_1CAD4D7F4())
  {
    v10 = v2 == v6 && v4 == v8;
    if (v10 || (sub_1CAD4E9E4() & 1) != 0)
    {
      if (v5)
      {
        if (v9 && (v3 == v7 && v5 == v9 || (sub_1CAD4E9E4() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v9)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1CAC382C8()
{
  v1 = *(v0 + 32);
  sub_1CAD4EA84();
  sub_1CAD4D834();
  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (v1)
  {
    sub_1CAD4E054();
  }

  return sub_1CAD4EAC4();
}

uint64_t sub_1CAC38364()
{
  v1 = *(v0 + 32);
  sub_1CAD4D834();
  sub_1CAD4E054();
  if (!v1)
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();

  return sub_1CAD4E054();
}

uint64_t sub_1CAC38400()
{
  v1 = *(v0 + 32);
  sub_1CAD4EA84();
  sub_1CAD4D834();
  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (v1)
  {
    sub_1CAD4E054();
  }

  return sub_1CAD4EAC4();
}

unint64_t sub_1CAC3849C()
{
  result = qword_1EC4651F0;
  if (!qword_1EC4651F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4651F0);
  }

  return result;
}

unint64_t sub_1CAC384F4()
{
  result = qword_1EC4651F8;
  if (!qword_1EC4651F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4651F8);
  }

  return result;
}

uint64_t sub_1CAC38600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAC38670()
{
  result = qword_1EC4642B8;
  if (!qword_1EC4642B8)
  {
    type metadata accessor for CreateFamilyCalendarViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4642B8);
  }

  return result;
}

uint64_t sub_1CAC386C8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
}

void sub_1CAC38708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
  v4 = v2;
}

unint64_t sub_1CAC38740()
{
  result = qword_1EC465208;
  if (!qword_1EC465208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465208);
  }

  return result;
}

unint64_t sub_1CAC38794()
{
  result = qword_1EC465218;
  if (!qword_1EC465218)
  {
    sub_1CABD4070(255, &qword_1EC464318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465218);
  }

  return result;
}

uint64_t sub_1CAC387FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CAC3740C();
}

uint64_t sub_1CAC388C8()
{
  *(*(v0 + 16) + 112) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1CAC38904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CAC3894C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CAC38BB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CAC38BFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1CAC38C68@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465228);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  if (a1 >> 62)
  {
    v17[0] = v9;
    v15 = sub_1CAD4E604();
    v9 = v17[0];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v17[3] = a1;
    v17[0] = v9;
    swift_getKeyPath();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465238);
    sub_1CAB23B0C(&qword_1EC465240, &qword_1EC465230);
    v13 = sub_1CAC39074();
    v17[1] = &type metadata for AutocompleteItemCell;
    v17[2] = v13;
    swift_getOpaqueTypeConformance2();
    sub_1CAD4DB64();
    (*(v17[0] + 32))(a4, v11, v8);
    return (*(v17[0] + 56))(a4, 0, 1, v8);
  }

  v16 = *(v9 + 56);

  return v16(a4, 1, 1, v8);
}

void sub_1CAC38F20(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueID];
  v4 = sub_1CAD4DF94();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_1CAC38F78(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  sub_1CAC39074();
  v9 = v7;

  sub_1CAD4D544();
}

unint64_t sub_1CAC39074()
{
  result = qword_1EC465248;
  if (!qword_1EC465248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465248);
  }

  return result;
}

unint64_t sub_1CAC39108()
{
  result = qword_1EC465250;
  if (!qword_1EC465250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465258);
    sub_1CAC3918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465250);
  }

  return result;
}

unint64_t sub_1CAC3918C()
{
  result = qword_1EC465260;
  if (!qword_1EC465260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465228);
    sub_1CAC39074();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465260);
  }

  return result;
}

id sub_1CAC39258(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 systemGroupedBackgroundColor];
  v4 = [v3 resolvedColorWithTraitCollection_];

  result = [v2 tableCellGroupedBackgroundColor];
  if (result)
  {
    v6 = result;
    v7 = [result resolvedColorWithTraitCollection_];

    v8 = [v4 colorWithAlphaComponent_];
    v9 = [v7 cuik:v8 blendWithColor:?];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CAC39360(void *a1)
{
  v1 = a1;
  v2 = [v1 pasteboardResults];
  if (v2)
  {
    v3 = v2;
    sub_1CABD4070(0, &qword_1EC465288);
    v4 = sub_1CAD4E214();

    if (v4 >> 62)
    {
      if (sub_1CAD4E604())
      {
LABEL_4:

        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCAA7940](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v5 = *(v4 + 32);
        }
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}