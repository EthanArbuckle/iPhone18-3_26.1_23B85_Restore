uint64_t sub_1B4A63DB0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000019;
  v3 = *a1;
  v4 = 0x80000001B4D4AE90;
  if (v3 == 1)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001B4D4AE90;
  }

  else
  {
    v6 = 0x80000001B4D4AEB0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F43736472617761;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xED0000747865746ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001B4D4AEB0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F43736472617761;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED0000747865746ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4A63E94()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A63F44()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4A63FE0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A6408C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B4A69C28();
  *a2 = result;
  return result;
}

void sub_1B4A640BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000747865746ELL;
  v4 = 0xD000000000000019;
  v5 = 0x80000001B4D4AE90;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001B4D4AEB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6F43736472617761;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B4A64128@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v36 = a2;
  v37 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E78, &unk_1B4D25A18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v32 - v8;
  v35 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v33 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v32 - v15;
  v17 = sub_1B4D1777C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v22 = sub_1B4D1796C();
  __swift_project_value_buffer(v22, qword_1EDC3CE48);
  v23 = a1 + *(type metadata accessor for ActivityAchievementAward() + 20);
  sub_1B4D178FC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B4975024(v16, &qword_1EB8A6790, &qword_1B4D1BBC0);
LABEL_7:
    v25 = type metadata accessor for WorkoutAwardsFact(0);
    return (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  }

  v32[1] = v4;
  v24 = *(v18 + 32);
  v24(v21, v16, v17);
  sub_1B4A6455C(a1, v36, v9);
  if ((*(v10 + 48))(v9, 1, v35) == 1)
  {
    (*(v18 + 8))(v21, v17);
    sub_1B4975024(v9, &qword_1EB8A8E78, &unk_1B4D25A18);
    goto LABEL_7;
  }

  v36 = type metadata accessor for WorkoutAwardsFact.AwardType;
  v27 = v33;
  sub_1B4A6A070(v9, v33, type metadata accessor for WorkoutAwardsFact.AwardType);
  v28 = v37;
  (*(v18 + 16))(v37, v34, v17);
  v29 = type metadata accessor for WorkoutAwardsFact(0);
  v24((v28 + v29[5]), v21, v17);
  sub_1B4A6A070(v27, v28 + v29[6], v36);
  v30 = a1[1];
  v31 = (v28 + v29[7]);
  *v31 = *a1;
  v31[1] = v30;
  (*(*(v29 - 1) + 56))(v28, 0, 1, v29);
}

void sub_1B4A6455C(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ActivityAchievementAward();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E80, &qword_1B4D25A28);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v89 - v12;
  v14 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1B4A69CF4(a1, a2);
  sub_1B4A656CC(a1, a2, v93);
  v19 = LOBYTE(v93[0]);
  v92 = a1;
  v20 = 0;
  switch(sub_1B497ABAC(sub_1B4A69FC8, v91, &unk_1F2CBA818))
  {
    case 0u:
      v13 = a3;
      v46 = v90;
      if (!v90)
      {
        goto LABEL_59;
      }

      v47 = *(a1 + v6[8]);
      if (!v47)
      {
        goto LABEL_58;
      }

      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA8, &unk_1B4D25A50) + 48);
      *a3 = v46;
      v49 = objc_opt_self();
      v38 = v47;
      v20 = v46;
      v50 = [v49 largeCalorieUnit];
      [v38 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_29;
    case 1u:
      v42 = *(a1 + v6[8]);
      if (!v42)
      {
        goto LABEL_57;
      }

      v38 = v42;
      [v38 _value];
      v40 = v43;
      v44 = v43;

      if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_72;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_75;
      }

      if (v40 < 9.22337204e18)
      {
        goto LABEL_56;
      }

      goto LABEL_78;
    case 2u:
      v13 = a3;
      v46 = v90;
      if (!v90)
      {
        goto LABEL_59;
      }

      v60 = *(a1 + v6[8]);
      if (!v60)
      {
        goto LABEL_58;
      }

      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E90, &unk_1B4D2C9E0) + 48);
      *a3 = v46;
      v62 = objc_opt_self();
      v63 = v46;
      v64 = v60;
      v65 = [v62 meterUnit];
      [v64 doubleValueForUnit_];

      v66 = [objc_opt_self() meters];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      sub_1B4D1741C();

      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_43;
    case 3u:
      v13 = a3;
      v46 = v90;
      if (!v90)
      {
        goto LABEL_59;
      }

      v67 = *(a1 + v6[8]);
      if (v67)
      {
        v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E88, &unk_1B4D25A30) + 48);
        *a3 = v46;
        v69 = objc_opt_self();
        v70 = v46;
        v71 = v67;
        v72 = [v69 meterUnit];
        [v71 doubleValueForUnit_];

        v73 = [objc_opt_self() meters];
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        sub_1B4D1741C();

        v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
        goto LABEL_43;
      }

LABEL_58:

LABEL_59:
      v85 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      v74 = *(*(v85 - 8) + 56);
      v75 = v13;
      goto LABEL_64;
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      sub_1B4A65AA0(a1, v93);
      v21 = v93[0];
      if (LOBYTE(v93[0]) == 4)
      {
        goto LABEL_62;
      }

      v22 = *(a1 + v6[8]);
      if (!v22)
      {
        goto LABEL_62;
      }

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EA0, &unk_1B4D2C9F0) + 48);
      *a3 = v21;
      v24 = objc_opt_self();
      v25 = v22;
      v26 = [v24 minuteUnit];
      [v25 doubleValueForUnit_];

      v27 = [objc_opt_self() minutes];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      sub_1B4D1741C();

      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 9u:
      if (!v90)
      {
        goto LABEL_63;
      }

      *a3 = v90;
      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0xAu:

      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0xDu:
    case 0xEu:
    case 0xFu:
      sub_1B4A65BFC(a1, v13);

      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {
        sub_1B4975024(v13, &qword_1EB8A8E80, &qword_1B4D25A28);
        goto LABEL_63;
      }

      sub_1B4A6A070(v13, v18, type metadata accessor for WorkoutAwardsFact.RingValue);
      sub_1B4A6A070(v18, a3, type metadata accessor for WorkoutAwardsFact.RingValue);
      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x10u:
      sub_1B4A6594C(a1, v93);
      v45 = v93[0];
      if (LOBYTE(v93[0]) == 4)
      {
        goto LABEL_62;
      }

      if (LOBYTE(v93[0]) == 2)
      {

        goto LABEL_62;
      }

      v87 = sub_1B4D18DCC();

      if (v87)
      {
        goto LABEL_63;
      }

      v88 = *(a1 + v6[7]);
      if (v88 < 0)
      {
        goto LABEL_84;
      }

      *a3 = v45;
      *(a3 + 1) = v88;
      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x11u:

      if (v19 == 15)
      {
        goto LABEL_63;
      }

      *a3 = v19;
      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x12u:
      if (v19 == 15)
      {
        goto LABEL_62;
      }

      v53 = *(a1 + v6[8]);
      if (!v53)
      {
        goto LABEL_62;
      }

      v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E98, &unk_1B4D25A40) + 48);
      *a3 = v19;
      v55 = objc_opt_self();
      v56 = v53;
      v57 = [v55 largeCalorieUnit];
      [v56 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v58 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v59 = v58;
      sub_1B4D1741C();

      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      goto LABEL_68;
    case 0x13u:
      v81 = *(a1 + v6[8]);
      if (!v81)
      {
        goto LABEL_57;
      }

      v38 = v81;
      [v38 _value];
      v40 = v82;
      v83 = v82;

      if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_73;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_76;
      }

      if (v40 < 9.22337204e18)
      {
        goto LABEL_56;
      }

      goto LABEL_79;
    case 0x14u:
      v37 = *(a1 + v6[9]);
      if (!v37)
      {
        goto LABEL_57;
      }

      v38 = v37;
      [v38 _value];
      v40 = v39;
      v41 = v39;

      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      else if (v40 > -9.22337204e18)
      {
        if (v40 < 9.22337204e18)
        {
LABEL_56:
          *a3 = v40;
          v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
          goto LABEL_68;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        swift_once();
LABEL_29:
        v51 = qword_1EDC36DF8;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v52 = v51;
        sub_1B4D1741C();

        v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
LABEL_43:
        swift_storeEnumTagMultiPayload();
        v74 = *(*(v28 - 8) + 56);
        v75 = v13;
        goto LABEL_69;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    case 0x15u:
      if (v19 == 15)
      {
        goto LABEL_62;
      }

      v76 = *(a1 + v6[9]);
      if (!v76)
      {
        goto LABEL_62;
      }

      v77 = v76;
      [v77 _value];
      v79 = v78;
      v80 = v78;

      if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v79 <= -9.22337204e18)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        return;
      }

      if (v79 >= 9.22337204e18)
      {
        goto LABEL_83;
      }

      *a3 = v19;
      *(a3 + 1) = v79;
      v28 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
LABEL_68:
      swift_storeEnumTagMultiPayload();
      v74 = *(*(v28 - 8) + 56);
      v75 = a3;
LABEL_69:
      v86 = 0;
      v85 = v28;
LABEL_70:
      v74(v75, v86, 1, v85);
      return;
    case 0x17u:
LABEL_57:
      v84 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      (*(*(v84 - 8) + 56))(a3, 1, 1, v84);

      return;
    default:
      if (qword_1EDC36EF8 != -1)
      {
        swift_once();
      }

      v29 = sub_1B4D17F6C();
      __swift_project_value_buffer(v29, qword_1EDC36F00);
      sub_1B4A6A0D8(a1, v9, type metadata accessor for ActivityAchievementAward);
      v30 = sub_1B4D17F5C();
      v31 = sub_1B4D1873C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v93[0] = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_1B49558AC(0xD00000000000001ALL, 0x80000001B4D258E0, v93);
        *(v32 + 12) = 2080;
        v34 = *v9;
        v35 = v9[1];

        sub_1B4A6A140(v9, type metadata accessor for ActivityAchievementAward);
        v36 = sub_1B49558AC(v34, v35, v93);

        *(v32 + 14) = v36;
        _os_log_impl(&dword_1B4953000, v30, v31, "%s: Unsupported award %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C7DDA0](v33, -1, -1);
        MEMORY[0x1B8C7DDA0](v32, -1, -1);

LABEL_62:
      }

      else
      {

        sub_1B4A6A140(v9, type metadata accessor for ActivityAchievementAward);
      }

LABEL_63:
      v85 = type metadata accessor for WorkoutAwardsFact.AwardType(0);
      v74 = *(*(v85 - 8) + 56);
      v75 = a3;
LABEL_64:
      v86 = 1;
      goto LABEL_70;
  }
}

uint64_t sub_1B4A653C4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  v10 = sub_1B4D1777C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v30 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v17 = sub_1B4D1796C();
  __swift_project_value_buffer(v17, qword_1EDC3CE48);
  v18 = type metadata accessor for ActivityAchievementAward();
  v19 = a1 + *(v18 + 20);
  sub_1B4D178FC();
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v21 = 1;
  }

  else
  {
    v29[1] = v2;
    v22 = v9;
    v23 = *(v11 + 32);
    v23(v16, v22, v10);
    v24 = v31 + *(v18 + 20);
    v25 = v32;
    sub_1B4D178FC();
    if (v20(v25, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_1B4975024(v25, &qword_1EB8A6790, &qword_1B4D1BBC0);
      v21 = 1;
    }

    else
    {
      v26 = v30;
      v23(v30, v25, v10);
      v21 = sub_1B4D1772C();
      v27 = *(v11 + 8);
      v27(v26, v10);
      v27(v16, v10);
    }
  }

  return v21 & 1;
}

