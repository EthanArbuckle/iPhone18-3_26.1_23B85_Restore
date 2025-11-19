void sub_25BB82C20(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for ReLU6.Kind, sub_25BAAF54C, sub_25BB01188);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19964(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54E8, &qword_25BCC3B00);
        v16 = sub_25BB92940(&qword_27FBB5500, &qword_27FBB54E8, &qword_25BCC3B00);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54E8, &qword_25BCC3B00);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54F0, &qword_25BCC3B08);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54F8, &qword_25BCC3B10), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8300C(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Flatten.Kind, sub_25BAAF54C, sub_25BB011A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC1997C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5288, &qword_25BCC3920);
        v16 = sub_25BB92940(&qword_27FBB52A0, &qword_27FBB5288, &qword_25BCC3920);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5288, &qword_25BCC3920);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5290, &qword_25BCC3928);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5298, &qword_25BCC3930), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB833F8(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_25BCB617C();
  sub_25BB8C63C(v3, sub_25BB8E45C, 0, &v44);
  v4 = v45;
  v5 = v46;
  v6 = v48;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v43 = v48;
  sub_25BCB617C();

  sub_25BA9D8C4(v5);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v4 + 16))
    {
      v34 = v41;

      sub_25BA9D148(v34);

      v35 = v46;

      sub_25BA9D148(v35);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19994(v4);
      v4 = v7;
    }

    v8 = *(v4 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v4 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v4 + 16) = v9;
    v40 = v4;
    v38 = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v5(v12, &v38);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5688, &qword_25BCC3C40);
        v15 = sub_25BB92940(&qword_27FBB56A0, &qword_27FBB5688, &qword_25BCC3C40);
        sub_25BAB89AC(v13, v11, &v39, &v38, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5688, &qword_25BCC3C40);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v6 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v20 = *(v6 + 24) >> 1, v21 = v6, v20 < v19 + v18))
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_31;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5690, &qword_25BCC3C48);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5698, &qword_25BCC3C50), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v37, 0);
    }

    v4 = v40;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB837E4(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Sigmoid.Kind, sub_25BAAF54C, sub_25BB011E8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199AC(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5620, &qword_25BCC3BF0);
        v16 = sub_25BB92940(&qword_27FBB5638, &qword_27FBB5620, &qword_25BCC3BF0);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5620, &qword_25BCC3BF0);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5628, &qword_25BCC3BF8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5630, &qword_25BCC3C00), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB83BD0(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8C908();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5590, &qword_25BCC3B80);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5590, &qword_25BCC3B80);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199C4(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5598, &qword_25BCC3B88);
        v14 = sub_25BB92940(&qword_27FBB55B0, &qword_27FBB5598, &qword_25BCC3B88);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5598, &qword_25BCC3B88);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55A0, &qword_25BCC3B90);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55A8, &qword_25BCC3B98), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84030(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8C908();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB5368, &qword_25BCC39D0);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB5368, &qword_25BCC39D0);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199DC(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5370, &qword_25BCC39D8);
        v14 = sub_25BB92940(&qword_27FBB5388, &qword_27FBB5370, &qword_25BCC39D8);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5370, &qword_25BCC39D8);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5378, &qword_25BCC39E0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5380, &qword_25BCC39E8), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84490(uint64_t a1)
{
  sub_25BB8CB4C(sub_25BB8E45C, 0, &v37, *v1, v1[1]);
  v2 = v38;
  v3 = v39;
  v40 = v39;
  v41[0] = *(&v37 + 1);
  v35[0] = v37;
  v35[1] = v38;
  v36 = v39;
  sub_25BAA486C(v41, v33, &qword_27FBB53B8, &qword_25BCC3A10);
  sub_25BA9D8C4(v2);
  sub_25BAA486C(&v40, v33, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = *(&v35[0] + 1);
    if (!*(*(&v35[0] + 1) + 16))
    {

      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v40, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v41, &qword_27FBB53B8, &qword_25BCC3A10);
      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v40, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC199F4(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *(&v35[0] + 1) = v4;
    v34 = v8;
    if (v2)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v34);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C0, &qword_25BCC3A18);
        v13 = sub_25BB92940(&qword_27FBB53D8, &qword_27FBB53C0, &qword_25BCC3A18);
        sub_25BAB89AC(v11, v9, v35, &v34, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C0, &qword_25BCC3A18);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v40, v33, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v3 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v3;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53C8, &qword_25BCC3A20);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB53D0, &qword_25BCC3A28), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v33, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB848C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D6DC();
  v5 = v40;
  v4 = v41;
  v42 = v41;
  v43[0] = *(&v39 + 1);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_25BAA486C(v43, v35, &qword_27FBB55D8, &qword_25BCC3BB8);
  sub_25BA9D8C4(v5);
  sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = *(&v37[0] + 1);
    if (!*(*(&v37[0] + 1) + 16))
    {

      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v43, &qword_27FBB55D8, &qword_25BCC3BB8);
      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A0C(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *(&v37[0] + 1) = v6;
    v36 = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v5(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E0, &qword_25BCC3BC0);
        v15 = sub_25BB92940(&qword_27FBB55F8, &qword_27FBB55E0, &qword_25BCC3BC0);
        sub_25BAB89AC(v13, v11, v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E0, &qword_25BCC3BC0);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v4 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v4 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55E8, &qword_25BCC3BC8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55F0, &qword_25BCC3BD0), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB84D28(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Softsign.Kind, sub_25BAAF54C, sub_25BB01288);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A24(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55B8, &qword_25BCC3BA0);
        v16 = sub_25BB92940(&qword_27FBB55D0, &qword_27FBB55B8, &qword_25BCC3BA0);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55B8, &qword_25BCC3BA0);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55C0, &qword_25BCC3BA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB55C8, &qword_25BCC3BB0), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB85114(uint64_t a1)
{
  sub_25BB8CDA8(sub_25BB8E45C, 0, &type metadata for Hardswish.Kind, sub_25BAAF54C, sub_25BB012A8);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38[0] = v1;
  v38[1] = v3;
  v38[2] = v7;
  v38[3] = v5;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();
  while (1)
  {
    if (!*(v2 + 16))
    {

      sub_25BA9D148(v4);

      sub_25BA9D148(v4);

      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A3C(v2);
      v2 = v8;
    }

    v9 = *(v2 + 16);
    if (!v9)
    {
      break;
    }

    v10 = v9 - 1;
    v11 = v2 + 16 * v10;
    v12 = *(v11 + 32);
    LODWORD(v11) = *(v11 + 40);
    *(v2 + 16) = v10;
    v38[0] = v2;
    v37 = v11;
    if (v4)
    {
      v13 = v12[4];
      swift_beginAccess();
      LOBYTE(v13) = v4(v13, &v37);
      swift_endAccess();
      if (v13)
      {
        v14 = v12[4];
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52F8, &qword_25BCC3978);
        v16 = sub_25BB92940(&qword_27FBB5310, &qword_27FBB52F8, &qword_25BCC3978);
        sub_25BAB89AC(v14, v12, v38, &v37, v15, v14, v16);
      }
    }

    v17 = v12[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB52F8, &qword_25BCC3978);
    swift_dynamicCastClassUnconditional();
    v18 = v12[2];
    v19 = *(v18 + 16);
    v20 = *(v6 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();

    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v6 + 24) >> 1, v22 = v6, v21 < v20 + v19))
    {
      sub_25BAB1E30();
      v22 = v23;
      v21 = *(v23 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      if (v21 - *(v22 + 16) < v19)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v22 + 16);
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_31;
        }

        *(v22 + 16) = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5300, &qword_25BCC3980);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5308, &qword_25BCC3988), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v33 = sub_25BB1B740(a1);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v36, 0);
    }

    v2 = v38[0];
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB85500(uint64_t a1)
{
  v2 = *v1;
  sub_25BB8CFC8();
  v3 = v39;
  v4 = v40;
  v41 = v40;
  v42[0] = *(&v38 + 1);
  v36[0] = v38;
  v36[1] = v39;
  v37 = v40;
  sub_25BAA486C(v42, v34, &qword_27FBB54C0, &qword_25BCC3AE0);
  sub_25BA9D8C4(v3);
  sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v5 = *(&v36[0] + 1);
    if (!*(*(&v36[0] + 1) + 16))
    {

      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v42, &qword_27FBB54C0, &qword_25BCC3AE0);
      sub_25BA9D148(v3);
      sub_25BAA6F5C(&v41, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A54(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    *(&v36[0] + 1) = v5;
    v35 = v9;
    if (v3)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v3(v11, &v35);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54C8, &qword_25BCC3AE8);
        v14 = sub_25BB92940(&qword_27FBB54E0, &qword_27FBB54C8, &qword_25BCC3AE8);
        sub_25BAB89AC(v12, v10, v36, &v35, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54C8, &qword_25BCC3AE8);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v4 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v41, v34, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v19 = *(v4 + 24) >> 1, v19 >= v18 + v17))
    {
      v20 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_32;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54D0, &qword_25BCC3AF0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB54D8, &qword_25BCC3AF8), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v34, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB85960(uint64_t a1)
{
  sub_25BB8D1BC(*v1, v1[1], v1[2], sub_25BB8E45C, 0, &v39);
  v2 = v41;
  v3 = v42;
  v43 = v42;
  v44[0] = *(&v40 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v44, v33, &qword_27FBB5820, &qword_25BCC3D78);
  sub_25BA9D8C4(v2);
  sub_25BAA486C(&v43, v33, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v4 = *(&v36 + 1);
    if (!*(*(&v36 + 1) + 16))
    {

      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v44, &qword_27FBB5820, &qword_25BCC3D78);
      sub_25BA9D148(v2);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A6C(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *(&v36 + 1) = v4;
    v34 = v8;
    if (v2)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v2(v10, &v34);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5828, &qword_25BCC3D80);
        v13 = sub_25BB92940(&qword_27FBB5840, &qword_27FBB5828, &qword_25BCC3D80);
        sub_25BAB89AC(v11, v9, &v35, &v34, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5828, &qword_25BCC3D80);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v3 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v43, v33, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v18 = *(v3 + 24) >> 1, v18 >= v17 + v16))
    {
      v19 = v3;
    }

    else
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_32;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5830, &qword_25BCC3D88);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5838, &qword_25BCC3D90), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v33, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB85DA4(uint64_t a1)
{
  v2 = v1[1];
  v38[0] = *v1;
  v38[1] = v2;
  v38[2] = v1[2];
  sub_25BB8D428(v38, sub_25BB8E45C, 0, __src);
  memcpy(__dst, __src, 0x50uLL);
  v3 = __dst[9];
  v4 = __dst[7];
  memcpy(v36, __src, sizeof(v36));
  sub_25BAA486C(__dst, v35, &qword_27FBB57F8, &qword_25BCC3D58);
  while (1)
  {
    v5 = v36[6];
    if (!*(v36[6] + 16))
    {
      memcpy(v34, v36, sizeof(v34));
      sub_25BAA6F5C(v34, &qword_27FBB57F8, &qword_25BCC3D58);
      memcpy(v35, __src, sizeof(v35));
      sub_25BAA6F5C(v35, &qword_27FBB57F8, &qword_25BCC3D58);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A84(v5);
      v5 = v6;
    }

    v7 = *(v5 + 16);
    if (!v7)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = v5 + 16 * v8;
    v10 = *(v9 + 32);
    LODWORD(v9) = *(v9 + 40);
    *(v5 + 16) = v8;
    v36[6] = v5;
    v34[0] = v9;
    if (v4)
    {
      v11 = v10[4];
      swift_beginAccess();
      LOBYTE(v11) = v4(v11, v34);
      swift_endAccess();
      if (v11)
      {
        v12 = v10[4];
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5800, &qword_25BCC3D60);
        v14 = sub_25BB92940(&qword_27FBB5818, &qword_27FBB5800, &qword_25BCC3D60);
        sub_25BAB89AC(v12, v10, v36, v34, v13, v12, v14);
      }
    }

    v15 = v10[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5800, &qword_25BCC3D60);
    swift_dynamicCastClassUnconditional();
    v16 = v10[2];
    v17 = *(v16 + 16);
    v18 = *(v3 + 16);
    if (__OFADD__(v18, v17))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v19 = *(v3 + 24) >> 1, v20 = v3, v19 < v18 + v17))
    {
      sub_25BAB1E30();
      v20 = v21;
      v19 = *(v21 + 24) >> 1;
    }

    if (*(v16 + 16))
    {
      if (v19 - *(v20 + 16) < v17)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, v17);
        v24 = v22 + v17;
        if (v23)
        {
          goto LABEL_31;
        }

        *(v20 + 16) = v24;
      }
    }

    else
    {

      if (v17)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5808, &qword_25BCC3D68);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5810, &qword_25BCC3D70), swift_dynamicCastClass()))
    {

      v25 = swift_modifyAtWritableKeyPath();
      v27 = v26;
      v28 = *v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v27;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v31 = sub_25BB1B740(a1);
        v32 = *v27;
        *v27 = v31;
      }

      v25(v35, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_25BB8619C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D6DC();
  v5 = v40;
  v4 = v41;
  v42 = v41;
  v43[0] = *(&v39 + 1);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_25BAA486C(v43, v35, &qword_27FBB5318, &qword_25BCC3990);
  sub_25BA9D8C4(v5);
  sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = *(&v37[0] + 1);
    if (!*(*(&v37[0] + 1) + 16))
    {

      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v43, &qword_27FBB5318, &qword_25BCC3990);
      sub_25BA9D148(v5);
      sub_25BAA6F5C(&v42, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19A9C(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *(&v37[0] + 1) = v6;
    v36 = v10;
    if (v5)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v5(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5320, &qword_25BCC3998);
        v15 = sub_25BB92940(&qword_27FBB5338, &qword_27FBB5320, &qword_25BCC3998);
        sub_25BAB89AC(v13, v11, v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5320, &qword_25BCC3998);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v4 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v42, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v4 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v4;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5328, &qword_25BCC39A0);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5330, &qword_25BCC39A8), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB865FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25BB8D8D0();
  v4 = *(&v41 + 1);
  v5 = *(&v42 + 1);
  v43 = *(&v42 + 1);
  v44[0] = v41;
  v37 = v40;
  v38 = v41;
  v39 = v42;
  sub_25BAA486C(v44, v35, &qword_27FBB5988, &qword_25BCC3E98);
  sub_25BA9D8C4(v4);
  sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);
  while (1)
  {
    v6 = v38;
    if (!*(v38 + 16))
    {

      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      sub_25BAA6F5C(v44, &qword_27FBB5988, &qword_25BCC3E98);
      sub_25BA9D148(v4);
      sub_25BAA6F5C(&v43, &qword_27FBB3F98, &unk_25BCC3720);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19AB4(v6);
      v6 = v7;
    }

    v8 = *(v6 + 16);
    if (!v8)
    {
      break;
    }

    v9 = v8 - 1;
    v10 = v6 + 16 * v9;
    v11 = *(v10 + 32);
    LODWORD(v10) = *(v10 + 40);
    *(v6 + 16) = v9;
    *&v38 = v6;
    v36 = v10;
    if (v4)
    {
      v12 = v11[4];
      swift_beginAccess();
      LOBYTE(v12) = v4(v12, &v36);
      swift_endAccess();
      if (v12)
      {
        v13 = v11[4];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5990, &qword_25BCC3EA0);
        v15 = sub_25BB92940(&qword_27FBB59A8, &qword_27FBB5990, &qword_25BCC3EA0);
        sub_25BAB89AC(v13, v11, &v37, &v36, v14, v13, v15);
      }
    }

    v16 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5990, &qword_25BCC3EA0);
    swift_dynamicCastClassUnconditional();
    v17 = v11[2];
    v18 = *(v17 + 16);
    v19 = *(v5 + 16);
    if (__OFADD__(v19, v18))
    {
      goto LABEL_29;
    }

    sub_25BAA486C(&v43, v35, &qword_27FBB3F98, &unk_25BCC3720);

    sub_25BCB617C();
    if (swift_isUniquelyReferenced_nonNull_native() && (v20 = *(v5 + 24) >> 1, v20 >= v19 + v18))
    {
      v21 = v5;
    }

    else
    {
      sub_25BAB1E30();
      v21 = v22;
      v20 = *(v22 + 24) >> 1;
    }

    if (*(v17 + 16))
    {
      if (v20 - *(v21 + 16) < v18)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v21 + 16);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_32;
        }

        *(v21 + 16) = v25;
      }
    }

    else
    {

      if (v18)
      {
        goto LABEL_30;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5998, &qword_25BCC3EA8);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB59A0, &qword_25BCC3EB0), swift_dynamicCastClass()))
    {

      v26 = swift_modifyAtWritableKeyPath();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v32 = sub_25BB1B740(a1);
        v33 = *v28;
        *v28 = v32;
      }

      v26(v35, 0);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_25BB86A64(uint64_t a1)
{
  sub_25BB8DB1C(*v1, v1[1], v1[2], v1[3], sub_25BB8E45C, 0, &v39);
  v43[2] = v41;
  v43[3] = v42;
  v43[0] = v39;
  v43[1] = v40;
  v2 = *(&v42 + 1);
  v3 = *(&v41 + 1);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_25BAA486C(v43, v34, &qword_27FBB5960, &qword_25BCC3E78);
  while (1)
  {
    v4 = v37;
    if (!*(v37 + 16))
    {
      v33[0] = v35;
      v33[1] = v36;
      v33[2] = v37;
      v33[3] = v38;
      sub_25BAA6F5C(v33, &qword_27FBB5960, &qword_25BCC3E78);
      v34[0] = v39;
      v34[1] = v40;
      v34[2] = v41;
      v34[3] = v42;
      sub_25BAA6F5C(v34, &qword_27FBB5960, &qword_25BCC3E78);
      return;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BC19ACC(v4);
      v4 = v5;
    }

    v6 = *(v4 + 16);
    if (!v6)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = v4 + 16 * v7;
    v9 = *(v8 + 32);
    LODWORD(v8) = *(v8 + 40);
    *(v4 + 16) = v7;
    *&v37 = v4;
    LODWORD(v33[0]) = v8;
    if (v3)
    {
      v10 = v9[4];
      swift_beginAccess();
      LOBYTE(v10) = v3(v10, v33);
      swift_endAccess();
      if (v10)
      {
        v11 = v9[4];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5968, &qword_25BCC3E80);
        v13 = sub_25BB92940(&qword_27FBB5980, &qword_27FBB5968, &qword_25BCC3E80);
        sub_25BAB89AC(v11, v9, &v35, v33, v12, v11, v13);
      }
    }

    v14 = v9[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5968, &qword_25BCC3E80);
    swift_dynamicCastClassUnconditional();
    v15 = v9[2];
    v16 = *(v15 + 16);
    v17 = *(v2 + 16);
    if (__OFADD__(v17, v16))
    {
      goto LABEL_28;
    }

    sub_25BCB617C();
    sub_25BCB617C();
    if (!swift_isUniquelyReferenced_nonNull_native() || (v18 = *(v2 + 24) >> 1, v19 = v2, v18 < v17 + v16))
    {
      sub_25BAB1E30();
      v19 = v20;
      v18 = *(v20 + 24) >> 1;
    }

    if (*(v15 + 16))
    {
      if (v18 - *(v19 + 16) < v16)
      {
        goto LABEL_30;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v21 = *(v19 + 16);
        v22 = __OFADD__(v21, v16);
        v23 = v21 + v16;
        if (v22)
        {
          goto LABEL_31;
        }

        *(v19 + 16) = v23;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_29;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5970, &qword_25BCC3E88);
    if (swift_dynamicCastClass() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5978, &qword_25BCC3E90), swift_dynamicCastClass()))
    {

      v24 = swift_modifyAtWritableKeyPath();
      v26 = v25;
      v27 = *v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *v26;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(a1);
      }

      else
      {
        v30 = sub_25BB1B740(a1);
        v31 = *v26;
        *v26 = v30;
      }

      v24(v34, 0);
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void Layer.place(on:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9();
  v37 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &WitnessTable - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &WitnessTable - v21;
  v23 = *(v37 + 16);
  OUTLINED_FUNCTION_46_7();
  v25(v24);
  sub_25BAB1090(v7, sub_25BB8E45C, 0, v22);
  WitnessTable = v22;
  v37 = v10;
  (*(v10 + 16))(v16, v22, v8);
  OUTLINED_FUNCTION_4_5();
  v26 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v8, v26);
  while (1)
  {
    sub_25BAB173C(v8, v38);
    if (!v38[0])
    {
      break;
    }

    OUTLINED_FUNCTION_48_6();
    sub_25BCB736C();
    if (swift_dynamicCastClass() || (sub_25BCB736C(), swift_dynamicCastClass()))
    {

      v27 = swift_modifyAtWritableKeyPath();
      v29 = v28;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_25BB1B644(v0);
      }

      else
      {
        v33 = sub_25BB1B740(v0);
        v34 = *v29;
        *v29 = v33;
      }

      v27(v38, 0);
    }
  }

  v35 = *(v37 + 8);
  v35(v20, v8);
  v35(WitnessTable, v8);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BB87168(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = *(v2 + 48);
  sub_25BB92234(v2, v5);
  sub_25BB7BDB4(a1);
}

