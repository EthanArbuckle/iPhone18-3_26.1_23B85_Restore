unint64_t sub_1E4869CE8(unint64_t result)
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

    v9 = sub_1E4878EDC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1E4878E2C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E4869E88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_1E487732C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

id sub_1E486A12C(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1E4878EFC();
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  sub_1E486CD68();
  result = sub_1E4878D8C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1E4878F2C())
      {
        goto LABEL_30;
      }

      sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t sub_1E486A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a3;
  v81 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  if (sub_1E487767C() == 3)
  {
    v7 = 4;
    goto LABEL_37;
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    if ((v8 = sub_1E487771C(), (v9 & 1) == 0) && !v8 || (v10 = sub_1E487771C(), (v11 & 1) == 0) && v10 == 1)
    {
      v7 = 1;
      goto LABEL_37;
    }
  }

  __swift_project_boxed_opaque_existential_0(v79, v80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v71 = sub_1E4878E5C();
  v72 = &v70;
  v13 = *(v71 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v16 = &v70 - v15;
  sub_1E487769C();
  v17 = *(AssociatedTypeWitness - 8);
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v16, v71);
  }

  else
  {
    v77 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_0(v76);
    (*(v17 + 32))();
    v18 = sub_1E48775AC();
    __swift_destroy_boxed_opaque_existential_1(v76);
    if (v18)
    {
LABEL_17:
      v7 = 2;
      goto LABEL_37;
    }
  }

  if (sub_1E487772C() & 1) == 0 && (sub_1E487770C())
  {
    v19 = sub_1E487771C();
    if ((v20 & 1) == 0 && v19 == 4)
    {
      goto LABEL_17;
    }
  }

  if (sub_1E487770C())
  {
    v21 = sub_1E487771C();
    if ((v22 & 1) == 0 && v21 == 3)
    {
      v7 = 3;
      goto LABEL_37;
    }
  }

  if (sub_1E48776CC())
  {
LABEL_23:
    v7 = 5;
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_0(v79, v80);
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1E4878E5C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v70 - v27;
  sub_1E487761C();
  v29 = *(v23 - 8);
  if ((*(v29 + 48))(v28, 1, v23) == 1)
  {
    (*(v25 + 8))(v28, v24);
    __swift_project_boxed_opaque_existential_0(v79, v80);
    v30 = swift_getAssociatedTypeWitness();
    v31 = sub_1E4878E5C();
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x1EEE9AC00](v31);
    v35 = &v70 - v34;
    sub_1E487769C();
    v36 = *(v30 - 8);
    if ((*(v36 + 48))(v35, 1, v30) == 1)
    {
      (*(v32 + 8))(v35, v31);
    }

    else
    {
      v74 = v30;
      v75 = swift_getAssociatedConformanceWitness();
      v38 = __swift_allocate_boxed_opaque_existential_0(&v73);
      (*(v36 + 32))(v38, v35, v30);
      __swift_project_boxed_opaque_existential_0(&v73, v74);
      v39 = swift_getAssociatedTypeWitness();
      v40 = sub_1E4878E5C();
      v41 = *(v40 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x1EEE9AC00](v40);
      v44 = &v70 - v43;
      sub_1E48775DC();
      v45 = *(v39 - 8);
      if ((*(v45 + 48))(v44, 1, v39) != 1)
      {
        v77 = v39;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v76);
        (*(v45 + 32))();
        v49 = sub_1E48779EC();
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_1(v76);
        __swift_destroy_boxed_opaque_existential_1(&v73);
        v52 = *MEMORY[0x1E6966948];
        v53 = sub_1E4878BDC();
        if (!v51)
        {
          goto LABEL_35;
        }

        if (v49 == v53 && v51 == v54)
        {
        }

        else
        {
          v55 = sub_1E48790EC();

          if ((v55 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        __swift_project_boxed_opaque_existential_0(v79, v80);
        v56 = swift_getAssociatedTypeWitness();
        v57 = sub_1E4878E5C();
        v58 = *(v57 - 8);
        v59 = *(v58 + 64);
        MEMORY[0x1EEE9AC00](v57);
        v61 = &v70 - v60;
        sub_1E487769C();
        v62 = *(v56 - 8);
        if ((*(v62 + 48))(v61, 1, v56) != 1)
        {
          v77 = v56;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(v76);
          (*(v62 + 32))();
          v63 = sub_1E48775BC();
          v65 = v64;
          __swift_destroy_boxed_opaque_existential_1(v76);
          v66 = *MEMORY[0x1E6966810];
          v67 = sub_1E4878BDC();
          if (v65)
          {
            if (v63 == v67 && v65 == v68)
            {

              v7 = 5;
              goto LABEL_37;
            }

            v69 = sub_1E48790EC();

            if (v69)
            {
              goto LABEL_23;
            }

LABEL_36:
            v7 = 0;
            goto LABEL_37;
          }

LABEL_35:

          goto LABEL_36;
        }

        (*(v58 + 8))(v61, v57);
        v46 = MEMORY[0x1E6966810];
LABEL_34:
        v47 = *v46;
        sub_1E4878BDC();
        goto LABEL_35;
      }

      (*(v41 + 8))(v44, v40);
      __swift_destroy_boxed_opaque_existential_1(&v73);
    }

    v46 = MEMORY[0x1E6966948];
    goto LABEL_34;
  }

  v74 = v23;
  v75 = swift_getAssociatedConformanceWitness();
  v37 = __swift_allocate_boxed_opaque_existential_0(&v73);
  (*(v29 + 32))(v37, v28, v23);
  sub_1E47B488C(&v73, v76);
  __swift_project_boxed_opaque_existential_0(v76, v77);
  if (sub_1E4877A2C())
  {
    v7 = 6;
  }

  else
  {
    v7 = 7;
  }

  __swift_destroy_boxed_opaque_existential_1(v76);
LABEL_37:
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v7;
}

uint64_t sub_1E486AE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v59 = a2;
  v72 = type metadata accessor for Utils.EventWithColor();
  v68 = *(v72 - 8);
  v4 = *(v68 + 64);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v67 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - v7;
  v65 = type metadata accessor for ColorBarView.Styling(0);
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v65);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v58 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v19 = type metadata accessor for Event();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1E69E7CC0];
  v64 = *(a1 + 16);
  if (v64)
  {
    v25 = 0;
    v26 = *(v21 + 80);
    v61 = *(v21 + 72);
    v62 = a1 + ((v26 + 32) & ~v26);
    v27 = MEMORY[0x1E69E7CC0];
    v60 = v18;
    v63 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v70 = v25;
      sub_1E48703D4(v62 + v61 * v25, v23, type metadata accessor for Event);
      v28 = sub_1E4770A7C(v23, v66);
      v29 = &v18[*(v65 + 40)];
      sub_1E487735C();
      v18[48] = 1;
      v71 = v28;
      *v18 = v28;
      *(v18 + 1) = 0;
      v18[16] = 1;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 3) = 3;
      v30 = *(v27 + 16);
      v69 = v27;
      if (v30)
      {
        v31 = v27;
        v73 = v24;
        sub_1E485809C(0, v30, 0);
        v32 = v73;
        v33 = v31 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v34 = *(v68 + 72);
        do
        {
          sub_1E48703D4(v33, v8, type metadata accessor for Utils.EventWithColor);
          sub_1E48703D4(&v8[*(v72 + 20)], v13, type metadata accessor for ColorBarView.Styling);
          sub_1E487043C(v8, type metadata accessor for Utils.EventWithColor);
          v73 = v32;
          v36 = *(v32 + 16);
          v35 = *(v32 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1E485809C(v35 > 1, v36 + 1, 1);
            v32 = v73;
          }

          *(v32 + 16) = v36 + 1;
          sub_1E487049C(v13, v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v36, type metadata accessor for ColorBarView.Styling);
          v33 += v34;
          --v30;
        }

        while (v30);
        v18 = v60;
      }

      else
      {
        v32 = v24;
      }

      v37 = 0;
      v25 = v70 + 1;
      v38 = *(v32 + 16);
      while (v38 != v37)
      {
        sub_1E48703D4(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37++, v16, type metadata accessor for ColorBarView.Styling);
        v39 = *v16;
        v40 = sub_1E487862C();
        sub_1E487043C(v16, type metadata accessor for ColorBarView.Styling);
        if (v40)
        {

          sub_1E487043C(v18, type metadata accessor for ColorBarView.Styling);
          v23 = v63;
          sub_1E487043C(v63, type metadata accessor for Event);
          v24 = MEMORY[0x1E69E7CC0];
          v27 = v69;
          goto LABEL_4;
        }
      }

      v23 = v63;
      v41 = v67;
      sub_1E48703D4(v63, v67, type metadata accessor for Event);
      sub_1E48703D4(v18, v41 + *(v72 + 20), type metadata accessor for ColorBarView.Styling);
      v42 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1E4860CF4(0, v42[2] + 1, 1, v42, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
      }

      v44 = v42[2];
      v43 = v42[3];
      v45 = v42;
      if (v44 >= v43 >> 1)
      {
        v45 = sub_1E4860CF4(v43 > 1, v44 + 1, 1, v42, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
      }

      sub_1E487043C(v18, type metadata accessor for ColorBarView.Styling);
      sub_1E487043C(v23, type metadata accessor for Event);
      *(v45 + 16) = v44 + 1;
      v27 = v45;
      sub_1E487049C(v67, v45 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v44, type metadata accessor for Utils.EventWithColor);
      v24 = MEMORY[0x1E69E7CC0];
LABEL_4:
      ;
    }

    while (v25 != v64);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v49 = sub_1E47F8C3C(v59, v27);
  if ((v48 & 1) == 0)
  {
    goto LABEL_22;
  }

  v52 = v48;
  v53 = v47;
  v54 = v46;
  sub_1E487910C();
  swift_unknownObjectRetain_n();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {
    swift_unknownObjectRelease();
    v55 = MEMORY[0x1E69E7CC0];
  }

  v56 = *(v55 + 16);

  if (__OFSUB__(v52 >> 1, v53))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v56 != (v52 >> 1) - v53)
  {
LABEL_32:
    swift_unknownObjectRelease();
    v48 = v52;
    v47 = v53;
    v46 = v54;
LABEL_22:
    sub_1E486106C(v49, v46, v47, v48, &qword_1ECF7DBA8, &qword_1E4883768, type metadata accessor for Utils.EventWithColor);
    v51 = v50;
LABEL_29:
    swift_unknownObjectRelease();
    return v51;
  }

  v51 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v51)
  {
    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  return v51;
}