uint64_t sub_1B4A656CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for WorkoutRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  result = type metadata accessor for ActivityAchievementAward();
  v18 = (a1 + *(result + 40));
  v19 = v18[1];
  if (v19 && (v20 = *(a2 + 16)) != 0)
  {
    v31 = v6;
    v32 = a3;
    v21 = *v18;
    v22 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    while (1)
    {
      sub_1B4A6A0D8(v22, v10, type metadata accessor for WorkoutRecord);
      if (sub_1B4D1779C() == v21 && v19 == v24)
      {
        break;
      }

      v25 = sub_1B4D18DCC();

      if (v25)
      {
        goto LABEL_11;
      }

      result = sub_1B4A6A140(v10, type metadata accessor for WorkoutRecord);
      v22 += v23;
      if (!--v20)
      {
        goto LABEL_13;
      }
    }

LABEL_11:
    sub_1B4A6A070(v10, v13, type metadata accessor for WorkoutRecord);
    sub_1B4A6A070(v13, v16, type metadata accessor for WorkoutRecord);
    v27 = &v16[*(v31 + 40)];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    v26 = v27[24];
    sub_1B4A69FE8(*v27, v29);
    result = sub_1B4A6A140(v16, type metadata accessor for WorkoutRecord);
    if (v29)
    {
      result = sub_1B4A6A02C(v28, v29);
      goto LABEL_14;
    }

LABEL_13:
    v26 = 15;
LABEL_14:
    a3 = v32;
  }

  else
  {
    v26 = 15;
  }

  *a3 = v26;
  return result;
}

uint64_t sub_1B4A6594C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B4955758();
  result = sub_1B4D1889C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    result = sub_1B4D1889C();
    if (result)
    {
      v6 = 1;
    }

    else
    {
      result = sub_1B4D1889C();
      if (result)
      {
        v6 = 2;
      }

      else
      {
        result = sub_1B4D1889C();
        if (result)
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }
      }
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1B4A65AA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1B4955758();
  result = sub_1B4D1889C();
  if (result)
  {
    v6 = 0;
  }

  else
  {
    result = sub_1B4D1889C();
    if (result)
    {
      v6 = 1;
    }

    else
    {
      result = sub_1B4D1889C();
      if (result)
      {
        v6 = 2;
      }

      else
      {
        result = sub_1B4D1889C();
        if (result)
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }
      }
    }
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1B4A65BFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v25 = *a1;
  v26 = v5;
  v24 = 0x656D695465766F4DLL;
  sub_1B4955758();
  if (sub_1B4D1889C())
  {
    v6 = *(a1 + *(type metadata accessor for ActivityAchievementAward() + 32));
    if (v6)
    {
LABEL_3:
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 minuteUnit];
      [v8 doubleValueForUnit_];

      v10 = [objc_opt_self() minutes];
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      sub_1B4D1741C();

      v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
LABEL_17:
      swift_storeEnumTagMultiPayload();
      return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    }
  }

  else if (sub_1B4D1889C())
  {
    v12 = *(a1 + *(type metadata accessor for ActivityAchievementAward() + 32));
    if (v12)
    {
      v13 = objc_opt_self();
      v14 = v12;
      v15 = [v13 largeCalorieUnit];
      [v14 doubleValueForUnit_];

      if (qword_1EDC36DF0 != -1)
      {
        swift_once();
      }

      v16 = qword_1EDC36DF8;
      sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
      v17 = v16;
      sub_1B4D1741C();

      v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
      goto LABEL_17;
    }
  }

  else
  {
    v25 = v4;
    v26 = v5;
    v24 = 0x6573696372657845;
    if (sub_1B4D1889C())
    {
      v6 = *(a1 + *(type metadata accessor for ActivityAchievementAward() + 32));
      if (v6)
      {
        goto LABEL_3;
      }
    }

    else if (sub_1B4D1889C())
    {
      v18 = *(a1 + *(type metadata accessor for ActivityAchievementAward() + 32));
      if (v18)
      {
        v19 = v18;
        [v19 _value];
        if (qword_1EDC36E70 != -1)
        {
          swift_once();
        }

        v20 = qword_1EDC36E78;
        type metadata accessor for UnitCount();
        v21 = v20;
        sub_1B4D1741C();

        v11 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
        goto LABEL_17;
      }
    }
  }

  v23 = type metadata accessor for WorkoutAwardsFact.RingValue(0);
  return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
}

uint64_t sub_1B4A660E8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  sub_1B4BC42A8(*a1);
  LOBYTE(v2) = sub_1B4A66140();

  return v2 & 1;
}

uint64_t sub_1B4A66140()
{

  v0 = sub_1B4D1823C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1B4D1823C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1B4D18DCC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1B4D1823C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1B4D1823C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1B4A662A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49AA274;

  return sub_1B4A68C78(a1, a3);
}

unint64_t sub_1B4A66360(uint64_t a1)
{
  *(a1 + 8) = sub_1B4A66390();
  result = sub_1B4A663E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4A66390()
{
  result = qword_1EB8A8E50;
  if (!qword_1EB8A8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E50);
  }

  return result;
}

unint64_t sub_1B4A663E4()
{
  result = qword_1EB8A8E58;
  if (!qword_1EB8A8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E58);
  }

  return result;
}

unint64_t sub_1B4A6643C()
{
  result = qword_1EB8A8E60;
  if (!qword_1EB8A8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E60);
  }

  return result;
}

void sub_1B4A66490(void **a1)
{
  v2 = *(type metadata accessor for ActivityAchievementAward() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1B4CDE2F4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1B4A66538(v5);
  *a1 = v3;
}

void sub_1B4A66538(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B4D18D4C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ActivityAchievementAward();
        v6 = sub_1B4D1844C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityAchievementAward() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B4A66BB8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1B4A66664(0, v2, 1, a1);
  }
}