void sub_25BB871CC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  v5 = v2[3];
  a2[2] = v2[2];
  a2[3] = v5;
  sub_25BB920D4(v2, &v6);
  sub_25BB7B978(a1);
}

void sub_25BB87228(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(v2 + 32);
  sub_25BB92394(v2, v5);
  sub_25BB7B53C(a1);
}

void sub_25BB87284(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x50uLL);
  sub_25BB922E4(v2, &v4);
  sub_25BB7B100(a1);
}

void sub_25BB872E0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = a6;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;

  sub_25BB7AC88(a1);
}

void sub_25BB87338(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x78uLL);
  sub_25BB927E0(v2, v4);
  sub_25BB7A84C(a1);
}

void sub_25BB87394(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  sub_25BB924A0(v2, &v5);
  sub_25BB79FE4(a1);
}

void sub_25BB873E8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3 & 1;
  *(a5 + 9) = HIBYTE(a3) & 1;
  *(a5 + 16) = a4;

  sub_25BB79B78(a1);
}

void sub_25BB8744C(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *a2 = *v2;
  a2[1] = v4;
  a2[2] = v2[2];
  sub_25BB925D0(v2, &v5);
  sub_25BB7973C(a1);
}

void sub_25BB874CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x43uLL);
  sub_25BB924FC(v2, v4);
  sub_25BB78F18(a1);
}

void sub_25BB87528(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x9CuLL);
  sub_25BB923F0(v2, &v4);
  sub_25BB78AD8(a1);
}

void sub_25BB87584(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x88uLL);
  sub_25BB92680(v2, v4);
  sub_25BB7869C(a1);
}

uint64_t sub_25BB875E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_30_1();
  memcpy(v7, v3, 0x58uLL);
  v4(v3, v9);
  return a3(v5);
}

void sub_25BB87650(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, v2, 0x60uLL);
  sub_25BB92184(v2, &v4);
  sub_25BB77E24(a1);
}

double sub_25BB876AC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_25BB85DA4(a1);
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

void sub_25BB87888(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a2;
  sub_25BCB617C();
  sub_25BB833F8(a1);
}

float sub_25BB87A78@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[8];
  sub_25BB7F35C(a1);
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

void sub_25BB87B04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(v2 + 32);
  *(a2 + 48) = *(v2 + 48);
  sub_25BB7EB18(a1);
}

void sub_25BB87B84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  *(a5 + 17) = HIBYTE(a4);
  sub_25BB7DEC4(a1);
}

void sub_25BB87C6C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 9) = HIBYTE(a3);
  sub_25BB7C1F8(a1);
}

uint64_t Layer.placed(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = *(v7 + 16);
  OUTLINED_FUNCTION_16_20();
  v11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51C8, &unk_25BCC3730);
  if (swift_dynamicCast())
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000088, 0x800000025BCDD8A0);
    OUTLINED_FUNCTION_35_8();
    swift_getDynamicType();
    v13 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v13);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_20();
    v11();
    return (*(*(a3 + 16) + 8))(a1, a2);
  }

  return result;
}

uint64_t sub_25BB87E98()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  return sub_25BB875E0(v1, v2, v3);
}

void sub_25BB87F08()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB87338(v1, v2);
}

uint64_t sub_25BB87F50()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  return sub_25BB875E0(v1, v2, v3);
}

void sub_25BB87FC0()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB87584(v1, v2);
}

uint64_t sub_25BB88008()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB865FC);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_25BB88064()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB80778);
  *v0 = result;
  v0[1] = v5;
  return result;
}

uint64_t sub_25BB880BC()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB87A38(v2, v3, v4, *(v1 + 16), *(v1 + 24), v5);
  *v0 = result;
  v0[1] = v7;
  v0[2] = v8;
  v0[3] = v9;
  return result;
}

uint64_t sub_25BB880F4()
{
  OUTLINED_FUNCTION_18_19();
  result = sub_25BB879D0(v1, v2, v3, sub_25BB7F754);
  *v0 = result;
  v0[1] = v5;
  return result;
}

void sub_25BB88150()
{
  OUTLINED_FUNCTION_18_19();
  v3 = sub_25BB87AC8(v2, *(v1 + 16));
  *v0 = v4;
  *(v0 + 8) = v5;
  *(v0 + 16) = v3;
}

double sub_25BB88184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = *(v2 + 8);
  sub_25BB87A78(a1, v7);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