uint64_t sub_1E486B590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Utils.EventWithColor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ColorBarView.Styling(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E486AE54(a1, a2, a3);
  v17 = *(v16 + 16);
  if (v17)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1E485809C(0, v17, 0);
    v18 = v26;
    v19 = *(v7 + 80);
    v25 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v21 = *(v7 + 72);
    do
    {
      sub_1E48703D4(v20, v10, type metadata accessor for Utils.EventWithColor);
      sub_1E48703D4(&v10[*(v6 + 20)], v15, type metadata accessor for ColorBarView.Styling);
      sub_1E487043C(v10, type metadata accessor for Utils.EventWithColor);
      v26 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1E485809C(v22 > 1, v23 + 1, 1);
        v18 = v26;
      }

      *(v18 + 16) = v23 + 1;
      sub_1E487049C(v15, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, type metadata accessor for ColorBarView.Styling);
      v20 += v21;
      --v17;
    }

    while (v17);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1E486B81C(uint64_t a1)
{
  v2 = sub_1E487751C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DB50, &qword_1E4883718);
    v10 = sub_1E4878F7C();
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
      sub_1E486CD08(&qword_1EE2B59E8, MEMORY[0x1E6969AD0]);
      v18 = sub_1E4878A9C();
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
          sub_1E486CD08(&qword_1EE2B59E0, MEMORY[0x1E6969AD0]);
          v25 = sub_1E4878AFC();
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