void sub_1B4A66664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v68 = type metadata accessor for ActivityAchievementAward();
  v21 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v69 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v50 - v27;
  v52 = a2;
  if (a3 != a2)
  {
    v29 = v14;
    v30 = *a4;
    v31 = *(v26 + 72);
    v66 = &v50 - v27;
    v67 = (v15 + 48);
    v58 = (v15 + 8);
    v59 = (v15 + 32);
    v32 = v30 + v31 * (a3 - 1);
    v63 = -v31;
    v64 = v30;
    v33 = a1 - a3;
    v51 = v31;
    v34 = v30 + v31 * a3;
    v60 = v13;
LABEL_5:
    v55 = v32;
    v56 = a3;
    v53 = v34;
    v54 = v33;
    v35 = v33;
    while (1)
    {
      sub_1B4A6A0D8(v34, v28, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A0D8(v32, v69, type metadata accessor for ActivityAchievementAward);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v36 = sub_1B4D1796C();
      __swift_project_value_buffer(v36, qword_1EDC3CE48);
      v37 = &v28[*(v68 + 20)];
      sub_1B4D178FC();
      v38 = *v67;
      v39 = (*v67)(v13, 1, v29);
      v40 = v13;
      if (v39 == 1)
      {
        goto LABEL_11;
      }

      v62 = *v59;
      v62(v20, v13, v29);
      v41 = v69 + *(v68 + 20);
      v42 = v29;
      v43 = v61;
      sub_1B4D178FC();
      v44 = v43;
      v29 = v42;
      if (v38(v44, 1, v42) == 1)
      {
        break;
      }

      v45 = v57;
      v62(v57, v44, v29);
      v46 = sub_1B4D1772C();
      v47 = *v58;
      (*v58)(v45, v29);
      v47(v20, v29);
      sub_1B4A6A140(v69, type metadata accessor for ActivityAchievementAward);
      v28 = v66;
      sub_1B4A6A140(v66, type metadata accessor for ActivityAchievementAward);
      v13 = v60;
      if ((v46 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v64)
      {
        __break(1u);
        return;
      }

      v48 = v65;
      sub_1B4A6A070(v34, v65, type metadata accessor for ActivityAchievementAward);
      swift_arrayInitWithTakeFrontToBack();
      v28 = v66;
      sub_1B4A6A070(v48, v32, type metadata accessor for ActivityAchievementAward);
      v32 += v63;
      v34 += v63;
      if (__CFADD__(v35++, 1))
      {
LABEL_4:
        a3 = v56 + 1;
        v32 = v55 + v51;
        v33 = v54 - 1;
        v34 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    (*v58)(v20, v42);
    v40 = v44;
    v13 = v60;
    v28 = v66;
LABEL_11:
    sub_1B4975024(v40, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4A6A140(v69, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A140(v28, type metadata accessor for ActivityAchievementAward);
    goto LABEL_13;
  }
}

void sub_1B4A66BB8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v181 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = &v157 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v157 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v157 - v16;
  v175 = sub_1B4D1777C();
  v18 = *(v175 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v180 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v189 = &v157 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v163 = &v157 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v157 - v26;
  v184 = type metadata accessor for ActivityAchievementAward();
  v28 = *(v184 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v167 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v188 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v179 = &v157 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v157 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v158 = &v157 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v157 = &v157 - v45;
  v177 = a3;
  v46 = a3[1];
  if (v46 < 1)
  {
    v48 = MEMORY[0x1E69E7CC0];
LABEL_115:
    a4 = *v162;
    if (!*v162)
    {
      goto LABEL_155;
    }

    v18 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_149;
    }

    v152 = v18;
LABEL_118:
    v194 = v152;
    v18 = *(v152 + 2);
    if (v18 >= 2)
    {
      while (*v177)
      {
        v153 = *&v152[16 * v18];
        v154 = v152;
        v155 = *&v152[16 * v18 + 24];
        sub_1B4A67C18(*v177 + *(v28 + 72) * v153, *v177 + *(v28 + 72) * *&v152[16 * v18 + 16], *v177 + *(v28 + 72) * v155, a4);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v155 < v153)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_1B4CDDE84(v154);
        }

        if (v18 - 2 >= *(v154 + 2))
        {
          goto LABEL_143;
        }

        v156 = &v154[16 * v18];
        *v156 = v153;
        *(v156 + 1) = v155;
        v194 = v154;
        sub_1B4CDDDF8(v18 - 1);
        v152 = v194;
        v18 = *(v194 + 2);
        if (v18 <= 1)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_153;
    }

LABEL_126:

    return;
  }

  v190 = v44;
  v47 = 0;
  v192 = (v18 + 48);
  v182 = (v18 + 8);
  v183 = (v18 + 32);
  v48 = MEMORY[0x1E69E7CC0];
  v159 = v28;
  v161 = a4;
  v170 = v17;
  v165 = v27;
  v193 = v43;
  v169 = v39;
  while (1)
  {
    v168 = v48;
    if (v47 + 1 >= v46)
    {
      v62 = v47 + 1;
      goto LABEL_33;
    }

    v178 = v46;
    v49 = *v177;
    v50 = *(v28 + 72);
    v51 = *v177 + v50 * (v47 + 1);
    v52 = v157;
    sub_1B4A6A0D8(v51, v157, type metadata accessor for ActivityAchievementAward);
    v53 = v49 + v50 * v47;
    v54 = v47;
    v55 = v158;
    sub_1B4A6A0D8(v53, v158, type metadata accessor for ActivityAchievementAward);
    LODWORD(v186) = sub_1B4A653C4(v52, v55);
    if (v5)
    {
      sub_1B4A6A140(v55, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v52, type metadata accessor for ActivityAchievementAward);
      goto LABEL_126;
    }

    v18 = type metadata accessor for ActivityAchievementAward;
    sub_1B4A6A140(v55, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A140(v52, type metadata accessor for ActivityAchievementAward);
    v160 = v54;
    v56 = v54 + 2;
    v185 = v50;
    v57 = v49 + v50 * (v54 + 2);
    v58 = v170;
    v59 = v51;
    v60 = v169;
    v176 = 0;
    while (1)
    {
      v62 = v178;
      if (v178 == v56)
      {
        break;
      }

      sub_1B4A6A0D8(v57, v60, type metadata accessor for ActivityAchievementAward);
      v187 = v59;
      sub_1B4A6A0D8(v59, v179, type metadata accessor for ActivityAchievementAward);
      if (qword_1EDC3CE40 != -1)
      {
        swift_once();
      }

      v63 = sub_1B4D1796C();
      __swift_project_value_buffer(v63, qword_1EDC3CE48);
      v64 = v184;
      v65 = v60;
      v66 = v60 + *(v184 + 20);
      sub_1B4D178FC();
      v67 = *v192;
      v68 = v175;
      if ((*v192)(v58, 1, v175) == 1)
      {
        sub_1B4975024(v58, &qword_1EB8A6790, &qword_1B4D1BBC0);
        v18 = 1;
        v61 = v187;
        v60 = v65;
      }

      else
      {
        v69 = v58;
        v70 = v68;
        v71 = v165;
        v174 = *v183;
        v174(v165, v69, v70);
        v72 = v179 + *(v64 + 20);
        v73 = v166;
        sub_1B4D178FC();
        v74 = v73;
        if (v67(v73, 1, v70) == 1)
        {
          (*v182)(v71, v70);
          sub_1B4975024(v73, &qword_1EB8A6790, &qword_1B4D1BBC0);
          v18 = 1;
        }

        else
        {
          v75 = v163;
          v174(v163, v74, v70);
          v18 = sub_1B4D1772C();
          v76 = *v182;
          (*v182)(v75, v70);
          v76(v71, v70);
        }

        v58 = v170;
        v60 = v169;
        v61 = v187;
      }

      sub_1B4A6A140(v179, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v60, type metadata accessor for ActivityAchievementAward);
      ++v56;
      v57 += v185;
      v59 = v185 + v61;
      v5 = v176;
      if ((v186 & 1) != (v18 & 1))
      {
        v62 = v56 - 1;
        break;
      }
    }

    v28 = v159;
    a4 = v161;
    v47 = v160;
    if (v186)
    {
      if (v62 < v160)
      {
        goto LABEL_148;
      }

      if (v160 < v62)
      {
        v77 = v185;
        v78 = v185 * (v62 - 1);
        v79 = v62 * v185;
        v178 = v62;
        v80 = v62;
        v81 = v160;
        v82 = v160 * v185;
        do
        {
          if (v81 != --v80)
          {
            v83 = *v177;
            if (!*v177)
            {
              goto LABEL_152;
            }

            v18 = v83 + v82;
            sub_1B4A6A070(v83 + v82, v167, type metadata accessor for ActivityAchievementAward);
            if (v82 < v78 || v18 >= v83 + v79)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v82 != v78)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B4A6A070(v167, v83 + v78, type metadata accessor for ActivityAchievementAward);
          }

          ++v81;
          v78 -= v77;
          v79 -= v77;
          v82 += v77;
        }

        while (v81 < v80);
        v5 = v176;
        v28 = v159;
        a4 = v161;
        v47 = v160;
        v62 = v178;
      }
    }

LABEL_33:
    v84 = v177[1];
    if (v62 >= v84)
    {
      a4 = v62;
      if (v62 < v47)
      {
        goto LABEL_144;
      }

      goto LABEL_64;
    }

    if (__OFSUB__(v62, v47))
    {
      goto LABEL_145;
    }

    if (v62 - v47 < a4)
    {
      break;
    }

    a4 = v62;
    if (v62 < v47)
    {
      goto LABEL_144;
    }

LABEL_64:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v171 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v48 = v168;
    }

    else
    {
      v48 = sub_1B4A1D58C(0, *(v168 + 2) + 1, 1, v168);
    }

    a4 = *(v48 + 2);
    v107 = *(v48 + 3);
    v18 = a4 + 1;
    if (a4 >= v107 >> 1)
    {
      v48 = sub_1B4A1D58C((v107 > 1), a4 + 1, 1, v48);
    }

    *(v48 + 2) = v18;
    v108 = &v48[16 * a4];
    v109 = v171;
    *(v108 + 4) = v47;
    *(v108 + 5) = v109;
    v110 = *v162;
    if (!*v162)
    {
      goto LABEL_154;
    }

    if (a4)
    {
      while (1)
      {
        v111 = v18 - 1;
        if (v18 >= 4)
        {
          break;
        }

        if (v18 == 3)
        {
          v112 = *(v48 + 4);
          v113 = *(v48 + 5);
          v122 = __OFSUB__(v113, v112);
          v114 = v113 - v112;
          v115 = v122;
LABEL_83:
          if (v115)
          {
            goto LABEL_133;
          }

          v128 = &v48[16 * v18];
          v130 = *v128;
          v129 = *(v128 + 1);
          v131 = __OFSUB__(v129, v130);
          v132 = v129 - v130;
          v133 = v131;
          if (v131)
          {
            goto LABEL_136;
          }

          v134 = &v48[16 * v111 + 32];
          v136 = *v134;
          v135 = *(v134 + 1);
          v122 = __OFSUB__(v135, v136);
          v137 = v135 - v136;
          if (v122)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v132, v137))
          {
            goto LABEL_140;
          }

          if (v132 + v137 >= v114)
          {
            if (v114 < v137)
            {
              v111 = v18 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v138 = &v48[16 * v18];
        v140 = *v138;
        v139 = *(v138 + 1);
        v122 = __OFSUB__(v139, v140);
        v132 = v139 - v140;
        v133 = v122;
LABEL_97:
        if (v133)
        {
          goto LABEL_135;
        }

        v141 = &v48[16 * v111];
        v143 = *(v141 + 4);
        v142 = *(v141 + 5);
        v122 = __OFSUB__(v142, v143);
        v144 = v142 - v143;
        if (v122)
        {
          goto LABEL_138;
        }

        if (v144 < v132)
        {
          goto LABEL_3;
        }

LABEL_104:
        a4 = v111 - 1;
        if (v111 - 1 >= v18)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v177)
        {
          goto LABEL_151;
        }

        v149 = v48;
        v18 = *&v48[16 * a4 + 32];
        v150 = *&v48[16 * v111 + 40];
        sub_1B4A67C18(*v177 + *(v28 + 72) * v18, *v177 + *(v28 + 72) * *&v48[16 * v111 + 32], *v177 + *(v28 + 72) * v150, v110);
        if (v5)
        {
          goto LABEL_126;
        }

        if (v150 < v18)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1B4CDDE84(v149);
        }

        if (a4 >= *(v149 + 2))
        {
          goto LABEL_130;
        }

        v151 = &v149[16 * a4];
        *(v151 + 4) = v18;
        *(v151 + 5) = v150;
        v194 = v149;
        sub_1B4CDDDF8(v111);
        v48 = v194;
        v18 = *(v194 + 2);
        if (v18 <= 1)
        {
          goto LABEL_3;
        }
      }

      v116 = &v48[16 * v18 + 32];
      v117 = *(v116 - 64);
      v118 = *(v116 - 56);
      v122 = __OFSUB__(v118, v117);
      v119 = v118 - v117;
      if (v122)
      {
        goto LABEL_131;
      }

      v121 = *(v116 - 48);
      v120 = *(v116 - 40);
      v122 = __OFSUB__(v120, v121);
      v114 = v120 - v121;
      v115 = v122;
      if (v122)
      {
        goto LABEL_132;
      }

      v123 = &v48[16 * v18];
      v125 = *v123;
      v124 = *(v123 + 1);
      v122 = __OFSUB__(v124, v125);
      v126 = v124 - v125;
      if (v122)
      {
        goto LABEL_134;
      }

      v122 = __OFADD__(v114, v126);
      v127 = v114 + v126;
      if (v122)
      {
        goto LABEL_137;
      }

      if (v127 >= v119)
      {
        v145 = &v48[16 * v111 + 32];
        v147 = *v145;
        v146 = *(v145 + 1);
        v122 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v122)
        {
          goto LABEL_141;
        }

        if (v114 < v148)
        {
          v111 = v18 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v46 = v177[1];
    v47 = v171;
    a4 = v161;
    if (v171 >= v46)
    {
      goto LABEL_115;
    }
  }

  if (__OFADD__(v47, a4))
  {
    goto LABEL_146;
  }

  if ((v47 + a4) >= v84)
  {
    a4 = v177[1];
  }

  else
  {
    a4 += v47;
  }

  if (a4 < v47)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    v152 = sub_1B4CDDE84(v18);
    goto LABEL_118;
  }

  v85 = v62;
  if (v62 == a4)
  {
    a4 = v62;
    if (v62 < v47)
    {
      goto LABEL_144;
    }

    goto LABEL_64;
  }

  v86 = v175;
  v176 = v5;
  v87 = *v177;
  v88 = *(v28 + 72);
  v89 = *v177 + v88 * (v85 - 1);
  v186 = -v88;
  v160 = v47;
  v90 = v47 - v85;
  v187 = v87;
  v164 = v88;
  v91 = v87 + v85 * v88;
  v92 = v184;
  v93 = v190;
  v171 = a4;
  while (2)
  {
    v178 = v85;
    v172 = v91;
    v173 = v90;
    v174 = v89;
LABEL_52:
    sub_1B4A6A0D8(v91, v93, type metadata accessor for ActivityAchievementAward);
    sub_1B4A6A0D8(v89, v193, type metadata accessor for ActivityAchievementAward);
    if (qword_1EDC3CE40 != -1)
    {
      swift_once();
    }

    v94 = sub_1B4D1796C();
    __swift_project_value_buffer(v94, qword_1EDC3CE48);
    v95 = v93 + *(v92 + 20);
    v96 = v191;
    sub_1B4D178FC();
    v97 = *v192;
    if ((*v192)(v96, 1, v86) == 1)
    {
LABEL_57:
      sub_1B4975024(v96, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4A6A140(v193, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v93, type metadata accessor for ActivityAchievementAward);
    }

    else
    {
      v185 = *v183;
      v185(v189, v191, v86);
      v98 = *(v92 + 20);
      v99 = v193;
      v100 = v181;
      sub_1B4D178FC();
      v101 = v100;
      if (v97(v100, 1, v86) == 1)
      {
        (*v182)(v189, v86);
        v96 = v100;
        v92 = v184;
        v93 = v190;
        goto LABEL_57;
      }

      v102 = v180;
      v185(v180, v101, v86);
      v103 = v189;
      LODWORD(v185) = sub_1B4D1772C();
      v104 = *v182;
      (*v182)(v102, v86);
      v104(v103, v86);
      v18 = type metadata accessor for ActivityAchievementAward;
      sub_1B4A6A140(v99, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v190, type metadata accessor for ActivityAchievementAward);
      v92 = v184;
      if ((v185 & 1) == 0)
      {
        v93 = v190;
LABEL_50:
        v85 = v178 + 1;
        v89 = v174 + v164;
        v90 = v173 - 1;
        v91 = v172 + v164;
        a4 = v171;
        if (v178 + 1 == v171)
        {
          v5 = v176;
          v28 = v159;
          v47 = v160;
          if (v171 < v160)
          {
            goto LABEL_144;
          }

          goto LABEL_64;
        }

        continue;
      }
    }

    break;
  }

  if (v187)
  {
    v18 = v188;
    sub_1B4A6A070(v91, v188, type metadata accessor for ActivityAchievementAward);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B4A6A070(v18, v89, type metadata accessor for ActivityAchievementAward);
    v89 += v186;
    v91 += v186;
    v105 = __CFADD__(v90++, 1);
    v93 = v190;
    if (v105)
    {
      goto LABEL_50;
    }

    goto LABEL_52;
  }

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
}

void sub_1B4A67C18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v99 = a3;
  v104 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v90 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v83 - v15;
  v103 = sub_1B4D1777C();
  v16 = *(v103 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v85 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v83 - v24;
  v25 = type metadata accessor for ActivityAchievementAward();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v27);
  v100 = (&v83 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v96 = &v83 - v34;
  v98 = *(v35 + 72);
  if (!v98)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

  v36 = v104 - a1;
  if (v104 - a1 == 0x8000000000000000 && v98 == -1)
  {
    goto LABEL_75;
  }

  v37 = v99 - v104;
  if (v99 - v104 == 0x8000000000000000 && v98 == -1)
  {
    goto LABEL_76;
  }

  v38 = v98;
  v107 = a1;
  v106 = a4;
  v102 = v25;
  if (v36 / v98 >= v37 / v98)
  {
    v96 = v33;
    v41 = v37 / v98 * v98;
    if (a4 < v104 || v104 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v104)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a4 + v41;
    v63 = v99;
    if (v41 >= 1)
    {
      v94 = v11;
      v98 = -v98;
      v86 = (v16 + 8);
      v87 = a1;
      v64 = a4 + v41;
      v65 = v96;
      v101 = a4;
      v93 = (v16 + 48);
      v88 = (v16 + 32);
      do
      {
        v84 = v62;
        v66 = v104;
        v104 += v98;
        v95 = v66;
        while (1)
        {
          if (v66 <= a1)
          {
            v107 = v66;
            v105 = v84;
            goto LABEL_73;
          }

          v67 = v63;
          v99 = v64;
          v97 = (v64 + v98);
          v68 = v100;
          sub_1B4A6A0D8(v64 + v98, v100, type metadata accessor for ActivityAchievementAward);
          sub_1B4A6A0D8(v104, v65, type metadata accessor for ActivityAchievementAward);
          if (qword_1EDC3CE40 != -1)
          {
            swift_once();
          }

          v69 = sub_1B4D1796C();
          __swift_project_value_buffer(v69, qword_1EDC3CE48);
          v70 = v68 + *(v25 + 20);
          v71 = v94;
          sub_1B4D178FC();
          v72 = v25;
          v73 = *v93;
          if ((*v93)(v71, 1, v103) == 1)
          {
            sub_1B4975024(v71, &qword_1EB8A6790, &qword_1B4D1BBC0);
            v74 = 1;
            v65 = v96;
          }

          else
          {
            v92 = v62;
            v75 = v103;
            v76 = v89;
            v91 = *v88;
            (v91)(v89, v71, v103);
            v65 = v96;
            v77 = v96 + *(v72 + 20);
            v78 = v90;
            sub_1B4D178FC();
            if (v73(v78, 1, v75) == 1)
            {
              (*v86)(v76, v75);
              sub_1B4975024(v78, &qword_1EB8A6790, &qword_1B4D1BBC0);
              v74 = 1;
            }

            else
            {
              v79 = v85;
              (v91)(v85, v78, v75);
              v74 = sub_1B4D1772C();
              v80 = *v86;
              v81 = v79;
              v65 = v96;
              (*v86)(v81, v75);
              v80(v76, v75);
            }

            a1 = v87;
            v62 = v92;
          }

          v64 = v99;
          v63 = &v67[v98];
          sub_1B4A6A140(v65, type metadata accessor for ActivityAchievementAward);
          sub_1B4A6A140(v100, type metadata accessor for ActivityAchievementAward);
          if (v74)
          {
            break;
          }

          v82 = v97;
          v62 = v97;
          v25 = v102;
          if (v67 < v64 || v63 >= v64)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v67 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = v62;
          v66 = v95;
          if (v82 <= v101)
          {
            v104 = v95;
            goto LABEL_72;
          }
        }

        v25 = v102;
        if (v67 < v95 || v63 >= v95)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v67 != v95)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      while (v64 > v101);
    }

LABEL_72:
    v107 = v104;
    v105 = v62;
  }

  else
  {
    v39 = v36 / v98 * v98;
    if (a4 < a1 || a1 + v39 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v40 = v96;
    }

    else
    {
      v40 = v96;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v42 = (a4 + v39);
    v105 = a4 + v39;
    v43 = v39 < 1 || v104 >= v99;
    v44 = v97;
    if (!v43)
    {
      v100 = (v16 + 48);
      v91 = (v16 + 8);
      v92 = (v16 + 32);
      v93 = v42;
      while (1)
      {
        sub_1B4A6A0D8(v104, v40, type metadata accessor for ActivityAchievementAward);
        sub_1B4A6A0D8(a4, v31, type metadata accessor for ActivityAchievementAward);
        if (qword_1EDC3CE40 != -1)
        {
          swift_once();
        }

        v45 = sub_1B4D1796C();
        __swift_project_value_buffer(v45, qword_1EDC3CE48);
        v46 = v40 + *(v25 + 20);
        sub_1B4D178FC();
        v47 = *v100;
        v48 = (*v100)(v44, 1, v103);
        v49 = v44;
        if (v48 == 1)
        {
          goto LABEL_26;
        }

        v50 = v103;
        v101 = a4;
        v51 = *v92;
        v52 = v31;
        v53 = v94;
        (*v92)(v94, v44, v103);
        v54 = v52 + *(v102 + 20);
        v55 = v95;
        sub_1B4D178FC();
        v56 = v55;
        if (v47(v55, 1, v50) == 1)
        {
          break;
        }

        v58 = v88;
        v51(v88, v56, v50);
        v59 = sub_1B4D1772C();
        v60 = *v91;
        (*v91)(v58, v50);
        v60(v53, v50);
        sub_1B4A6A140(v52, type metadata accessor for ActivityAchievementAward);
        v40 = v96;
        sub_1B4A6A140(v96, type metadata accessor for ActivityAchievementAward);
        a4 = v101;
        v44 = v97;
        v38 = v98;
        v31 = v52;
        v42 = v93;
        if ((v59 & 1) == 0)
        {
          v61 = v101 + v98;
          v25 = v102;
          if (a1 < v101 || a1 >= v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v101)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v106 = v61;
          a4 += v38;
          goto LABEL_33;
        }

LABEL_27:
        v57 = v104 + v38;
        v25 = v102;
        if (a1 < v104 || a1 >= v57)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v104)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v104 = v57;
LABEL_33:
        a1 += v38;
        v107 = a1;
        if (a4 >= v42 || v104 >= v99)
        {
          goto LABEL_73;
        }
      }

      (*v91)(v53, v50);
      v49 = v55;
      a4 = v101;
      v44 = v97;
      v38 = v98;
      v31 = v52;
      v40 = v96;
      v42 = v93;
LABEL_26:
      sub_1B4975024(v49, &qword_1EB8A6790, &qword_1B4D1BBC0);
      sub_1B4A6A140(v31, type metadata accessor for ActivityAchievementAward);
      sub_1B4A6A140(v40, type metadata accessor for ActivityAchievementAward);
      goto LABEL_27;
    }
  }

LABEL_73:
  sub_1B4CDDEC0(&v107, &v106, &v105);
}

void sub_1B4A68708()
{
  v1 = type metadata accessor for WorkoutAwardsFact(0);
  v22 = *(v1 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v23 = &v19 - v7;
  v21 = v0;
  v8 = *v0;
  v9 = *(*v0 + 16);
  v10 = v9 - 2;
  if (v9 >= 2)
  {
    v11 = 0;
    v20 = v9 - 2;
    while (1)
    {
      v24 = 0;
      MEMORY[0x1B8C7DDC0](&v24, 8, v6);
      v13 = (v24 * v9) >> 64;
      if (v9 > v24 * v9)
      {
        v14 = -v9 % v9;
        if (v14 > v24 * v9)
        {
          do
          {
            v24 = 0;
            MEMORY[0x1B8C7DDC0](&v24, 8);
          }

          while (v14 > v24 * v9);
          v13 = (v24 * v9) >> 64;
        }
      }

      v15 = v11 + v13;
      if (__OFADD__(v11, v13))
      {
        break;
      }

      if (v11 != v15)
      {
        v16 = v8[2];
        if (v11 >= v16)
        {
          goto LABEL_19;
        }

        v17 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v18 = *(v22 + 72);
        sub_1B4A6A0D8(v8 + v17 + v18 * v11, v23, type metadata accessor for WorkoutAwardsFact);
        if (v15 >= v16)
        {
          goto LABEL_20;
        }

        sub_1B4A6A0D8(v8 + v17 + v18 * v15, v4, type metadata accessor for WorkoutAwardsFact);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B4CDE340(v8);
        }

        if (v11 >= v8[2])
        {
          goto LABEL_21;
        }

        sub_1B4A69C90(v4, v8 + v17 + v18 * v11);
        if (v15 >= v8[2])
        {
          goto LABEL_22;
        }

        sub_1B4A69C90(v23, v8 + v17 + v18 * v15);
        v10 = v20;
        *v21 = v8;
      }

      --v9;
      if (v11++ == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1B4A6895C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityAchievementAward();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v28 - v9);
  v32 = *(a1 + 16);
  if (v32)
  {
    v11 = 0;
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v34 = *(v8 + 72);
    v30 = v12;
    v31 = a1 + v12;
    v13 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    while (1)
    {
      sub_1B4A6A0D8(v31 + v34 * v11, v10, type metadata accessor for ActivityAchievementAward);
      v14 = *a2;
      v15 = *v10;
      v16 = v10[1];
      if (*(*a2 + 16))
      {
        v17 = *(v14 + 40);
        sub_1B4D18E8C();

        sub_1B4D1820C();
        v18 = sub_1B4D18EDC();
        v19 = -1 << *(v14 + 32);
        v20 = v18 & ~v19;
        if ((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = (*(v14 + 48) + 16 * v20);
            v23 = *v22 == v15 && v22[1] == v16;
            if (v23 || (sub_1B4D18DCC() & 1) != 0)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v14 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          sub_1B4A6A140(v10, type metadata accessor for ActivityAchievementAward);
          a2 = v29;
          goto LABEL_4;
        }

LABEL_14:

        a2 = v29;
      }

      sub_1B49FA73C(&v35, v15, v16);

      sub_1B4A6A070(v10, v33, type metadata accessor for ActivityAchievementAward);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B4BCED5C(0, *(v13 + 16) + 1, 1);
        v13 = v36;
      }

      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1B4BCED5C(v25 > 1, v26 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v26 + 1;
      sub_1B4A6A070(v33, v13 + v30 + v26 * v34, type metadata accessor for ActivityAchievementAward);
LABEL_4:
      if (++v11 == v32)
      {
        return v13;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B4A68C78(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1B4D1777C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E68, &qword_1B4D25A08) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for AwardsContext();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4A68DCC, 0, 0);
}

uint64_t sub_1B4A68DCC()
{
  v52 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8E70, &qword_1B4D25A10);
  v50 = sub_1B4D181CC();
  v51 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0x6F43736472617761, 0xED0000747865746ELL);

  (*(v6 + 8))(v50, v51, v2, v2, v5, v6);

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1B4975024(v0[12], &qword_1EB8A8E68, &qword_1B4D25A08);
LABEL_9:
    v25 = MEMORY[0x1E69E7CC0];
    goto LABEL_10;
  }

  v8 = v0[7];
  sub_1B4A6A070(v0[12], v0[15], type metadata accessor for AwardsContext);
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v0[4] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  v50 = sub_1B4D181CC();
  v51 = v11;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000019, 0x80000001B4D4AE90);

  (*(v10 + 8))(v50, v51, &type metadata for WorkoutWeekContext, &type metadata for WorkoutWeekContext, v9, v10);

  v12 = v0[3];
  if (!v12)
  {
    v24 = v0[15];
LABEL_8:
    sub_1B4A6A140(v24, type metadata accessor for AwardsContext);
    goto LABEL_9;
  }

  v14 = v4[3];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v0[7], v14);
  v0[6] = &type metadata for WorkoutAwardsFactGenerator.QueryIdentifier;
  v50 = sub_1B4D181CC();
  v51 = v15;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD00000000000001ALL, 0x80000001B4D4AEB0);

  (*(v13 + 8))(v50, v51, &type metadata for WorkoutWeekContext, &type metadata for WorkoutWeekContext, v14, v13);

  v16 = v0[5];
  v17 = v0[15];
  if (!v16)
  {

    v24 = v17;
    goto LABEL_8;
  }

  v19 = v0[10];
  v18 = v0[11];
  v21 = v0[8];
  v20 = v0[9];
  v22 = type metadata accessor for WorkoutState();
  (*(v19 + 16))(v18, v21 + *(v22 + 36), v20);
  v50 = v12;
  sub_1B49973E0(v16);
  v23 = v12;
  v50 = *v17;

  sub_1B4A66490(&v50);
  v31 = v0[11];
  v32 = v50;
  v50 = MEMORY[0x1E69E7CD0];
  v33 = sub_1B4A6895C(v32, &v50);

  v34 = swift_task_alloc();
  *(v34 + 16) = v23;
  *(v34 + 24) = v31;
  v35 = sub_1B4AE0F50(sub_1B4A69C74, v34, v33);

  if (!v35[2])
  {

    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v42 = sub_1B4D17F6C();
    __swift_project_value_buffer(v42, qword_1EDC36F00);
    v43 = sub_1B4D17F5C();
    v44 = sub_1B4D1873C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1B4953000, v43, v44, "No Awards found, nothing to highlight", v45, 2u);
      MEMORY[0x1B8C7DDA0](v45, -1, -1);
    }

    v46 = v0[15];
    v48 = v0[10];
    v47 = v0[11];
    v49 = v0[9];

    sub_1B4A6A140(v46, type metadata accessor for AwardsContext);
    (*(v48 + 8))(v47, v49);
    goto LABEL_9;
  }

  v50 = v35;
  sub_1B4A68708();
  v25 = v50;
  if (v50[2] >= 3uLL)
  {
    v36 = *(type metadata accessor for WorkoutAwardsFact(0) - 8);
    sub_1B4C5C2E0(v25, v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), 0, 5uLL);
    v38 = v37;

    v25 = v38;
  }

  v40 = v0[10];
  v39 = v0[11];
  v41 = v0[9];
  sub_1B4A6A140(v0[15], type metadata accessor for AwardsContext);
  (*(v40 + 8))(v39, v41);
LABEL_10:
  v26 = v0[15];
  v28 = v0[11];
  v27 = v0[12];

  v29 = v0[1];

  return v29(v25);
}