unint64_t sub_25BB88210@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[12] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x60uLL);
  memcpy(__srca, __src, 0x60uLL);
  __srca[13] = a2;
  __srca[14] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92184(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[15] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for InstanceNorm.Kind, &type metadata for InstanceNorm, v27, &type metadata for InstanceNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x80uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5210, &qword_25BCC38C0);
      sub_25BB921E0(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5210, &qword_25BCC38C0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[12] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB008F4();
        v18 = __srca[12];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB008F4();
        v18 = __srca[12];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88510@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[11] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x58uLL);
  memcpy(__srca, __src, 0x58uLL);
  __srca[12] = a2;
  __srca[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92730(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[14] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for TransposedConv1D.Kind, &type metadata for TransposedConv1D, v27, &type metadata for TransposedConv1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x78uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB59D8, &qword_25BCC3ED8);
      sub_25BB9278C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB59D8, &qword_25BCC3ED8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[11] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00914();
        v18 = __srca[11];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00914();
        v18 = __srca[11];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88810@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[17] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x88uLL);
  memcpy(__srca, __src, 0x88uLL);
  __srca[18] = a2;
  __srca[19] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92680(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[20] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for TransposedConv2D.Kind, &type metadata for TransposedConv2D, v27, &type metadata for TransposedConv2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0xA8uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB59B0, &qword_25BCC3EB8);
      sub_25BB926DC(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB59B0, &qword_25BCC3EB8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[17] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00934();
        v18 = __srca[17];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00934();
        v18 = __srca[17];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB88B14@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[20] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x9CuLL);
  memcpy(__srca, __src, 0x9CuLL);
  __srca[21] = a2;
  __srca[22] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB923F0(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[23] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for MultiheadAttention.Kind, &type metadata for MultiheadAttention, v27, &type metadata for MultiheadAttention, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0xC0uLL);
      memcpy(v26, __dst, 0x9CuLL);
      sub_25BAA486C(v25, v27, &qword_27FBB52D0, &qword_25BCC3958);
      sub_25BB9244C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB52D0, &qword_25BCC3958);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[20] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00954();
        v18 = __srca[20];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00954();
        v18 = __srca[20];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB88E18()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(v42, v8, sizeof(v42));
  v12 = MEMORY[0x277D84F90];
  __dst[9] = MEMORY[0x277D84F90];
  memcpy(v43, v9, 0x43uLL);
  memcpy(__dst, v9, 0x43uLL);
  __dst[10] = v7;
  __dst[11] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v13 = OUTLINED_FUNCTION_31();
  *(v13 + 16) = xmmword_25BCBAE50;
  sub_25BB924FC(v43, v40);
  *(v13 + 32) = sub_25BCB7C1C();
  *(v13 + 40) = v14;
  __dst[12] = v13;
  v40[0] = v12;
  if (sub_25BCB5B2C())
  {
    v15 = 0;
    while (v15 < sub_25BCB5B2C())
    {
      v16 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_50_5(v16, v15++, v17, v18, v40);
      if (v15 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_35();
  v19 = v40[0];
  v20 = sub_25BAAF54C(v40[0]);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v20;
    v35 = v11;
    v36 = v3;
    v37 = v1;
    if (!v20)
    {
LABEL_19:

      memcpy(v38, __dst, sizeof(v38));
      memcpy(v35, __dst, 0x68uLL);
      memcpy(v39, v42, 0x43uLL);
      sub_25BAA486C(v38, v40, v36, v37);
      sub_25BB92558(v39);
      memcpy(v40, __dst, sizeof(v40));
      OUTLINED_FUNCTION_42_8();
      sub_25BAA6F5C(v32, v33, v34);
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v22 = 0;
    v23 = v20 - 1;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_21;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F8779B0](v25, v19);
      }

      else
      {
        if (v25 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14(v19 & 0xFFFFFFFFFFFFFF8);
        if (v28)
        {
          goto LABEL_23;
        }

        v26 = *(v19 + 32 + 8 * v27);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[9] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_8_0();
        sub_25BB008B4();
        v24 = __dst[9];
      }

      v30 = *(v24 + 16);
      if (v30 >= *(v24 + 24) >> 1)
      {
        sub_25BB008B4();
        v24 = __dst[9];
      }

      ++v22;
      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = 0;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_25BB890D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v26 = a1;
  v27 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  v28 = v7;
  v24 = v6;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for ReLU.Kind, &type metadata for ReLU, &v24, &type metadata for ReLU, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v24;
  result = sub_25BAAF54C(v24);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v13 = result;
  if (result)
  {
    v23 = a3;
    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        break;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v16 + 16);
        sub_25BB00974();
        v16 = v25;
      }

      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_25BB00974();
        v16 = v25;
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {

        v22 = v25;
        v4 = v26;
        v3 = v27;
        v7 = v28;
        a3 = v23;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_21:
  *a3 = v22;
  a3[1] = v4;
  a3[2] = v3;
  a3[3] = v7;

  sub_25BA9D8C4(v4);
  sub_25BCB617C();

  sub_25BA9D148(v4);
}

uint64_t sub_25BB8936C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v29 = *a1;
  v30 = v5;
  v7 = *a1;
  v6 = a1[1];
  v31 = a1[2];
  v8 = MEMORY[0x277D84F90];
  v32[0] = v7;
  v32[1] = v6;
  v33 = a1[2];
  __src[0] = v7;
  __src[1] = v6;
  __src[2] = v33;
  *&__src[3] = MEMORY[0x277D84F90];
  *(&__src[3] + 1) = a2;
  *&__src[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB925D0(v32, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&__src[4] + 1) = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Dense.Kind, &type metadata for Dense, v27, &type metadata for Dense, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x50uLL);
      v26[0] = v29;
      v26[1] = v30;
      v26[2] = v31;
      sub_25BAA486C(__dst, v27, &qword_27FBB5848, &qword_25BCC3D98);
      sub_25BB9262C(v26);
      memcpy(v27, __src, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5848, &qword_25BCC3D98);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[3] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00994();
        v18 = *&__src[3];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00994();
        v18 = *&__src[3];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB89658@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  *&v31 = a1;
  WORD4(v31) = a2 & 0x101;
  *&v32 = a3;
  *(&v32 + 1) = MEMORY[0x277D84F90];
  *&v33 = a4;
  *(&v33 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;

  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  v34 = v8;
  *&v29[0] = v7;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for PReLU.Kind, &type metadata for PReLU, v29, &type metadata for PReLU, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = *&v29[0];
  result = sub_25BAAF54C(*&v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v26 = a6;
    if (!result)
    {
LABEL_19:

      v23 = v32;
      v27[0] = v31;
      v27[1] = v32;
      v27[2] = v33;
      v24 = v33;
      v28 = v34;
      v25 = v34;
      *v26 = v31;
      *(v26 + 16) = v23;
      *(v26 + 32) = v24;
      *(v26 + 48) = v25;
      sub_25BAA486C(v27, v29, &qword_27FBB53E0, &qword_25BCC3A30);

      v29[0] = v31;
      v29[1] = v32;
      v29[2] = v33;
      v30 = v34;
      return sub_25BAA6F5C(v29, &qword_27FBB53E0, &qword_25BCC3A30);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v32 + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v17 + 16) + 1;
        sub_25BB009B4();
        v17 = *(&v32 + 1);
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_25BB009B4();
        v17 = *(&v32 + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 12);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = MEMORY[0x277D84F90];
  LOBYTE(v30) = *a1;
  *(&v30 + 4) = *(a1 + 4);
  HIDWORD(v30) = v5;
  *&v31 = v7;
  *(&v31 + 1) = v6;
  *&v32 = MEMORY[0x277D84F90];
  *(&v32 + 1) = a2;
  *&v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;

  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v33 + 1) = v9;
  *&v29[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for RReLU.Kind, &type metadata for RReLU, v29, &type metadata for RReLU, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v29[0];
  result = sub_25BAAF54C(*&v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v27 = a4;
    if (!result)
    {
LABEL_19:

      v24 = v31;
      v28[0] = v30;
      v28[1] = v31;
      v26 = v33;
      v28[2] = v32;
      v25 = v32;
      v28[3] = v33;
      *v27 = v30;
      v27[1] = v24;
      v27[2] = v25;
      v27[3] = v26;
      sub_25BAA486C(v28, v29, &qword_27FBB5390, &qword_25BCC39F0);

      v29[0] = v30;
      v29[1] = v31;
      v29[2] = v32;
      v29[3] = v33;
      return sub_25BAA6F5C(v29, &qword_27FBB5390, &qword_25BCC39F0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB009D4();
        v18 = v32;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB009D4();
        v18 = v32;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB89C28@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[11] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x58uLL);
  memcpy(__srca, __src, 0x58uLL);
  __srca[12] = a2;
  __srca[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92890(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[14] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Conv1D.Kind, &type metadata for Conv1D, v27, &type metadata for Conv1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x78uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5A28, &qword_25BCC3F18);
      sub_25BB928EC(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5A28, &qword_25BCC3F18);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[11] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB009F4();
        v18 = __srca[11];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB009F4();
        v18 = __srca[11];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_25BB89F28@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[15] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x78uLL);
  memcpy(__srca, __src, 0x78uLL);
  __srca[16] = a2;
  __srca[17] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB927E0(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[18] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Conv2D.Kind, &type metadata for Conv2D, v27, &type metadata for Conv2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x98uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5A00, &qword_25BCC3EF8);
      sub_25BB9283C(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5A00, &qword_25BCC3EF8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[15] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00A14();
        v18 = __srca[15];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00A14();
        v18 = __srca[15];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB8A22C(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v12 = MEMORY[0x277D84F90];
  *&v45 = a9;
  BYTE4(v45) = a1;
  *(&v45 + 1) = a2;
  *&v46 = a3;
  *(&v46 + 1) = MEMORY[0x277D84F90];
  *&v47 = a4;
  *(&v47 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v13 = OUTLINED_FUNCTION_31();
  *(v13 + 16) = xmmword_25BCBAE50;

  *(v13 + 32) = sub_25BCB7C1C();
  *(v13 + 40) = v14;
  v48 = v13;
  *&v43[0] = v12;
  if (sub_25BCB5B2C())
  {
    v15 = 0;
    while (v15 < sub_25BCB5B2C())
    {
      v16 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_50_5(v16, v15++, v17, v18, v43);
      if (v15 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  v40 = a8;
  OUTLINED_FUNCTION_35();
  v19 = *&v43[0];
  v20 = sub_25BAAF54C(*&v43[0]);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = v20;
    v38 = a6;
    v39 = a7;
    if (!v20)
    {
LABEL_19:

      v32 = v46;
      v41[0] = v45;
      v41[1] = v46;
      v41[2] = v47;
      v33 = v47;
      v42 = v48;
      v34 = v48;
      *v40 = v45;
      *(v40 + 16) = v32;
      *(v40 + 32) = v33;
      *(v40 + 48) = v34;
      sub_25BAA486C(v41, v43, v38, v39);

      v43[0] = v45;
      v43[1] = v46;
      v43[2] = v47;
      v44 = v48;
      OUTLINED_FUNCTION_42_8();
      sub_25BAA6F5C(v35, v36, v37);
      return;
    }

    v22 = 0;
    v23 = v20 - 1;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        goto LABEL_21;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F8779B0](v25, v19);
      }

      else
      {
        if (v25 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14(v19 & 0xFFFFFFFFFFFFFF8);
        if (v28)
        {
          goto LABEL_23;
        }

        v26 = *(v19 + 32 + 8 * v27);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v46 + 1) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_8_0();
        sub_25BB008D4();
        v24 = *(&v46 + 1);
      }

      v30 = *(v24 + 16);
      if (v30 >= *(v24 + 24) >> 1)
      {
        sub_25BB008D4();
        v24 = *(&v46 + 1);
      }

      ++v22;
      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = 0;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_25BB8A4E8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  v8 = MEMORY[0x277D84F90];
  __srca[10] = MEMORY[0x277D84F90];
  memcpy(v30, __src, 0x50uLL);
  memcpy(__srca, __src, 0x50uLL);
  __srca[11] = a2;
  __srca[12] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB922E4(v30, v27);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  __srca[13] = v9;
  v27[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for BatchNorm.Kind, &type metadata for BatchNorm, v27, &type metadata for BatchNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27[0];
  result = sub_25BAAF54C(v27[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(v25, __srca, sizeof(v25));
      memcpy(v24, __srca, 0x70uLL);
      memcpy(v26, __dst, sizeof(v26));
      sub_25BAA486C(v25, v27, &qword_27FBB5260, &qword_25BCC3900);
      sub_25BB92340(v26);
      memcpy(v27, __srca, sizeof(v27));
      return sub_25BAA6F5C(v27, &qword_27FBB5260, &qword_25BCC3900);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __srca[10] = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00A34();
        v18 = __srca[10];
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00A34();
        v18 = __srca[10];
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8A7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = MEMORY[0x277D84F90];
  v8 = *(a1 + 32);
  *&__src[0] = *a1;
  BYTE8(__src[0]) = v5 & 1;
  BYTE9(__src[0]) = v6 & 1;
  __src[1] = *(a1 + 16);
  *&__src[2] = v8;
  *(&__src[2] + 1) = MEMORY[0x277D84F90];
  *&__src[3] = a2;
  *(&__src[3] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;

  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *&__src[4] = v9;
  v26[0] = v7;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Embedding.Kind, &type metadata for Embedding, v26, &type metadata for Embedding, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v26[0];
  result = sub_25BAAF54C(v26[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x48uLL);
      sub_25BAA486C(__dst, v26, &qword_27FBB52A8, &qword_25BCC3938);

      memcpy(v26, __src, sizeof(v26));
      return sub_25BAA6F5C(v26, &qword_27FBB52A8, &qword_25BCC3938);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[2] + 1) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00A54();
        v18 = *(&__src[2] + 1);
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00A54();
        v18 = *(&__src[2] + 1);
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8AAD8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v33 = a1[2];
  v34 = v6;
  v9 = MEMORY[0x277D84F90];
  v35[0] = v8;
  v35[1] = v7;
  v10 = a1[3];
  v36 = a1[2];
  v37 = v10;
  __src[0] = v8;
  __src[1] = v7;
  __src[2] = v36;
  __src[3] = v10;
  *&__src[4] = MEMORY[0x277D84F90];
  *(&__src[4] + 1) = a2;
  *&__src[5] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  sub_25BB920D4(v35, v29);
  *(v11 + 32) = sub_25BCB7C1C();
  *(v11 + 40) = v12;
  *(&__src[5] + 1) = v11;
  v29[0] = v9;
  if (sub_25BCB5B2C())
  {
    v13 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v13 >= result)
      {
        break;
      }

      v15 = sub_25BCB5AFC();
      sub_25BAB5F30(v15, v13++, &type metadata for GroupNorm.Kind, &type metadata for GroupNorm, v29, &type metadata for GroupNorm, v15);
      if (v13 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v16 = v29[0];
  result = sub_25BAAF54C(v29[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v17 = result;
    v26 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v26, __src, 0x60uLL);
      v28[0] = v31;
      v28[1] = v32;
      v28[2] = v33;
      v28[3] = v34;
      sub_25BAA486C(__dst, v29, &qword_27FBB51E8, &qword_25BCC3898);
      sub_25BB92130(v28);
      memcpy(v29, __src, sizeof(v29));
      return sub_25BAA6F5C(v29, &qword_27FBB51E8, &qword_25BCC3898);
    }

    v18 = 0;
    v19 = result - 1;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_21;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x25F8779B0](result, v16);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v21 = *(v16 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[4] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v20 + 16) + 1;
        sub_25BB00A74();
        v20 = *&__src[4];
      }

      v24 = *(v20 + 16);
      if (v24 >= *(v20 + 24) >> 1)
      {
        sub_25BB00A74();
        v20 = *&__src[4];
      }

      ++v18;
      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = 0;
      if (v17 == v18)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8ADC4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a1[1];
  v30 = *a1;
  v31 = v5;
  v7 = *a1;
  v6 = a1[1];
  v32 = a1[2];
  v33 = *(a1 + 6);
  v8 = MEMORY[0x277D84F90];
  v34[0] = v7;
  v34[1] = v6;
  v35 = a1[2];
  v36 = *(a1 + 6);
  __src[0] = v7;
  __src[1] = v6;
  __src[2] = v35;
  *&__src[3] = v36;
  *(&__src[3] + 1) = MEMORY[0x277D84F90];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BB92234(v34, v28);
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *&__src[5] = v9;
  v28[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for LayerNorm.Kind, &type metadata for LayerNorm, v28, &type metadata for LayerNorm, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v28[0];
  result = sub_25BAAF54C(v28[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v24 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v24, __src, 0x58uLL);
      v26[0] = v30;
      v26[1] = v31;
      v26[2] = v32;
      v27 = v33;
      sub_25BAA486C(__dst, v28, &qword_27FBB5238, &qword_25BCC38E0);
      sub_25BB92290(v26);
      memcpy(v28, __src, sizeof(v28));
      return sub_25BAA6F5C(v28, &qword_27FBB5238, &qword_25BCC38E0);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[3] + 1) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00A94();
        v18 = *(&__src[3] + 1);
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00A94();
        v18 = *(&__src[3] + 1);
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8B0D0@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v30 = a1;
  v10 = MEMORY[0x277D84F90];
  v31 = a2 & 0xFF01;
  v32 = MEMORY[0x277D84F90];
  v33 = a3;
  v34 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  *(v11 + 32) = sub_25BCB7C1C();
  *(v11 + 40) = v12;
  v35 = v11;
  v29 = v10;
  if (sub_25BCB5B2C())
  {
    v13 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v13 >= result)
      {
        break;
      }

      v15 = sub_25BCB5AFC();
      sub_25BAB5F30(v15, v13++, &type metadata for Upsample1D.Kind, &type metadata for Upsample1D, &v29, &type metadata for Upsample1D, v15);
      if (v13 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v16 = v29;
  result = sub_25BAAF54C(v29);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v17 = result;
  if (result)
  {
    v28 = a5;
    v18 = 0;
    v19 = result - 1;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v19 - v18;
      if (__OFSUB__(v19, v18))
      {
        break;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x25F8779B0](result, v16);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v21 = *(v16 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = *(v20 + 16) + 1;
        sub_25BB00E48();
        v20 = v32;
      }

      v24 = *(v20 + 16);
      if (v24 >= *(v20 + 24) >> 1)
      {
        sub_25BB00E48();
        v20 = v32;
      }

      ++v18;
      *(v20 + 16) = v24 + 1;
      v25 = v20 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = 0;
      if (v17 == v18)
      {

        v8 = v30;
        LOBYTE(v7) = v31;
        v26 = HIBYTE(v31);
        v27 = v32;
        v6 = v33;
        v5 = v34;
        v11 = v35;
        a5 = v28;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = HIBYTE(v7);

  v27 = MEMORY[0x277D84F90];
LABEL_21:
  *a5 = v8;
  *(a5 + 8) = v7 & 1;
  *(a5 + 9) = v26;
  *(a5 + 16) = v27;
  *(a5 + 24) = v6;
  *(a5 + 32) = v5;
  *(a5 + 40) = v11;

  sub_25BA9D8C4(v6);
  sub_25BCB617C();

  sub_25BA9D148(v6);
}

uint64_t sub_25BB8B3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = MEMORY[0x277D84F90];
  *&v33 = a1;
  *(&v33 + 1) = a2;
  LOWORD(v34) = a3 & 0xFF01;
  *(&v34 + 1) = MEMORY[0x277D84F90];
  *&v35 = a4;
  *(&v35 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  v36 = v8;
  *&v31[0] = v7;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for Upsample2D.Kind, &type metadata for Upsample2D, v31, &type metadata for Upsample2D, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v27 = a6;
    if (!result)
    {
LABEL_19:

      v23 = v33;
      v24 = v34;
      v29[0] = v33;
      v29[1] = v34;
      v29[2] = v35;
      v25 = v35;
      v30 = v36;
      v26 = v36;
      *v27 = v33;
      *(v27 + 16) = v24;
      *(v27 + 32) = v25;
      *(v27 + 48) = v26;
      v31[0] = v23;
      v31[1] = v24;
      v31[2] = v25;
      v32 = v26;
      sub_25BAA486C(v29, v28, &qword_27FBB5A50, &qword_25BCC3F38);
      return sub_25BAA6F5C(v31, &qword_27FBB5A50, &qword_25BCC3F38);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v34 + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v17 + 16) + 1;
        sub_25BB00F28();
        v17 = *(&v34 + 1);
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_25BB00F28();
        v17 = *(&v34 + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8B668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  BYTE8(v33) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for AveragePool1D.Kind, &type metadata for AveragePool1D, v31, &type metadata for AveragePool1D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB57D0, &qword_25BCC3D38);
      return sub_25BAA6F5C(v31, &qword_27FBB57D0, &qword_25BCC3D38);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB00F68();
        v18 = v34;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB00F68();
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8B910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = *(a1 + 48);
  v7 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v7;
  __src[2] = *(a1 + 32);
  LOBYTE(__src[3]) = v6 & 1;
  *(&__src[3] + 1) = MEMORY[0x277D84F90];
  *&__src[4] = a2;
  *(&__src[4] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = sub_25BCB7C1C();
  *(v8 + 40) = v9;
  *&__src[5] = v8;
  v26[0] = v5;
  if (sub_25BCB5B2C())
  {
    v10 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v10 >= result)
      {
        break;
      }

      v12 = sub_25BCB5AFC();
      sub_25BAB5F30(v12, v10++, &type metadata for AveragePool2D.Kind, &type metadata for AveragePool2D, v26, &type metadata for AveragePool2D, v12);
      if (v10 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v13 = v26[0];
  result = sub_25BAAF54C(v26[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    v23 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v23, __src, 0x58uLL);
      memcpy(v26, __src, sizeof(v26));
      sub_25BAA486C(__dst, v24, &qword_27FBB57A8, &qword_25BCC3D18);
      return sub_25BAA6F5C(v26, &qword_27FBB57A8, &qword_25BCC3D18);
    }

    v15 = 0;
    v16 = result - 1;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_21;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](result, v13);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[3] + 1) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = *(v17 + 16) + 1;
        sub_25BB00F88();
        v17 = *(&__src[3] + 1);
      }

      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_25BB00F88();
        v17 = *(&__src[3] + 1);
      }

      ++v15;
      *(v17 + 16) = v21 + 1;
      v22 = v17 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = 0;
      if (v14 == v15)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = sub_25BCB7C1C();
  *(v12 + 40) = v13;
  v31 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v14 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v14 >= result)
      {
        break;
      }

      v16 = sub_25BCB5AFC();
      sub_25BAB5F30(v16, v14++, &type metadata for ConstantPad1D.Kind, &type metadata for ConstantPad1D, &v31, &type metadata for ConstantPad1D, v16);
      if (v14 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v29 = v12;
  v30 = a1;
  swift_beginAccess();
  v17 = v31;
  result = sub_25BAAF54C(v31);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = result;
  v27 = a5;
  v28 = a4;
  if (result)
  {
    v19 = 0;
    v20 = result - 1;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F8779B0](result, v17);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v17 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v21 + 16);
        sub_25BB00FA8();
        v21 = v31;
      }

      v25 = *(v21 + 16);
      if (v25 >= *(v21 + 24) >> 1)
      {
        sub_25BB00FA8();
        v21 = v31;
      }

      ++v19;
      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = 0;
      if (v18 == v19)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_21:

  *v27 = v30;
  *(v27 + 8) = a2;
  *(v27 + 16) = a6;
  *(v27 + 24) = v21;
  *(v27 + 32) = a3;
  *(v27 + 40) = v28;
  *(v27 + 48) = v29;
  return result;
}

uint64_t sub_25BB8BE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v6;
  LODWORD(__src[2]) = *(a1 + 32);
  *(&__src[2] + 1) = MEMORY[0x277D84F90];
  *&__src[3] = a2;
  *(&__src[3] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  *&__src[4] = v7;
  v25[0] = v5;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for ConstantPad2D.Kind, &type metadata for ConstantPad2D, v25, &type metadata for ConstantPad2D, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v25[0];
  result = sub_25BAAF54C(v25[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v22 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v22, __src, 0x48uLL);
      memcpy(v25, __src, sizeof(v25));
      sub_25BAA486C(__dst, v23, &qword_27FBB5870, &qword_25BCC3DB8);
      return sub_25BAA6F5C(v25, &qword_27FBB5870, &qword_25BCC3DB8);
    }

    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_21;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&__src[2] + 1) = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v16 + 16) + 1;
        sub_25BB00FC8();
        v16 = *(&__src[2] + 1);
      }

      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_25BB00FC8();
        v16 = *(&__src[2] + 1);
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8C0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for SymmetricPad2D.Kind, &type metadata for SymmetricPad2D, v31, &type metadata for SymmetricPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB58C0, &qword_25BCC3DF8);
      return sub_25BAA6F5C(v31, &qword_27FBB58C0, &qword_25BCC3DF8);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB01008();
        v18 = v34;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB01008();
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8C398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for ReflectionPad2D.Kind, &type metadata for ReflectionPad2D, v31, &type metadata for ReflectionPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB5910, &qword_25BCC3E38);
      return sub_25BAA6F5C(v31, &qword_27FBB5910, &qword_25BCC3E38);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB01088();
        v18 = v34;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB01088();
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25BB8C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v8 = MEMORY[0x277D84F90];
  v28 = a1;
  v29 = MEMORY[0x277D84F90];
  v30 = a2;
  v31 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  sub_25BCB617C();
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  v32 = v9;
  v27 = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for Reshape.Kind, &type metadata for Reshape, &v27, &type metadata for Reshape, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v14 = v27;
  result = sub_25BAAF54C(v27);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v15 = result;
  if (result)
  {
    v26 = a4;
    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        break;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB011C8();
        v18 = v29;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB011C8();
        v18 = v29;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {

        v25 = v28;
        v24 = v29;
        v5 = v30;
        v4 = v31;
        v9 = v32;
        a4 = v26;
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = MEMORY[0x277D84F90];
  v25 = a1;
LABEL_21:
  *a4 = v25;
  a4[1] = v24;
  a4[2] = v5;
  a4[3] = v4;
  a4[4] = v9;
  sub_25BCB617C();

  sub_25BA9D8C4(v5);
  sub_25BCB617C();

  sub_25BA9D148(v5);
}

void sub_25BB8C908()
{
  OUTLINED_FUNCTION_51_8();
  v39 = v0;
  v40 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v15 = OUTLINED_FUNCTION_31();
  *(v15 + 16) = xmmword_25BCBAE50;
  *(v15 + 32) = sub_25BCB7C1C();
  *(v15 + 40) = v16;
  v38[0] = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v17 = 0;
    while (v17 < sub_25BCB5B2C())
    {
      v18 = sub_25BCB5AFC();
      sub_25BAB5F30(v18, v17++, v6, v6, v38, v6, v18);
      if (v17 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  OUTLINED_FUNCTION_35();
  v19 = v38[0];
  v20 = v4(v38[0]);
  if (v20 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v21 = v20;
  v34 = v10;
  v35 = v14;
  v36 = v8;
  if (v20)
  {
    v22 = 0;
    v23 = v20 - 1;
    v24 = MEMORY[0x277D84F90];
    while (1)
    {
      v25 = v23 - v22;
      if (__OFSUB__(v23, v22))
      {
        break;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F8779B0](v25, v19);
      }

      else
      {
        if (v25 < 0)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_20_14(v19 & 0xFFFFFFFFFFFFFF8);
        if (v28)
        {
          goto LABEL_25;
        }

        v26 = *(v19 + 32 + 8 * v27);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v30 = OUTLINED_FUNCTION_8_0();
        v37(v30);
        v24 = v38[0];
      }

      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        (v37)(v31 > 1, v32 + 1, 1);
        v24 = v38[0];
      }

      ++v22;
      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v26;
      *(v33 + 40) = 0;
      if (v21 == v22)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_21:

  *v35 = v12;
  v35[1] = v24;
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v15;
  OUTLINED_FUNCTION_49_8();
}

uint64_t sub_25BB8CB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = sub_25BCB7C1C();
  *(v10 + 40) = v11;
  v27 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v12 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v12 >= result)
      {
        break;
      }

      v14 = sub_25BCB5AFC();
      sub_25BAB5F30(v14, v12++, &type metadata for Hardtanh.Kind, &type metadata for Hardtanh, &v27, &type metadata for Hardtanh, v14);
      if (v12 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  swift_beginAccess();
  v15 = v27;
  result = sub_25BAAF54C(v27);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v16 = result;
  v25 = v10;
  v26 = a3;
  if (result)
  {
    v17 = 0;
    v18 = result - 1;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v18 - v17;
      if (__OFSUB__(v18, v17))
      {
        break;
      }

      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x25F8779B0](result, v15);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v20 = *(v15 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = *(v19 + 16);
        sub_25BB01248();
        v19 = v27;
      }

      v23 = *(v19 + 16);
      if (v23 >= *(v19 + 24) >> 1)
      {
        sub_25BB01248();
        v19 = v27;
      }

      ++v17;
      *(v19 + 16) = v23 + 1;
      v24 = v19 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = 0;
      if (v16 == v17)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_21:

  *v26 = a4;
  *(v26 + 4) = a5;
  *(v26 + 8) = v19;
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;
  *(v26 + 32) = v25;
  return result;
}

void sub_25BB8CDA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(BOOL, unint64_t, uint64_t))
{
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = OUTLINED_FUNCTION_31();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  v28 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (v9 < sub_25BCB5B2C())
    {
      v10 = sub_25BCB5AFC();
      sub_25BAB5F30(v10, v9++, a3, a3, &v28, a3, v10);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14();
  v11 = v28;
  v12 = a4(v28);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    if (!v12)
    {
LABEL_19:

      return;
    }

    v14 = 0;
    v15 = v12 - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      v17 = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_21;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x25F8779B0](v17, v11);
      }

      else
      {
        if (v17 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14(v11 & 0xFFFFFFFFFFFFFF8);
        if (v20)
        {
          goto LABEL_23;
        }

        v18 = *(v11 + 32 + 8 * v19);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = OUTLINED_FUNCTION_6_29();
        v23(v22);
        v16 = v28;
      }

      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        a5(v24 > 1, v25 + 1, 1);
        v16 = v28;
      }

      ++v14;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v18;
      *(v26 + 40) = 0;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

void sub_25BB8CFC8()
{
  OUTLINED_FUNCTION_51_8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v10 = OUTLINED_FUNCTION_31();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = sub_25BCB7C1C();
  *(v10 + 40) = v11;
  v42 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v12 = 0;
    while (v12 < sub_25BCB5B2C())
    {
      v13 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_28_11(v13, v14, v15, v16, v17, v18, v19, v20, v37, v38);
      if (++v12 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14();
  v21 = v1(v42);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v39 = v9;
    v40 = v3;
    if (!v21)
    {
LABEL_19:

      *v39 = v7;
      OUTLINED_FUNCTION_40_10(v5, v10, v5, v39, v40);
      OUTLINED_FUNCTION_49_8();
      return;
    }

    v23 = 0;
    v24 = v21 - 1;
    OUTLINED_FUNCTION_41_8();
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_21;
      }

      if (v10)
      {
        v27 = MEMORY[0x25F8779B0](v26, v42);
      }

      else
      {
        if (v26 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14(v41);
        if (v29)
        {
          goto LABEL_23;
        }

        v27 = *(v5 + 8 * v28);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = OUTLINED_FUNCTION_6_29();
        v31(v30);
      }

      v32 = *(v25 + 16);
      if (v32 >= *(v25 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_8();
        v36(v34, v35);
      }

      ++v23;
      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = 0;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_25BB8D1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  *(v12 + 32) = sub_25BCB7C1C();
  *(v12 + 40) = v13;
  v32 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v14 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v14 >= result)
      {
        break;
      }

      v16 = sub_25BCB5AFC();
      sub_25BAB5F30(v16, v14++, &type metadata for MaxPool1D.Kind, &type metadata for MaxPool1D, &v32, &type metadata for MaxPool1D, v16);
      if (v14 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v29 = v12;
  v30 = a1;
  v31 = a2;
  swift_beginAccess();
  v17 = v32;
  result = sub_25BAAF54C(v32);
  if (result < 0)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v18 = result;
  v27 = a6;
  v28 = a4;
  if (result)
  {
    v19 = 0;
    v20 = result - 1;
    v21 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        break;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F8779B0](result, v17);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_24;
        }

        if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v17 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = *(v21 + 16);
        sub_25BB012E8();
        v21 = v32;
      }

      v25 = *(v21 + 16);
      if (v25 >= *(v21 + 24) >> 1)
      {
        sub_25BB012E8();
        v21 = v32;
      }

      ++v19;
      *(v21 + 16) = v25 + 1;
      v26 = v21 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = 0;
      if (v18 == v19)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_21:

  *v27 = v30;
  v27[1] = v31;
  v27[2] = a3;
  v27[3] = v21;
  v27[4] = v28;
  v27[5] = a5;
  v27[6] = v29;
  return result;
}

uint64_t sub_25BB8D428@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = MEMORY[0x277D84F90];
  v6 = a1[1];
  __src[0] = *a1;
  __src[1] = v6;
  __src[2] = a1[2];
  *&__src[3] = MEMORY[0x277D84F90];
  *(&__src[3] + 1) = a2;
  *&__src[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE50;
  *(v7 + 32) = sub_25BCB7C1C();
  *(v7 + 40) = v8;
  *(&__src[4] + 1) = v7;
  v25[0] = v5;
  if (sub_25BCB5B2C())
  {
    v9 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v9 >= result)
      {
        break;
      }

      v11 = sub_25BCB5AFC();
      sub_25BAB5F30(v11, v9++, &type metadata for MaxPool2D.Kind, &type metadata for MaxPool2D, v25, &type metadata for MaxPool2D, v11);
      if (v9 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v12 = v25[0];
  result = sub_25BAAF54C(v25[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v22 = a4;
    if (!result)
    {
LABEL_19:

      memcpy(__dst, __src, sizeof(__dst));
      memcpy(v22, __src, 0x50uLL);
      memcpy(v25, __src, sizeof(v25));
      sub_25BAA486C(__dst, v23, &qword_27FBB57F8, &qword_25BCC3D58);
      return sub_25BAA6F5C(v25, &qword_27FBB57F8, &qword_25BCC3D58);
    }

    v14 = 0;
    v15 = result - 1;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v15 - v14;
      if (__OFSUB__(v15, v14))
      {
        goto LABEL_21;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x25F8779B0](result, v12);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v17 = *(v12 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__src[3] = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = *(v16 + 16) + 1;
        sub_25BB01308();
        v16 = *&__src[3];
      }

      v20 = *(v16 + 16);
      if (v20 >= *(v16 + 24) >> 1)
      {
        sub_25BB01308();
        v16 = *&__src[3];
      }

      ++v14;
      *(v16 + 16) = v20 + 1;
      v21 = v16 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = 0;
      if (v13 == v14)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_25BB8D6DC()
{
  OUTLINED_FUNCTION_51_8();
  v3 = v2;
  OUTLINED_FUNCTION_30_1();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v10 = OUTLINED_FUNCTION_31();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = sub_25BCB7C1C();
  *(v10 + 40) = v11;
  v40 = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v12 = 0;
    while (v12 < sub_25BCB5B2C())
    {
      v13 = sub_25BCB5AFC();
      OUTLINED_FUNCTION_28_11(v13, v14, v15, v16, v17, v18, v19, v20, v35, v36);
      if (++v12 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  OUTLINED_FUNCTION_21_14();
  v21 = v3(v40);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = v21;
    v37 = v1;
    v38 = v0;
    if (!v21)
    {
LABEL_19:

      *v9 = v7;
      v9[1] = v5;
      OUTLINED_FUNCTION_40_10(v37, v10, v9, v37, v38);
      OUTLINED_FUNCTION_49_8();
      return;
    }

    v23 = 0;
    v24 = v21 - 1;
    OUTLINED_FUNCTION_41_8();
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v26 = v24 - v23;
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_21;
      }

      if (v10)
      {
        v27 = MEMORY[0x25F8779B0](v26, v40);
      }

      else
      {
        if (v26 < 0)
        {
          goto LABEL_22;
        }

        OUTLINED_FUNCTION_20_14(v39);
        if (v29)
        {
          goto LABEL_23;
        }

        v27 = *&v9[2 * v28];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = OUTLINED_FUNCTION_6_29();
        v31(v30);
      }

      v32 = *(v25 + 16);
      if (v32 >= *(v25 + 24) >> 1)
      {
        OUTLINED_FUNCTION_45_8();
        v34();
      }

      ++v23;
      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v27;
      *(v33 + 40) = 0;
      if (v22 == v23)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
}

void sub_25BB8D8D0()
{
  OUTLINED_FUNCTION_51_8();
  v42 = v0;
  v43 = v1;
  v40 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v17 = OUTLINED_FUNCTION_31();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = sub_25BCB7C1C();
  *(v17 + 40) = v18;
  v41[0] = MEMORY[0x277D84F90];
  if (sub_25BCB5B2C())
  {
    v19 = 0;
    while (v19 < sub_25BCB5B2C())
    {
      v20 = sub_25BCB5AFC();
      sub_25BAB5F30(v20, v19++, v6, v6, v41, v6, v20);
      if (v19 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_5:
  v39 = v17;
  OUTLINED_FUNCTION_35();
  v21 = v41[0];
  v22 = v4(v41[0]);
  if (v22 < 0)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v23 = v22;
  v36 = v16;
  v37 = v10;
  v38 = v8;
  if (v22)
  {
    v24 = 0;
    v25 = v22 - 1;
    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = v25 - v24;
      if (__OFSUB__(v25, v24))
      {
        break;
      }

      if ((v21 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x25F8779B0](v27, v21);
      }

      else
      {
        if (v27 < 0)
        {
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_20_14(v21 & 0xFFFFFFFFFFFFFF8);
        if (v30)
        {
          goto LABEL_25;
        }

        v28 = *(v21 + 32 + 8 * v29);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41[0] = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        v32 = OUTLINED_FUNCTION_8_0();
        v40(v32);
        v26 = v41[0];
      }

      v34 = *(v26 + 16);
      v33 = *(v26 + 24);
      if (v34 >= v33 >> 1)
      {
        (v40)(v33 > 1, v34 + 1, 1);
        v26 = v41[0];
      }

      ++v24;
      *(v26 + 16) = v34 + 1;
      v35 = v26 + 16 * v34;
      *(v35 + 32) = v28;
      *(v35 + 40) = 0;
      if (v23 == v24)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = MEMORY[0x277D84F90];
LABEL_21:

  *v36 = v14;
  v36[1] = v12;
  v36[2] = v26;
  v36[3] = v37;
  v36[4] = v38;
  v36[5] = v39;
  OUTLINED_FUNCTION_49_8();
}

uint64_t sub_25BB8DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *&v32 = a1;
  *(&v32 + 1) = a2;
  *&v33 = a3;
  *(&v33 + 1) = a4;
  *&v34 = MEMORY[0x277D84F90];
  *(&v34 + 1) = a5;
  *&v35 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = sub_25BCB7C1C();
  *(v9 + 40) = v10;
  *(&v35 + 1) = v9;
  *&v31[0] = v8;
  if (sub_25BCB5B2C())
  {
    v11 = 0;
    while (1)
    {
      result = sub_25BCB5B2C();
      if (v11 >= result)
      {
        break;
      }

      v13 = sub_25BCB5AFC();
      sub_25BAB5F30(v13, v11++, &type metadata for ZeroPad2D.Kind, &type metadata for ZeroPad2D, v31, &type metadata for ZeroPad2D, v13);
      if (v11 == sub_25BCB5B2C())
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_5:
  swift_beginAccess();
  v14 = *&v31[0];
  result = sub_25BAAF54C(*&v31[0]);
  if ((result & 0x8000000000000000) == 0)
  {
    v15 = result;
    v28 = a7;
    if (!result)
    {
LABEL_19:

      v24 = v32;
      v25 = v33;
      v30[0] = v32;
      v30[1] = v33;
      v27 = v35;
      v30[2] = v34;
      v26 = v34;
      v30[3] = v35;
      *v28 = v32;
      v28[1] = v25;
      v28[2] = v26;
      v28[3] = v27;
      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_25BAA486C(v30, v29, &qword_27FBB5960, &qword_25BCC3E78);
      return sub_25BAA6F5C(v31, &qword_27FBB5960, &qword_25BCC3E78);
    }

    v16 = 0;
    v17 = result - 1;
    v18 = MEMORY[0x277D84F90];
    while (1)
    {
      result = v17 - v16;
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_21;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](result, v14);
      }

      else
      {
        if (result < 0)
        {
          goto LABEL_22;
        }

        if (result >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v19 = *(v14 + 32 + 8 * result);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v34 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = *(v18 + 16) + 1;
        sub_25BB01368();
        v18 = v34;
      }

      v22 = *(v18 + 16);
      if (v22 >= *(v18 + 24) >> 1)
      {
        sub_25BB01368();
        v18 = v34;
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      v23 = v18 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = 0;
      if (v15 == v16)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Layer.isEveryParameterInitialized.getter()
{
  OUTLINED_FUNCTION_24_9();
  type metadata accessor for ParametrizedLayers();
  OUTLINED_FUNCTION_16_20();
  return sub_25BB90B60(v0, v1, v2) & 1;
}

void Layer.initializeParameters(recursively:initializer:)()
{
  OUTLINED_FUNCTION_9_18();
  v50 = v0;
  v51 = v1;
  LODWORD(v49) = v2;
  OUTLINED_FUNCTION_9();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &WitnessTable - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &WitnessTable - v24;
  v27 = *(v4 + 16);
  v26 = v4 + 16;
  OUTLINED_FUNCTION_46_7();
  v29(v28);
  v30 = OUTLINED_FUNCTION_68();
  *(v30 + 16) = v49;
  sub_25BAB1090(v10, sub_25BB91F78, v30, v25);
  WitnessTable = v25;
  v49 = v13;
  (*(v13 + 16))(v19, v25, v11);
  OUTLINED_FUNCTION_4_5();
  v31 = swift_getWitnessTable();
  v32 = v23;
  MEMORY[0x25F876DC0](v11, v31);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        sub_25BAB173C(v11, v52);
        if (!v52[0])
        {
          v47 = *(v49 + 8);
          v47(v32, v11);
          v47(WitnessTable, v11);
          OUTLINED_FUNCTION_10_16();
          return;
        }

        v33 = v52[1];
        type metadata accessor for AnyLayerVariablePathCache();
        sub_25BC40864(v33);
        v35 = v34;

        v52[0] = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
        sub_25BB92940(&qword_27FBB51D0, &qword_27FBB3F98, &unk_25BCC3720);
        sub_25BCB627C();

        OUTLINED_FUNCTION_48_6();
        sub_25BCB736C();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        OUTLINED_FUNCTION_9_20();
        OUTLINED_FUNCTION_44_6();
        if (v36)
        {
          goto LABEL_10;
        }

        OUTLINED_FUNCTION_9_20();
        v37 = *(v52[0] + 32);
        if ((v26 & ~v37) != 0)
        {

          if (v37 < 0)
          {
            OUTLINED_FUNCTION_9_20();
            v26 = v52[0];
            v42 = *(v52[0] + 32);
            if ((~v42 & 0xF000000000000007) == 0)
            {
              goto LABEL_29;
            }

            if ((v42 & 0x8000000000000000) == 0)
            {
              goto LABEL_30;
            }

            sub_25BAB69FC();
          }
        }

        else
        {
        }

        v38 = OUTLINED_FUNCTION_22_13();
        v39(v38);

        if (v52[0])
        {
          v54 = v52[0];

          v40 = swift_modifyAtWritableKeyPath();
          Parameter.wrappedValue.setter(&v54);
          v40(v52, 0);
        }

LABEL_23:

LABEL_24:
      }

      sub_25BCB736C();
      if (swift_dynamicCastClass())
      {
        break;
      }
    }

    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_44_6();
    if (v36)
    {
LABEL_10:

      goto LABEL_24;
    }

    OUTLINED_FUNCTION_9_20();
    v41 = *(v52[0] + 32);
    if ((v26 & ~v41) == 0)
    {

      goto LABEL_21;
    }

    if (v41 < 0)
    {
      break;
    }

LABEL_21:
    v43 = OUTLINED_FUNCTION_22_13();
    v44(v43);

    v45 = v52[0];
    if (!v52[0])
    {
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_9_20();
    v53 = v45;
    v54 = v52[0];

    LayerState.wrappedValue.setter(&v53);
  }

  OUTLINED_FUNCTION_9_20();
  v26 = v52[0];
  v46 = *(v52[0] + 32);
  if ((~v46 & 0xF000000000000007) == 0)
  {
LABEL_29:
    OUTLINED_FUNCTION_32_9();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_31;
  }

  if (v46 < 0)
  {

    goto LABEL_21;
  }

LABEL_30:
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_7_0();
LABEL_31:
  sub_25BCB74CC();
  __break(1u);
}

BOOL sub_25BB8E45C(uint64_t a1)
{
  if (dynamic_cast_existential_1_conditional(a1))
  {
    return 0;
  }

  if (dynamic_cast_existential_1_conditional(a1) || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || dynamic_cast_existential_1_conditional(a1))
  {
    return 1;
  }

  return dynamic_cast_existential_1_conditional(a1) != 0;
}

uint64_t sub_25BB8E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v7 = v6;
  LODWORD(v45) = a4;
  v47 = a1;
  v48 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_25BCB720C();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v46 = *(v14 - 8);
  v15 = v46[8];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  v24 = *(v11 + 16);
  v50 = v7;
  v24(a6, v7, a5);
  v25 = v42;
  v49 = a6;
  v24(v42, a6, a5);
  v26 = swift_allocObject();
  *(v26 + 16) = v45;
  *(v26 + 24) = a3;
  sub_25BAB1090(v25, sub_25BB92984, v26, v23);
  v27 = v46[2];
  v45 = v23;
  v27(v18, v23, v14);
  v28 = swift_getWitnessTable();
  MEMORY[0x25F876DC0](v14, v28);
  while (1)
  {
    while (1)
    {
      sub_25BAB173C(v14, &v52);
      if (!v52)
      {
        v39 = v46[1];
        v39(v21, v14);
        return (v39)(v45, v14);
      }

      sub_25BCB736C();
      if (!swift_dynamicCastClass())
      {
        break;
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_9;
      }

      swift_retain_n();
      swift_getAtKeyPath();
      if ((~*(v52 + 32) & 0xF000000000000007) != 0)
      {

        swift_getAtKeyPath();

        v29 = *(v52 + 32);
        if ((~v29 & 0xF000000000000007) == 0 || (v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v51 = v29 & 0x7FFFFFFFFFFFFFFFLL;
        v30 = Tensor.scalarType.getter();
        v32 = v31;

        (*(v32 + 32))(&v51, v30, v32);
        if (sub_25BAA80BC(v51, &unk_286D42270))
        {
          swift_getAtKeyPath();

          (*(*(v48 + 8) + 32))(&v51);
          v33 = sub_25BB1BA04(&v51);

          v52 = v33;
          LOWORD(v53) = 256;
LABEL_20:

          swift_setAtWritableKeyPath();
        }

LABEL_21:
      }

      else
      {
LABEL_11:
      }
    }

    sub_25BCB736C();
    if (swift_dynamicCastClass())
    {
      if ((a3 & 2) != 0)
      {
        break;
      }
    }

LABEL_9:
  }

  swift_retain_n();
  swift_getAtKeyPath();
  if ((~*(v52 + 32) & 0xF000000000000007) == 0)
  {
    goto LABEL_11;
  }

  swift_getAtKeyPath();

  v34 = *(v52 + 32);
  if ((~v34 & 0xF000000000000007) != 0 && v34 < 0)
  {
    v51 = v34 & 0x7FFFFFFFFFFFFFFFLL;
    v35 = Tensor.scalarType.getter();
    v37 = v36;

    (*(v37 + 32))(&v51, v35, v37);
    if (!sub_25BAA80BC(v51, &unk_286D42270))
    {
      goto LABEL_21;
    }

    swift_getAtKeyPath();

    (*(*(v48 + 8) + 32))(&v51);
    v38 = sub_25BB1BA04(&v51);

    v52 = v38;
    goto LABEL_20;
  }

LABEL_23:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

BOOL sub_25BB8EBB4(uint64_t a1, uint64_t a2, char a3, unint64_t a4)
{
  if ((a3 & 1) != 0 && OUTLINED_FUNCTION_36_7())
  {
    return 1;
  }

  if (OUTLINED_FUNCTION_36_7())
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return a4 & 1;
  }

  if (!swift_dynamicCastMetatype())
  {
    return (a3 & 1) != 0 && (OUTLINED_FUNCTION_36_7() || OUTLINED_FUNCTION_36_7());
  }

  return (a4 >> 1) & 1;
}

void Layer.prepared(for:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*(a2 - 8) + 16);
  OUTLINED_FUNCTION_42_8();
  v4();
  v5 = v2;
  Layer.prepare(for:)(&v5);
}

uint64_t Layer.prediction(from:)()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v3 + 16))(v8 - v7, v0, v1);
  v14 = 2;
  Layer.prepare(for:)(&v14);
  OUTLINED_FUNCTION_16_20();
  Layer.callAsFunction(_:)(v10, v11, v12);
  return (*(v3 + 8))(v9, v1);
}

void Layer.sublayers(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v23 = v1;
  v3 = v2;
  v22 = v4;
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  sub_25BCB720C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator();
  v21 = swift_allocBox();
  v11 = v10;
  v12 = *(v6 + 16);
  v12(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  v13 = OUTLINED_FUNCTION_68();
  *(v13 + 16) = v22;
  sub_25BAB1090(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), sub_25BB929FC, v13, v11);
  v12(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v0, v3);
  v14 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = v23;
  v15[2] = v3;
  v15[3] = v16;
  v15[4] = v21;
  v17 = *(v6 + 32);
  OUTLINED_FUNCTION_16_20();
  v18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51D8, &qword_25BCC3740);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25BB91F80;
  *(v19 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB51E0, qword_25BCC3748);
  *(swift_allocObject() + 16) = v19;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB8F088@<X0>(uint64_t a1@<X8>)
{
  sub_25BCB720C();
  swift_getWitnessTable();
  v2 = type metadata accessor for RecursiveStoredPropertiesIterator();
  swift_projectBox();
  while (1)
  {
    swift_beginAccess();
    sub_25BAB173C(v2, v4);
    result = swift_endAccess();
    if (!*&v4[0])
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    swift_getAtPartialKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5A98, &qword_25BCC3F70);
    if (swift_dynamicCast())
    {
      break;
    }

    v5 = 0;
    memset(v4, 0, sizeof(v4));
    sub_25BAA6F5C(v4, &qword_27FBB5AA0, &qword_25BCC3F78);
  }

  return sub_25BA97060(v4, a1);
}

void Layer.sublayerKeyPaths<A>(to:recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator();
  v12 = swift_allocBox();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_43_7();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  *(v17 + 16) = v8;
  sub_25BAB1090(v0, sub_25BB91FC0, v17, v14);
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = v4;
  v18[4] = v19;
  v18[5] = v20;
  v18[6] = v12;

  OUTLINED_FUNCTION_42_8();
  sub_25BCB708C();
  sub_25BCB707C();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  sub_25BCB70AC();

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB8F3AC@<X0>(void *a1@<X8>)
{
  sub_25BCB736C();
  swift_getWitnessTable();
  v2 = type metadata accessor for RecursiveStoredPropertiesIterator();
  swift_projectBox();
  swift_beginAccess();
  sub_25BAB173C(v2, &v5);
  result = swift_endAccess();
  v4 = v5;
  if (v5)
  {
  }

  *a1 = v4;
  return result;
}

void Layer.namedSublayerKeyPaths<A>(to:recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_39_9();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  type metadata accessor for RecursiveStoredPropertiesIterator();
  v12 = swift_allocBox();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_43_7();
  v16(v15);
  v17 = OUTLINED_FUNCTION_68();
  *(v17 + 16) = v8;
  sub_25BAB1090(v0, sub_25BB929FC, v17, v14);
  v18 = swift_allocObject();
  v18[2] = v6;
  v18[3] = v4;
  v18[4] = v19;
  v18[5] = v20;
  v18[6] = v12;

  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_46_7();
  sub_25BCB708C();
  OUTLINED_FUNCTION_48_6();
  sub_25BCB707C();
  OUTLINED_FUNCTION_8_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_16_20();
  sub_25BCB70AC();

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BB8F6A8@<X0>(uint64_t *a1@<X8>)
{
  sub_25BCB736C();
  swift_getWitnessTable();
  v2 = type metadata accessor for RecursiveStoredPropertiesIterator();
  swift_projectBox();
  swift_beginAccess();
  sub_25BAB173C(v2, v11);
  result = swift_endAccess();
  v4 = v11[0];
  if (v11[0])
  {
    v5 = v11[1];
    type metadata accessor for AnyLayerVariablePathCache();
    sub_25BC40864(v5);
    v7 = v6;

    v11[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BB92940(&qword_27FBB51D0, &qword_27FBB3F98, &unk_25BCC3720);
    v8 = sub_25BCB627C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v4;
  return result;
}

uint64_t sub_25BB8F804(void *__src)
{
  v70[13] = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27FBB3398 != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    swift_beginAccess();
    v1 = off_27FBB51C0;
    if (*(off_27FBB51C0 + 2) && (v2 = sub_25BAFEEB0(&type metadata for LSTM), (v3 & 1) != 0))
    {
      v4 = *(v1[7] + v2);
      swift_endAccess();
      if ((v4 & 1) == 0)
      {
        v44 = 1;
        goto LABEL_63;
      }

      v5 = 0;
    }

    else
    {
      swift_endAccess();
      v5 = 1;
    }

    if (qword_28154D3C0 != -1)
    {
      swift_once();
    }

    sub_25BAA3234();
    v6 = sub_25BB9198C(&type metadata for LSTM, &type metadata for Parameter, 0, &qword_27FBB5720, &qword_25BCC3CB0);
    sub_25BAA3258();

    v59 = v5;
    if (v6)
    {
LABEL_35:
      if (!v5)
      {
        goto LABEL_37;
      }

LABEL_36:
      v30 = sub_25BAAF54C(*(v6 + 16)) > 0;
      goto LABEL_37;
    }

    v7 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84FA0];
    v62 = MEMORY[0x277D84FA0];
    memcpy(v65, __dst, 0x43uLL);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 20) = 4;
    sub_25BB924FC(v65, v68);
    sub_25BB88E18();
    memcpy(v70, __srca, 0x68uLL);
    v56 = v70[12];
    v9 = v70[10];
    memcpy(v68, __srca, sizeof(v68));
    sub_25BAA486C(v70, v67, &qword_27FBB5710, &qword_25BCC3CA8);
    v57 = v7;
    v58 = v7;
    while (1)
    {
      v10 = v68[9];
      if (!*(v68[9] + 16))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25BC1955C(v10);
        v10 = v11;
      }

      v12 = *(v10 + 16);
      if (!v12)
      {
        __break(1u);
        goto LABEL_71;
      }

      v13 = v12 - 1;
      v14 = v10 + 16 * v13;
      v15 = *(v14 + 32);
      LODWORD(v14) = *(v14 + 40);
      *(v10 + 16) = v13;
      v68[9] = v10;
      v66[0] = v14;
      if (v9)
      {
        v16 = *(v15 + 32);
        swift_beginAccess();

        LOBYTE(v16) = v9(v16, v66);
        swift_endAccess();
        if (v16)
        {
          v17 = *(v15 + 32);

          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
          v19 = sub_25BB92940(&qword_27FBB5718, &qword_27FBB56F8, &qword_25BCC3C98);
          sub_25BAB89AC(v17, v15, v68, v66, v18, v17, v19);
        }

        else
        {
        }
      }

      v20 = *(v15 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F0, &qword_25BCC3C90);
      swift_dynamicCastClassUnconditional();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
      if (swift_dynamicCastClass())
      {
        v21 = *(v15 + 16);
        v67[0] = v56;

        sub_25BCB617C();
        v22 = sub_25BCB617C();
        sub_25BAB1D84(v22);
        v54 = v67[0];
        v23 = *(v15 + 49);

        swift_beginAccess();
        v53 = v66[0];
        v55 = sub_25BAAF54C(v57);

        MEMORY[0x25F876F40](v24);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v57 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = *(v58 + 16);
          sub_25BAB22A0();
          v58 = v27;
        }

        v25 = *(v58 + 16);
        if (v25 >= *(v58 + 24) >> 1)
        {
          sub_25BAB22A0();
          v58 = v28;
        }

        *(v58 + 16) = v25 + 1;
        *(v58 + 8 * v25 + 32) = v54;
        if ((v53 & 4) != 0)
        {
          sub_25BAA2CDC(v67, v55);
        }

        if (v23)
        {
          sub_25BAA2CDC(v67, v55);
        }
      }
    }

    memcpy(v67, v68, sizeof(v67));
    sub_25BAA6F5C(v67, &qword_27FBB5710, &qword_25BCC3CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5720, &qword_25BCC3CB0);
    swift_allocObject();
    sub_25BB916E8(v57, v58, v62, v61, sub_25BAAF54C);
    v6 = v29;
    if (sub_25BC41F88() || sub_25BC41F58())
    {
      memcpy(v66, __srca, sizeof(v66));
      sub_25BAA6F5C(v66, &qword_27FBB5710, &qword_25BCC3CA8);
      v5 = v59;
      goto LABEL_35;
    }

    sub_25BAA3234();
    if (qword_28154D3A8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v60 = off_28154D3B0;
    sub_25BC19DC4();
    off_28154D3B0 = v60;
    swift_endAccess();
    sub_25BAA3258();

    memcpy(v66, __srca, sizeof(v66));
    sub_25BAA6F5C(v66, &qword_27FBB5710, &qword_25BCC3CA8);
    if (v59)
    {
      goto LABEL_36;
    }

LABEL_37:
    v31 = *(v6 + 16);
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v50 = *(v6 + 16);
      }

      v51 = *(v6 + 16);
      sub_25BCB617C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
      v52 = sub_25BCB74EC();

      v31 = v52;
    }

    else
    {
      v32 = v31 & 0xFFFFFFFFFFFFFF8;
      v33 = *(v6 + 16);
      sub_25BCB617C();
      sub_25BCB78CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56F8, &qword_25BCC3C98);
      if (!swift_dynamicCastMetatype())
      {
        v45 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v45)
        {
          v46 = (v32 + 32);
          while (1)
          {
            v47 = *v46;
            if (!swift_dynamicCastClass())
            {
              break;
            }

            ++v46;
            if (!--v45)
            {
              goto LABEL_39;
            }
          }

          v31 = v32 | 1;
        }
      }
    }

LABEL_39:
    v34 = sub_25BA9BEA0(v31);
    if (!v34)
    {
      break;
    }

    v35 = v34;
    v36 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v36, v31);
      }

      else
      {
        if (v36 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v37 = *(v31 + 8 * v36 + 32);
      }

      v38 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v39 = sub_25BCB6FCC();
      if (v40)
      {
        swift_getAtKeyPath();

        v41 = *(v70[0] + 32);

        if ((v41 & 0x8000000000000000) == 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v42 = v39;
        memcpy(v70, __dst, 0x43uLL);
        v43 = *(*(v70 + v42) + 32);

        if ((~v43 & 0xF000000000000007) != 0 && (v43 & 0x8000000000000000) == 0)
        {
LABEL_59:
          v44 = 0;
          goto LABEL_60;
        }
      }

      ++v36;
      if (v38 == v35)
      {
        v44 = 1;
        goto LABEL_60;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

  v44 = 1;
LABEL_60:

  if (v59)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    __srca[0] = off_27FBB51C0;
    sub_25BC19CD8();
    off_27FBB51C0 = __srca[0];
    swift_endAccess();
  }

LABEL_63:
  v48 = *MEMORY[0x277D85DE8];
  return v44;
}

uint64_t sub_25BB90188(char a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = a3;
  v5 = a2;
  LOBYTE(v6) = a1;
  v83 = *MEMORY[0x277D85DE8];
  *&v65 = a2;
  *(&v65 + 1) = a3;
  if (qword_27FBB3398 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    swift_beginAccess();
    v8 = off_27FBB51C0;
    if (*(off_27FBB51C0 + 2) && (v9 = sub_25BAFEEB0(&type metadata for Dropout), (v10 & 1) != 0))
    {
      v11 = *(v8[7] + v9);
      swift_endAccess();
      if ((v11 & 1) == 0)
      {
        v40 = 1;
        goto LABEL_66;
      }

      v12 = 0;
    }

    else
    {
      swift_endAccess();
      v12 = 1;
    }

    if (qword_28154D3C0 != -1)
    {
      swift_once();
    }

    sub_25BAA3234();
    v13 = sub_25BB9198C(&type metadata for Dropout, &type metadata for Parameter, 0, &qword_27FBB56E0, &qword_25BCC3C80);
    sub_25BAA3258();

    if (v13)
    {
      v14 = v13;
      if (v12)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v62 = MEMORY[0x277D84F90];
      v60 = MEMORY[0x277D84FA0];
      v61 = MEMORY[0x277D84FA0];
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 20) = 4;

      sub_25BB8A22C(v6, v5, v4, sub_25BB929F4, v15, &qword_27FBB56D0, &qword_25BCC3C78, &v76, a4);
      *&v80[16] = v77;
      v81 = v78;
      *v80 = v76;
      v82 = v79;
      v16 = v78;
      v72 = v76;
      v73 = v77;
      v74 = v78;
      v56 = v79;
      v75 = v79;
      sub_25BAA486C(v80, v70, &qword_27FBB56D0, &qword_25BCC3C78);
      v57 = MEMORY[0x277D84F90];
      v58 = MEMORY[0x277D84F90];
      while (1)
      {
        v4 = *(&v73 + 1);
        if (!*(*(&v73 + 1) + 16))
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25BC19574(v4);
          v4 = v17;
        }

        v18 = *(v4 + 16);
        if (!v18)
        {
          __break(1u);
          goto LABEL_72;
        }

        v19 = v18 - 1;
        v20 = v4 + 16 * v19;
        v6 = *(v20 + 32);
        LODWORD(v20) = *(v20 + 40);
        *(v4 + 16) = v19;
        *(&v73 + 1) = v4;
        LODWORD(v66) = v20;
        if (v16)
        {
          v21 = *(v6 + 32);
          swift_beginAccess();

          LOBYTE(v21) = v16(v21, &v66);
          swift_endAccess();
          if (v21)
          {
            v22 = *(v6 + 32);

            v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
            v24 = sub_25BB92940(&qword_27FBB56D8, &qword_27FBB56B8, &qword_25BCC3C68);
            sub_25BAB89AC(v22, v6, &v72, &v66, v23, v22, v24);
          }

          else
          {
          }
        }

        v5 = *(v6 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B0, &qword_25BCC3C60);
        swift_dynamicCastClassUnconditional();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
        if (swift_dynamicCastClass())
        {
          v25 = *(v6 + 16);
          *&v70[0] = v56;

          sub_25BCB617C();
          v26 = sub_25BCB617C();
          sub_25BAB1D84(v26);
          v54 = *&v70[0];
          v27 = *(v6 + 49);

          swift_beginAccess();
          v53 = v66;
          v55 = sub_25BAAF54C(v57);

          MEMORY[0x25F876F40](v28);
          if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25BCB67AC();
          }

          sub_25BCB680C();
          v57 = v62;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = *(v58 + 16);
            sub_25BAB22A0();
            v58 = v31;
          }

          LOBYTE(v6) = v55;
          v29 = *(v58 + 16);
          if (v29 >= *(v58 + 24) >> 1)
          {
            sub_25BAB22A0();
            v58 = v32;
          }

          *(v58 + 16) = v29 + 1;
          *(v58 + 8 * v29 + 32) = v54;
          if ((v53 & 4) != 0)
          {
            sub_25BAA2CDC(v70, v55);
          }

          if (v27)
          {
            sub_25BAA2CDC(v70, v55);
          }
        }
      }

      v70[0] = v72;
      v70[1] = v73;
      v70[2] = v74;
      v71 = v75;
      sub_25BAA6F5C(v70, &qword_27FBB56D0, &qword_25BCC3C78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56E0, &qword_25BCC3C80);
      swift_allocObject();
      sub_25BB916E8(v57, v58, v61, v60, sub_25BAAF54C);
      v14 = v33;
      if (sub_25BC41F88() || sub_25BC41F58())
      {
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        sub_25BAA6F5C(&v66, &qword_27FBB56D0, &qword_25BCC3C78);
        if (!v12)
        {
          goto LABEL_38;
        }

LABEL_37:
        v34 = sub_25BAAF54C(*(v14 + 16)) > 0;
        goto LABEL_38;
      }

      sub_25BAA3234();
      if (qword_28154D3A8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v59 = off_28154D3B0;
      sub_25BC19DC4();
      off_28154D3B0 = v59;
      swift_endAccess();
      sub_25BAA3258();

      v66 = v76;
      v67 = v77;
      v68 = v78;
      v69 = v79;
      sub_25BAA6F5C(&v66, &qword_27FBB56D0, &qword_25BCC3C78);
      if (v12)
      {
        goto LABEL_37;
      }
    }

LABEL_38:
    v4 = *(v14 + 16);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v50 = *(v14 + 16);
      }

      v51 = *(v14 + 16);
      sub_25BCB617C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
      v52 = sub_25BCB74EC();

      v4 = v52;
    }

    else
    {
      v35 = v4 & 0xFFFFFFFFFFFFFF8;
      v36 = *(v14 + 16);
      sub_25BCB617C();
      sub_25BCB78CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB56B8, &qword_25BCC3C68);
      if (!swift_dynamicCastMetatype())
      {
        v37 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
          v38 = (v35 + 32);
          while (1)
          {
            v39 = *v38;
            if (!swift_dynamicCastClass())
            {
              break;
            }

            ++v38;
            if (!--v37)
            {
              goto LABEL_47;
            }
          }

          v4 = v35 | 1;
        }
      }
    }

LABEL_47:
    v41 = sub_25BA9BEA0(v4);
    if (!v41)
    {
      break;
    }

    v5 = v41;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v42 = *(v4 + 8 * v6 + 32);
      }

      v43 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v44 = sub_25BCB6FCC();
      if (v45)
      {
        swift_getAtKeyPath();

        v46 = *(*v80 + 32);

        if ((v46 & 0x8000000000000000) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        *v80 = a4;
        v80[4] = a1;
        *&v80[8] = v65;
        v47 = *(*&v80[v44] + 32);

        if ((~v47 & 0xF000000000000007) != 0 && (v47 & 0x8000000000000000) == 0)
        {
LABEL_62:
          v40 = 0;
          goto LABEL_63;
        }
      }

      ++v6;
      if (v43 == v5)
      {
        v40 = 1;
        goto LABEL_63;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v40 = 1;
LABEL_63:

  if (v12)
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    *&v76 = off_27FBB51C0;
    sub_25BC19CD8();
    off_27FBB51C0 = v76;
    swift_endAccess();
  }

LABEL_66:
  v48 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t sub_25BB90B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v63 = a1;
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v7;
  sub_25BCB736C();
  swift_getWitnessTable();
  v64 = type metadata accessor for RecursiveStoredPropertiesIterator();
  v59 = *(v64 - 8);
  v8 = *(v59 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v58 = &v57 - v15;
  if (qword_27FBB3398 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = off_27FBB51C0;
  if (*(off_27FBB51C0 + 2) && (v17 = sub_25BAFEEB0(v62), (v18 & 1) != 0))
  {
    v19 = *(v16[7] + v17);
    swift_endAccess();
    if ((v19 & 1) == 0)
    {
      return 1;
    }

    v60 = 1;
  }

  else
  {
    swift_endAccess();
    v60 = 0x100000000;
  }

  v20 = type metadata accessor for AnyLayerVariablePathCache();
  v22 = v61;
  v21 = v62;
  v23 = sub_25BAB5DD8(v62, &type metadata for Parameter, 0, v62);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v57 = v20;
    v71 = sub_25BCB604C();
    v69 = MEMORY[0x277D84FA0];
    v70 = MEMORY[0x277D84FA0];
    (*(v3 + 16))(v6, v63, v21);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    *(v25 + 32) = 0;
    *(v25 + 36) = 4;
    v26 = v58;
    sub_25BAB1090(v6, sub_25BAB60FC, v25, v58);
    v27 = v26;
    v28 = v64;
    (*(v59 + 16))(v11, v27, v64);
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x25F876DC0](v28, WitnessTable);
    v30 = MEMORY[0x277D84F90];
    for (i = &protocol witness table for Parameter; ; i = v33)
    {
      sub_25BAB173C(v64, &v65);
      v32 = v65;
      if (!v65)
      {
        break;
      }

      v33 = i;
      v34 = v66;
      v35 = v67;
      v36 = sub_25BCB681C();
      v65 = v32;
      sub_25BCB68CC();

      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v30 + 16);
        sub_25BAB22A0();
        v30 = v39;
      }

      v37 = *(v30 + 16);
      if (v37 >= *(v30 + 24) >> 1)
      {
        sub_25BAB22A0();
        v30 = v40;
      }

      *(v30 + 16) = v37 + 1;
      *(v30 + 8 * v37 + 32) = v34;
      if ((v35 & 0x400000000) != 0)
      {
        sub_25BAA2CDC(&v65, v36);
      }

      if (v35)
      {
        sub_25BAA2CDC(&v65, v36);
      }
    }

    v41 = *(v59 + 8);
    v42 = v64;
    v41(v14, v64);
    v65 = v62;
    v66 = &type metadata for Parameter;
    v67 = v61;
    v68 = i;
    type metadata accessor for LayerVariablePaths();
    sub_25BAB2794();
    v24 = v43;
    sub_25BAB61C4();
    sub_25BAB61CC(v24);
    v41(v58, v42);
  }

  if ((v60 & 0x100000000) != 0)
  {
    LODWORD(v60) = sub_25BAAF54C(*(v24 + 16)) > 0;
  }

  v44 = sub_25BAB9528();
  sub_25BCB617C();
  v45 = sub_25BCB674C();

  v71 = v45;
  if (v45 == sub_25BCB681C())
  {
    v46 = 1;
  }

  else
  {
    do
    {
      v48 = sub_25BCB67FC();
      sub_25BCB677C();
      if (v48)
      {
        v49 = *(v44 + 32 + 8 * v45);
      }

      else
      {
        sub_25BCB717C();
      }

      sub_25BCB68AC();
      v50 = sub_25BCB6FCC();
      if (v51)
      {
        swift_getAtKeyPath();

        LOBYTE(v70) = *(v65 + 32) < 0;
      }

      else
      {
        v52 = MEMORY[0x28223BE20](v50);
        v53 = v61;
        v54 = v62;
        *(&v57 - 6) = v62;
        *(&v57 - 5) = v53;
        *(&v57 - 4) = v52;
        *(&v57 - 3) = sub_25BB91324;
        *(&v57 - 2) = 0;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        sub_25BAB1BE8(v63, sub_25BB929A8, (&v57 - 8), v54, v55);
      }

      v46 = v70;
      if (v70 != 1)
      {
        break;
      }

      v56 = sub_25BCB681C();
      v45 = v71;
    }

    while (v71 != v56);
  }

  if (HIDWORD(v60))
  {
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v71 = off_27FBB51C0;
    sub_25BC19CD8();
    off_27FBB51C0 = v71;
    swift_endAccess();
  }

  return v46;
}

void *sub_25BB912E4()
{
  result = sub_25BCB614C();
  off_27FBB51C0 = result;
  return result;
}

uint64_t sub_25BB9134C()
{
  OUTLINED_FUNCTION_18_19();
  v2 = *(v1 + 16);
  result = sub_25BB876FC(v3, v4);
  *v0 = result;
  v0[1] = v6;
  v0[2] = v7;
  return result;
}

double sub_25BB91380@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  v9 = *v2;
  v10 = v4;
  v11 = v2[2];
  sub_25BB876AC(a1, v7);
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  result = *&v8;
  a2[2] = v8;
  return result;
}

uint64_t sub_25BB913D8()
{
  OUTLINED_FUNCTION_18_19();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  result = sub_25BB87B40(v4, v5);
  *v0 = result;
  *(v0 + 8) = v7;
  *(v0 + 16) = v8;
  *(v0 + 24) = v9 & 1;
  return result;
}

void sub_25BB91418()
{
  OUTLINED_FUNCTION_10_17();
  v3 = *(v0 + 48);
  sub_25BB87B04(v1, v2);
}

void sub_25BB91470()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_14_20();
  OUTLINED_FUNCTION_35_8();

  Layer.place(on:)();
}

uint64_t sub_25BB914B0()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_14_20();
  v0 = OUTLINED_FUNCTION_35_8();

  return Layer.placed(on:)(v0, v1, v2);
}

void sub_25BB91540()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_7_21();
  sub_25BB874CC(v1, v2);
}

void sub_25BB91584()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_13_16();
  OUTLINED_FUNCTION_35_8();

  Layer.place(on:)();
}

uint64_t sub_25BB915C4()
{
  OUTLINED_FUNCTION_24_9();
  OUTLINED_FUNCTION_13_16();
  v0 = OUTLINED_FUNCTION_35_8();

  return Layer.placed(on:)(v0, v1, v2);
}

uint64_t sub_25BB91640(uint64_t a1, uint64_t a2, char a3, int a4)
{
  OUTLINED_FUNCTION_24_9();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_2;
  }

  if ((a3 & 1) == 0)
  {
    return 0;
  }

  if (OUTLINED_FUNCTION_53_1())
  {
    return OUTLINED_FUNCTION_53_1() == 0;
  }

  if (OUTLINED_FUNCTION_53_1() || (result = OUTLINED_FUNCTION_53_1()) != 0)
  {
LABEL_2:
    *v4 |= a4;
    return 1;
  }

  return result;
}

void sub_25BB916E8(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = v5;
  v5[4] = 0;
  if (a1 >> 62)
  {
LABEL_30:
    sub_25BCB6FFC();
    OUTLINED_FUNCTION_31_10();
    v12 = sub_25BCB74EC();
  }

  else
  {
    sub_25BCB617C();
    sub_25BCB78CC();
    sub_25BCB6FFC();
    v12 = a1;
  }

  v7[2] = v12;
  v7[3] = a2;
  v7[7] = a3;
  v7[8] = a4;
  v13 = (a5)(a1);
  if (!v13)
  {
    v16 = MEMORY[0x277D84F90];
    v7[5] = MEMORY[0x277D84F90];

LABEL_25:
    v7[6] = v16;
    return;
  }

  a5 = v13;
  v22 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_47_8();
  sub_25BAA21EC();
  if ((a5 & 0x8000000000000000) == 0)
  {
    a3 = 0;
    v14 = a1 & 0xC000000000000001;
    v21 = v7;
    do
    {
      if (v14)
      {
        MEMORY[0x25F8779B0](a3, a1);
      }

      else
      {
        if ((a3 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v15 = *(a1 + 8 * a3 + 32);
      }

      a2 = sub_25BCB6FEC();

      a4 = *(v22 + 16);
      v7 = (a4 + 1);
      if (a4 >= *(v22 + 24) >> 1)
      {
        sub_25BAA21EC();
      }

      ++a3;
      *(v22 + 16) = v7;
      *(v22 + 8 * a4 + 32) = a2;
    }

    while (a5 != a3);
    v21[5] = v22;
    v23 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_47_8();
    sub_25BB00870();
    a4 = 0;
    v16 = v23;
    do
    {
      if (v14)
      {
        MEMORY[0x25F8779B0](a4, a1);
      }

      else
      {
        if ((a4 & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (a4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v17 = *(a1 + 8 * a4 + 32);
      }

      a3 = sub_25BCB6FCC();
      a2 = v18;

      v19 = *(v23 + 16);
      v7 = (v19 + 1);
      if (v19 >= *(v23 + 24) >> 1)
      {
        sub_25BB00870();
      }

      ++a4;
      *(v23 + 16) = v7;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = a3;
      *(v20 + 40) = a2 & 1;
    }

    while (a5 != a4);

    v7 = v21;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_25BB9198C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_28154D3A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_28154D3B0;
  if (*(off_28154D3B0 + 2) && (v11 = sub_25BAFEEEC(a1, a2, a3 & 1), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_31_10();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return v14;
}

void sub_25BB91AA4()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB7D218);
  *(v0 + 4) = v3;
}

void sub_25BB91AF4()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB848C8);
  *(v0 + 4) = v3;
}

uint64_t sub_25BB91B3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB8783C(a1, *v2);
  *a2 = result;
  return result;
}

void sub_25BB91C78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_25BB873E8(a1, *v2, v3 | *(v2 + 8), *(v2 + 16), a2);
}

void sub_25BB91CA0()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB877D4(v2, v1);
  *(v0 + 4) = v3;
}

void sub_25BB91CCC(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  sub_25BB87394(a1, a2);
}

uint64_t sub_25BB91D04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB87808(a1, *v2);
  *a2 = result;
  return result;
}

void sub_25BB91D34()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB7E2D0);
  *(v0 + 4) = v3;
}