uint64_t sub_1E486BB3C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4878F0C())
  {
    v4 = sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
    v5 = sub_1E486CD68();
    result = MEMORY[0x1E6919410](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6919650](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1E4862D90(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1E4878F0C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1E486BC7C(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_1E4878F0C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6919650](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 isEqual_];

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1E486BD74(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1E486BC7C(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1E4878F0C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1E4878F0C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6919650](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 isEqual_];

    if ((v13 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1E6919650](v8, v5);
          v15 = MEMORY[0x1E6919650](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1E4866E80(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_1E4866E80(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1E4878F0C();
}

uint64_t sub_1E486BFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1E4878F0C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4878F0C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E486C0E4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1E4878F0C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1E4878F0C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1E48478C8(result);

  return sub_1E486BFD4(v4, v2, 0);
}

void sub_1E486C1BC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69669B8]);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E48609C4;
  aBlock[3] = &block_descriptor_4;
  v3 = _Block_copy(aBlock);

  v4 = [v2 initWithEventStore:a1 visibilityChangedCallback:v3 queue:0];
  _Block_release(v3);
  v5 = [v4 visibleCalendars];
  sub_1E48493B4(0, &qword_1EE2B46D0, 0x1E6966990);
  v6 = sub_1E4878CAC();

  aBlock[0] = v6;
  v7 = objc_opt_self();
  v8 = [v7 unselectedCalendarsForFocusModeInEventStore_];
  if (v8)
  {
    v9 = v8;
    sub_1E486CD68();
    v10 = sub_1E4878D5C();

    v11 = sub_1E486BB3C(v6);

    v12 = sub_1E485F4DC(v10, v11);

    v13 = sub_1E4861210(v12);

    aBlock[0] = v13;
  }

  v14 = [objc_opt_self() isReminderAppLocked];
  v15 = [v7 reminderCalendarInEventStore_];
  v16 = v15;
  if (v14)
  {
    v17 = v15;
    v18 = sub_1E486BD74(aBlock, v16);

    if (aBlock[0] >> 62)
    {
      v19 = sub_1E4878F0C();
      if (v19 >= v18)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v19 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v18)
      {
LABEL_6:
        sub_1E486C0E4(v18, v19);

        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1E486C438(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = sub_1E487773C();
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_1E48776CC();
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if ((sub_1E48776AC() & 1) == 0)
  {
    return 0;
  }

  v7 = MEMORY[0x1E69932F0];
  v8 = MEMORY[0x1E69932C0];
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x1E69932B8];
  }

  if ((v3 & 1) == 0)
  {
    v7 = v8;
  }

  v9 = *v7;
  return sub_1E4878BDC();
}

void *sub_1E486C514(char a1, uint64_t a2, void *a3)
{
  v65 = type metadata accessor for DayEvents();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = &v57 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v64 = &v57 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v57 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  v24 = sub_1E487753C();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {

    return a3;
  }

  v59 = v27;
  v60 = v26;
  sub_1E4877A7C();
  v30 = a3[2];
  if (!v30)
  {
    a3 = MEMORY[0x1E69E7CC0];
    v50 = v61;
    v49 = v62;
    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v31 = v6;
  v32 = 0;
  v68 = 0;
  v70 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v33 = a3 + v70;
  v58 = v31;
  v69 = *(v31 + 72);
  a3 = MEMORY[0x1E69E7CC0];
  v66 = v14;
  v67 = a2;
  do
  {
    sub_1E48703D4(v33, v23, type metadata accessor for DayEvents);
    if (sub_1E48774CC())
    {
      v34 = sub_1E487732C();
      (*(*(v34 - 8) + 16))(v21, v23, v34);
      v35 = v65;
      v36 = *&v23[*(v65 + 24)];
      *&v21[*(v65 + 20)] = *&v23[*(v65 + 20)];
      *&v21[*(v35 + 24)] = v36;
      v32 = 1;
      v21[*(v35 + 28)] = 1;
    }

    else
    {
      v37 = sub_1E48772CC();
      if (v68 & 1 | ((v37 & 1) == 0))
      {
        v32 |= v37;
        sub_1E48703D4(v23, v21, type metadata accessor for DayEvents);
        goto LABEL_14;
      }

      v38 = sub_1E487732C();
      v39 = v63;
      (*(*(v38 - 8) + 16))(v63, a2, v38);
      v40 = v64;
      v41 = v65;
      v42 = MEMORY[0x1E69E7CC0];
      *(v39 + *(v65 + 20)) = MEMORY[0x1E69E7CC0];
      *(v39 + *(v41 + 24)) = v42;
      *(v39 + *(v41 + 28)) = 1;
      sub_1E48703D4(v39, v40, type metadata accessor for DayEvents);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v44 = a3[2];
      v43 = a3[3];
      if (v44 >= v43 >> 1)
      {
        a3 = sub_1E4860CF4(v43 > 1, v44 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      sub_1E487043C(v63, type metadata accessor for DayEvents);
      a3[2] = v44 + 1;
      sub_1E487049C(v64, a3 + v70 + v44 * v69, type metadata accessor for DayEvents);
      sub_1E48703D4(v23, v21, type metadata accessor for DayEvents);
      v32 = 1;
    }

    v68 = 1;
LABEL_14:
    sub_1E48703D4(v21, v14, type metadata accessor for DayEvents);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
    }

    v46 = a3[2];
    v45 = a3[3];
    if (v46 >= v45 >> 1)
    {
      a3 = sub_1E4860CF4(v45 > 1, v46 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
    }

    sub_1E487043C(v21, type metadata accessor for DayEvents);
    sub_1E487043C(v23, type metadata accessor for DayEvents);
    a3[2] = v46 + 1;
    v47 = v69;
    v48 = a3 + v70 + v46 * v69;
    v14 = v66;
    sub_1E487049C(v66, v48, type metadata accessor for DayEvents);
    v33 += v47;
    --v30;
    a2 = v67;
  }

  while (v30);
  v50 = v61;
  v49 = v62;
  if (v32)
  {
    (*(v59 + 8))(v29, v60);
    return a3;
  }

  v6 = v58;
  v51 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v52 = sub_1E487732C();
  (*(*(v52 - 8) + 16))(v50, a2, v52);
  v53 = v65;
  *(v50 + *(v65 + 20)) = v51;
  *(v50 + *(v53 + 24)) = v51;
  *(v50 + *(v53 + 28)) = 1;
  sub_1E48703D4(v50, v49, type metadata accessor for DayEvents);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a3 = sub_1E4860CF4(0, a3[2] + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
  }

  v55 = a3[2];
  v54 = a3[3];
  if (v55 >= v54 >> 1)
  {
    a3 = sub_1E4860CF4(v54 > 1, v55 + 1, 1, a3, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
  }

  sub_1E487043C(v50, type metadata accessor for DayEvents);
  (*(v59 + 8))(v29, v60);
  a3[2] = v55 + 1;
  sub_1E487049C(v49, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v55, type metadata accessor for DayEvents);
  return a3;
}

uint64_t sub_1E486CD08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E486CD68()
{
  result = qword_1ECF7DB58;
  if (!qword_1ECF7DB58)
  {
    sub_1E48493B4(255, &qword_1EE2B46D0, 0x1E6966990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DB58);
  }

  return result;
}

uint64_t sub_1E486CDD0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1 && a2 >= 1)
  {
    if (qword_1EE2B4848 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v2 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  if (qword_1EE2B4848 != -1)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_1E48771EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1E487A7E0;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = v2;
  v6 = sub_1E4878BAC();

  return v6;
}

unint64_t sub_1E486CF9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C440, &qword_1E487D638);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E486D088(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1E4860B84(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1E486CF9C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1E486D148(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v118 = a3;
  v115 = a2;
  v120 = a1;
  v4 = sub_1E487751C();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v107 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1E487744C();
  v121 = *(v116 - 8);
  v7 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v104 - v15;
  v114 = sub_1E487757C();
  v17 = *(v114 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v111 = &v104 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v104 - v28;
  v30 = sub_1E487732C();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v112 = &v104 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v104 - v37;
  sub_1E4773850(v115, v29, &unk_1ECF7C880, &qword_1E4882710);
  v115 = v31[6];
  v39 = v115(v29, 1, v30);
  v119 = v31;
  if (v39 == 1)
  {
    sub_1E47738B8(v29, &unk_1ECF7C880, &qword_1E4882710);
    v40 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v41 = sub_1E487748C();
    [v40 setCalendar_];

    sub_1E487750C();
    v42 = sub_1E487756C();
    (*(v17 + 8))(v20, v114);
    [v40 setTimeZone_];

    v43 = v113;
    sub_1E48774EC();
    v44 = *(v121 + 48);
    v45 = v116;
    if (v44(v43, 1, v116) == 1)
    {
      v46 = 0;
    }

    else
    {
      v55 = v113;
      v46 = sub_1E48773DC();
      (*(v121 + 8))(v55, v45);
    }

    [v40 setLocale_];

    sub_1E4773850(v118, v25, &unk_1ECF7C880, &qword_1E4882710);
    if (v115(v25, 1, v30) == 1)
    {
      sub_1E47738B8(v25, &unk_1ECF7C880, &qword_1E4882710);
LABEL_20:
      [v40 setFormattingContext_];
      v83 = sub_1E4878B9C();
      [v40 setLocalizedDateFormatFromTemplate_];

      v84 = sub_1E48772BC();
      v85 = [v40 stringFromDate_];

      v86 = sub_1E4878BDC();
      return v86;
    }

    v69 = v119;
    v70 = v110;
    (v119[4])(v110, v25, v30);
    if ((sub_1E48774CC() & 1) == 0)
    {
      (v69[1])(v70, v30);
      goto LABEL_20;
    }

    v71 = v69;
    v72 = v105;
    sub_1E48774EC();
    if (v44(v72, 1, v45) == 1)
    {
      v73 = v106;
      sub_1E48773EC();
      v74 = v44(v72, 1, v45);
      v75 = v45;
      v76 = v121;
      if (v74 != 1)
      {
        sub_1E47738B8(v72, &qword_1ECF7BE58, &unk_1E487DDB0);
      }
    }

    else
    {
      v76 = v121;
      v73 = v106;
      (*(v121 + 32))(v106, v72, v45);
      v75 = v45;
    }

    sub_1E485F184();
    (*(v76 + 8))(v73, v75);
    v99 = v107;
    v98 = v108;
    v100 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x1E6969A88], v109);
    sub_1E487752C();
    (*(v98 + 8))(v99, v100);
    [v40 setFormattingContext_];
    v101 = sub_1E4878B9C();

    [v40 setLocalizedDateFormatFromTemplate_];

    v102 = sub_1E48772BC();
    v103 = [v40 stringFromDate_];

    v86 = sub_1E4878BDC();
    (v71[1])(v110, v30);
  }

  else
  {
    v47 = v31[4];
    v113 = v38;
    v110 = v47;
    (v47)(v38, v29, v30);
    v48 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v49 = sub_1E487748C();
    [v48 setCalendar_];

    sub_1E487750C();
    v50 = sub_1E487756C();
    (*(v17 + 8))(v20, v114);
    [v48 setTimeZone_];

    sub_1E48774EC();
    v51 = v121;
    v52 = v116;
    v53 = v30;
    if ((*(v121 + 48))(v16, 1, v116) == 1)
    {
      v54 = 0;
    }

    else
    {
      v56 = sub_1E48773DC();
      v57 = v52;
      v54 = v56;
      (*(v51 + 8))(v16, v57);
    }

    v58 = v111;
    [v48 setLocale_];

    [v48 setDateStyle_];
    [v48 setTimeStyle_];
    [v48 setFormattingContext_];
    sub_1E4773850(v118, v58, &unk_1ECF7C880, &qword_1E4882710);
    if (v115(v58, 1, v30) == 1)
    {
      sub_1E47738B8(v58, &unk_1ECF7C880, &qword_1E4882710);
      [v48 setDateStyle_];
      [v48 setTimeStyle_];
      v59 = sub_1E48772BC();
      v60 = [v48 stringFromDate_];

      v61 = sub_1E4878BDC();
      v63 = v62;

      v64 = sub_1E48772BC();
      v65 = [v48 stringFromDate_];

      v66 = sub_1E4878BDC();
      v68 = v67;
    }

    else
    {
      (v110)(v112, v58);
      v77 = sub_1E48774CC();
      v78 = sub_1E48774CC();
      if (v77)
      {
        v79 = sub_1E48772BC();
        v80 = [v48 stringFromDate_];

        v61 = sub_1E4878BDC();
        v63 = v81;

        if ((v78 & 1) == 0)
        {
          v82 = sub_1E4878B9C();
          [v48 setLocalizedDateFormatFromTemplate_];
        }
      }

      else
      {
        v87 = sub_1E4878B9C();
        [v48 setLocalizedDateFormatFromTemplate_];

        v88 = sub_1E48772BC();
        v89 = [v48 stringFromDate_];

        v61 = sub_1E4878BDC();
        v63 = v90;

        if (v78)
        {
          [v48 setDateStyle_];
          [v48 setTimeStyle_];
        }
      }

      v91 = sub_1E48772BC();
      v92 = [v48 stringFromDate_];

      v66 = sub_1E4878BDC();
      v68 = v93;

      (v119[1])(v112, v30);
    }

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1E487A7F0;
    v95 = MEMORY[0x1E69E6158];
    *(v94 + 56) = MEMORY[0x1E69E6158];
    v96 = sub_1E478B950();
    *(v94 + 32) = v61;
    *(v94 + 40) = v63;
    *(v94 + 96) = v95;
    *(v94 + 104) = v96;
    *(v94 + 64) = v96;
    *(v94 + 72) = v66;
    *(v94 + 80) = v68;
    v86 = sub_1E4878BAC();

    (v119[1])(v113, v53);
  }

  return v86;
}

id sub_1E486DF20(double a1)
{
  result = [objc_opt_self() localizedStringForInterval:2 withOptions:a1];
  if (result)
  {
    v2 = result;
    v3 = sub_1E4878BDC();
    v5 = v4;

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E487A7E0;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1E478B950();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v7 = sub_1E4878BAC();

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E486E0AC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1E48774CC() & 1;
}

uint64_t sub_1E486E150()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(type metadata accessor for Event() + 20);
  return sub_1E48774CC() & 1;
}

uint64_t sub_1E486E1D4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for Event();
  return a2(a1 + *(v6 + 20), v5) & 1;
}

uint64_t sub_1E486E22C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7CFA8, &qword_1E487FBA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  if (!a2 || !a1 && a2 == 0xE000000000000000 || (sub_1E48790EC() & 1) != 0)
  {
    return 0;
  }

  v20 = objc_opt_self();
  v21 = sub_1E4878B9C();
  v22 = sub_1E487756C();
  v23 = [v20 overlayCalendarForCalendarIdentifier:v21 timezone:v22];

  if (v23)
  {
    sub_1E487749C();

    v24 = sub_1E487753C();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v25 = sub_1E487753C();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  sub_1E477372C(v16, v18, &qword_1ECF7CFA8, &qword_1E487FBA0);
  v26 = sub_1E48772BC();
  if (a3)
  {
    sub_1E4773850(v18, v13, &qword_1ECF7CFA8, &qword_1E487FBA0);
    v27 = sub_1E487753C();
    v28 = *(v27 - 8);
    v29 = 0;
    if ((*(v28 + 48))(v13, 1, v27) != 1)
    {
      v29 = sub_1E487748C();
      (*(v28 + 8))(v13, v27);
    }

    v30 = [objc_opt_self() overlayDayNumberStringForDate:v26 inCalendar:v29];
  }

  else
  {
    sub_1E4773850(v18, v10, &qword_1ECF7CFA8, &qword_1E487FBA0);
    v31 = sub_1E487753C();
    v32 = *(v31 - 8);
    v29 = 0;
    if ((*(v32 + 48))(v10, 1, v31) != 1)
    {
      v29 = sub_1E487748C();
      (*(v32 + 8))(v10, v31);
    }

    v30 = [objc_opt_self() monthDayStringForDate:v26 inCalendar:v29];
  }

  v33 = v30;

  if (v33)
  {
    v34 = sub_1E4878BDC();
  }

  else
  {
    v34 = 0;
  }

  sub_1E47738B8(v18, &qword_1ECF7CFA8, &qword_1E487FBA0);
  return v34;
}

double sub_1E486E640(char a1, char a2)
{
  if (qword_1EE2B4848 != -1)
  {
    swift_once();
  }

  v21 = sub_1E48771EC();
  v23 = v3;
  v4 = sub_1E48771EC();
  v6 = v5;
  v20 = sub_1E48771EC();
  v8 = v7;
  v9 = sub_1E48771EC();
  v11 = v10;
  v12 = sub_1E48771EC();
  v14 = v13;
  v15 = sub_1E48771EC();
  v17 = v16;
  if ((a1 & 1) == 0)
  {

    if (a2)
    {
      v15 = v20;
      v17 = v8;
    }

    goto LABEL_8;
  }

  if ((a2 & 1) == 0)
  {
LABEL_8:
    v9 = v4;
    v11 = v6;
    v6 = v23;
    v4 = v21;
    goto LABEL_9;
  }

  v15 = v12;
  v17 = v14;
LABEL_9:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F8, &qword_1E487AC28);
  v18 = swift_allocObject();
  *&result = 3;
  *(v18 + 16) = xmmword_1E487AC40;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  *(v18 + 48) = v9;
  *(v18 + 56) = v11;
  *(v18 + 64) = v4;
  *(v18 + 72) = v6;
  return result;
}

void *sub_1E486E95C(uint64_t a1, uint64_t a2)
{
  v200 = a1;
  v177 = type metadata accessor for Location();
  v186 = *(v177 - 8);
  v3 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v173 = &v172 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C048, &qword_1E487C5F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v175 = &v172 - v7;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C800, &qword_1E487E578);
  v8 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v178 = &v172 - v9;
  v204 = sub_1E487725C();
  v185 = *(v204 - 8);
  v10 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v184 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7B688, &qword_1E487C160);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v201 = &v172 - v14;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C808, &qword_1E487E580);
  v15 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v211 = &v172 - v16;
  v17 = type metadata accessor for Event();
  v215 = *(v17 - 1);
  v18 = *(v215 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v172 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v172 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v172 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v182 = &v172 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v181 = &v172 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v214 = &v172 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C380, &qword_1E4882C20);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v194 = &v172 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v203 = &v172 - v36;
  v205 = sub_1E487732C();
  v37 = *(v205 - 8);
  v38 = *(v37 + 8);
  MEMORY[0x1EEE9AC00](v205);
  v216 = (&v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = type metadata accessor for DayEvents();
  v40 = *(*(v199 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v199);
  v193 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v191 = &v172 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v195 = &v172 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v209 = &v172 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v172 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v208 = &v172 - v53;
  v54 = *(a2 + 16);
  v197 = v52;
  if (!v54)
  {
    v210 = MEMORY[0x1E69E7CC8];
LABEL_15:
    v192 = *(v200 + 16);
    if (!v192)
    {
      v206 = MEMORY[0x1E69E7CC0];
LABEL_118:

      return v206;
    }

    v79 = 0;
    v187 = (*(v197 + 80) + 32) & ~*(v197 + 80);
    v190 = v200 + v187;
    v202 = *(v197 + 72);
    v189 = (v197 + 56);
    v188 = (v197 + 48);
    v197 = v185 + 48;
    v179 = (v185 + 32);
    v183 = (v185 + 8);
    v180 = (v37 + 16);
    v206 = MEMORY[0x1E69E7CC0];
    v80 = v182;
    v81 = v181;
    v82 = v214;
    v83 = v194;
    v84 = v199;
    v176 = (v186 + 48);
    v196 = v17;
LABEL_19:
    v200 = v79;
    v86 = v209;
    sub_1E48703D4(v190 + v202 * v79, v209, type metadata accessor for DayEvents);
    v87 = v210;
    if (v210[2] && (v88 = sub_1E481DD74(v86), (v89 & 1) != 0))
    {
      sub_1E48703D4(v87[7] + v88 * v202, v203, type metadata accessor for DayEvents);
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = v203;
    (*v189)(v203, v90, 1, v84);
    sub_1E4773850(v91, v83, &qword_1ECF7C380, &qword_1E4882C20);
    if ((*v188)(v83, 1, v84) == 1)
    {
      sub_1E47738B8(v83, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E48703D4(v209, v193, type metadata accessor for DayEvents);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = sub_1E4860CF4(0, *(v206 + 16) + 1, 1, v206, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      v93 = *(v206 + 16);
      v92 = *(v206 + 24);
      v83 = v194;
      if (v93 >= v92 >> 1)
      {
        v206 = sub_1E4860CF4(v92 > 1, v93 + 1, 1, v206, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
      }

      sub_1E47738B8(v203, &qword_1ECF7C380, &qword_1E4882C20);
      sub_1E487043C(v209, type metadata accessor for DayEvents);
      v85 = v206;
      *(v206 + 16) = v93 + 1;
      sub_1E487049C(v193, v85 + v187 + v93 * v202, type metadata accessor for DayEvents);
      goto LABEL_18;
    }

    sub_1E487049C(v83, v195, type metadata accessor for DayEvents);
    v94 = MEMORY[0x1E69E7CD0];
    v220 = MEMORY[0x1E69E7CD0];
    v95 = *(v84 + 20);
    v96 = *(v209 + v95);
    v97 = *(v96 + 16);
    v212 = v96;
    v216 = v97;
    if (v97)
    {
      v98 = v96 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
      v99 = *(v215 + 72);
      v100 = v97;
      do
      {
        sub_1E48703D4(v98, v82, type metadata accessor for Event);
        sub_1E4862654(v81, v82);
        sub_1E487043C(v81, type metadata accessor for Event);
        v98 += v99;
        --v100;
      }

      while (v100);
      v95 = *(v199 + 20);
      v94 = MEMORY[0x1E69E7CD0];
    }

    v219 = v94;
    v101 = *(v195 + v95);
    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = v101 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
      v104 = *(v215 + 72);
      do
      {
        sub_1E48703D4(v103, v80, type metadata accessor for Event);
        sub_1E4862654(v81, v80);
        sub_1E487043C(v81, type metadata accessor for Event);
        v103 += v104;
        --v102;
      }

      while (v102);
      v105 = v219;
    }

    else
    {
      v105 = v94;
    }

    v106 = *(v105 + 16);
    v107 = *(v220 + 16);
    v185 = v105;
    if (v106 > v107 >> 3)
    {
      v108 = sub_1E48674FC(v105, v220);
    }

    else
    {
      v217 = v220;
      sub_1E48670D4(v105);
      v108 = v217;
    }

    v109 = v212;
    if (!v216)
    {
      v186 = MEMORY[0x1E69E7CC0];
      goto LABEL_112;
    }

    v110 = 0;
    v111 = v108 + 56;
    v186 = MEMORY[0x1E69E7CC0];
LABEL_42:
    if (v110 >= v109[2])
    {
      __break(1u);
      goto LABEL_120;
    }

    v213 = (*(v215 + 80) + 32) & ~*(v215 + 80);
    v112 = *(v215 + 72);
    sub_1E48703D4(v109 + v213 + v112 * v110, v26, type metadata accessor for Event);
    if (!*(v108 + 16))
    {
      goto LABEL_103;
    }

    v113 = *(v108 + 40);
    sub_1E487914C();
    sub_1E47CDCB4();
    sub_1E4878C0C();

    v114 = sub_1E487917C();
    v109 = v212;
    v115 = -1 << *(v108 + 32);
    v116 = v114 & ~v115;
    if (((*(v111 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
    {
LABEL_103:
      sub_1E487043C(v26, type metadata accessor for Event);
      v82 = v214;
      goto LABEL_104;
    }

    v117 = ~v115;
    while (1)
    {
      sub_1E48703D4(*(v108 + 48) + v116 * v112, v23, type metadata accessor for Event);
      v118 = *v23 == *v26 && v23[1] == v26[1];
      if (!v118 && (sub_1E48790EC() & 1) == 0)
      {
        goto LABEL_48;
      }

      v119 = v17[5];
      if ((sub_1E48772EC() & 1) == 0)
      {
        goto LABEL_48;
      }

      v120 = v17[6];
      if ((sub_1E48772EC() & 1) == 0)
      {
        goto LABEL_48;
      }

      if (*(v23 + v17[7]) != *(v26 + v17[7]))
      {
        goto LABEL_48;
      }

      if (*(v23 + v17[8]) != *(v26 + v17[8]))
      {
        goto LABEL_48;
      }

      v121 = v17[9];
      v122 = *(v23 + v121);
      v123 = *(v26 + v121);
      if ((sub_1E487862C() & 1) == 0)
      {
        goto LABEL_48;
      }

      v124 = v17[10];
      v125 = (v23 + v124);
      v126 = *(v23 + v124 + 8);
      v127 = (v26 + v124);
      v128 = v127[1];
      if (v126)
      {
        if (!v128 || (*v125 != *v127 || v126 != v128) && (sub_1E48790EC() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v128)
      {
        goto LABEL_48;
      }

      v207 = v110;
      v129 = v17[11];
      v130 = *(v198 + 48);
      v131 = v211;
      sub_1E4773850(v23 + v129, v211, &unk_1ECF7B688, &qword_1E487C160);
      v208 = v130;
      sub_1E4773850(v26 + v129, v131 + v130, &unk_1ECF7B688, &qword_1E487C160);
      v132 = *v197;
      v133 = v131;
      v134 = v204;
      if ((*v197)(v133, 1, v204) == 1)
      {
        v135 = v132(v211 + v208, 1, v134);
        v109 = v212;
        v17 = v196;
        v110 = v207;
        if (v135 != 1)
        {
          goto LABEL_47;
        }

        sub_1E47738B8(v211, &unk_1ECF7B688, &qword_1E487C160);
      }

      else
      {
        v136 = v211;
        sub_1E4773850(v211, v201, &unk_1ECF7B688, &qword_1E487C160);
        v137 = v136 + v208;
        v138 = v204;
        if (v132(v137, 1, v204) == 1)
        {
          (*v183)(v201, v138);
          v109 = v212;
          v17 = v196;
          v110 = v207;
LABEL_47:
          sub_1E47738B8(v211, &qword_1ECF7C808, &qword_1E487E580);
          goto LABEL_48;
        }

        (*v179)(v184, v211 + v208, v138);
        sub_1E486CD08(&qword_1EE2B4668, MEMORY[0x1E6968FB0]);
        LODWORD(v208) = sub_1E4878AFC();
        v139 = *v183;
        (*v183)(v184, v138);
        v139(v201, v138);
        sub_1E47738B8(v211, &unk_1ECF7B688, &qword_1E487C160);
        v109 = v212;
        v17 = v196;
        v110 = v207;
        if ((v208 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      if (*(v23 + v17[12]) != *(v26 + v17[12]) || *(v23 + v17[13]) != *(v26 + v17[13]) || *(v23 + v17[14]) != *(v26 + v17[14]))
      {
        goto LABEL_48;
      }

      v207 = v17[15];
      v208 = *(v174 + 48);
      v140 = v178;
      sub_1E4773850(v23 + v207, v178, &qword_1ECF7C048, &qword_1E487C5F0);
      sub_1E4773850(v26 + v207, v140 + v208, &qword_1ECF7C048, &qword_1E487C5F0);
      v207 = *v176;
      if ((v207)(v140, 1, v177) == 1)
      {
        v141 = v178;
        v118 = (v207)(v178 + v208, 1, v177) == 1;
        v142 = v141;
        if (!v118)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v148 = v178;
        sub_1E4773850(v178, v175, &qword_1ECF7C048, &qword_1E487C5F0);
        v149 = v148 + v208;
        v150 = v208;
        if ((v207)(v149, 1, v177) == 1)
        {
          sub_1E487043C(v175, type metadata accessor for Location);
          v142 = v178;
LABEL_86:
          v151 = &qword_1ECF7C800;
          v152 = &qword_1E487E578;
LABEL_95:
          sub_1E47738B8(v142, v151, v152);
          v109 = v212;
          goto LABEL_48;
        }

        sub_1E487049C(v178 + v150, v173, type metadata accessor for Location);
        if ((sub_1E487715C() & 1) == 0)
        {
          goto LABEL_94;
        }

        v153 = *(v177 + 20);
        v154 = v175;
        v155 = (v175 + v153);
        v156 = *(v175 + v153 + 8);
        v157 = (v173 + v153);
        v158 = v157[1];
        if (!v156)
        {
          v207 = type metadata accessor for Location;
          v208 = v158;
          sub_1E487043C(v173, type metadata accessor for Location);
          sub_1E487043C(v154, v207);
          sub_1E47738B8(v178, &qword_1ECF7C048, &qword_1E487C5F0);
          v109 = v212;
          if (v208)
          {
            goto LABEL_48;
          }

          goto LABEL_78;
        }

        if (!v158 || (*v155 != *v157 || v156 != v158) && (sub_1E48790EC() & 1) == 0)
        {
LABEL_94:
          sub_1E487043C(v173, type metadata accessor for Location);
          sub_1E487043C(v175, type metadata accessor for Location);
          v142 = v178;
          v151 = &qword_1ECF7C048;
          v152 = &qword_1E487C5F0;
          goto LABEL_95;
        }

        sub_1E487043C(v173, type metadata accessor for Location);
        sub_1E487043C(v175, type metadata accessor for Location);
        v142 = v178;
      }

      sub_1E47738B8(v142, &qword_1ECF7C048, &qword_1E487C5F0);
      v109 = v212;
LABEL_78:
      v143 = v17[16];
      v144 = (v23 + v143);
      v145 = *(v23 + v143 + 8);
      v146 = (v26 + v143);
      v147 = v146[1];
      if (v145)
      {
        if (!v147 || (*v144 != *v146 || v145 != v147) && (sub_1E48790EC() & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v147)
      {
        goto LABEL_48;
      }

      if (*(v23 + v17[17]) == *(v26 + v17[17]) && *(v23 + v17[18]) == *(v26 + v17[18]) && *(v23 + v17[19]) == *(v26 + v17[19]))
      {
        sub_1E487043C(v23, type metadata accessor for Event);
        sub_1E487049C(v26, v172, type metadata accessor for Event);
        v159 = v186;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v161 = v159;
        v218 = v159;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1E4858038(0, *(v159 + 16) + 1, 1);
          v109 = v212;
          v161 = v218;
        }

        v82 = v214;
        v162 = v161;
        v164 = *(v161 + 16);
        v163 = *(v161 + 24);
        v165 = v164 + 1;
        if (v164 >= v163 >> 1)
        {
          v208 = v164 + 1;
          sub_1E4858038(v163 > 1, v164 + 1, 1);
          v165 = v208;
          v109 = v212;
          v162 = v218;
        }

        *(v162 + 16) = v165;
        v186 = v162;
        sub_1E487049C(v172, v162 + v213 + v164 * v112, type metadata accessor for Event);
LABEL_104:
        if (++v110 == v216)
        {
LABEL_112:

          v166 = v191;
          (*v180)(v191, v209, v205);
          v167 = v199;
          *(v166 + *(v199 + 20)) = v186;
          *(v166 + *(v167 + 24)) = MEMORY[0x1E69E7CC0];
          *(v166 + *(v167 + 28)) = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v206 = sub_1E4860CF4(0, *(v206 + 16) + 1, 1, v206, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
          }

          v80 = v182;
          v81 = v181;
          v169 = *(v206 + 16);
          v168 = *(v206 + 24);
          if (v169 >= v168 >> 1)
          {
            v206 = sub_1E4860CF4(v168 > 1, v169 + 1, 1, v206, &qword_1ECF7C438, &unk_1E487D628, type metadata accessor for DayEvents);
          }

          sub_1E47738B8(v203, &qword_1ECF7C380, &qword_1E4882C20);
          sub_1E487043C(v195, type metadata accessor for DayEvents);
          sub_1E487043C(v209, type metadata accessor for DayEvents);
          v170 = v206;
          *(v206 + 16) = v169 + 1;
          sub_1E487049C(v191, v170 + v187 + v169 * v202, type metadata accessor for DayEvents);
          v83 = v194;
LABEL_18:
          v79 = v200 + 1;
          v84 = v199;
          if (v200 + 1 == v192)
          {
            goto LABEL_118;
          }

          goto LABEL_19;
        }

        goto LABEL_42;
      }

LABEL_48:
      sub_1E487043C(v23, type metadata accessor for Event);
      v116 = (v116 + 1) & v117;
      if (((*(v111 + ((v116 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v116) & 1) == 0)
      {
        goto LABEL_103;
      }
    }
  }

  v55 = a2 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  v56 = *(v52 + 72);
  v212 = (v37 + 16);
  v202 = (v37 + 8);
  v210 = MEMORY[0x1E69E7CC8];
  v207 = v37;
  v206 = v56;
  while (1)
  {
    v213 = v54;
    v59 = v208;
    sub_1E48703D4(v55, v208, type metadata accessor for DayEvents);
    v60 = *v212;
    v61 = v216;
    (*v212)(v216, v59, v205);
    v62 = v51;
    sub_1E487049C(v59, v51, type metadata accessor for DayEvents);
    v63 = v210;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v217 = v63;
    v66 = sub_1E481DD74(v61);
    v67 = v63[2];
    v68 = (v65 & 1) == 0;
    v69 = v67 + v68;
    if (__OFADD__(v67, v68))
    {
      break;
    }

    v70 = v65;
    if (v63[3] >= v69)
    {
      if ((v64 & 1) == 0)
      {
        sub_1E4861EF8();
      }
    }

    else
    {
      sub_1E48617B0(v69, v64);
      v71 = sub_1E481DD74(v216);
      if ((v70 & 1) != (v72 & 1))
      {
        goto LABEL_122;
      }

      v66 = v71;
    }

    v210 = v217;
    if (v70)
    {
      v57 = v206;
      v58 = *(v217 + 56) + v66 * v206;
      v51 = v62;
      sub_1E4870324(v62, v58);
      (*v202)(v216, v205);
      v37 = v207;
    }

    else
    {
      *(v217 + 8 * (v66 >> 6) + 64) |= 1 << v66;
      v37 = v207;
      v73 = v216;
      v74 = v205;
      v60(v210[6] + *(v207 + 72) * v66, v216, v205);
      v57 = v206;
      v75 = v210[7] + v66 * v206;
      v51 = v62;
      sub_1E487049C(v62, v75, type metadata accessor for DayEvents);
      (*(v37 + 1))(v73, v74);
      v76 = v210[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_121;
      }

      v210[2] = v78;
    }

    v55 += v57;
    v54 = v213 - 1;
    if (v213 == 1)
    {
      goto LABEL_15;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  result = sub_1E487912C();
  __break(1u);
  return result;
}

uint64_t sub_1E4870324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayEvents();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Utils.EventWithColor()
{
  result = qword_1EE2B1910;
  if (!qword_1EE2B1910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E48703D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E487043C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E487049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4870504(uint64_t a1)
{
  v2 = type metadata accessor for Event();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E487732C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (!v13)
  {
    return 1;
  }

  v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v15 = *(v8 + 16);
  v16 = v14 + *(v2 + 24);
  v23 = v10;
  v15(v12, v16, v10);
  v17 = 0;
  do
  {
    v18 = v13 == v17;
    if (v13 == v17)
    {
      break;
    }

    sub_1E48703D4(v14 + *(v3 + 72) * v17++, v6, type metadata accessor for Event);
    v19 = *(v2 + 24);
    v20 = sub_1E48772EC();
    sub_1E487043C(v6, type metadata accessor for Event);
  }

  while ((v20 & 1) != 0);
  (*(v8 + 8))(v12, v23);
  return v18;
}

uint64_t sub_1E4870734()
{
  result = type metadata accessor for Event();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ColorBarView.Styling(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4870800(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7BE58, &unk_1E487DDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1E487757C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    return sub_1E48771EC();
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v15 = sub_1E487748C();
    [v14 setCalendar_];

    sub_1E487750C();
    v16 = sub_1E487756C();
    (*(v9 + 8))(v12, v8);
    [v14 setTimeZone_];

    sub_1E48774EC();
    v17 = sub_1E487744C();
    v18 = *(v17 - 8);
    v19 = 0;
    if ((*(v18 + 48))(v7, 1, v17) != 1)
    {
      v19 = sub_1E48773DC();
      (*(v18 + 8))(v7, v17);
    }

    [v14 setLocale_];

    [v14 setDateStyle_];
    [v14 setTimeStyle_];
    [v14 setFormattingContext_];
    if ((sub_1E48774CC() & 1) == 0)
    {
      v20 = sub_1E4878B9C();
      [v14 setLocalizedDateFormatFromTemplate_];
    }

    v21 = sub_1E48772BC();
    v22 = [v14 stringFromDate_];

    v23 = sub_1E4878BDC();
    v25 = v24;

    v26 = sub_1E48772BC();
    v27 = [v14 stringFromDate_];

    v28 = sub_1E4878BDC();
    v30 = v29;

    if (qword_1EE2B4848 != -1)
    {
      swift_once();
    }

    sub_1E48771EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7B9F0, &qword_1E487AC20);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E487A7F0;
    v32 = MEMORY[0x1E69E6158];
    *(v31 + 56) = MEMORY[0x1E69E6158];
    v33 = sub_1E478B950();
    *(v31 + 32) = v23;
    *(v31 + 40) = v25;
    *(v31 + 96) = v32;
    *(v31 + 104) = v33;
    *(v31 + 64) = v33;
    *(v31 + 72) = v28;
    *(v31 + 80) = v30;
    v34 = sub_1E4878BAC();

    return v34;
  }
}

uint64_t sub_1E4870D68@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = sub_1E487751C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_1E487732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v36 = &v33 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v37 = &v33 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - v22;
  v38 = sub_1E487753C();
  v35 = *(v38 - 8);
  v24 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  sub_1E487745C();
  (*(v2 + 104))(v5, *MEMORY[0x1E6969A48], v1);
  v27 = v23;
  sub_1E48774BC();
  (*(v2 + 8))(v5, v1);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v21;
    sub_1E487745C();
    v29 = *(v11 + 8);
    v29(v9, v10);
    v30 = *(v11 + 16);
    v31 = v36;
    v30(v36, v21, v10);
    v32 = v37;
    sub_1E487728C();
    v30(v31, v27, v10);
    v30(v39, v32, v10);
    sub_1E487702C();
    v29(v32, v10);
    v29(v34, v10);
    v29(v27, v10);
    return (*(v35 + 8))(v26, v38);
  }

  return result;
}

uint64_t sub_1E48711A4@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[1] = a3;
  v5 = sub_1E487751C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_1E487732C();
  v10 = *(v24[0] - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E487753C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  type metadata accessor for Utils();
  sub_1E4871798(a1, v13);
  result = sub_1E487729C();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!a2)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v20 == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_21;
  }

  v22 = (v20 % a2);
  if (vcvtd_n_f64_s64(a2, 1uLL) > v22)
  {
    if (v22 < 9.22337204e18)
    {
      if (v22 > -9.22337204e18)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v23 = a2 - v22;
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 < 9.22337204e18)
  {
LABEL_16:
    (*(v6 + 104))(v9, *MEMORY[0x1E6969A98], v5);
    sub_1E48774BC();
    (*(v6 + 8))(v9, v5);
    (*(v10 + 8))(v13, v24[0]);
    return (*(v15 + 8))(v18, v14);
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_1E4871510()
{
  v0 = sub_1E487753C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E48774FC();
  v6 = sub_1E487748C();
  (*(v1 + 8))(v4, v0);
  [v5 setCalendar_];

  v7 = sub_1E4878B9C();
  [v5 setDateFormat_];

  qword_1EE2B1888 = v5;
}

void sub_1E4871654()
{
  v0 = sub_1E487753C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E48774FC();
  v6 = sub_1E487748C();
  (*(v1 + 8))(v4, v0);
  [v5 setCalendar_];

  v7 = sub_1E4878B9C();
  [v5 setDateFormat_];

  qword_1EE2B1870 = v5;
}

uint64_t sub_1E4871798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7C880, &qword_1E4882710);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v24 - v4;
  v5 = sub_1E48770FC();
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E487753C();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF7D0A0, &unk_1E487FDA0);
  v13 = sub_1E487751C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E48837F0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x1E6969A50], v13);
  v19(v18 + v15, *MEMORY[0x1E6969A68], v13);
  v19(v18 + 2 * v15, *MEMORY[0x1E6969A78], v13);
  v20 = v30;
  v19(v18 + 3 * v15, *MEMORY[0x1E6969A48], v13);
  v19(v18 + 4 * v15, *MEMORY[0x1E6969A58], v13);
  sub_1E486B81C(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E487747C();

  sub_1E48774AC();
  v21 = sub_1E487732C();
  v22 = *(v21 - 8);
  result = (*(v22 + 48))(v20, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v27 + 8))(v8, v28);
    (*(v25 + 8))(v12, v26);
    return (*(v22 + 32))(v29, v20, v21);
  }

  return result;
}

id sub_1E4871B7C()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1E487732C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E487753C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4877A7C();
  v10 = sub_1E487748C();
  (*(v6 + 8))(v9, v5);
  v24[0] = 0.0;
  v11 = sub_1E48772BC();
  v23 = 0;
  v12 = [v10 rangeOfUnit:16 startDate:&v23 interval:v24 forDate:v11];

  if (v12)
  {
    v13 = v23 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v14 = v24[0] + 60.0;
    v15 = v23;
    v16 = [v15 dateByAddingTimeInterval_];
    sub_1E48772FC();

    v17 = sub_1E48772BC();
    v18 = sub_1E48772BC();
    v19 = [v10 isDate:v17 inSameDayAsDate:v18];

    (*(v1 + 8))(v4, v0);
    v10 = v15;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t type metadata accessor for TextStringThatFits()
{
  result = qword_1EE2B31C8;
  if (!qword_1EE2B31C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4871E9C()
{
  sub_1E4871F9C(319, &qword_1EE2B0E08, MEMORY[0x1E6968848], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E4871F9C(319, &qword_1EE2B1680, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4871F9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E487201C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (result = sub_1E481DCC4(a1), (v4 & 1) != 0))
  {
    v5 = *(*(a2 + 56) + 8 * result);
  }

  else
  {
    sub_1E4878F9C();
    MEMORY[0x1E69192D0](0xD000000000000020, 0x80000001E48AAB30);
    sub_1E487902C();
    result = sub_1E487903C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4872114@<X0>(void *a1@<X8>)
{
  if (qword_1EE2B4610 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE2BAF38;
}

void *sub_1E4872184(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *a1;

  result = a2(&v7, v5);
  *a1 = v7;
  return result;
}

double sub_1E48721E0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1E48721EC(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

void *sub_1E487222C(double *a1, void *(*a2)(double *__return_ptr))
{
  v3 = *a1;
  result = a2(&v6);
  v5 = v6;
  if (v3 > v6)
  {
    v5 = v3;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1E4872280@<X0>(void *a1@<X8>)
{
  result = sub_1E4877BEC();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E48722AC()
{
  v0 = sub_1E487719C();
  __swift_allocate_value_buffer(v0, qword_1EE2BAEB0);
  __swift_project_value_buffer(v0, qword_1EE2BAEB0);
  return sub_1E487712C();
}

uint64_t sub_1E4872300@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4877F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TextStringThatFits();
  sub_1E4873690(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1E4877CCC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1E4878DDC();
    v16 = sub_1E48780FC();
    sub_1E4877AAC();

    sub_1E4877F0C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E48724F0@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v96 = a3;
  v81 = sub_1E487719C();
  v5 = *(v81 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBE8, &qword_1E4883920);
  v92 = *(v94 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v91 = &v79 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF0, &qword_1E4883928);
  v10 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v79 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBF8, &qword_1E4883930);
  v12 = *(*(v87 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v87);
  v95 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v79 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v79 - v17;
  v18 = type metadata accessor for TextStringThatFits();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC00, &unk_1E4883938);
  v86 = *(v90 - 8);
  v21 = *(v86 + 64);
  v22 = MEMORY[0x1EEE9AC00](v90);
  v84 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v79 - v24;
  sub_1E4878D2C();
  v82 = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *a1;
  *&v105 = sub_1E4872EB4(1uLL, *a1);
  *(&v105 + 1) = v26;
  *&v106 = v27;
  *(&v106 + 1) = v28;
  swift_getKeyPath();
  v83 = a1;
  sub_1E4873448(a1, &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v19 + 80) + 17) & ~*(v19 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = a2 & 1;
  sub_1E4851394(&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC08, &qword_1E4883968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC10, &qword_1E4883970);
  sub_1E4773680(&qword_1EE2B0D20, &qword_1ECF7DC08, &qword_1E4883968);
  sub_1E4873530(&qword_1EE2B4678, MEMORY[0x1E6968848]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC18, &qword_1E4883978);
  v32 = sub_1E4873578();
  *&v98 = v31;
  *(&v98 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  result = sub_1E487885C();
  if (a2)
  {
    if (qword_1EE2B31D8 != -1)
    {
      swift_once();
    }

    v34 = v81;
    v35 = __swift_project_value_buffer(v81, qword_1EE2BAEB0);
    goto LABEL_9;
  }

  v36 = *(v25 + 16);
  if (v36)
  {
    v35 = v25 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v36 - 1);
    v34 = v81;
LABEL_9:
    (*(v5 + 16))(v80, v35, v34);
    v37 = sub_1E487847C();
    v39 = v38;
    v41 = v40;
    v42 = v83;
    v43 = *(v83 + 24);
    v44 = sub_1E48783EC();
    v46 = v45;
    v48 = v47;
    sub_1E477A3C8(v37, v39, v41 & 1);

    v49 = v42[1];
    v50 = sub_1E487842C();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    sub_1E477A3C8(v44, v46, v48 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v46) = sub_1E487813C();
    v58 = v42[2];
    sub_1E4877B0C();
    v114 = v54 & 1;
    v113 = 0;
    v112 = 0;
    *&v98 = v50;
    *(&v98 + 1) = v52;
    LOBYTE(v99) = v54 & 1;
    *(&v99 + 1) = v56;
    *&v100 = KeyPath;
    *(&v100 + 1) = 1;
    LOBYTE(v101) = 0;
    BYTE8(v101) = v46;
    *&v102 = v59;
    *(&v102 + 1) = v60;
    *&v103 = v61;
    *(&v103 + 1) = v62;
    v104 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC20, &qword_1E4883980);
    sub_1E4873604();
    v63 = v91;
    sub_1E48784FC();
    v108 = v101;
    v109 = v102;
    v110 = v103;
    v111 = v104;
    v105 = v98;
    v106 = v99;
    v107 = v100;
    sub_1E47738B8(&v105, &qword_1ECF7DC20, &qword_1E4883980);
    v64 = v89;
    (*(v92 + 32))(v89, v63, v94);
    *&v64[*(v88 + 36)] = 256;
    v65 = swift_getKeyPath();
    v66 = v64;
    v67 = v85;
    sub_1E477372C(v66, v85, &qword_1ECF7DBF0, &qword_1E4883928);
    v68 = (v67 + *(v87 + 36));
    *v68 = v65;
    v68[1] = 0x3FD999999999999ALL;
    v69 = v93;
    sub_1E477372C(v67, v93, &qword_1ECF7DBF8, &qword_1E4883930);
    v70 = v86;
    v71 = *(v86 + 16);
    v72 = v84;
    v73 = v97;
    v74 = v90;
    v71(v84, v97, v90);
    v75 = v95;
    sub_1E476DAA4(v69, v95);
    v76 = v96;
    v71(v96, v72, v74);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC28, &qword_1E48839E8);
    sub_1E476DAA4(v75, &v76[*(v77 + 48)]);
    sub_1E476DB14(v69);
    v78 = *(v70 + 8);
    v78(v73, v74);
    sub_1E476DB14(v75);
    v78(v72, v74);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4872EB4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    v4 = *(sub_1E487719C() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1E4872F48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38[1] = a4;
  v7 = sub_1E487719C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4878D2C();
  v38[2] = sub_1E4878D1C();
  sub_1E4878D0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    if (qword_1EE2B31D8 != -1)
    {
      swift_once();
    }

    a1 = __swift_project_value_buffer(v7, qword_1EE2BAEB0);
  }

  (*(v8 + 16))(v11, a1, v7);
  v12 = sub_1E487847C();
  v14 = v13;
  v16 = v15;
  v17 = *(a3 + 24);
  v18 = sub_1E48783EC();
  v20 = v19;
  v22 = v21;
  sub_1E477A3C8(v12, v14, v16 & 1);

  v23 = *(a3 + 8);
  v24 = sub_1E487842C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1E477A3C8(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v18) = sub_1E487813C();
  v32 = *(a3 + 16);
  sub_1E4877B0C();
  v49 = v28 & 1;
  v48 = 0;
  v47 = 0;
  *&v39 = v24;
  *(&v39 + 1) = v26;
  LOBYTE(v40) = v28 & 1;
  *(&v40 + 1) = v30;
  *&v41 = KeyPath;
  *(&v41 + 1) = 1;
  LOBYTE(v42) = 0;
  BYTE8(v42) = v18;
  *&v43 = v33;
  *(&v43 + 1) = v34;
  *v44 = v35;
  *&v44[8] = v36;
  v44[16] = 0;
  *&v44[17] = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DC18, &qword_1E4883978);
  sub_1E4873578();
  sub_1E48784FC();
  v45[3] = v42;
  v45[4] = v43;
  *v46 = *v44;
  *&v46[15] = *&v44[15];
  v45[0] = v39;
  v45[1] = v40;
  v45[2] = v41;
  sub_1E47738B8(v45, &qword_1ECF7DC18, &qword_1E4883978);
}

uint64_t sub_1E48732B8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4877CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_1E4872300(&v16 - v10);
  sub_1E4877CAC();
  sub_1E4873530(&qword_1EE2B5A60, MEMORY[0x1E697EA50]);
  v12 = sub_1E4878EAC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  *a1 = sub_1E487810C();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7DBE0, &qword_1E4883918);
  return sub_1E48724F0(v2, v12 & 1, &a1[*(v14 + 44)]);
}

uint64_t sub_1E4873448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextStringThatFits();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E48734AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TextStringThatFits() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 17) & ~*(v5 + 80));

  return sub_1E4872F48(a1, v6, v7, a2);
}

uint64_t sub_1E4873530(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E4873578()
{
  result = qword_1EE2B1320;
  if (!qword_1EE2B1320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC18, &qword_1E4883978);
    sub_1E4873604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B1320);
  }

  return result;
}

unint64_t sub_1E4873604()
{
  result = qword_1EE2B4730;
  if (!qword_1EE2B4730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF7DC20, &qword_1E4883980);
    sub_1E477A490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2B4730);
  }

  return result;
}

uint64_t sub_1E4873690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7C840, &qword_1E487ADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E4873728()
{
  v1 = [*v0 mirrorCalendarApp];

  return v1;
}

uint64_t sub_1E4873760()
{
  v1 = [*v0 calendars];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for EKUICalendar();
  v3 = sub_1E4878CAC();

  return v3;
}

id sub_1E48737C4()
{
  v1 = [*v0 hideAllDayEvents];

  return v1;
}

id EKUICalendarsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EKUICalendarsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EKUICalendarsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EKUICalendarsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EKUICalendarsIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id EKUICalendarsIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for EKUICalendarsIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id EKUICalendarsIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id EKUICalendarsIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for EKUICalendarsIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

unint64_t sub_1E4873E5C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E487463C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1E4873E90(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 calendars];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for EKUICalendar();
    v5 = sub_1E4878CAC();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1E4873F00(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for EKUICalendar();
    v3 = sub_1E4878C9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCalendars_];
}

uint64_t sub_1E4873FC0()
{
  v1 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *EKUICalendarsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *EKUICalendarsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___EKUICalendarsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id EKUICalendarsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EKUICalendarsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id EKUICalendarsIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id EKUICalendarsIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48743E0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id EKUICalendarsIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id EKUICalendarsIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___EKUICalendarsIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendarsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4874604(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E487463C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E4874674()
{
  result = qword_1ECF7DC40;
  if (!qword_1ECF7DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC40);
  }

  return result;
}

id NextEventComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NextEventComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NextEventComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id NextEventComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id NextEventComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id NextEventComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id NextEventComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for NextEventComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_1E4874DF8()
{
  v1 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *NextEventComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *NextEventComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id NextEventComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NextEventComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4875218(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id NextEventComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id NextEventComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___NextEventComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for NextEventComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E487543C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E487549C()
{
  result = qword_1ECF7DC50;
  if (!qword_1ECF7DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC50);
  }

  return result;
}

void sub_1E4875554(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 overlayCalendarID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4878BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E48755BC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1E4878B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setOverlayCalendarID_];
}

id LunarDateComplicationConfigurationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LunarDateComplicationConfigurationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LunarDateComplicationConfigurationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LunarDateComplicationConfigurationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4878B9C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id LunarDateComplicationConfigurationIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1E4878B9C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_backingStore_, v5, a3);

  return v6;
}

id LunarDateComplicationConfigurationIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9];

  return v10;
}

id LunarDateComplicationConfigurationIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E4878B9C();

  v8 = sub_1E4878B9C();

  if (a5)
  {
    v9 = sub_1E4878A7C();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for LunarDateComplicationConfigurationIntent();
  v10 = objc_msgSendSuper2(&v12, sel_initWithDomain_verb_parametersByName_, v7, v8, v9);

  return v10;
}

uint64_t sub_1E4875CD4()
{
  v1 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *LunarDateComplicationConfigurationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *LunarDateComplicationConfigurationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id LunarDateComplicationConfigurationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LunarDateComplicationConfigurationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48760F4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id LunarDateComplicationConfigurationIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id LunarDateComplicationConfigurationIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___LunarDateComplicationConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_1E4878A7C();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for LunarDateComplicationConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4876318(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1E4876378()
{
  result = qword_1ECF7DC60;
  if (!qword_1ECF7DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7DC60);
  }

  return result;
}

void sub_1E487643C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 acAccountIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4878BDC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1E48764A4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_1E4878B9C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setAcAccountIdentifier_];
}

id EKUICalendar.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1E4878B9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E4878B9C();

  if (a6)
  {
    v10 = sub_1E4878B9C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id EKUICalendar.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1E4878B9C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E4878B9C();

  if (a6)
  {
    v10 = sub_1E4878B9C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for EKUICalendar();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id EKUICalendar.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EKUICalendar.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EKUICalendar();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E48768CC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_1E4876980(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1E4876A78();

    sub_1E487904C();
  }

  else
  {

    sub_1E48790FC();
    sub_1E4876A78();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E4876A78();
  v2 = sub_1E4878C9C();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_1E4876A78()
{
  result = qword_1ECF7DC68;
  if (!qword_1ECF7DC68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7DC68);
  }

  return result;
}

id sub_1E4876B30(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___EKUICalendarResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id EKUICalendarResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1E4878A7C();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id EKUICalendarResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_1E4878A7C();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for EKUICalendarResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1E4876F20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}