unint64_t sub_1B4A69438(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutState();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1B4D1777C();
  v52 = *(v57 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7728, &qword_1B4D1E9D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = sub_1B4D174EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v53 = &v46 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v46 - v24;
  v54 = v2;
  v25 = *(v2 + 36);
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v26 = sub_1B4D1796C();
  v27 = __swift_project_value_buffer(v26, qword_1EDC3CE48);
  v55 = v25;
  Date.dateIntervalFromStartOfWeek(calendar:)(v27, v16);
  v46 = v5;
  v28 = v17;
  v47 = *(v18 + 56);
  v47(v16, 0, 1, v17);
  v29 = *(v18 + 32);
  v29(v56, v16, v28);
  v48 = a1;
  Date.dateIntervalForPreviousWeek(calendar:)(v13);
  v47(v13, 0, 1, v28);
  v29(v53, v13, v28);
  sub_1B4D174DC();
  sub_1B4D174BC();
  v30 = v51;
  sub_1B4D174CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB0, &qword_1B4D25A60);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB8, &qword_1B4D25A68);
  v32 = *(*(v31 - 8) + 72);
  v33 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v34 = v28;
  v35 = 2 * v32;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B4D1BE00;
  v37 = *(v31 + 48);
  *(v36 + v33) = 0;
  (*(v18 + 16))(v36 + v33 + v37, v30, v34);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v38 = (v36 + v33 + v32);
  v39 = *(v31 + 48);
  *v38 = 1;
  (*(v52 + 16))(&v38[v39], v48 + v55, v57);
  swift_storeEnumTagMultiPayload();
  v40 = (v36 + v33 + v35);
  v41 = *(v31 + 48);
  *v40 = 2;
  v42 = v53;
  sub_1B4D174BC();
  swift_storeEnumTagMultiPayload();
  v43 = sub_1B4C968EC(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = *(v18 + 8);
  v44(v30, v34);
  v44(v42, v34);
  v44(v56, v34);
  return v43;
}