void sub_25BB91D74()
{
  v1 = OUTLINED_FUNCTION_34_10();
  *v0 = sub_25BB8779C(v1, v2, sub_25BB8619C);
  *(v0 + 4) = v3;
}

void sub_25BB91DBC()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87528(v1, v2);
}

void sub_25BB91E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 4);
  sub_25BB87228(a1, a2);
}

void sub_25BB91E4C()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87284(v1, v2);
}

void sub_25BB91E94()
{
  OUTLINED_FUNCTION_10_17();
  v3 = *(v0 + 48);
  sub_25BB87168(v1, v2);
}

void sub_25BB91ED0()
{
  OUTLINED_FUNCTION_4_27();
  memcpy(v3, v0, sizeof(v3));
  v1 = OUTLINED_FUNCTION_27_12();
  sub_25BB87650(v1, v2);
}

void sub_25BB91F18(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  sub_25BB871CC(a1, a2);
}

uint64_t sub_25BB91F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = *(*(v1[2] - 8) + 80);
  v4 = v1[4];
  return sub_25BB8F088(a1);
}

uint64_t sub_25BB91FE0@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_25BB8F3AC(a1);
}

uint64_t sub_25BB91FF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_25BB8F6A8(a1);
}

uint64_t sub_25BB92940(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_31_10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return dynamic_cast_existential_1_conditional(v0);
}