uint64_t sub_1B4A69C28()
{
  v0 = sub_1B4D18B1C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B4A69C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutAwardsFact(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1B4A69CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = (a1 + *(type metadata accessor for ActivityAchievementAward() + 40));
  v13 = v12[1];
  if (!v13)
  {
    return 0;
  }

  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = *v12;
  v16 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v17 = *(v5 + 72);
  while (1)
  {
    sub_1B4A6A0D8(v16, v8, type metadata accessor for WorkoutRecord);
    if (sub_1B4D1779C() == v15 && v13 == v18)
    {
      break;
    }

    v19 = sub_1B4D18DCC();

    if (v19)
    {
      goto LABEL_10;
    }

    sub_1B4A6A140(v8, type metadata accessor for WorkoutRecord);
    v16 += v17;
    if (!--v14)
    {
      return 0;
    }
  }

LABEL_10:
  sub_1B4A6A070(v8, v11, type metadata accessor for WorkoutRecord);
  v21 = *&v11[*(v4 + 28)];
  if (v11[*(v4 + 32)] <= 1u && v11[*(v4 + 32)])
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1B4D18DCC();
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E699C9F0]) initWithActivityTypeIdentifier:v21 isIndoor:v22 & 1];
  sub_1B4A6A140(v11, type metadata accessor for WorkoutRecord);
  return v23;
}

uint64_t sub_1B4A69FE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B4A6A02C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1B4A6A070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6A0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6A140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6A1A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4A6A1F8(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EC0, &qword_1B4D25AA0);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1B4D1AA70;
      v15 = sub_1B4A6A6D8();
      *(v2 + 32) = &type metadata for WorkoutSplitFactGenerator;
      *(v2 + 40) = v15;
      v16 = sub_1B4A6A72C();
      *(v2 + 48) = &type metadata for WorkoutMediaCurrentPlayingItemFactGenerator;
      *(v2 + 56) = v16;
    }

    else
    {
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1B4D223E0;
      v31 = sub_1B4A6A4E0();
      *(v2 + 32) = &type metadata for WorkoutVoiceLongestDistanceFactGenerator;
      *(v2 + 40) = v31;
      v32 = sub_1B4A6A534();
      *(v2 + 48) = &type metadata for WorkoutVoiceGreatestElevationGainFactGenerator;
      *(v2 + 56) = v32;
      v33 = sub_1B4A6A588();
      *(v2 + 64) = &type metadata for WorkoutVoiceMostCaloriesFactGenerator;
      *(v2 + 72) = v33;
      v34 = sub_1B4A6A5DC();
      *(v2 + 80) = &type metadata for ClosedAllRingsFactGenerator;
      *(v2 + 88) = v34;
      v35 = sub_1B4A6A630();
      *(v2 + 96) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFactGenerator;
      *(v2 + 104) = v35;
      v36 = sub_1B4A6A684();
      *(v2 + 112) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFactGenerator;
      *(v2 + 120) = v36;
    }
  }

  else if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B4D25A80;
    v17 = sub_1B4A6A780();
    *(v2 + 32) = &type metadata for WorkoutDetailFactGenerator;
    *(v2 + 40) = v17;
    v18 = sub_1B4A6A7D4();
    *(v2 + 48) = &type metadata for WorkoutGoalAchievementStatusFactGenerator;
    *(v2 + 56) = v18;
    v19 = sub_1B4A6A828();
    *(v2 + 64) = &type metadata for WorkoutMetricsFactGenerator;
    *(v2 + 72) = v19;
    v20 = sub_1B4A6A4E0();
    *(v2 + 80) = &type metadata for WorkoutVoiceLongestDistanceFactGenerator;
    *(v2 + 88) = v20;
    v21 = sub_1B4A6A534();
    *(v2 + 96) = &type metadata for WorkoutVoiceGreatestElevationGainFactGenerator;
    *(v2 + 104) = v21;
    v22 = sub_1B4A6A588();
    *(v2 + 112) = &type metadata for WorkoutVoiceMostCaloriesFactGenerator;
    *(v2 + 120) = v22;
    v23 = sub_1B4A6A6D8();
    *(v2 + 128) = &type metadata for WorkoutSplitFactGenerator;
    *(v2 + 136) = v23;
    v24 = sub_1B4A6A630();
    *(v2 + 144) = &type metadata for WorkoutVoiceMilestoneWorkoutDistanceFactGenerator;
    *(v2 + 152) = v24;
    v25 = sub_1B4A6A684();
    *(v2 + 160) = &type metadata for WorkoutVoiceMilestoneWorkoutDurationFactGenerator;
    *(v2 + 168) = v25;
    v26 = sub_1B4A6A87C();
    *(v2 + 176) = &type metadata for ThisWeekCurrentWorkoutDistanceFactGenerator;
    *(v2 + 184) = v26;
    v27 = sub_1B4A6A8D0();
    *(v2 + 192) = &type metadata for SignificantDistanceDuringWorkoutFactGenerator;
    *(v2 + 200) = v27;
    v28 = sub_1B4A6A924();
    *(v2 + 208) = &type metadata for AverageWorkoutPaceFactGenerator;
    *(v2 + 216) = v28;
    v29 = sub_1B4A6A978();
    *(v2 + 224) = &type metadata for ConsistentWorkoutTrendFactGenerator;
    *(v2 + 232) = v29;
    v30 = sub_1B4A6A9CC();
    *(v2 + 240) = &type metadata for RingProgressFactGenerator;
    *(v2 + 248) = v30;
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1B4D25A90;
    v3 = sub_1B4A6A780();
    *(v2 + 32) = &type metadata for WorkoutDetailFactGenerator;
    *(v2 + 40) = v3;
    v4 = sub_1B4A6A72C();
    *(v2 + 48) = &type metadata for WorkoutMediaCurrentPlayingItemFactGenerator;
    *(v2 + 56) = v4;
    v5 = sub_1B4A6AA20();
    *(v2 + 64) = &type metadata for RingClosureStreakFactGenerator;
    *(v2 + 72) = v5;
    v6 = sub_1B4A6AA74();
    *(v2 + 80) = &type metadata for PerfectWeekRingStatusFactGenerator;
    *(v2 + 88) = v6;
    v7 = sub_1B4A6AAC8();
    *(v2 + 96) = &type metadata for RingStateFactGenerator;
    *(v2 + 104) = v7;
    v8 = sub_1B4A6AB1C();
    *(v2 + 112) = &type metadata for CompletedWorkoutsFactGenerator;
    *(v2 + 120) = v8;
    v9 = sub_1B4A6A87C();
    *(v2 + 128) = &type metadata for ThisWeekCurrentWorkoutDistanceFactGenerator;
    *(v2 + 136) = v9;
    v10 = sub_1B4A6AB70();
    *(v2 + 144) = &type metadata for TrainingLoadFactGenerator;
    *(v2 + 152) = v10;
    v11 = sub_1B4A6ABC4();
    *(v2 + 160) = &type metadata for CurrentDayFactGenerator;
    *(v2 + 168) = v11;
    v12 = sub_1B4A6AC18();
    *(v2 + 176) = &type metadata for WorkoutAlertFactGenerator;
    *(v2 + 184) = v12;
    v13 = sub_1B4A6AC6C();
    *(v2 + 192) = &type metadata for WorkoutAwardsFactGenerator;
    *(v2 + 200) = v13;
    v14 = sub_1B4A6A978();
    *(v2 + 208) = &type metadata for ConsistentWorkoutTrendFactGenerator;
    *(v2 + 216) = v14;
  }

  return v2;
}

unint64_t sub_1B4A6A4E0()
{
  result = qword_1EB8A8EC8;
  if (!qword_1EB8A8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EC8);
  }

  return result;
}

unint64_t sub_1B4A6A534()
{
  result = qword_1EB8A8ED0;
  if (!qword_1EB8A8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8ED0);
  }

  return result;
}

unint64_t sub_1B4A6A588()
{
  result = qword_1EB8A8ED8;
  if (!qword_1EB8A8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8ED8);
  }

  return result;
}

unint64_t sub_1B4A6A5DC()
{
  result = qword_1EB8A8EE0;
  if (!qword_1EB8A8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EE0);
  }

  return result;
}

unint64_t sub_1B4A6A630()
{
  result = qword_1EB8A8EE8;
  if (!qword_1EB8A8EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EE8);
  }

  return result;
}

unint64_t sub_1B4A6A684()
{
  result = qword_1EB8A8EF0;
  if (!qword_1EB8A8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EF0);
  }

  return result;
}

unint64_t sub_1B4A6A6D8()
{
  result = qword_1EB8A8EF8;
  if (!qword_1EB8A8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8EF8);
  }

  return result;
}

unint64_t sub_1B4A6A72C()
{
  result = qword_1EB8A8F00;
  if (!qword_1EB8A8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F00);
  }

  return result;
}

unint64_t sub_1B4A6A780()
{
  result = qword_1EB8A8F08;
  if (!qword_1EB8A8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F08);
  }

  return result;
}

unint64_t sub_1B4A6A7D4()
{
  result = qword_1EB8A8F10;
  if (!qword_1EB8A8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F10);
  }

  return result;
}

unint64_t sub_1B4A6A828()
{
  result = qword_1EB8A8F18;
  if (!qword_1EB8A8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F18);
  }

  return result;
}

unint64_t sub_1B4A6A87C()
{
  result = qword_1EB8A8F20;
  if (!qword_1EB8A8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F20);
  }

  return result;
}

unint64_t sub_1B4A6A8D0()
{
  result = qword_1EB8A8F28;
  if (!qword_1EB8A8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F28);
  }

  return result;
}

unint64_t sub_1B4A6A924()
{
  result = qword_1EB8A8F30;
  if (!qword_1EB8A8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F30);
  }

  return result;
}

unint64_t sub_1B4A6A978()
{
  result = qword_1EB8A8F38;
  if (!qword_1EB8A8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F38);
  }

  return result;
}

unint64_t sub_1B4A6A9CC()
{
  result = qword_1EB8A8F40;
  if (!qword_1EB8A8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F40);
  }

  return result;
}

unint64_t sub_1B4A6AA20()
{
  result = qword_1EB8A8F48;
  if (!qword_1EB8A8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F48);
  }

  return result;
}

unint64_t sub_1B4A6AA74()
{
  result = qword_1EB8A8F50;
  if (!qword_1EB8A8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F50);
  }

  return result;
}

unint64_t sub_1B4A6AAC8()
{
  result = qword_1EB8A8F58;
  if (!qword_1EB8A8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F58);
  }

  return result;
}

unint64_t sub_1B4A6AB1C()
{
  result = qword_1EB8A8F60;
  if (!qword_1EB8A8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F60);
  }

  return result;
}

unint64_t sub_1B4A6AB70()
{
  result = qword_1EB8A8F68;
  if (!qword_1EB8A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F68);
  }

  return result;
}

unint64_t sub_1B4A6ABC4()
{
  result = qword_1EB8A8F70;
  if (!qword_1EB8A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F70);
  }

  return result;
}

unint64_t sub_1B4A6AC18()
{
  result = qword_1EB8A8F78;
  if (!qword_1EB8A8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F78);
  }

  return result;
}

unint64_t sub_1B4A6AC6C()
{
  result = qword_1EB8A8F80;
  if (!qword_1EB8A8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8F80);
  }

  return result;
}