void sub_25BB92A30()
{
  OUTLINED_FUNCTION_17_1();
  v9 = OUTLINED_FUNCTION_8_22(v2, v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_11_23(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_37(v13, v14, v15, v16, v17, v18, v19, v20, v39);
  if (v1)
  {
    v22 = 0;
    v23 = (OUTLINED_FUNCTION_13_17(v21) + 48);
    while (v22 < *(v42 + 16))
    {
      if (*(v23 - 16) == 1)
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = v0[2];
        sub_25BCB617C();
        if (!v26 || (v27 = OUTLINED_FUNCTION_12_18(), v29 = sub_25BA9266C(v27, v28), (v30 & 1) == 0))
        {

          sub_25BCB70FC();

          v37 = OUTLINED_FUNCTION_12_18();
          MEMORY[0x25F876C90](v37);

          MEMORY[0x25F876C90](11815, 0xE200000000000000);
          sub_25BB0A3A4();
          swift_allocError();
          *v38 = 0xD000000000000024;
          v38[1] = 0x800000025BCD9690;
          swift_willThrow();
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_22_14(v29);
        sub_25BB92CA4();
        if (v41)
        {

LABEL_13:

          goto LABEL_14;
        }

        v31 = OUTLINED_FUNCTION_1_30();
        v32(v31);
        v33 = OUTLINED_FUNCTION_7_22();
        OUTLINED_FUNCTION_17_18(v33);
        swift_allocObject();
        OUTLINED_FUNCTION_6_30();
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_5_26();
        sub_25BCB617C();

        v35 = OUTLINED_FUNCTION_4_28(v34);
        type metadata accessor for TensorHandle();
        v1 = swift_allocObject();
        *(v1 + 16) = v35;

        sub_25BAA6EB0();
        v0 = v40;
        v36 = *v40;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_30();
        OUTLINED_FUNCTION_21_15();
      }

      ++v22;
      v23 += 6;
      if (v1 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_16();
  }
}

void sub_25BB92CA4()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v4 = *v3;
  v5 = type metadata accessor for MILBlobStorageWriter(0);
  v6 = *(v5 + 20);
  v7 = *(v2 + v6);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = v5;
  *(v2 + v6) = v9;
  v11 = *(v2 + *(type metadata accessor for MILBlobStorageWriter.BlobWriter(0) + 20));
  v12 = v10[8];
  v13 = *(v2 + v12);
  MEMORY[0x28223BE20](*(v2 + v10[6]));
  v47 = v2;
  v16 = sub_25BB93210(v14, sub_25BB943D4, v46, v15);
  v17 = *(v2 + v10[7]);
  v18 = v16 + v17;
  if (__CFADD__(v16, v17))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = v16;
  v50 = v4;

  sub_25BB93920(&v50, v18, v49);
  if (!v1)
  {
    v50 = 0;
    v20 = [v11 seekToOffset:v19 error:&v50];
    v21 = v50;
    if (v20)
    {
      v22 = v50;
      sub_25BB93AF4(v49, v11);
      v50 = 0;
      v23 = [v11 seekToOffset:v18 error:&v50];
      v21 = v50;
      if (v23)
      {
        MEMORY[0x28223BE20](v23);
        v47 = v4;
        v48 = v11;
        v24 = v4[2];
        v25 = v21;

        sub_25BAA82DC(sub_25BB943F0, v46, v26, v27, v28, v29, v30, v31, v46[0], v46[1]);

        if ((BYTE8(v49[0]) & 0x3F) == 0)
        {
          v33 = *(&v49[0] + 1);
          goto LABEL_14;
        }

        v32 = 64 - (BYTE8(v49[0]) & 0x3F);
        v8 = __CFADD__(*(&v49[0] + 1), v32);
        v33 = *(&v49[0] + 1) + v32;
        if (!v8)
        {
LABEL_14:
          v36 = v33 - *(&v49[0] + 1);
          if (v33 >= *(&v49[0] + 1))
          {
            if (!v36)
            {
LABEL_18:
              sub_25BAFD030();
              v41 = *(*(v2 + v12) + 16);
              sub_25BAFD190(v41);
              v42 = *(v2 + v12);
              *(v42 + 16) = v41 + 1;
              v43 = (v42 + (v41 << 6));
              v44 = v49[1];
              v43[2] = v49[0];
              v43[3] = v44;
              v45 = v49[3];
              v43[4] = v49[2];
              v43[5] = v45;
              *(v2 + v12) = v42;
              goto LABEL_12;
            }

            if ((v36 & 0x8000000000000000) == 0)
            {
              v50 = MEMORY[0x25F876260]();
              v51 = v37;
              sub_25BB94038(&v50, 0);
              v38 = v50;
              v39 = v51;
              v40 = sub_25BCB59FC();
              sub_25BB0D160(v38, v39);
              [v11 writeData_];

              goto LABEL_18;
            }

LABEL_22:
            __break(1u);
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        __break(1u);
      }
    }

    v34 = v21;
    sub_25BCB58CC();

    swift_willThrow();
  }

LABEL_12:
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

void sub_25BB92F9C()
{
  OUTLINED_FUNCTION_17_1();
  v9 = OUTLINED_FUNCTION_8_22(v2, v3, v4, v5, v6, v7, v8);
  v10 = OUTLINED_FUNCTION_11_23(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_37(v13, v14, v15, v16, v17, v18, v19, v20, v39);
  if (v1)
  {
    v22 = 0;
    v23 = (OUTLINED_FUNCTION_13_17(v21) + 48);
    while (v22 < *(v42 + 16))
    {
      if (*(v23 - 16) == 2)
      {
        v24 = *(v23 - 1);
        v25 = *v23;
        v26 = v0[2];
        sub_25BCB617C();
        if (!v26 || (v27 = OUTLINED_FUNCTION_12_18(), v29 = sub_25BA9266C(v27, v28), (v30 & 1) == 0))
        {

          sub_25BCB70FC();

          v37 = OUTLINED_FUNCTION_12_18();
          MEMORY[0x25F876C90](v37);

          MEMORY[0x25F876C90](11815, 0xE200000000000000);
          sub_25BB0A3A4();
          swift_allocError();
          *v38 = 0xD000000000000020;
          v38[1] = 0x800000025BCD9660;
          swift_willThrow();
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_22_14(v29);
        sub_25BB92CA4();
        if (v41)
        {

LABEL_13:

          goto LABEL_14;
        }

        v31 = OUTLINED_FUNCTION_1_30();
        v32(v31);
        v33 = OUTLINED_FUNCTION_7_22();
        OUTLINED_FUNCTION_17_18(v33);
        swift_allocObject();
        OUTLINED_FUNCTION_6_30();
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_5_26();
        sub_25BCB617C();

        v35 = OUTLINED_FUNCTION_4_28(v34);
        type metadata accessor for TensorHandle();
        v1 = swift_allocObject();
        *(v1 + 16) = v35;

        sub_25BAA6EB0();
        v0 = v40;
        v36 = *v40;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_30();
        OUTLINED_FUNCTION_21_15();
      }

      ++v22;
      v23 += 6;
      if (v1 == v22)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_16();
  }
}