uint64_t RingsPropertyRecord.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v39 - v5;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v48 = a1;
  v19 = *(a1 + v18);
  swift_beginAccess();
  v41 = *(v19 + 16);
  swift_beginAccess();
  v40 = *(v19 + 24);
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B4974FBC(v19 + v20, v12, &qword_1EB8A8F90, &unk_1B4D32490);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    sub_1B4D17BBC();
    v22 = &v17[v13[5]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v17[v13[6]];
    *v23 = 0;
    *(v23 + 1) = 0;
    v17[v13[7]] = 2;
    if (v21(v12, 1, v13) != 1)
    {
      sub_1B4975024(v12, &qword_1EB8A8F90, &unk_1B4D32490);
    }
  }

  else
  {
    sub_1B4A6B870(v12, v17, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  v24 = v45;
  RingsPropertyDimensions.init(_:)(v17, v47);
  v25 = v46;
  if (v24)
  {
    return sub_1B4A6B810(v48, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  }

  v27 = v47[0];
  v28 = BYTE1(v47[0]);
  v29 = BYTE2(v47[0]);
  v30 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
  swift_beginAccess();
  v31 = v19 + v30;
  v32 = v44;
  sub_1B4974FBC(v31, v44, &qword_1EB8A8F88, &unk_1B4D29F50);
  v33 = *(v25 + 48);
  v34 = v43;
  if (v33(v32, 1, v43) == 1)
  {
    v35 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    v36 = &v8[*(v34 + 20)];
    sub_1B4D17BBC();
    if (v33(v32, 1, v34) != 1)
    {
      sub_1B4975024(v32, &qword_1EB8A8F88, &unk_1B4D29F50);
    }
  }

  else
  {
    sub_1B4A6B870(v32, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  static RingsPropertySerialization.from(_:)(v8, v47);
  sub_1B4A6B810(v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  sub_1B4A6B810(v48, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  v37 = v42;
  result = sub_1B496F398(v47, v42 + 24);
  v38 = v40;
  *v37 = v41;
  *(v37 + 8) = v38;
  *(v37 + 16) = v27;
  *(v37 + 17) = v28;
  *(v37 + 18) = v29;
  return result;
}

uint64_t RingsPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  sub_1B4A6B9A8(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A6B25C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F88, &unk_1B4D29F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = &v58 - v6;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8F90, &unk_1B4D32490);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v58 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  v20 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0) + 20);
  v21 = *(a1 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(a1 + v20);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();
    v23 = sub_1B4AC8F90(v23);
    *(a1 + v20) = v23;
  }

  swift_beginAccess();
  *(v23 + 16) = v19;
  v27 = a2[1];
  v28 = *(a1 + v20);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(a1 + v20);
  v63 = v10;
  if ((v29 & 1) == 0)
  {
    v31 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v30 = sub_1B4AC8F90(v30);
    *(a1 + v20) = v30;
  }

  v34 = swift_beginAccess();
  *(v30 + 24) = v27;
  v35 = *(a2 + 8);
  v36 = *(a2 + 18);
  MEMORY[0x1EEE9AC00](v34);
  *(&v58 - 8) = v37;
  *(&v58 - 14) = v38;
  sub_1B4A6B9A8(qword_1EDC3B850, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  v39 = v62;
  sub_1B4D17DAC();
  v40 = *(a1 + v20);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(a1 + v20);
  if ((v41 & 1) == 0)
  {
    v43 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    swift_allocObject();
    v42 = sub_1B4AC8F90(v42);
    *(a1 + v20) = v42;
  }

  v46 = v63;
  sub_1B4A6B870(v18, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  (*(v61 + 56))(v14, 0, 1, v15);
  v47 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__dimensions;
  swift_beginAccess();
  sub_1B49A205C(v14, v42 + v47, &qword_1EB8A8F90, &unk_1B4D32490);
  swift_endAccess();
  v48 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  result = RingsProperty.protobuf()();
  if (!v39)
  {
    v50 = *(a1 + v20);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *(a1 + v20);
    if ((v51 & 1) == 0)
    {
      v53 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord._StorageClass(0);
      v54 = *(v53 + 48);
      v55 = *(v53 + 52);
      swift_allocObject();
      v52 = sub_1B4AC8F90(v52);
      *(a1 + v20) = v52;
    }

    v56 = v60;
    sub_1B4A6B870(v46, v60, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
    (*(v58 + 56))(v56, 0, 1, v59);
    v57 = OBJC_IVAR____TtCV19FitnessIntelligence46Apple_Fitness_Intelligence_RingsPropertyRecordP33_21DB60AF694B7D7D504D56675EB7407313_StorageClass__property;
    swift_beginAccess();
    sub_1B49A205C(v56, v52 + v57, &qword_1EB8A8F88, &unk_1B4D29F50);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B4A6B750()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord(0);
  sub_1B4A6B9A8(qword_1EDC3C070, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4A6B810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6B870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6B9A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WorkoutVoiceMostCaloriesFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceMostCaloriesFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000072;
  }

  else
  {
    result = 0xD000000000000066;
  }

  *v0;
  return result;
}

uint64_t sub_1B4A6BAB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000072;
  }

  else
  {
    v4 = 0xD000000000000066;
  }

  if (v3)
  {
    v5 = "previousWorkoutWeekContext";
  }

  else
  {
    v5 = "ue of <energy_string>.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000072;
  }

  else
  {
    v7 = 0xD000000000000066;
  }

  if (*a2)
  {
    v8 = "ue of <energy_string>.";
  }

  else
  {
    v8 = "previousWorkoutWeekContext";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4A6BB60()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A6BBE0()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4A6BC4C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4A6BCC8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4A6BD28(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000072;
  }

  else
  {
    v2 = 0xD000000000000066;
  }

  if (*v1)
  {
    v3 = "ue of <energy_string>.";
  }

  else
  {
    v3 = "previousWorkoutWeekContext";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id WorkoutVoiceMostCaloriesFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D1BE00;
  v6 = *(v0 + *(v1 + 28));
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v8 = result;
    v9 = sub_1B4D1818C();
    v11 = v10;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v12;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    sub_1B4A6C1F0(v0, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    sub_1B4A6C254(v4, v14 + v13);
    strcpy((v5 + 80), "energy_string");
    *(v5 + 94) = -4864;
    *(v5 + 96) = sub_1B4A6C2B8;
    *(v5 + 104) = v14;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    v15 = *(v0 + *(v1 + 24));
    v16 = *&aThisDaythisWee_0[8 * v15];
    v17 = qword_1B4D25C08[v15];
    *(v5 + 128) = 0x6C616373656D6974;
    *(v5 + 136) = 0xE900000000000065;
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    *(v5 + 144) = sub_1B4994004;
    *(v5 + 152) = v18;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4A6BFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = *(type metadata accessor for WorkoutVoiceMostCaloriesFact() + 20);
  v8 = *(a1 + 16);
  FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v9);
  v11 = v10;
  sub_1B4D1745C();
  v12 = sub_1B4D12160();
  v13 = sub_1B4D12A28();

  (*(v3 + 8))(v6, v2);
  return v13;
}

uint64_t WorkoutVoiceMostCaloriesFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for WorkoutVoiceMostCaloriesFact() + 24)) >= 4u)
  {

    v5 = 0;
  }

  else
  {
    v3 = sub_1B4D18DCC();

    v5 = (v3 & 1) == 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1B4A6C1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A6C254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMostCaloriesFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4A6C2B8(uint64_t a1)
{
  v2 = *(*(type metadata accessor for WorkoutVoiceMostCaloriesFact() - 8) + 80);

  return sub_1B4A6BFCC(a1);
}

unint64_t sub_1B4A6C32C()
{
  result = qword_1EB8A8FA0;
  if (!qword_1EB8A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FA0);
  }

  return result;
}

unint64_t sub_1B4A6C384()
{
  result = qword_1EB8A8FA8;
  if (!qword_1EB8A8FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8FB0, &qword_1B4D25B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FA8);
  }

  return result;
}

unint64_t sub_1B4A6C3EC()
{
  result = qword_1EB8A8FB8;
  if (!qword_1EB8A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FB8);
  }

  return result;
}

unint64_t sub_1B4A6C444()
{
  result = qword_1EB8A8FC0;
  if (!qword_1EB8A8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FC0);
  }

  return result;
}

unint64_t sub_1B4A6C498(uint64_t a1)
{
  result = sub_1B4A6C4C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A6C4C0()
{
  result = qword_1EB8A8FC8;
  if (!qword_1EB8A8FC8)
  {
    type metadata accessor for WorkoutVoiceMostCaloriesFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8FC8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A7148, &unk_1B4D25C40);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  v10 = &a1[*(v8 + 24)];
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B4A6C800@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - v8;
  v10 = a1(0, v7);
  sub_1B4974FBC(v2 + *(v10 + 28), v9, &qword_1EB8A7158, &unk_1B4D20310);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1B4A6F890(v9, a2, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v13 = a2 + *(v11 + 36);
  sub_1B4D17BBC();
  v14 = (a2 + *(v11 + 40));
  *v14 = 0;
  v14[1] = 0;
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t sub_1B4A6C98C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A6F890(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.records.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperties.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4A6CC0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4A6CC70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.monthOfYear.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearMonthOfYear()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4A6CE78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4A6CEDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.dayOfWeek.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearDayOfWeek()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.hourOfDay.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearHourOfDay()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.activityType.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearActivityType()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4A6D34C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4A6D3B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.locationType.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearLocationType()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1B4A6D5B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1B4A6D61C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutPropertyDimensions.sourceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A9A7F0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyDimensions.clearSourceIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

int *Apple_Fitness_Intelligence_WorkoutPropertyDimensions.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v3 = (a1 + result[5]);
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + result[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + result[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + result[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + result[10]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.activityType.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.locationType.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.sourceIdentifier.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  a1[5] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0) + 40);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v7 + 28), v6, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  sub_1B4D17BBC();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v8[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a1 + v8[8];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (a1 + v8[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a1 + v8[10]);
  *v15 = 0;
  v15[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7CE8, &qword_1B4D201A0);
  }

  return result;
}

uint64_t sub_1B4A6DD44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7CE8, &qword_1B4D201A0);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyRecord.dimensions.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CE8, &qword_1B4D201A0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + v9[5]);
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + v9[6]);
    *v18 = 0;
    v18[1] = 0;
    v19 = v14 + v9[7];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[8];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = (v14 + v9[9]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[10]);
    *v22 = 0;
    v22[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CE8, &qword_1B4D201A0);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  return sub_1B4A6E190;
}

void sub_1B4A6E190(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    sub_1B4975024(v9 + v3, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7CE8, &qword_1B4D201A0);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v1 + *(v7 + 32), v6, &qword_1EB8A7CD8, &unk_1B4D20190);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  return result;
}

uint64_t sub_1B4A6E508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v8 + 32), v7, &qword_1EB8A7CD8, &unk_1B4D20190);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7CD8, &unk_1B4D20190);
  }

  return result;
}

uint64_t sub_1B4A6E6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(a2 + v9, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7CD8, &unk_1B4D20190);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertyRecord.property.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7CD8, &unk_1B4D20190);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7CD8, &unk_1B4D20190);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  return sub_1B4A6EB0C;
}

void sub_1B4A6EB0C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    sub_1B4975024(v9 + v3, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7CD8, &unk_1B4D20190);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_WorkoutPropertyRecord.hasProperty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CD8, &unk_1B4D20190);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  sub_1B4974FBC(v0 + *(v5 + 32), v4, &qword_1EB8A7CD8, &unk_1B4D20190);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7CD8, &unk_1B4D20190);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutPropertyRecord.clearProperty()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0) + 32);
  sub_1B4975024(v0 + v1, &qword_1EB8A7CD8, &unk_1B4D20190);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertyRecord.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyRecord(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = &a1[v2[6]];
  sub_1B4D17BBC();
  v4 = v2[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.currentEntries.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4A6EFF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A6F08C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.workoutIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.workoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.localizedDate.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 36);
    sub_1B4D17BBC();
    v18 = (v14 + *(v9 + 40));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A9A7EC;
}

BOOL sub_1B4A6F45C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 28), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A6F594(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4A6F658@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A6F6F4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v3 = &a1[*(v2 + 24)];
  sub_1B4D17BBC();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1B4A6F890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6F9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A6FA60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A6FB00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A7148, &unk_1B4D25C40);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0xE000000000000000;
  v11 = &a2[*(v9 + 24)];
  sub_1B4D17BBC();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7148, &unk_1B4D25C40);
  }

  return result;
}

uint64_t sub_1B4A6FCAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A7148, &unk_1B4D25C40);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.entry.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7148, &unk_1B4D25C40) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7148, &unk_1B4D25C40);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 2) = 0xE000000000000000;
    v17 = &v14[*(v9 + 24)];
    sub_1B4D17BBC();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7148, &unk_1B4D25C40);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  return sub_1B4A70040;
}

void sub_1B4A70040(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    sub_1B4975024(v9 + v3, &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7148, &unk_1B4D25C40);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Pair(0);
  v3 = &a1[*(v2 + 20)];
  sub_1B4D17BBC();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.Entry(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutMilestonePropertyValue(0) + 28);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.keyType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1B4A1F598(v2, v3, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.keyType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.getter()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  v2 = v0;
  v1 = *v0;
  sub_1B4A1F5AC(v1, *(v2 + 8), 0);
  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B4A1F5C0(*v2, *(v2 + 8), *(v2 + 16));
  *v2 = a1;
  *(v2 + 8) = a2;
  *(v2 + 16) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.dayOfWeek.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (*(v1 + 16))
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v3 = *v1;
    v4 = *(v1 + 8);
    sub_1B4A1F5AC(*v1, v4, 0);
  }

  *a1 = v3;
  a1[1] = v4;
  return sub_1B4A705B4;
}

uint64_t sub_1B4A705B4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (a2)
  {
    v8 = a1[1];

    sub_1B4A1F5C0(v5, v6, v7);
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  else
  {
    result = sub_1B4A1F5C0(*v3, *(v3 + 8), *(v3 + 16));
    *v3 = v4;
    *(v3 + 8) = v2;
    *(v3 + 16) = 0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.setter(uint64_t a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.hourOfDay.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  if (*(v1 + 16) == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return sub_1B4A706F8;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.getter()
{
  if (v0[16] == 2)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.setter(uint64_t a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.weatherCondition.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  if (*(v1 + 16) == 2)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  return sub_1B4A707A4;
}

double Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.getter()
{
  result = *v0;
  if (*(v0 + 16) != 3)
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.setter(double a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.distance.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 16) != 3)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4A7083C;
}

double Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.getter()
{
  result = *v0;
  if (*(v0 + 16) != 4)
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.setter(double a1)
{
  result = sub_1B4A1F5C0(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 4;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.roundedDistance.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 16) != 4)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4A708D4;
}

uint64_t sub_1B4A708DC(uint64_t *a1, uint64_t a2, char a3)
{
  v5 = *a1;
  v4 = a1[1];
  result = sub_1B4A1F5C0(*v4, *(v4 + 8), *(v4 + 16));
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_1B4A70934@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A709F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7E80, &unk_1B4D25C50);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_5:
    *a1 = 0;
    v9 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
    return sub_1B4D17BBC();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4A70CEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7E80, &unk_1B4D25C50);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_5:
    *a2 = 0;
    v9 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
    return sub_1B4D17BBC();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
}

uint64_t sub_1B4A70E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.count.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
      return sub_1B4A71254;
    }

    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
  }

  *v12 = 0;
  v15 = v12 + *(v9 + 20);
  sub_1B4D17BBC();
  return sub_1B4A71254;
}

void sub_1B4A71254(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4A71414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.bestWorkoutMetric.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7E80, &unk_1B4D25C50);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.bestWorkoutMetric.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E80, &unk_1B4D25C50) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7E80, &unk_1B4D25C50);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A71854;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A71854;
}

void sub_1B4A71854(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7E80, &unk_1B4D25C50);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t static Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B4A10A90(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  sub_1B4D17BCC();
  sub_1B4A97E08(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A71B30@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a2(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A7EA0, &unk_1B4D42260);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v10 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  return result;
}

uint64_t sub_1B4A71D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 20), v7, &qword_1EB8A7EA0, &unk_1B4D42260);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7EA0, &unk_1B4D42260);
  }

  return result;
}

uint64_t sub_1B4A71E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(a2 + v9, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A7EA0, &unk_1B4D42260);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7EA0, &unk_1B4D42260);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = -1;
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7EA0, &unk_1B4D42260);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  return sub_1B4A72288;
}

void sub_1B4A72288(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    sub_1B4975024(v9 + v3, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7EA0, &unk_1B4D42260);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.hasKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7EA0, &unk_1B4D42260);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v0 + *(v5 + 20), v4, &qword_1EB8A7EA0, &unk_1B4D42260);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1B4975024(v4, &qword_1EB8A7EA0, &unk_1B4D42260);
  return v7;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.clearKey()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A7EA0, &unk_1B4D42260);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(v1 + *(v7 + 24), v6, &qword_1EB8A7E90, &unk_1B4D25C60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  return result;
}

uint64_t sub_1B4A72708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  sub_1B4974FBC(a1 + *(v8 + 24), v7, &qword_1EB8A7E90, &unk_1B4D25C60);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  v11 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7E90, &unk_1B4D25C60);
  }

  return result;
}

uint64_t sub_1B4A728A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(a2 + v9, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4A6F890(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E90, &unk_1B4D25C60) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7E90, &unk_1B4D25C60);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value.OneOf_ValueType(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v18 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7E90, &unk_1B4D25C60);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  return sub_1B4A72CE0;
}

void sub_1B4A72CE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    sub_1B4975024(v9 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7E90, &unk_1B4D25C60);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1B4A72E84(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 24), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A72FBC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1B4D17BBC();
  v2 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Pair(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Key(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.Value(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_DistanceSampleIntervalRecord.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = a1 + *(v2 + 36);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.workoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.workoutIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B4A7347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v12, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v13 = *(a5(0) + 28);
  sub_1B4975024(a2 + v13, &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4A6F890(v12, a2 + v13, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

void (*Apple_Fitness_Intelligence_BestWorkoutRecordEntry.localizedDate.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 36);
    sub_1B4D17BBC();
    v18 = (v14 + *(v9 + 40));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A737DC;
}

void sub_1B4A737DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4A6F890(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4A6FA60(v5, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A7158, &unk_1B4D20310);
    sub_1B4A6F890(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  sub_1B4974FBC(v1 + *(v7 + 20), v6, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_1B4A6F890(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  sub_1B4975024(v6, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v10 = a1 + *(v9 + 36);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A73BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4A6F890(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  return (*(*(v9 - 8) + 56))(a2 + v8, 0, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  sub_1B4A6F890(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_BestWorkoutRecordEntry.distanceRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7B90, &unk_1B4D3B2C0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0;
    v16 = v12 + *(v9 + 36);
    sub_1B4D17BBC();
  }

  else
  {
    sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  return sub_1B4A73FAC;
}

void sub_1B4A73FAC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4A6F9F8((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    sub_1B4975024(v9 + v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v6, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  }

  else
  {
    sub_1B4975024(v9 + v5, &qword_1EB8A7B90, &unk_1B4D3B2C0);
    sub_1B4A6F890(v7, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t sub_1B4A74194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9388, &unk_1B4D27A70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v11 - v6);
  v9 = *(v8 + 56);
  sub_1B4A6F9F8(a1, &v11 - v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  sub_1B4A6F9F8(a2, v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType);
  LOBYTE(a2) = _s19FitnessIntelligence06Apple_a1_B29_DistanceSampleIntervalRecordV2eeoiySbAC_ACtFZ_0(v7, (v7 + v9));
  sub_1B4A6FA60(v7 + v9, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_DistanceSampleIntervalRecord);
  return a2 & 1;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutRecordEntry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[6]];
  sub_1B4D17BBC();
  v6 = v2[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t sub_1B4A7438C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = a2(0);
  sub_1B4974FBC(a1 + *(v10 + 28), v9, &qword_1EB8A7158, &unk_1B4D20310);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1B4A6F890(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v13 = a3 + *(v11 + 36);
  sub_1B4D17BBC();
  v14 = (a3 + *(v11 + 40));
  *v14 = 0;
  v14[1] = 0;
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A7158, &unk_1B4D20310);
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.localizedDate.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7158, &unk_1B4D20310);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    v17 = v14 + *(v9 + 36);
    sub_1B4D17BBC();
    v18 = (v14 + *(v9 + 40));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7158, &unk_1B4D20310);
    }
  }

  else
  {
    sub_1B4A6F890(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  return sub_1B4A9A7EC;
}

uint64_t Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v3 = &a1[*(v2 + 24)];
  sub_1B4D17BBC();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.topEntries.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  sub_1B4974FBC(v2, &v16 - v6, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_5:
    *a1 = 0;
    *(a1 + 1) = 0xE000000000000000;
    v9 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
    v10 = v9[5];
    v11 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
    (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
    v12 = &a1[v9[6]];
    sub_1B4D17BBC();
    v13 = v9[7];
    v14 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    goto LABEL_5;
  }

  return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
}

uint64_t sub_1B4A74C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  sub_1B4975024(a2, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.recordEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
      return sub_1B4A750AC;
    }

    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  }

  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v16 = v10[5];
  v17 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry.OneOf_RecordType(0);
  (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
  v18 = &v13[v10[6]];
  sub_1B4D17BBC();
  v19 = v10[7];
  v20 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  (*(*(v20 - 8) + 56))(&v13[v19], 1, 1, v20);
  return sub_1B4A750AC;
}

void sub_1B4A750AC(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutRecordEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  sub_1B4974FBC(v2, &v14 - v6, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v11 = &a1[*(v10 + 24)];
  sub_1B4D17BBC();
  v12 = *(v10 + 28);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

uint64_t sub_1B4A753F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  sub_1B4975024(a2, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.measurementEntry.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BC8, &unk_1B4D1FD60) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A7BC8, &unk_1B4D1FD60);
LABEL_15:
    *v13 = 0;
    *(v13 + 1) = 0xE000000000000000;
    *(v13 + 2) = 0;
    v16 = &v13[*(v10 + 24)];
    sub_1B4D17BBC();
    v17 = *(v10 + 28);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
    (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
    return sub_1B4A75838;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v9, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue.Entry.OneOf_EntryType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  return sub_1B4A75838;
}

void sub_1B4A75838(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    sub_1B4975024(v8, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7BC8, &unk_1B4D1FD60);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_BestWorkoutMeasurementEntry);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  v9 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A75C60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = 0;
  v9 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A75DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.fastestByDistance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
      return sub_1B4A761D0;
    }

    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *v12 = MEMORY[0x1E69E7CC0];
  v12[1] = 0;
  v15 = v12 + *(v9 + 24);
  sub_1B4D17BBC();
  return sub_1B4A761D0;
}

void sub_1B4A761D0(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutDictionaryPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4A76390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void *a5@<X8>)
{
  v10 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1B4974FBC(v10, &v19 - v14, a1, a2);
  v16 = a3(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1B4975024(v15, a1, a2);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v15, a5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v15, a4);
  }

  *a5 = MEMORY[0x1E69E7CC0];
  v18 = a5 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A764F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t (*a5)(void)@<X6>, void *a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1B4974FBC(a1, &v19 - v14, a2, a3);
  v16 = a4(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    sub_1B4975024(v15, a2, a3);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4A6F890(v15, a6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v15, a5);
  }

  *a6 = MEMORY[0x1E69E7CC0];
  v18 = a6 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.fastestPace.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.fastestPace.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A76A60;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A76A60;
}

void sub_1B4A76A60(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76D5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A76ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.longestDistance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A772D4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A772D4;
}

void sub_1B4A772D4(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A775D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.greatestElevation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A77B48;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A77B48;
}

void sub_1B4A77B48(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77E44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A77FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.mostCaloriesBurned.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A783BC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A783BC;
}

void sub_1B4A783BC(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A786B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A78830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.greatestDuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    v15 = v12 + *(v9 + 20);
    sub_1B4D17BBC();
    return sub_1B4A78C30;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  return sub_1B4A78C30;
}

void sub_1B4A78C30(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutBestMetricPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A78F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.distanceStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7932C;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7932C;
}

void sub_1B4A7932C(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A79628(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.paceStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A79A28;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A79A28;
}

void sub_1B4A79A28(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A79D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.elevationGainStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7A124;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7A124;
}

void sub_1B4A7A124(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7A420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.averageHeartRateStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7A820;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7A820;
}

void sub_1B4A7A820(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7AB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.diveDepthStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7AF1C;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7AF1C;
}

void sub_1B4A7AF1C(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7B218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.caloriesStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7B618;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7B618;
}

void sub_1B4A7B618(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7B914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.durationStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7BD14;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7BD14;
}

void sub_1B4A7BD14(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B4974FBC(v2, &v12 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  v10 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  v11 = a1 + *(v10 + 40);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7C010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A6F9F8(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4975024(a2, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A7CC8, &qword_1B4D20180);
  sub_1B4A6F890(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_WorkoutProperty.weatherTemperatureStatistics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1B4974FBC(v1, v8, &qword_1EB8A7CC8, &qword_1B4D20180);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
LABEL_15:
    v12[1] = 0u;
    v12[2] = 0u;
    *v12 = 0u;
    v15 = v12 + *(v9 + 40);
    sub_1B4D17BBC();
    return sub_1B4A7C410;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1B4A6FA60(v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
    goto LABEL_15;
  }

  sub_1B4A6F890(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4A7C410;
}

void sub_1B4A7C410(uint64_t **a1, char a2)
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
    sub_1B4A6F9F8((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    sub_1B4975024(v8, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4A6FA60(v6, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A7CC8, &qword_1B4D20180);
    sub_1B4A6F890(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_WorkoutProperty.totalCount.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(v2, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4A6F890(v7, a1, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a1 = 0;
  v10 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A7C704@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CC8, &qword_1B4D20180);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B4974FBC(a1, &v11 - v6, &qword_1EB8A7CC8, &qword_1B4D20180);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A7CC8, &qword_1B4D20180);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1B4A6F890(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
    }

    sub_1B4A6FA60(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperty.OneOf_PropertyType);
  }

  *a2 = 0;
  v10 = a2 + *(type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0) + 20);
  return sub_1B4D17BBC();
}