uint64_t sub_1D62E2354(uint64_t a1, uint64_t a2)
{
  result = sub_1D62E2458(&qword_1EC885820, a2, type metadata accessor for FormatSupplementaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62E23AC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D62E2458(&qword_1EDF26FD0, a2, type metadata accessor for FormatSupplementaryNode);
  a1[2] = sub_1D62E2458(&qword_1EDF0D320, v3, type metadata accessor for FormatSupplementaryNode);
  result = sub_1D62E2458(&qword_1EC885828, v4, type metadata accessor for FormatSupplementaryNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D62E2458(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D62E24A0(uint64_t a1, uint64_t a2)
{
  result = sub_1D62E2458(&qword_1EC885830, a2, type metadata accessor for FormatSupplementaryNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D62E2534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D62E3300(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D62E25B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v9 = *(a2[6] + 16);
  result = v9 + 4;
  if (__OFADD__(v9, 4))
  {
    __break(1u);
  }

  else
  {
    v28 = a2[6];
    sub_1D7259E0C();
    v34 = a1;
    swift_getKeyPath();
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1E69D74F0];
    v30 = a3;
    v31 = a4;
    sub_1D5EB5368(0);
    sub_1D62E2458(&qword_1EDF3C040, 255, sub_1D5EB5368);
    sub_1D62E2BE8();

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v34 = a1;
    swift_getKeyPath();
    v15 = *a2;
    v14 = a2[1];
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1E69D74F0];
    v30 = v15;
    v31 = v14;

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v30);
    v35 = a1;
    swift_getKeyPath();
    swift_beginAccess();
    v17 = *(a5 + 16);
    v16 = *(a5 + 24);
    v32 = MEMORY[0x1E69E6158];
    v33 = MEMORY[0x1E69D74F0];
    v30 = v17;
    v31 = v16;

    sub_1D7259A0C();

    result = __swift_destroy_boxed_opaque_existential_1(&v30);
    v18 = *(a2 + 104);
    if (v18 != 7)
    {
      v35 = a1;
      swift_getKeyPath();
      v32 = &type metadata for FormatAccessibilityRole;
      v33 = sub_1D62E2C6C();
      LOBYTE(v30) = v18;
      sub_1D62E2458(&qword_1EDF3C178, 255, sub_1D62E2CC0);
      sub_1D7259A0C();

      result = __swift_destroy_boxed_opaque_existential_1(&v30);
    }

    if (v9)
    {
      for (i = (v28 + 32); ; i = (i + 104))
      {
        v20 = *i;
        v21 = i[2];
        v36[1] = i[1];
        v36[2] = v21;
        v36[0] = v20;
        v22 = i[3];
        v23 = i[4];
        v24 = i[5];
        v37 = *(i + 12);
        v36[4] = v23;
        v36[5] = v24;
        v36[3] = v22;
        v25 = *(a5 + 16);
        v26 = *(a5 + 24);
        sub_1D5C5C4CC(v36, &v30);

        sub_1D6B0A84C(v25, v26);

        v27 = sub_1D6B0B228(0, 0);

        sub_1D6FBF7BC(a1, v27, v38);
        if (v7)
        {
          break;
        }

        result = sub_1D5C5C540(v36);
        if (!--v9)
        {
          return result;
        }
      }

      return sub_1D5C5C540(v36);
    }
  }

  return result;
}

double sub_1D62E2940(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          sub_1D7259CDC();
          if (v10 == 0.0)
          {
            return a1;
          }
        }

        else
        {
          v26 = off_1F51AF338[0];
          type metadata accessor for FormatNodeContext();
          v28 = v26();
          v29 = sub_1D5E02AFC(v28, a4);

          if (v5)
          {
            return a1;
          }

          v10 = v29;
          if (v29 == 0.0)
          {
            return a1;
          }
        }
      }

      else
      {
        sub_1D7259CEC();
        if (v10 == 0.0)
        {
          return a1;
        }
      }

      return a1 / v10;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return v8 * a1;
      }

      else
      {
        v18 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v20 = v18();
        v21 = sub_1D5E02AFC(v20, a4);

        if (!v5)
        {
          return v21 * a1;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return v12 * a1;
    }
  }

  else if (a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return a1 - v9;
      }

      else
      {
        v22 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v24 = v22();
        v25 = sub_1D5E02AFC(v24, a4);

        if (!v5)
        {
          return a1 - v25;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return a1 - v13;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1D7259CDC();
      return v7 + a1;
    }

    else
    {
      v14 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v16 = v14();
      v17 = sub_1D5E02AFC(v16, a4);

      if (!v5)
      {
        return v17 + a1;
      }
    }
  }

  else
  {
    sub_1D7259CEC();
    return v11 + a1;
  }

  return a1;
}

unint64_t sub_1D62E2BE8()
{
  result = qword_1EDF3C168;
  if (!qword_1EDF3C168)
  {
    sub_1D62E30D8(255, &qword_1EDF3C160, MEMORY[0x1E69E6158], MEMORY[0x1E69D74F0], MEMORY[0x1E69D6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C168);
  }

  return result;
}

unint64_t sub_1D62E2C6C()
{
  result = qword_1EDF27778;
  if (!qword_1EDF27778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27778);
  }

  return result;
}

void sub_1D62E2CC0()
{
  if (!qword_1EDF3C170)
  {
    sub_1D62E2D24();
    sub_1D62E2D74();
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C170);
    }
  }
}

void sub_1D62E2D24()
{
  if (!qword_1EDF27760)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF27760);
    }
  }
}

unint64_t sub_1D62E2D74()
{
  result = qword_1EDF27758;
  if (!qword_1EDF27758)
  {
    sub_1D62E2D24();
    sub_1D62E2C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27758);
  }

  return result;
}

double sub_1D62E2DEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        if (a4 == 1)
        {
          sub_1D7259CDC();
          if (v10 == 0.0)
          {
            return a1;
          }
        }

        else
        {
          v26 = off_1F513B080[0];
          type metadata accessor for FormatDecorationContext();
          v28 = v26();
          v29 = sub_1D5E02AFC(v28, a4);

          if (v5)
          {
            return a1;
          }

          v10 = v29;
          if (v29 == 0.0)
          {
            return a1;
          }
        }
      }

      else
      {
        sub_1D7259CEC();
        if (v10 == 0.0)
        {
          return a1;
        }
      }

      return a1 / v10;
    }

    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return v8 * a1;
      }

      else
      {
        v18 = off_1F513B080[0];
        type metadata accessor for FormatDecorationContext();
        v20 = v18();
        v21 = sub_1D5E02AFC(v20, a4);

        if (!v5)
        {
          return v21 * a1;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return v12 * a1;
    }
  }

  else if (a5)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        sub_1D7259CDC();
        return a1 - v9;
      }

      else
      {
        v22 = off_1F513B080[0];
        type metadata accessor for FormatDecorationContext();
        v24 = v22();
        v25 = sub_1D5E02AFC(v24, a4);

        if (!v5)
        {
          return a1 - v25;
        }
      }
    }

    else
    {
      sub_1D7259CEC();
      return a1 - v13;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      sub_1D7259CDC();
      return v7 + a1;
    }

    else
    {
      v14 = off_1F513B080[0];
      type metadata accessor for FormatDecorationContext();
      v16 = v14();
      v17 = sub_1D5E02AFC(v16, a4);

      if (!v5)
      {
        return v17 + a1;
      }
    }
  }

  else
  {
    sub_1D7259CEC();
    return v11 + a1;
  }

  return a1;
}

uint64_t sub_1D62E3070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D62E30D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D62E312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D62E3144();
  }

  return result;
}

uint64_t sub_1D62E3144()
{
}

uint64_t sub_1D62E31A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    return sub_1D62E31B8();
  }

  return result;
}

uint64_t sub_1D62E31B8()
{
}

uint64_t sub_1D62E3214(uint64_t a1)
{
  sub_1D62E3300(0, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D62E32A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D62E3300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62E3364()
{
  v1 = *(type metadata accessor for GroupLayoutContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D6BECEAC(v0 + v2, v4, v5);
}

uint64_t SharingIssueActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E34F8()
{
  result = qword_1EC885838;
  if (!qword_1EC885838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885838);
  }

  return result;
}

void sub_1D62E354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  v5 = [objc_opt_self() generalPasteboard];
  if (v4)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v5 setString_];
}

uint64_t sub_1D62E35E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  sub_1D725A9FC();
  return sub_1D725A9CC() & (v4 != 0);
}

uint64_t FormatShareAttributionNodeContent.sharedItem(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[3] = type metadata accessor for FormatNodeContext();
  v5[4] = &off_1F51AF328;
  v5[0] = a1;

  sub_1D6D9723C(v5, a2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1D62E36A4(uint64_t a1)
{
  result = sub_1D62E36CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E36CC()
{
  result = qword_1EC885840;
  if (!qword_1EC885840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885840);
  }

  return result;
}

unint64_t sub_1D62E3720(void *a1)
{
  a1[1] = sub_1D62E3758();
  a1[2] = sub_1D62E37AC();
  result = sub_1D62E3800();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E3758()
{
  result = qword_1EDF1E448;
  if (!qword_1EDF1E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E448);
  }

  return result;
}

unint64_t sub_1D62E37AC()
{
  result = qword_1EDF07D30;
  if (!qword_1EDF07D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07D30);
  }

  return result;
}

unint64_t sub_1D62E3800()
{
  result = qword_1EC885848;
  if (!qword_1EC885848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885848);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22DebugFormatLogSeverityO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D62E38B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 5)
  {
    return (v3 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D62E3918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_1D62E3968(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

id sub_1D62E39A8(uint64_t a1)
{
  v2 = objc_opt_self();
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v5 = [v2 systemOrangeColor];
      v6 = [v5 colorWithAlphaComponent_];
      goto LABEL_13;
    }

    if (a1 == 4)
    {
      v5 = [v2 systemYellowColor];
      v6 = [v5 colorWithAlphaComponent_];
LABEL_13:
      v7 = v6;

      return v7;
    }

LABEL_10:
    v5 = [v2 systemRedColor];
    v6 = [v5 colorWithAlphaComponent_];
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v5 = [v2 systemBlueColor];
    v6 = [v5 colorWithAlphaComponent_];
    goto LABEL_13;
  }

  if (a1 != 2)
  {
    goto LABEL_10;
  }

  v3 = [v2 systemBackgroundColor];

  return v3;
}

uint64_t sub_1D62E3B04(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_1D62E3BBC(a1);
  return v2;
}

void sub_1D62E3B54()
{
  if (!qword_1EDF3BB20)
  {
    v0 = sub_1D725AE8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BB20);
    }
  }
}

uint64_t sub_1D62E3BBC(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = *(a1 + 32);
  sub_1D62E3B54();
  swift_allocObject();
  *(v1 + 24) = sub_1D725AE2C();
  *(v1 + 32) = v3;
  *(v1 + 40) = *(a1 + 1);
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  type metadata accessor for FeedServiceState.GapState();
  sub_1D725AE8C();
  *(v1 + 16) = sub_1D725AE1C();
  return v1;
}

Swift::Void __swiftcall FeedServiceState.markGapOnScreen(_:)(Swift::Bool a1)
{
  type metadata accessor for FeedServiceState.GapState();
  swift_getWitnessTable();
  sub_1D725AE7C();
}

Swift::Void __swiftcall FeedServiceState.markNonGapOnScreen()()
{
  type metadata accessor for FeedServiceState.GapState();
  swift_getWitnessTable();
  sub_1D725AE6C();
}

char *sub_1D62E3DE4@<X0>(char *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (!*result)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

void *sub_1D62E3E3C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

uint64_t FeedServiceState.deinit()
{

  v1 = *(v0 + 48);

  return v0;
}

uint64_t FeedServiceState.__deallocating_deinit()
{
  FeedServiceState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D62E3F20()
{
  sub_1D5B63EB4(0, &qword_1EDF3B2C0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B63EB4(0, &qword_1EDF3B168, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EC885850 = result;
  return result;
}

uint64_t static Commands.Issue.openTableOfContents.getter()
{
  if (qword_1EC87D7D8 != -1)
  {
    swift_once();
  }
}

void sub_1D62E40B8()
{
  v0 = sub_1D725DC6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D7D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();

  v7 = [v6 bundleForClass_];
  sub_1D725811C();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    (*(v1 + 104))(v4, *MEMORY[0x1E69D7B48], v0);
    sub_1D725D3DC();
    swift_allocObject();
    sub_1D725D39C();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D62E4318()
{
  if (!qword_1EDF17C40)
  {
    type metadata accessor for SportsDataVisualizationResponseData();
    sub_1D62E4A90(&qword_1EDF15F90, type metadata accessor for SportsDataVisualizationResponseData);
    sub_1D62E4A90(&qword_1EDF15F98, type metadata accessor for SportsDataVisualizationResponseData);
    v0 = sub_1D725AEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C40);
    }
  }
}

uint64_t type metadata accessor for SportsDataVisualizationResponse()
{
  result = qword_1EDF091D0;
  if (!qword_1EDF091D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62E4444()
{
  sub_1D62E4318();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D62E44B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D62E4318();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62E4A2C(0, &qword_1EDF03908, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsDataVisualizationResponse();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D62E4974();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D62E4A90(&qword_1EDF17C48, sub_1D62E4318);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D62E49C8(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D62E475C(uint64_t a1)
{
  v2 = sub_1D62E4974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D62E4798(uint64_t a1)
{
  v2 = sub_1D62E4974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D62E47EC(void *a1)
{
  sub_1D62E4A2C(0, &qword_1EC885858, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D62E4974();
  sub_1D7264B5C();
  sub_1D62E4318();
  sub_1D62E4A90(&qword_1EC885860, sub_1D62E4318);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D62E4974()
{
  result = qword_1EDF09230;
  if (!qword_1EDF09230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09230);
  }

  return result;
}

uint64_t sub_1D62E49C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D62E4A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D62E4974();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponse.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D62E4A90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D62E4AEC()
{
  result = qword_1EC885868;
  if (!qword_1EC885868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885868);
  }

  return result;
}

unint64_t sub_1D62E4B44()
{
  result = qword_1EDF09220;
  if (!qword_1EDF09220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09220);
  }

  return result;
}

unint64_t sub_1D62E4B9C()
{
  result = qword_1EDF09228;
  if (!qword_1EDF09228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09228);
  }

  return result;
}

uint64_t sub_1D62E4BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 > 1)
  {
    if (v4 == 2)
    {
    }
  }

  else
  {
    v6 = sub_1D72646CC();

    if ((v6 & 1) == 0)
    {
      v5 = &unk_1F50F43D0;
    }
  }

  sub_1D725A7EC();
  v7 = sub_1D6E465F4();

  v8 = sub_1D5EEFCA0(v5, v7);

  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = v10;
  swift_unknownObjectRetain();
  PuzzleShareData.init(puzzleHistoryItem:)(v10, v15);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      swift_unknownObjectRetain();
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
  }

  else
  {
    v12 = sub_1D72646CC() ^ 1;
  }

  swift_unknownObjectRetain();

LABEL_13:
  v13 = v15[1];
  *(a2 + 8) = v15[0];
  *a2 = v9;
  *(a2 + 24) = v13;
  *(a2 + 40) = v16[0];
  *(a2 + 50) = *(v16 + 10);
  *(a2 + 66) = 13;
  *(a2 + 72) = v8;
  *(a2 + 80) = v9;
  *(a2 + 88) = v12 & 1 | 0x30;
  type metadata accessor for FormatAction();
  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatPuzzleBinding.Action.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E4E80()
{
  result = qword_1EC885870;
  if (!qword_1EC885870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885870);
  }

  return result;
}

unint64_t sub_1D62E4ED4(uint64_t a1)
{
  result = sub_1D62E4EFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E4EFC()
{
  result = qword_1EC885878;
  if (!qword_1EC885878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885878);
  }

  return result;
}

unint64_t sub_1D62E4F50(void *a1)
{
  a1[1] = sub_1D62E4F88();
  a1[2] = sub_1D62E4FDC();
  result = sub_1D62E4E80();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E4F88()
{
  result = qword_1EDF2C160;
  if (!qword_1EDF2C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C160);
  }

  return result;
}

unint64_t sub_1D62E4FDC()
{
  result = qword_1EDF0F998;
  if (!qword_1EDF0F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F998);
  }

  return result;
}

uint64_t sub_1D62E5070@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v51 = sub_1D72602FC();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v5);
  v50 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v49 = v41 - v9;
  v54 = type metadata accessor for FormatInspectionItem(0);
  v48 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v10);
  v12 = (v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D726032C();
  v14 = *(v13 + 16);
  if (v14)
  {
    v42 = a1;
    v43 = a2;
    v55 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v14, 0);
    v15 = v55;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = *(v16 + 64);
    v41[1] = v13;
    v19 = v13 + ((v18 + 32) & ~v18);
    v45 = *(v16 + 56);
    v46 = v17;
    v44 = v16 - 8;
    v47 = v16;
    v20 = v49;
    v21 = (v16 - 8);
    do
    {
      v52 = v15;
      v53 = v14;
      v22 = v51;
      v23 = v46;
      v46(v20, v19, v51);
      v24 = v50;
      v23(v50, v20, v22);
      *v12 = sub_1D72602DC();
      v12[1] = v25;
      v12[2] = 0;
      v12[3] = 0;
      v26 = (v12 + *(v54 + 24));
      v27 = v12;
      v28 = sub_1D72602EC();
      v30 = v29;
      v31 = *v21;
      (*v21)(v24, v22);
      v31(v20, v22);
      *v26 = v28;
      v26[1] = v30;
      v12 = v27;
      v32 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = *(*(v32 - 8) + 56);
      v34 = v32;
      v15 = v52;
      v33(v26, 0, 1, v34);
      v35 = v27 + *(v54 + 28);
      *v35 = 0;
      *(v35 + 8) = 0;
      *(v35 + 16) = -1;
      v55 = v15;
      v37 = *(v15 + 16);
      v36 = *(v15 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D6997AF0(v36 > 1, v37 + 1, 1);
        v15 = v55;
      }

      *(v15 + 16) = v37 + 1;
      sub_1D613ADAC(v27, v15 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37);
      v19 += v45;
      v14 = v53 - 1;
    }

    while (v53 != 1);
    v38 = sub_1D726035C();
    (*(*(v38 - 8) + 8))(v42, v38);

    a2 = v43;
  }

  else
  {

    v40 = sub_1D726035C();
    result = (*(*(v40 - 8) + 8))(a1, v40);
    v15 = MEMORY[0x1E69E7CC0];
  }

  *a2 = 0xD000000000000019;
  a2[1] = 0x80000001D73D10C0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v15;
  return result;
}

uint64_t sub_1D62E5478@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = sub_1D726090C();
  v4 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v53 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D726031C();
  v7 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v8);
  v51 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D726035C();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v11);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatInspectionItem(0);
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + 16);
  if (v17)
  {
    v40 = a2;
    v57 = MEMORY[0x1E69E7CC0];
    sub_1D6997AF0(0, v17, 0);
    v18 = v57;
    v20 = *(v10 + 16);
    v19 = v10 + 16;
    v21 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v39 = a1;
    v22 = a1 + v21;
    v44 = *(v19 + 56);
    v45 = v20;
    v42 = (v7 + 8);
    v43 = (v4 + 8);
    v41 = (v19 - 8);
    v46 = v19;
    v23 = v50;
    do
    {
      v55 = v18;
      v56 = v17;
      v24 = v49;
      v45(v49, v22, v23);
      v25 = v51;
      sub_1D726033C();
      *v16 = sub_1D726034C();
      v16[1] = v26;
      v16[2] = 0;
      v16[3] = 0;
      v27 = v48;
      v28 = (v16 + *(v48 + 24));
      v29 = v53;
      sub_1D726030C();
      v30 = sub_1D72608FC();
      v32 = v31;
      (*v43)(v29, v54);
      (*v42)(v25, v52);
      (*v41)(v24, v23);
      *v28 = v30;
      v28[1] = v32;
      v33 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(v28, 0, 1, v33);
      v34 = *(v27 + 28);
      v18 = v55;
      v35 = v16 + v34;
      *v35 = 0;
      *(v35 + 1) = 0;
      v35[16] = -1;
      v57 = v18;
      v37 = *(v18 + 16);
      v36 = *(v18 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D6997AF0(v36 > 1, v37 + 1, 1);
        v18 = v57;
      }

      *(v18 + 16) = v37 + 1;
      sub_1D613ADAC(v16, v18 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v37);
      v22 += v44;
      v17 = v56 - 1;
    }

    while (v56 != 1);

    a2 = v40;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *a2 = 0x79726F74736948;
  a2[1] = 0xE700000000000000;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v18;
  return result;
}

BOOL FCTagProviding.traits.getter@<W0>(uint64_t *a1@<X8>)
{
  if ([v1 asSports])
  {
    swift_unknownObjectRelease();
    v3 = 16777280;
  }

  else
  {
    v3 = 64;
  }

  if ([v1 isLocal])
  {
    v3 |= 0x2000000uLL;
  }

  v4 = [v1 isNewspaper];
  if (v4)
  {
    v3 |= 0x4000000uLL;
  }

  v5 = FCTagProviding.isTopic.getter(v4);
  if (v5)
  {
    v3 |= 0x8000000uLL;
  }

  result = FCTagProviding.isChannel.getter(v5);
  v7 = v3 | 0x10000000;
  if (!result)
  {
    v7 = v3;
  }

  *a1 = v7;
  return result;
}

uint64_t FCTagProviding.forceBasicTagMasthead.getter()
{
  v1 = [v0 asSports];
  if (v1 && (v2 = [v1 topLevelSportTagIdentifier], swift_unknownObjectRelease(), v2))
  {
    v3 = sub_1D726207C();
    v5 = v4;

    v6 = v3 == 0xD000000000000017 && 0x80000001D73D10E0 == v5;
    if (v6 || (sub_1D72646CC() & 1) != 0 || (v3 == 0xD000000000000017 ? (v7 = 0x80000001D73D1100 == v5) : (v7 = 0), v7))
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1D72646CC();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

id FCTagProviding.iconColor.getter()
{
  v1 = [v0 asSports];
  if (v1 && (v2 = [v1 sportsType], swift_unknownObjectRelease(), v2 == 4))
  {
    v3 = [objc_opt_self() systemGray2Color];

    return v3;
  }

  else
  {
    v5 = [v0 asSports];
    if (v5)
    {
      v6 = [v5 sportsTheme];
      if (v6)
      {
        v7 = [v6 sportsPrimaryColor];
        swift_unknownObjectRelease();
        if (v7)
        {
          v8 = [v7 ne_color];
          swift_unknownObjectRelease();

          return v8;
        }
      }

      v9 = [objc_opt_self() blackColor];
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = [v0 groupTitleColor];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 ne_color];
      }

      else
      {
        v11 = [v0 identifier];
        if (!v11)
        {
          sub_1D726207C();
          v11 = sub_1D726203C();
        }

        v12 = [objc_opt_self() nu:v11 safeColorForIdentifier:?];
      }

      v9 = v12;
    }

    return v9;
  }
}

id sub_1D62E5CE0()
{
  result = [v0 asSports];
  if (result)
  {
    v2 = result;
    if (([result sportsLeagueType] & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v3 = [v2 sportsSecondaryName];
      if (v3)
      {
LABEL_4:
        v4 = v3;
        v5 = sub_1D726207C();

        swift_unknownObjectRelease();
        return v5;
      }

      goto LABEL_10;
    }

    v6 = [v2 sportsType];
    if (v6 > 5)
    {
      if (v6 != 7)
      {
LABEL_10:
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else if (v6 != 1)
    {
      goto LABEL_10;
    }

    v3 = [v2 sportsSecondaryName];
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t FCTagProviding.recipeCatalogSearchURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if ([v1 hasRecipes])
  {
    v4 = objc_opt_self();
    sub_1D62E7F08(0, &qword_1EDF19BA0, MEMORY[0x1E6968178]);
    sub_1D7257B5C();
    *(swift_allocObject() + 16) = xmmword_1D7273AE0;
    sub_1D726207C();
    v5 = [v2 identifier];
    sub_1D726207C();

    sub_1D7257B2C();

    v6 = sub_1D726265C();

    v7 = [v4 nss:v6 NewsURLForRecipeCatalog:?];

    sub_1D72584EC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D72585BC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, v8, 1, v9);
}

uint64_t FCTagProviding.useSimpleShareTitle.getter()
{
  if ([v0 isPuzzleHub] & 1) != 0 || (objc_msgSend(v0, sel_isPuzzleType) & 1) != 0 || (objc_msgSend(v0, sel_isFoodHub))
  {
    return 1;
  }

  else
  {
    return [v0 isRecipeCatalog];
  }
}

uint64_t FCTagProviding.localizedTagType.getter()
{
  if (![v0 asSportsEvent])
  {
    if ([v0 isFoodHub] || objc_msgSend(v0, sel_isRecipeCatalog))
    {
      goto LABEL_4;
    }

    v6 = [v0 asSports];
    if (v6)
    {
      v7 = [v6 sportsType];
      v6 = swift_unknownObjectRelease();
      if (v7 > 5)
      {
        if (v7 <= 10 || v7 == 11)
        {
          goto LABEL_4;
        }

        goto LABEL_25;
      }

      if (v7 > 2)
      {
LABEL_4:
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v2 = [objc_opt_self() bundleForClass_];
        goto LABEL_5;
      }

      if (v7)
      {
        if (v7 == 1 || v7 == 2)
        {
          goto LABEL_4;
        }

LABEL_25:
        if (!FCTagProviding.isChannel.getter(v6) || ([v0 isLocal]) && (objc_msgSend(v0, sel_isPuzzleType))
        {
          return 0;
        }

        goto LABEL_4;
      }
    }

    if (!FCTagProviding.isChannel.getter(v6) || ([v0 isLocal] & 1) != 0)
    {
      [v0 isPuzzleType];
      type metadata accessor for Localized();
      v8 = swift_getObjCClassFromMetadata();
      v2 = [objc_opt_self() bundleForClass_];
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
  type metadata accessor for Localized();
  v1 = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
LABEL_5:
  v4 = sub_1D725811C();

  return v4;
}

BOOL sub_1D62E6A38(uint64_t a1, SEL *a2)
{
  v3 = [v2 *a2];
  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

uint64_t FCTagProviding.topKArticleListID.getter()
{
  result = [v0 feedIDForBin_];
  if (result)
  {
    v2 = result;
    v3 = sub_1D726207C();
    v5 = v4;

    MEMORY[0x1DA6F9910](v3, v5);

    return 21068;
  }

  return result;
}

void FallbackTagImageStyle.init(cornerRadius:tileColor:titleFont:padding:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = objc_opt_self();
  v11 = [v10 whiteColor];
  v12 = [a1 _isSimilarToColor_withinPercentage_];

  if (v12)
  {
    v13 = [v10 blackColor];

    a1 = v13;
  }

  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = a5;
}

uint64_t FCTagProviding.createTagImage(imageSize:style:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v9 = *a1;
  v11 = a1[1];
  v10 = a1[2];
  v12 = a1[3];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = v9;
  *(v14 + 48) = v11;
  *(v14 + 56) = v10;
  *(v14 + 64) = v12;
  *(v14 + 72) = v5;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1D62E7EB4;
  *(v15 + 24) = v14;
  v21[4] = sub_1D62E7ED0;
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D62E78B0;
  v21[3] = &block_descriptor_34;
  v16 = _Block_copy(v21);
  v17 = v11;
  v18 = v10;
  swift_unknownObjectRetain();

  v19 = [v13 imageWithActions_];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

void sub_1D62E6DD4(void *a1, void *a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v78 = a4;
  v80 = a8;
  v77 = a3;
  v13 = sub_1D725A61C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v19 = [v18 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = v21 <= 0.0;
  v23 = 1.0;
  if (!v22)
  {
    v24 = [v18 mainScreen];
    [v24 scale];
    v23 = v25;
  }

  v26 = 1.0 / v23;
  v81 = a5;
  v27 = a5 - 1.0 / v23;
  v28 = a6;
  v29 = a6 - 1.0 / v23;
  v83.origin.x = v26 * 0.5;
  v83.origin.y = v26 * 0.5;
  v83.size.width = v27;
  v83.size.height = a6 - v26;
  Width = CGRectGetWidth(v83);
  v84.origin.x = v26 * 0.5;
  v84.origin.y = v26 * 0.5;
  v84.size.width = v27;
  v84.size.height = v29;
  if (Width == CGRectGetHeight(v84) && (v85.origin.x = v26 * 0.5, v85.origin.y = v26 * 0.5, v85.size.width = v27, v85.size.height = v29, CGRectGetWidth(v85) * 0.5 == a7))
  {
    v31 = [objc_opt_self() bezierPathWithRoundedRect:v26 * 0.5 cornerRadius:{v26 * 0.5, v27, v29, a7}];
  }

  else
  {
    v31 = [objc_opt_self() bezierPathWithRoundedRect:-1 byRoundingCorners:v26 * 0.5 cornerRadii:{v26 * 0.5, v27, v29, a7, a7}];
  }

  v32 = v31;
  v33 = [a1 CGContext];
  CGContextSetLineWidth(v33, 1.0 / v26);

  v34 = [a1 CGContext];
  v79 = v32;
  v35 = [v32 CGPath];
  CGContextAddPath(v34, v35);

  v36 = [a1 CGContext];
  v37 = [a2 CGColor];
  CGContextSetStrokeColorWithColor(v36, v37);

  v38 = [a1 CGContext];
  v39 = [a2 CGColor];
  CGContextSetFillColorWithColor(v38, v39);

  v40 = [a1 CGContext];
  CGContextClosePath(v40);

  v41 = [a1 CGContext];
  (*(v14 + 104))(v17, *MEMORY[0x1E695EEB8], v13);
  sub_1D7262DBC();

  (*(v14 + 8))(v17, v13);
  v42 = sub_1D62E751C(v78);
  v43 = sub_1D62E7628();
  v44 = v28;
  if (v45)
  {
    v46 = v43;

    v76 = v46;
    v47 = v81;
  }

  else
  {
    v47 = v81;
    v76 = v42;
  }

  *v82 = a7;
  v82[1] = a2;
  v82[2] = v77;
  v48 = v80;
  *&v82[3] = v80;
  v49 = sub_1D62E7824(v82);
  v50 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v51 = [v50 init];
  [v51 setAlignment_];
  [v51 setLineBreakMode_];
  sub_1D62E7F08(0, &qword_1EDF194E0, sub_1D5C09DD4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7279970;
  v53 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v54 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 40) = v51;
  v55 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v54;
  *(inited + 72) = v55;
  v56 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 80) = v49;
  v57 = *MEMORY[0x1E69DB650];
  *(inited + 104) = v56;
  *(inited + 112) = v57;
  v58 = objc_opt_self();
  v59 = v53;
  v60 = v51;
  v61 = v55;
  v62 = v49;
  v63 = v57;
  v64 = [v58 whiteColor];
  *(inited + 144) = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 120) = v64;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v65 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v66 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D62E7FAC(&qword_1EDF1A8E0, type metadata accessor for Key);
  v67 = sub_1D7261D2C();

  v68 = [v65 initWithString:v66 attributes:v67];

  v69 = v47 - v48;
  sub_1D726312C();
  x = v86.origin.x;
  y = v86.origin.y;
  v72 = v86.size.width;
  height = v86.size.height;
  v74 = (v47 - (v47 - v48)) * 0.5;
  v75 = (v44 - CGRectGetHeight(v86)) * 0.5;
  v87.origin.x = x;
  v87.origin.y = y;
  v87.size.width = v72;
  v87.size.height = height;
  [v68 drawWithRect:1 options:0 context:{v74, v75, v69, CGRectGetHeight(v87)}];
}

uint64_t sub_1D62E751C(void *a1)
{
  [a1 tagType];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D725811C();

  return v3;
}

id sub_1D62E7628()
{
  v1 = sub_1D7257A4C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  result = sub_1D62E78FC();
  if (!v11)
  {
    v12 = [v0 displayName];
    sub_1D726207C();

    v13 = sub_1D726212C();
    v15 = v14;

    v24 = v13;
    v25 = v15;
    sub_1D725797C();
    sub_1D7257A0C();
    v16 = *(v2 + 8);
    v16(v9, v1);
    sub_1D5BF4D9C();
    v17 = sub_1D7263A4C();
    v19 = v18;
    v16(v5, v1);

    v20 = sub_1D5C73AB0(v17, v19);
    v22 = v21;

    if (v22)
    {
      v24 = v20;
      v25 = v22;
      v23 = sub_1D7263A0C();

      return v23;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1D62E7824(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = a1[3];
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = v1;
  v5 = v1;
  v6[3] = v3;
  result = sub_1D62E7E14(v6);
  if (!result)
  {

    return v5;
  }

  return result;
}

void sub_1D62E78B0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_1D62E78FC()
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v7, v8).n128_u64[0];
  v11 = &v43 - v10;
  result = [v0 asSports];
  if (result)
  {
    v13 = [result sportsType];
    swift_unknownObjectRelease();
    if (v13 == 4)
    {
      v14 = [v0 name];
      sub_1D726207C();

      v15 = sub_1D726212C();
      v17 = v16;

      *&v45 = v15;
      *(&v45 + 1) = v17;
      sub_1D5BF4D9C();
      v18 = sub_1D7263ACC();

      v19 = *(v18 + 16);
      if (!v19)
      {

        v21 = MEMORY[0x1E69E7CC0];
        goto LABEL_14;
      }

      if (v19 >= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = *(v18 + 16);
      }

      v48 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v20, 0);
      v21 = v48;
      v22 = *(v18 + 48);
      v23 = *(v18 + 56);
      v45 = *(v18 + 32);
      v46 = v22;
      v47 = v23;

      sub_1D725797C();
      sub_1D7257A0C();
      v24 = v3[1];
      ++v3;
      v24(v11, v2);
      sub_1D61A0208();
      v25 = sub_1D7263A4C();
      v44 = v26;
      v24(v6, v2);

      v48 = v21;
      v1 = v21[2];
      v27 = v21[3];
      v28 = (v1 + 1);
      if (v1 >= v27 >> 1)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v21[2] = v28;
        v29 = &v21[2 * v1];
        v30 = v44;
        v29[4] = v25;
        v29[5] = v30;
        if (v19 != 1)
        {
          v31 = *(v18 + 80);
          v32 = *(v18 + 88);
          v45 = *(v18 + 64);
          v46 = v31;
          v47 = v32;

          sub_1D725797C();
          sub_1D7257A0C();
          v1 = *v3;
          (*v3)(v11, v2);
          sub_1D61A0208();
          v11 = sub_1D7263A4C();
          v34 = v33;
          (v1)(v6, v2);

          v48 = v21;
          v6 = v21[2];
          v35 = v21[3];
          v2 = v6 + 1;
          if (v6 >= v35 >> 1)
          {
            sub_1D5BFC364((v35 > 1), v6 + 1, 1);
            v21 = v48;
          }

          v21[2] = v2;
          v36 = &v21[2 * v6];
          v36[4] = v11;
          v36[5] = v34;
        }

LABEL_14:
        if (v21[2] != 2)
        {
          break;
        }

        v18 = 0;
        v25 = MEMORY[0x1E69E7CC0];
        v28 = v21 + 5;
        while (1)
        {
          if (v18 == 2)
          {

            *&v45 = v25;
            sub_1D62E7F5C();
            sub_1D62E7FAC(&qword_1EC885888, sub_1D62E7F5C);
            sub_1D726234C();
            v41 = sub_1D726213C();

            return v41;
          }

          v27 = v21[2];
          if (v18 >= v27)
          {
            break;
          }

          ++v18;
          v2 = *(v28 - 1);
          v11 = *v28;
          v28 += 2;
          v37 = HIBYTE(v11) & 0xF;
          if ((v11 & 0x2000000000000000) == 0)
          {
            v37 = v2 & 0xFFFFFFFFFFFFLL;
          }

          if (v37)
          {

            v2 = sub_1D726233C();
            v6 = v38;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_1D699347C(0, *(v25 + 16) + 1, 1, v25);
            }

            v1 = *(v25 + 16);
            v39 = *(v25 + 24);
            v11 = v1 + 1;
            if (v1 >= v39 >> 1)
            {
              v25 = sub_1D699347C((v39 > 1), v1 + 1, 1, v25);
            }

            *(v25 + 16) = v11;
            v40 = v25 + 16 * v1;
            *(v40 + 32) = v2;
            *(v40 + 40) = v6;
            v28 = &v21[2 * v18 + 5];
          }
        }

        __break(1u);
LABEL_31:
        v43 = v25;
        v42 = v28;
        sub_1D5BFC364((v27 > 1), v28, 1);
        v28 = v42;
        v25 = v43;
        v21 = v48;
      }
    }

    return 0;
  }

  return result;
}

id sub_1D62E7E14(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = [v1 asSports];
  if (result)
  {
    v4 = [result sportsType];
    swift_unknownObjectRelease();
    if (v4 == 4)
    {
      [v2 pointSize];
      return [v2 fontWithSize_];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1D62E7F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D62E7F5C()
{
  if (!qword_1EC885880)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885880);
    }
  }
}

uint64_t sub_1D62E7FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FormatWorkspacePackage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatWorkspacePackage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

unint64_t sub_1D62E8070(uint64_t a1)
{
  result = sub_1D62E8098();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62E8098()
{
  result = qword_1EC885890;
  if (!qword_1EC885890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885890);
  }

  return result;
}

unint64_t sub_1D62E80EC(void *a1)
{
  a1[1] = sub_1D60CEE3C();
  a1[2] = sub_1D60CEE90();
  result = sub_1D62E8124();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62E8124()
{
  result = qword_1EC885898;
  if (!qword_1EC885898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885898);
  }

  return result;
}

uint64_t ContentAvailability.description.getter()
{
  v1 = *v0;
  if (v1 == 2)
  {
    return 0x6C62616C69617641;
  }

  sub_1D7263D4C();

  if (v1)
  {
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    v3 = 0x6863614320746F4ELL;
  }

  if (v1)
  {
    v4 = 0x80000001D73D15E0;
  }

  else
  {
    v4 = 0xEA00000000006465;
  }

  MEMORY[0x1DA6F9910](v3, v4);

  return 0xD000000000000015;
}

uint64_t ContentAvailability.UnavailableReason.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x6863614320746F4ELL;
  }
}

uint64_t ContentAvailability.UnavailableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D62E8370()
{
  result = qword_1EC8858A0;
  if (!qword_1EC8858A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8858A0);
  }

  return result;
}

uint64_t type metadata accessor for ContentValidationType()
{
  result = qword_1EDF0E6B8;
  if (!qword_1EDF0E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D62E846C()
{
  sub_1D62E85D4();
  if (v0 <= 0x3F)
  {
    sub_1D5B5534C(319, &qword_1EDF3C720);
    if (v1 <= 0x3F)
    {
      sub_1D5B5534C(319, &qword_1EDF3C770);
      if (v2 <= 0x3F)
      {
        sub_1D5B5534C(319, &qword_1EDF3C750);
        if (v3 <= 0x3F)
        {
          sub_1D5B5534C(319, &qword_1EDF3C700);
          if (v4 <= 0x3F)
          {
            sub_1D5B5A498(319, &qword_1EDF3C6C0);
            if (v5 <= 0x3F)
            {
              type metadata accessor for FeedItem(319);
              if (v6 <= 0x3F)
              {
                sub_1D5B5A498(319, &qword_1EDF3C6B0);
                if (v7 <= 0x3F)
                {
                  sub_1D5BBE0A8();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D62E85D4()
{
  if (!qword_1EDF05568)
  {
    type metadata accessor for FCFeedDescriptorConfiguration(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05568);
    }
  }
}

char *sub_1D62E8640(uint64_t a1)
{
  v141 = a1;
  v1 = type metadata accessor for DebugFormatVersioningModeItem();
  v145 = *(v1 - 8);
  v146 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v133 = (&v131 - v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v131 - v10);
  v12 = MEMORY[0x1E69E6720];
  sub_1D62EAFF0(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v134 = &v131 - v15;
  v16 = sub_1D725BD1C();
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62EAFF0(0, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata, v12);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v140 = &v131 - v23;
  v24 = type metadata accessor for DebugFormatFileDirectoryMetadata(0);
  *&v137 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v142 = &v131 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF31EC0 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v138 = v26;
    v139 = v4;
    v28 = sub_1D62EAF44();
    v29 = sub_1D62EAFA8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
    v136 = v28;
    v143 = v16;
    v135 = v29;
    v26 = sub_1D72626DC();
    v30 = v26;
    v4 = *(v26 + 16);
    v31 = &qword_1EDF3C000;
    if (!v4)
    {
      break;
    }

    v32 = 0;
    v33 = v26 + 32;
    v144 = MEMORY[0x1E69E7CC0];
    v16 = (v17 + 8);
    while (v32 < *(v30 + 16))
    {
      sub_1D5B68374(v33, &v150);
      v34 = v151;
      v35 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, v151);
      sub_1D5D2F260(v34, v35);
      if (v31[330] != -1)
      {
        swift_once();
      }

      v17 = v143;
      __swift_project_value_buffer(v143, qword_1EDF3CA58);
      sub_1D62EAFA8(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
      v36 = sub_1D7261FBC();
      (*v16)(v20, v17);
      if (v36)
      {
        v26 = __swift_destroy_boxed_opaque_existential_1(&v150);
      }

      else
      {
        sub_1D5B63F14(&v150, &v147);
        v17 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6999154(0, *(v17 + 16) + 1, 1);
          v17 = v153;
        }

        v39 = *(v17 + 16);
        v38 = *(v17 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D6999154((v38 > 1), v39 + 1, 1);
          v17 = v153;
        }

        *(v17 + 16) = v39 + 1;
        v144 = v17;
        v26 = sub_1D5B63F14(&v147, v17 + 40 * v39 + 32);
        v31 = &qword_1EDF3C000;
      }

      ++v32;
      v33 += 40;
      if (v4 == v32)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_63:
    v130 = v26;
    swift_once();
    v26 = v130;
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_16:

  v40 = v140;
  sub_1D725B31C();

  v41 = v138;
  if ((*(v137 + 48))(v40, 1, v138) == 1)
  {
    sub_1D62EB054(v40, &unk_1EC8858E0, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
    v42 = *(v145 + 80);
    v43 = (v42 + 32) & ~v42;
    v145 = *(v145 + 72);
    v44 = v43 + v145;
    v140 = (v42 | 7);
    v141 = v45;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1D7273AE0;
    swift_storeEnumTagMultiPayload();
    v47 = sub_1D6993490(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    v142 = v47;
    v50 = v139;
    if (v49 >= v48 >> 1)
    {
      v142 = sub_1D6993490((v48 > 1), v49 + 1, 1, v142);
    }

    v51 = v142;
    *(v142 + 2) = v49 + 1;
    v52 = &v51[40 * v49];
    *(v52 + 2) = xmmword_1D72B7880;
    *(v52 + 6) = 0;
    *(v52 + 7) = 0;
    *(v52 + 8) = v46;
  }

  else
  {
    v53 = v142;
    sub_1D62EB124(v40, v142, type metadata accessor for DebugFormatFileDirectoryMetadata);
    sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
    v54 = *(v145 + 80);
    v55 = (v54 + 32) & ~v54;
    v145 = *(v145 + 72);
    v140 = (v54 | 7);
    v141 = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7274590;
    *&v137 = v55;
    v58 = v57 + v55;
    v59 = &v53[*(v41 + 24)];
    v60 = *v59;
    v61 = *(v59 + 1);
    strcpy(v58, "Remote Branch");
    *(v58 + 14) = -4864;
    *(v58 + 16) = v60;
    *(v58 + 24) = v61;
    swift_storeEnumTagMultiPayload();
    v62 = &v53[*(v41 + 28)];
    if (v62[8])
    {

      v63 = 0;
      v64 = 0;
    }

    else
    {
      *&v150 = *v62;
      sub_1D5E4049C();

      v63 = sub_1D7263ADC();
    }

    v65 = v145;
    v66 = v58 + v145;
    strcpy((v58 + v145), "Commit Delta");
    *(v66 + 13) = 0;
    *(v66 + 14) = -5120;
    *(v66 + 16) = v63;
    *(v66 + 24) = v64;
    swift_storeEnumTagMultiPayload();
    v67 = v58 + 2 * v65;
    v68 = sub_1D725BC9C();
    strcpy(v67, "Format Version");
    *(v67 + 15) = -18;
    *(v67 + 16) = v68;
    *(v67 + 24) = v69;
    swift_storeEnumTagMultiPayload();
    v70 = v58 + 3 * v65;
    v71 = sub_1D725BC9C();
    strcpy(v70, "Server Version");
    *(v70 + 15) = -18;
    *(v70 + 16) = v71;
    *(v70 + 24) = v72;
    swift_storeEnumTagMultiPayload();
    v73 = sub_1D6993490(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v75 = *(v73 + 2);
    v74 = *(v73 + 3);
    if (v75 >= v74 >> 1)
    {
      v73 = sub_1D6993490((v74 > 1), v75 + 1, 1, v73);
    }

    v50 = v139;
    sub_1D62EB0C4(v142, type metadata accessor for DebugFormatFileDirectoryMetadata);
    *(v73 + 2) = v75 + 1;
    v142 = v73;
    v76 = &v73[40 * v75];
    *(v76 + 2) = xmmword_1D72B7880;
    *(v76 + 6) = 0xD000000000000056;
    *(v76 + 7) = 0x80000001D73D1770;
    *(v76 + 8) = v57;
    v43 = v137;
    v44 = v137 + v145;
  }

  sub_1D62EAFF0(0, &qword_1EC8858F0, type metadata accessor for DebugFormatVersioningModeItem, MEMORY[0x1E69E6F90]);
  v138 = v44;
  v77 = swift_allocObject();
  v137 = xmmword_1D7273AE0;
  *(v77 + 16) = xmmword_1D7273AE0;
  type metadata accessor for FormatVersioningModeSelection(0);
  swift_storeEnumTagMultiPayload();
  v78 = v43;
  swift_storeEnumTagMultiPayload();
  v79 = v144;
  v80 = *(v144 + 16);
  v81 = MEMORY[0x1E69E7CC0];
  if (v80)
  {
    v132 = v77;
    v153 = MEMORY[0x1E69E7CC0];
    sub_1D6999104(0, v80, 0);
    v81 = v153;
    v82 = v79 + 32;
    v83 = v80;
    do
    {
      sub_1D5B68374(v82, &v150);
      sub_1D5B68374(&v150, &v147);
      v84 = v148;
      v85 = v149;
      __swift_project_boxed_opaque_existential_1(&v147, v148);
      *v11 = sub_1D722A00C(v84, v85);
      v11[1] = v86;
      v87 = v148;
      v88 = v149;
      __swift_project_boxed_opaque_existential_1(&v147, v148);
      type metadata accessor for FormatVersioningModeRelease(0);
      sub_1D5D2F260(v87, v88);
      __swift_destroy_boxed_opaque_existential_1(&v150);
      __swift_destroy_boxed_opaque_existential_1(&v147);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v153 = v81;
      v90 = *(v81 + 16);
      v89 = *(v81 + 24);
      if (v90 >= v89 >> 1)
      {
        sub_1D6999104(v89 > 1, v90 + 1, 1);
        v81 = v153;
      }

      *(v81 + 16) = v90 + 1;
      sub_1D62EB124(v11, v81 + v78 + v90 * v145, type metadata accessor for DebugFormatVersioningModeItem);
      v82 += 40;
      --v83;
    }

    while (v83);
    v50 = v139;
    v77 = v132;
  }

  *&v150 = v77;
  sub_1D6987AFC(v81);
  v91 = v150;
  v93 = v142;
  v92 = v143;
  v95 = *(v142 + 2);
  v94 = *(v142 + 3);
  if (v95 >= v94 >> 1)
  {
    v93 = sub_1D6993490((v94 > 1), v95 + 1, 1, v142);
  }

  *(v93 + 2) = v95 + 1;
  v96 = &v93[40 * v95];
  *(v96 + 2) = xmmword_1D72B7890;
  *(v96 + 6) = 0;
  *(v96 + 7) = 0;
  *(v96 + 8) = v91;
  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v92, qword_1EDF3CA58);
  v97 = v134;
  sub_1D725BD0C();
  v98 = sub_1D725B17C();
  if ((*(*(v98 - 8) + 48))(v97, 1, v98) == 1)
  {

    sub_1D62EB054(v97, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
  }

  else
  {
    sub_1D62EB054(v97, &unk_1EDF43AB0, MEMORY[0x1E69D6638]);
    v99 = swift_allocObject();
    *(v99 + 16) = v137;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    if (v80)
    {
      v142 = v93;
      v153 = MEMORY[0x1E69E7CC0];
      sub_1D6999104(0, v80, 0);
      v100 = v153;
      v101 = v144 + 32;
      v102 = v133;
      do
      {
        sub_1D5B68374(v101, &v150);
        sub_1D5B68374(&v150, &v147);
        v103 = v148;
        v104 = v149;
        __swift_project_boxed_opaque_existential_1(&v147, v148);
        *v102 = sub_1D722A00C(v103, v104);
        v102[1] = v105;
        v106 = v148;
        v107 = v149;
        __swift_project_boxed_opaque_existential_1(&v147, v148);
        type metadata accessor for FormatVersioningModeRelease(0);
        sub_1D5D2F260(v106, v107);
        __swift_destroy_boxed_opaque_existential_1(&v150);
        __swift_destroy_boxed_opaque_existential_1(&v147);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v153 = v100;
        v109 = *(v100 + 16);
        v108 = *(v100 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_1D6999104(v108 > 1, v109 + 1, 1);
          v102 = v133;
          v100 = v153;
        }

        *(v100 + 16) = v109 + 1;
        sub_1D62EB124(v102, v100 + v78 + v109 * v145, type metadata accessor for DebugFormatVersioningModeItem);
        v101 += 40;
        --v80;
      }

      while (v80);

      v50 = v139;
      v93 = v142;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    *&v150 = v99;
    sub_1D6987AFC(v100);
    v110 = v150;
    v112 = *(v93 + 2);
    v111 = *(v93 + 3);
    if (v112 >= v111 >> 1)
    {
      v93 = sub_1D6993490((v111 > 1), v112 + 1, 1, v93);
    }

    *(v93 + 2) = v112 + 1;
    v113 = &v93[40 * v112];
    *(v113 + 2) = xmmword_1D72B78A0;
    *(v113 + 6) = 0xD000000000000081;
    *(v113 + 7) = 0x80000001D73D16E0;
    *(v113 + 8) = v110;
  }

  if (qword_1EDF31F18 != -1)
  {
    swift_once();
  }

  v114 = sub_1D72626DC();
  v115 = *(v114 + 16);
  if (v115)
  {
    v142 = v93;
    *&v147 = MEMORY[0x1E69E7CC0];
    sub_1D6999104(0, v115, 0);
    v116 = v147;
    v117 = v114 + 32;
    do
    {
      sub_1D5B68374(v117, &v150);
      v118 = v151;
      v119 = v152;
      __swift_project_boxed_opaque_existential_1(&v150, v151);
      sub_1D5D2F260(v118, v119);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(&v150);
      *&v147 = v116;
      v121 = *(v116 + 16);
      v120 = *(v116 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_1D6999104(v120 > 1, v121 + 1, 1);
        v116 = v147;
      }

      *(v116 + 16) = v121 + 1;
      sub_1D62EB124(v50, v116 + v78 + v121 * v145, type metadata accessor for DebugFormatVersioningModeItem);
      v117 += 40;
      --v115;
    }

    while (v115);

    v93 = v142;
  }

  else
  {

    v116 = MEMORY[0x1E69E7CC0];
  }

  v123 = *(v93 + 2);
  v122 = *(v93 + 3);
  if (v123 >= v122 >> 1)
  {
    v93 = sub_1D6993490((v122 > 1), v123 + 1, 1, v93);
  }

  *(v93 + 2) = v123 + 1;
  v124 = &v93[40 * v123];
  *(v124 + 2) = xmmword_1D72B78B0;
  *(v124 + 6) = 0;
  *(v124 + 7) = 0;
  *(v124 + 8) = v116;
  v125 = swift_allocObject();
  *(v125 + 16) = v137;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v127 = *(v93 + 2);
  v126 = *(v93 + 3);
  if (v127 >= v126 >> 1)
  {
    v93 = sub_1D6993490((v126 > 1), v127 + 1, 1, v93);
  }

  *(v93 + 2) = v127 + 1;
  v128 = &v93[40 * v127];
  *(v128 + 4) = 0;
  *(v128 + 5) = 0;
  *(v128 + 6) = 0xD000000000000039;
  *(v128 + 7) = 0x80000001D73D16A0;
  *(v128 + 8) = v125;
  return v93;
}

id sub_1D62E9930()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  result = [v0 view];
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    v6 = *&v1[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView];
    [v6 setDataSource_];
    [v6 setDelegate_];
    [v6 setAlwaysBounceVertical_];
    v7 = [v4 secondaryLabelColor];
    [v6 setTintColor_];

    v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v6 setTableFooterView_];

    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for KeyValueTableViewCell();
    sub_1D7262DAC();
    type metadata accessor for DebugJournalTableViewCell();
    sub_1D7262DAC();
    v9 = [v1 navigationItem];
    v10 = sub_1D726203C();
    [v9 setTitle_];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview_];

      sub_1D725B33C();

      sub_1D725B35C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D62E9BE0(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections) = sub_1D62E8640(*(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_editor));

  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView);

  return [v2 reloadData];
}

unint64_t sub_1D62E9F98()
{
  v1 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v68 - v7;
  v9 = type metadata accessor for DebugFormatVersioningModeItem();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7258DAC();
  result = sub_1D7258D7C();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v16 = *(v0 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (v14 >= *(v16 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = *(v16 + 40 * v14 + 64);
  if (result >= *(v17 + 16))
  {
LABEL_55:
    __break(1u);
    return result;
  }

  sub_1D62EB18C(v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v13, type metadata accessor for DebugFormatVersioningModeItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *(v13 + 3);
      v68[1] = *(v13 + 2);
      type metadata accessor for KeyValueTableViewCell();
      v20 = sub_1D7262D8C();
      v21 = [v20 textLabel];
      if (v21)
      {
        v22 = v21;
        v23 = [objc_opt_self() systemFontOfSize_];
        [v22 setFont_];
      }

      v24 = [v20 textLabel];
      if (v24)
      {
        v25 = v24;
        v26 = [objc_opt_self() labelColor];
        [v25 setTextColor_];
      }

      v27 = [v20 textLabel];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D726203C();

        [v28 setText_];
      }

      else
      {
      }

      v51 = [v20 detailTextLabel];
      if (v51)
      {
        v52 = v51;
        v53 = [objc_opt_self() systemFontOfSize_];
        [v52 setFont_];
      }

      v54 = [v20 detailTextLabel];
      if (v54)
      {
        v55 = v54;
        v56 = [objc_opt_self() secondaryLabelColor];
        [v55 setTextColor_];
      }

      v57 = [v20 detailTextLabel];
      if (v57)
      {
        v58 = v57;
        [v57 setNumberOfLines_];
      }

      v59 = [v20 detailTextLabel];
      if (v59)
      {
        v60 = v59;
        if (v19)
        {
          v61 = [objc_opt_self() secondaryLabelColor];
        }

        else
        {
          sub_1D5C0B9F0();
          v61 = sub_1D72635DC();
        }

        v62 = v61;
        [v60 setTextColor_];
      }

      v63 = [v20 detailTextLabel];
      if (v63)
      {
        v64 = v63;
        v65 = sub_1D726203C();

        [v64 &selRef_eventLeagueTag];
      }

      else
      {
      }

      [v20 setAccessoryType_];
      [v20 setSelectionStyle_];
    }

    else
    {
      type metadata accessor for DebugJournalTableViewCell();
      v20 = sub_1D7262D8C();
      [*&v20[OBJC_IVAR____TtC8NewsFeed25DebugJournalTableViewCell_activityIndicatorView] startAnimating];
    }
  }

  else
  {
    sub_1D62EB124(v13, v8, type metadata accessor for FormatVersioningModeSelection);
    type metadata accessor for SubtitleTableViewCell();
    v20 = sub_1D7262D8C();
    v30 = [v20 textLabel];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() systemFontOfSize_];
      [v31 setFont_];
    }

    v33 = [v20 textLabel];
    if (v33)
    {
      v34 = v33;
      v35 = [objc_opt_self() labelColor];
      [v34 setTextColor_];
    }

    v36 = [v20 textLabel];
    if (v36)
    {
      v37 = v36;
      sub_1D60D963C();
      v38 = sub_1D726203C();

      [v37 setText_];
    }

    v39 = [v20 detailTextLabel];
    if (v39)
    {
      v40 = v39;
      v41 = [objc_opt_self() systemFontOfSize_];
      [v40 setFont_];
    }

    v42 = [v20 detailTextLabel];
    if (v42)
    {
      v43 = v42;
      v44 = [objc_opt_self() secondaryLabelColor];
      [v43 setTextColor_];
    }

    v45 = [v20 detailTextLabel];
    if (v45)
    {
      v46 = v45;
      [v45 setNumberOfLines_];
    }

    v47 = [v20 detailTextLabel];
    if (v47)
    {
      v48 = v47;
      sub_1D60D9BFC();
      if (v49)
      {
        v50 = sub_1D726203C();
      }

      else
      {
        v50 = 0;
      }

      [v48 setText_];
    }

    sub_1D725972C();

    v66 = _s8NewsFeed29FormatVersioningModeSelectionO2eeoiySbAC_ACtFZ_0(v8, v4);
    sub_1D62EB0C4(v4, type metadata accessor for FormatVersioningModeSelection);
    if (v66)
    {
      v67 = 3;
    }

    else
    {
      v67 = 0;
    }

    [v20 setAccessoryType_];
    [v20 setSelectionStyle_];

    sub_1D62EB0C4(v8, type metadata accessor for FormatVersioningModeSelection);
  }

  return v20;
}

unint64_t sub_1D62EA944(void *a1)
{
  v3 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for DebugFormatVersioningModeItem();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7258DAC();
  result = sub_1D7258D7C();
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = *(v1 + OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections);
  if (v20 >= *(v22 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v22 + 40 * v20 + 64);
  if (result >= *(v23 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D62EB18C(v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * result, v19, type metadata accessor for DebugFormatVersioningModeItem);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v24 = type metadata accessor for DebugFormatVersioningModeItem;
    v25 = v19;
  }

  else
  {
    sub_1D62EB124(v19, v14, type metadata accessor for FormatVersioningModeSelection);
    sub_1D62EB18C(v14, v10, type metadata accessor for FormatVersioningModeSelection);
    sub_1D62EB18C(v10, v6, type metadata accessor for FormatVersioningModeSelection);

    sub_1D725973C();

    sub_1D62EB0C4(v10, type metadata accessor for FormatVersioningModeSelection);
    [a1 reloadData];
    v25 = v14;
    v24 = type metadata accessor for FormatVersioningModeSelection;
  }

  return sub_1D62EB0C4(v25, v24);
}

uint64_t sub_1D62EACFC()
{
  sub_1D725BD1C();
  sub_1D62EAFA8(&qword_1EDF43A50, MEMORY[0x1E69D6B38]);
  return sub_1D7261F4C() & 1;
}

id sub_1D62EAD84(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_tableView;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController__currentMode;
  if (qword_1EC87D510 != -1)
  {
    swift_once();
  }

  sub_1D62EAEB0();
  swift_allocObject();

  *&v2[v6] = sub_1D725977C();
  *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_editor] = a1;

  *&v2[OBJC_IVAR____TtC8NewsFeed39DebugFormatVersioningModeViewController_sections] = sub_1D62E8640(v7);
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D62EAEB0()
{
  if (!qword_1EC88DE70)
  {
    type metadata accessor for FormatVersioningModeSelection(255);
    sub_1D62EAFA8(&unk_1EC8858D0, type metadata accessor for FormatVersioningModeSelection);
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DE70);
    }
  }
}

unint64_t sub_1D62EAF44()
{
  result = qword_1EDF331B0;
  if (!qword_1EDF331B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF331B0);
  }

  return result;
}

uint64_t sub_1D62EAFA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D62EAFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D62EB054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D62EAFF0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D62EB0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D62EB124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D62EB18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FeedBannerAdViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D62EBCE4(0, &qword_1EDF3A970, MEMORY[0x1E69B4338]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v8 - v4;
  memset(v8, 0, sizeof(v8));
  v9 = 1;
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  v6 = sub_1D7260C5C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1D5BF15B4();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t FeedBannerAdViewLayout.Attributes.bannerAdViewLayoutAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedBannerAdViewLayout.Attributes(0) + 20);
  v4 = sub_1D7260C5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D62EB3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D73D1850 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D62EB498(uint64_t a1)
{
  v2 = sub_1D5BDD78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D62EB4D4(uint64_t a1)
{
  v2 = sub_1D5BDD78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedBannerAdViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5BF1428(0, &qword_1EC8858F8, sub_1D5BDD78C, &type metadata for FeedBannerAdViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BDD78C();
  sub_1D7264B5C();
  v11 = v3[1];
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA96C(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    type metadata accessor for FeedBannerAdViewLayout.Attributes(0);
    LOBYTE(v13[0]) = 1;
    sub_1D7260C5C();
    sub_1D5BEA96C(&qword_1EC885900, MEMORY[0x1E69B4338]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D62EB74C(uint64_t a1)
{
  v2 = sub_1D5BEA96C(&qword_1EC885918, type metadata accessor for FeedBannerAdViewLayout.Attributes);

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D62EB7D0()
{
  sub_1D5BEA96C(&qword_1EDF37260, type metadata accessor for FeedBannerAdViewLayout.Attributes);

  return sub_1D725A24C();
}

void sub_1D62EB8F8()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1D7260C5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D62EB9A4()
{
  result = type metadata accessor for FeedBannerAd();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D62EBA24()
{
  result = qword_1EC885910;
  if (!qword_1EC885910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885910);
  }

  return result;
}

uint64_t sub_1D62EBA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5BF1428(0, &qword_1EDF3BF18, sub_1D5C20C7C, &type metadata for FeedBannerAdViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v20[-v12];
  sub_1D62EBCE4(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v20[-v16];
  v24 = a1;
  v18 = sub_1D7259B8C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v21 = a2;
  v22 = a3;
  v23 = a4;
  (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  sub_1D5C20CD0(0);
  sub_1D5BEA96C(&qword_1EDF3C020, sub_1D5C20CD0);
  sub_1D7259A1C();
  (*(v10 + 8))(v13, v9);
  return sub_1D5C18FC0(v17);
}

void sub_1D62EBCE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D62EBD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7260BCC();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  sub_1D5C20DC8();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BF1428(0, &qword_1EDF3BF18, sub_1D5C20C7C, &type metadata for FeedBannerAdViewLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v26 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v25 - v16;
  sub_1D62EBCE4(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v25 - v20;
  v29[6] = a1;
  v22 = sub_1D7259B8C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v25[1] = swift_getKeyPath();
  (*(v14 + 104))(v17, *MEMORY[0x1E69D74A8], v13);
  v29[5] = *(a2 + 32);
  v29[3] = type metadata accessor for FeedBannerAd();
  v29[4] = sub_1D5BEA96C(qword_1EDF42200, type metadata accessor for FeedBannerAd);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_1D5C20ED4(a3, boxed_opaque_existential_1);
  type metadata accessor for FeedLayoutSolverOptions(0);

  sub_1D7260BBC();
  sub_1D5BF15B4();
  sub_1D7260CBC();
  sub_1D5C20C7C();
  sub_1D5BEA96C(&qword_1EDF3C188, sub_1D5BF15B4);
  sub_1D5BEA96C(&unk_1EDF3A958, MEMORY[0x1E69B4388]);
  sub_1D7259D2C();
  sub_1D5C18340(0);
  sub_1D5BEA96C(&qword_1EDF3C200, sub_1D5C18340);
  sub_1D7259A3C();

  (*(v27 + 8))(v11, v28);
  (*(v14 + 8))(v17, v26);
  return sub_1D5C18FC0(v21);
}

uint64_t sub_1D62EC1FC()
{
  v2 = *v0;
  if (*(v0 + 16) && *(v0 + 16) != 1)
  {
    v11 = *(v0 + 8);
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v8 = v7();
    v9 = sub_1D5E02AFC(v8, v2);

    if (!v1)
    {
      v10 = v7();
      sub_1D5E02AFC(v10, v11);

      return *&v9;
    }
  }

  else
  {
    v3 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v4 = v3();
    v5 = sub_1D5E02AFC(v4, v2);

    if (!v1)
    {
      return *&v5;
    }
  }

  return result;
}

id sub_1D62EC37C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return sub_1D726365C();
    }

    v7 = a1;
    [a1 size];
    if (v4 != 0.0)
    {
LABEL_10:
      [v7 size];
      [v7 size];
      return sub_1D726365C();
    }
  }

  else
  {
    v7 = a1;
    [a1 size];
    if (v5 != 0.0)
    {
      goto LABEL_10;
    }
  }

  return v7;
}

BOOL _s8NewsFeed21FormatBundleImageSizeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1D5E433E0(*a2, *(a2 + 8), 0);
      sub_1D5E433E0(v3, v2, 0);
      v8 = sub_1D633A310(v3, v6);
      sub_1D5E43440(v3, v2, 0);
      v9 = v6;
      v10 = v5;
      v11 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      sub_1D5E433E0(*a2, *(a2 + 8), 1u);
      sub_1D5E433E0(v3, v2, 1u);
      LOBYTE(v8) = sub_1D633A310(v3, v6);
      sub_1D5E43440(v3, v2, 1u);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_7:
      sub_1D5E43440(v9, v10, v11);
      return v8 & 1;
    }

    goto LABEL_12;
  }

  if (v7 != 2)
  {
LABEL_12:
    sub_1D5E433E0(*a2, *(a2 + 8), v7);
    sub_1D5E433E0(v3, v2, v4);
    sub_1D5E43440(v3, v2, v4);
    v14 = v6;
    v15 = v5;
    v16 = v7;
LABEL_13:
    sub_1D5E43440(v14, v15, v16);
    return 0;
  }

  sub_1D5E433E0(*a2, *(a2 + 8), 2u);
  sub_1D5E433E0(v3, v2, 2u);
  sub_1D5E433E0(v6, v5, 2u);
  sub_1D5E433E0(v3, v2, 2u);
  if ((sub_1D633A310(v3, v6) & 1) == 0)
  {
    sub_1D5E43440(v3, v2, 2u);
    sub_1D5E43440(v6, v5, 2u);
    sub_1D5E43440(v6, v5, 2u);
    v14 = v3;
    v15 = v2;
    v16 = 2;
    goto LABEL_13;
  }

  v13 = sub_1D633A310(v2, v5);
  sub_1D5E43440(v3, v2, 2u);
  sub_1D5E43440(v6, v5, 2u);
  sub_1D5E43440(v6, v5, 2u);
  sub_1D5E43440(v3, v2, 2u);
  return (v13 & 1) != 0;
}

unint64_t sub_1D62EC6F4(uint64_t a1)
{
  result = sub_1D62EC71C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D62EC71C()
{
  result = qword_1EC885920;
  if (!qword_1EC885920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885920);
  }

  return result;
}

unint64_t sub_1D62EC770(void *a1)
{
  a1[1] = sub_1D5CCFE10();
  a1[2] = sub_1D62EC7A8();
  result = sub_1D62EC7FC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D62EC7A8()
{
  result = qword_1EDF0E3E8;
  if (!qword_1EDF0E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E3E8);
  }

  return result;
}

unint64_t sub_1D62EC7FC()
{
  result = qword_1EC885928;
  if (!qword_1EC885928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885928);
  }

  return result;
}

void LayeredMediaViewOptions.init(nativeScreenSize:boundingSize:scale:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
}

uint64_t sub_1D62EC8D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D62EC8F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1D62EC934(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v20 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 48);
      v27 = *(a3 + v9 + 32);
      v28 = v10;
      v11 = *(a3 + v9 + 64);
      v12 = *(a3 + v9 + 16);
      v26[0] = *(a3 + v9);
      v26[1] = v12;
      v32 = v27;
      v33 = v10;
      v34 = v11;
      v31 = v12;
      v29 = v11;
      v30 = v26[0];
      sub_1D5CE9930(v26, &v21);
      v13 = v6(&v30);
      if (v3)
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        sub_1D5CEC67C(&v21);

        goto LABEL_15;
      }

      if (v13)
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        v35 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6997448(0, *(v8 + 16) + 1, 1);
          v8 = v35;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_1D6997448((v14 > 1), v15 + 1, 1);
          v8 = v35;
        }

        *(v8 + 16) = v15 + 1;
        v16 = (v8 + 80 * v15);
        v16[2] = v21;
        v17 = v22;
        v18 = v23;
        v19 = v25;
        v16[5] = v24;
        v16[6] = v19;
        v16[3] = v17;
        v16[4] = v18;
        v6 = v20;
      }

      else
      {
        v23 = v32;
        v24 = v33;
        v25 = v34;
        v21 = v30;
        v22 = v31;
        result = sub_1D5CEC67C(&v21);
      }

      ++v7;
      v9 += 80;
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

void *sub_1D62ECB1C(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D7263BFC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          v5 = v14;
          sub_1D7263EEC();
          v3 = &v18;
          sub_1D7263EAC();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

void sub_1D62ECCD8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatService.ThemePackage(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatService.ThemePackage);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatService.ThemePackage);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatService.ThemePackage);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699763C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D699763C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatService.ThemePackage);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatService.ThemePackage);
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
LABEL_15:
  }
}

void sub_1D62ECF64(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_1D5C2AB28(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, sub_1D5C2AB28);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, sub_1D5C2AB28);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, sub_1D5C2AB28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699768C(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D699768C(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, sub_1D5C2AB28);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, sub_1D5C2AB28);
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
LABEL_15:
  }
}

void sub_1D62ED1F0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatContentSlotItemResolution();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatContentSlotItemResolution);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatContentSlotItemResolution);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatContentSlotItemResolution);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997C80(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6997C80(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatContentSlotItemResolution);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatContentSlotItemResolution);
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
LABEL_15:
  }
}

void sub_1D62ED47C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedItemSupplementaryAttributes();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FeedItemSupplementaryAttributes);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItemSupplementaryAttributes);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FeedItemSupplementaryAttributes);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69980C4(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D69980C4(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FeedItemSupplementaryAttributes);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItemSupplementaryAttributes);
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
LABEL_15:
  }
}

void sub_1D62ED708(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1D725BD1C();
  MEMORY[0x1EEE9AC00](v40, v7);
  v37 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5D5A84C(0, *(v25 + 16) + 1, 1);
          v25 = v41;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D5D5A84C(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        *(v25 + 16) = v28 + 1;
        v38 = v25;
        v24((v25 + v15 + v28 * v16), v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1D62ED9D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v33 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 112);
      v11 = *(a3 + v9 + 144);
      v52 = *(a3 + v9 + 128);
      v53 = v11;
      v12 = *(a3 + v9 + 48);
      v13 = *(a3 + v9 + 80);
      v48 = *(a3 + v9 + 64);
      v49 = v13;
      v14 = *(a3 + v9 + 80);
      v15 = *(a3 + v9 + 112);
      v50 = *(a3 + v9 + 96);
      v51 = v15;
      v16 = *(a3 + v9 + 16);
      v45[0] = *(a3 + v9);
      v45[1] = v16;
      v17 = *(a3 + v9 + 48);
      v19 = *(a3 + v9);
      v18 = *(a3 + v9 + 16);
      v46 = *(a3 + v9 + 32);
      v47 = v17;
      v20 = *(a3 + v9 + 144);
      v63 = v52;
      v64 = v20;
      v59 = v48;
      v60 = v14;
      v61 = v50;
      v62 = v10;
      v55 = v19;
      v56 = v18;
      v54 = *(a3 + v9 + 160);
      v65 = *(a3 + v9 + 160);
      v57 = v46;
      v58 = v12;
      sub_1D5ECF030(v45, &v34);
      v21 = v6(&v55);
      if (v3)
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        sub_1D5ECF08C(&v34);

        goto LABEL_15;
      }

      if (v21)
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        result = swift_isUniquelyReferenced_nonNull_native();
        v66 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6998B18(0, *(v8 + 16) + 1, 1);
          v8 = v66;
        }

        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1D6998B18((v22 > 1), v23 + 1, 1);
          v8 = v66;
        }

        *(v8 + 16) = v23 + 1;
        v24 = v8 + 168 * v23;
        v25 = v34;
        v26 = v36;
        *(v24 + 48) = v35;
        *(v24 + 64) = v26;
        *(v24 + 32) = v25;
        v27 = v37;
        v28 = v38;
        v29 = v40;
        *(v24 + 112) = v39;
        *(v24 + 128) = v29;
        *(v24 + 80) = v27;
        *(v24 + 96) = v28;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        *(v24 + 192) = v44;
        *(v24 + 160) = v31;
        *(v24 + 176) = v32;
        *(v24 + 144) = v30;
        v6 = v33;
      }

      else
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        result = sub_1D5ECF08C(&v34);
      }

      ++v7;
      v9 += 168;
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

void sub_1D62EDC68(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatDerivedDataBinderResult();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatDerivedDataBinderResult);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatDerivedDataBinderResult);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatDerivedDataBinderResult);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998CA8(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6998CA8(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatDerivedDataBinderResult);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatDerivedDataBinderResult);
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
LABEL_15:
  }
}

unint64_t sub_1D62EDEF4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v22 = *(a3 + 16);
  if (v22)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = MEMORY[0x1E69E7CC0];
    v20 = result;
    while (v7 < *(v5 + 16))
    {
      v10 = *v8;
      v11 = *(v8 - 1);
      v23 = *(v8 - 2);
      v24 = v11;
      v25 = v10;

      sub_1D5C07390(v11);
      v12 = v6(&v23);
      if (v4)
      {
        v19 = v24;

        sub_1D5C08648(v19);

        goto LABEL_15;
      }

      v14 = v23;
      v13 = v24;
      if (v12)
      {
        v15 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1D6998F40(0, *(v9 + 16) + 1, 1);
          v9 = v26;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1D6998F40((v16 > 1), v17 + 1, 1);
          v9 = v26;
        }

        *(v9 + 16) = v17 + 1;
        v18 = (v9 + 24 * v17);
        v18[4] = v14;
        v18[5] = v13;
        v18[6] = v15;
        v5 = a3;
        v6 = v20;
      }

      else
      {

        result = sub_1D5C08648(v13);
      }

      ++v7;
      v8 += 3;
      if (v22 == v7)
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

void sub_1D62EE09C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedItem(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
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
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FeedItem);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItem);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FeedItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69992E8(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D69992E8(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FeedItem);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItem);
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
LABEL_15:
  }
}

uint64_t sub_1D62EE328(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v19 = result;
  v18 = *(a3 + 16);
  if (v18)
  {
    v5 = 0;
    v6 = (a3 + 56);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v20[0] = v9;
      v20[1] = v8;
      v20[2] = v10;
      v21 = v11;

      v12 = v19(v20);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v12)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v22 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1D699A0FC(0, *(v7 + 16) + 1, 1);
          v7 = v22;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          result = sub_1D699A0FC((v13 > 1), v14 + 1, 1);
          v15 = v14 + 1;
          v7 = v22;
        }

        *(v7 + 16) = v15;
        v16 = v7 + 32 * v14;
        *(v16 + 32) = v9;
        *(v16 + 40) = v8;
        *(v16 + 48) = v10;
        *(v16 + 56) = v11;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 32;
      if (v18 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v7;
  }

  return result;
}

void *sub_1D62EE4C0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D7263BFC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          v5 = v14;
          sub_1D7263EEC();
          v3 = &v18;
          sub_1D7263EAC();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

Swift::Int __swiftcall GroupLayoutBindingContext.count(for:)(NewsFeed::FeedItemTraits a1)
{
  v2 = *a1.rawValue;
  v3 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext() + 56));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  v20 = v3 + 64;
  v21 = v3;
  while (v7)
  {
LABEL_11:
    result = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v15 = *(result + 16);
    if (v15)
    {
      v22 = v11;
      v16 = result + 32;

      v12 = 0;
      while (1)
      {
        sub_1D5B68374(v16, v24);
        v17 = v25;
        v18 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        result = (*(v18 + 24))(&v23, v17, v18);
        v19 = (v2 & ~v23) == 0;
        v13 = __OFADD__(v12, v19);
        v12 += v19;
        if (v13)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        if (!--v15)
        {

          v4 = v20;
          v3 = v21;
          v11 = v22;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

    v12 = 0;
LABEL_5:
    v7 &= v7 - 1;
    v13 = __OFADD__(v11, v12);
    v11 += v12;
    if (v13)
    {
      goto LABEL_19;
    }
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t GroupLayoutBindingContext.unbindAll<A>(_:name:sortedBy:withTraits:slotIdentifier:peekBinding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v39 = a8;
  v40 = *a5;
  v41 = a4;

  sub_1D61A578C(a2, a3, &v42);
  v14 = v42;
  v15 = v43;
  v17 = v44;
  v16 = v45;
  v18 = type metadata accessor for GroupLayoutBindingContext();
  if (*(*&v11[*(v18 + 56)] + 16) && (v19 = v18, sub_1D5BCF83C(v14, v15, v17, v16), (v20 & 1) != 0) && (v21 = sub_1D5B49474(0, &qword_1EDF41FC0), , v38 = v21, v22 = sub_1D72641BC(), v23 = , v22))
  {
    v35 = v17;
    v36 = v14;
    v37 = v34;
    v42 = v22;
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = sub_1D72627FC();
    v40 = v22;

    swift_getWitnessTable();
    v34[1] = v25;
    v26 = sub_1D7263E7C();
    v27 = sub_1D62F78BC(v41, v11, v26);

    v29 = *&v11[*(v19 + 72)];
    v30 = *&v11[*(v19 + 76)];
    if (__OFSUB__(v29, v30))
    {
      __break(1u);
    }

    else
    {
      v31 = sub_1D62F7928(v27, v29 - v30, a9, a10);

      v42 = v40;
      MEMORY[0x1EEE9AC00](v40, v32);

      sub_1D7263E7C();
      v42 = v36;
      v43 = v15;
      v44 = v35;
      v45 = v16;

      v33 = sub_1D7263F8C();

      sub_1D5BDACA8(&v42, v33);

      return v31;
    }
  }

  else
  {

    return sub_1D726275C();
  }

  return result;
}

uint64_t GroupLayoutBindingContext.unbind<A, B>(_:ofType:name:sortedBy:withTraits:slotIdentifier:peekBinding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v47 = a7;
  v48 = a8;
  v46 = a5;
  v49 = *a6;
  v50 = a1;

  sub_1D61A578C(a3, a4, &v53);
  v57 = v54;
  v19 = v56;
  v51 = v53;
  v52 = v55;
  v20 = type metadata accessor for GroupLayoutBindingContext();
  if (!*(*&v13[*(v20 + 56)] + 16) || (v21 = v20, sub_1D5BCF83C(v51, v57, v52, v19), (v22 & 1) == 0) || (v23 = sub_1D5B49474(0, &qword_1EDF41FC0), , v42 = v23, v24 = sub_1D72641BC(), v25 = , !v24))
  {
    v53 = 0;
    if (sub_1D726251C())
    {

      return sub_1D726275C();
    }

    result = sub_1D726250C();
    if (*(result + 16))
    {
LABEL_12:
      v36 = *(result + 32);

      sub_1D5ED8048();
      swift_allocError();
      v37 = v57;
      *v38 = v51;
      *(v38 + 8) = v37;
      *(v38 + 16) = v52;
      *(v38 + 24) = v19;
      *(v38 + 32) = v49;
      *(v38 + 40) = v36;
      v35 = v48;
      *(v38 + 48) = v47;
      *(v38 + 56) = v35;
      *(v38 + 64) = 0;
      swift_willThrow();

      return v35;
    }

    __break(1u);
    goto LABEL_21;
  }

  v43 = v19;
  v41 = &v40;
  v53 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v45 = v15;
  sub_1D72627FC();

  swift_getWitnessTable();
  v44 = v24;
  v27 = v45;
  v28 = sub_1D7263E7C();
  v45 = v27;
  v29 = sub_1D62F78BC(v46, v16, v28);

  v31 = *&v16[*(v21 + 72)];
  v32 = *&v16[*(v21 + 76)];
  if (__OFSUB__(v31, v32))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  LODWORD(v41) = a9;
  v46 = v29;
  v33 = sub_1D62F7928(v29, v31 - v32, a10, a12);
  v34 = v50;
  v35 = sub_1D62F7B14(v50, v33, v44, a10, a11, a12, a13);

  if (v35)
  {

    v53 = v51;
    v54 = v57;
    v55 = v52;
    v56 = v43;
    if ((v41 & 1) == 0)
    {
    }

LABEL_16:
    v39 = sub_1D7263F8C();

    sub_1D5BDACA8(&v53, v39);

    return v35;
  }

  v35 = sub_1D62F7B14(v34, v46, v44, a10, a11, a12, a13);

  if (v35)
  {
    v53 = v51;
    v54 = v57;
    v55 = v52;
    v56 = v43;
    if ((v41 & 1) == 0)
    {
    }

    goto LABEL_16;
  }

  result = sub_1D726250C();
  if (*(result + 16))
  {
    v19 = v43;
    goto LABEL_12;
  }

LABEL_22:
  __break(1u);
  return result;
}

void *GroupLayoutBindingContext.unbind<A>(_:name:sortedBy:withTraits:requireTraitsWhenMatching:slotIdentifier:peekBinding:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9, _BYTE *a10, char *a11)
{
  v12 = v11;
  v78 = a6;
  v67 = a5;
  v68 = a3;
  v66 = a8;
  v17 = sub_1D726393C();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v69 = &v60 - v19;
  v73 = *a4;

  v70 = a11;
  sub_1D61A578C(a1, a2, &v74);
  v21 = v74;
  v20 = v75;
  v22 = v76;
  v23 = v77;
  v24 = type metadata accessor for GroupLayoutBindingContext();
  v25 = *(v24 + 56);
  v72 = v12;
  v26 = *(v12 + v25);
  if (*(v26 + 16))
  {
    v27 = v24;
    v28 = sub_1D5BCF83C(v21, v20, v22, v23);
    if (v29)
    {
      if (*(*(*(v26 + 56) + 8 * v28) + 16))
      {
        v62 = v22;
        v63 = v20;

        v31 = a7;
        v32 = a7;
        v33 = v30;
        v34 = v71;
        sub_1D5BF08EC(v30, v78, v32);
        if (v34)
        {
        }

        v71 = v33;
        sub_1D5B49474(0, &qword_1EDF41FC0);
        v37 = sub_1D72641BC();

        if (v37)
        {
          v61 = v23;
          v74 = v37;
          sub_1D72627FC();
          swift_getWitnessTable();
          v38 = sub_1D7262CCC();
          v39 = v78;
          if ((v38 & 1) == 0)
          {
            v74 = v73;
            v44 = v69;
            v45 = v70;
            sub_1D62F744C(v37, v68, &v74, v67 & 1, a10, v70, v69);

            v46 = *(a10 - 1);
            v47 = (*(v46 + 48))(v44, 1, a10);
            v48 = v61;
            if (v47 != 1)
            {
              v51 = v66;
              (*(v46 + 32))(v66, v44, a10);
              result = (*(v45 + 3))(&v74, a10, v45);
              if ((v74 & 0x1000) != 0)
              {
                v53 = *(v27 + 76);
                v54 = *(v72 + v53);
                v55 = __OFADD__(v54, 1);
                v56 = v54 + 1;
                if (v55)
                {
                  __break(1u);
                  return result;
                }

                *(v72 + v53) = v56;
              }

              if (a9)
              {
                v58 = v62;
                v57 = v63;
                v59 = v71;
              }

              else
              {
                MEMORY[0x1EEE9AC00](result, v52);
                *(&v60 - 4) = a10;
                *(&v60 - 3) = v45;
                *(&v60 - 2) = v51;
                v59 = sub_1D5BF5F6C(sub_1D62F9024, (&v60 - 6), v71);
                v58 = v62;
                v57 = v63;
              }

              v74 = v21;
              v75 = v57;
              v76 = v58;
              v77 = v61;
              sub_1D5BDACA8(&v74, v59);
            }

            (*(v64 + 8))(v44, v65);
            sub_1D5ED8048();
            swift_allocError();
            v49 = v62;
            v50 = v63;
            *v41 = v21;
            *(v41 + 8) = v50;
            *(v41 + 16) = v49;
            *(v41 + 24) = v48;
            *(v41 + 32) = v73;
            *(v41 + 40) = 1;
            *(v41 + 48) = v78;
            goto LABEL_15;
          }

          v23 = v61;
        }

        else
        {

          v39 = v78;
        }

        v40 = v73;
        sub_1D5ED8048();
        swift_allocError();
        v42 = v62;
        v43 = v63;
        *v41 = v21;
        *(v41 + 8) = v43;
        *(v41 + 16) = v42;
        *(v41 + 24) = v23;
        *(v41 + 32) = v40;
        *(v41 + 40) = 1;
        *(v41 + 48) = v39;
LABEL_15:
        *(v41 + 56) = v31;
        *(v41 + 64) = 0;
        swift_willThrow();
      }
    }
  }

  sub_1D5ED8048();
  swift_allocError();
  *v36 = v21;
  *(v36 + 8) = v20;
  *(v36 + 16) = v22;
  *(v36 + 24) = v23;
  *(v36 + 32) = v73;
  *(v36 + 40) = 1;
  *(v36 + 48) = v78;
  *(v36 + 56) = a7;
  *(v36 + 64) = 0;
  swift_willThrow();
}

uint64_t sub_1D62EF50C()
{
  v1 = v0;
  v55 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v55, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v56, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1E69E7CC0];
  v12 = *(v0 + 64);
  if (!*(v12 + 16) || (v13 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v14 & 1) == 0) || (sub_1D5B68374(*(v12 + 56) + 40 * v13, &v57), sub_1D5B49474(0, qword_1EDF431A0), (swift_dynamicCast() & 1) == 0) || (v15 = v69[0]) == 0 || (v16 = [v69[0] backingTag], v15, !v16))
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (!*(v12 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v17 = swift_unknownObjectRetain();
  MEMORY[0x1DA6F9CE0](v17);
  if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_unknownObjectRelease();
  v18 = v71;
  if (*(v12 + 16))
  {
LABEL_11:
    v19 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470);
    if (v20)
    {
      sub_1D5B68374(*(v12 + 56) + 40 * v19, &v57);
      sub_1D5B49474(0, qword_1EDF431A0);
      if (swift_dynamicCast())
      {
        if (v69[0])
        {
          v21 = v69[1];
          v22 = swift_unknownObjectRetain();
          sub_1D5F587AC(v22, v21);
          v23 = swift_unknownObjectRetain();
          MEMORY[0x1DA6F9CE0](v23);
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_unknownObjectRelease();
          v18 = v71;
        }
      }
    }
  }

LABEL_17:
  v24 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext() + 60));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    v53 = v4;
    v54 = v8;
    do
    {
      sub_1D5BD03B0(v26, v69);
      sub_1D5B68374(&v70, &v57);
      sub_1D5BD03E8(v69);
      sub_1D6818590(&v57, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 13)
      {
        switch(EnumCaseMultiPayload)
        {
          case 14:
            v37 = *(v11 + 11);
            v66 = *(v11 + 10);
            v67 = v37;
            v68 = *(v11 + 12);
            v38 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v38;
            v39 = *(v11 + 9);
            v64[1] = *(v11 + 8);
            v65 = v39;
            v40 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v40;
            v41 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v41;
            v42 = *(v11 + 1);
            v57 = *v11;
            v58 = v42;
            v43 = [*(&v40 + 1) puzzleType];
            MEMORY[0x1DA6F9CE0]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            v18 = v71;
            sub_1D5F2DF58(&v57);
            goto LABEL_21;
          case 15:
            v49 = *(v11 + 3);
            v50 = *(v11 + 4);
            v51 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v51);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            sub_1D5BF6680(v49, v50);
            swift_unknownObjectRelease();

            v18 = v71;
            v4 = v53;
            v8 = v54;
            goto LABEL_21;
          case 16:
            sub_1D5BE2F1C(v11, v4, type metadata accessor for FeedPuzzleStatistic);
            v35 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v35);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5BCF630(v4, type metadata accessor for FeedPuzzleStatistic);
            v18 = v71;
            goto LABEL_21;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 3:
            sub_1D5BE2F1C(v11, v8, type metadata accessor for FeedHeadline);
            if ([v8[5] sourceChannel])
            {
              v36 = swift_unknownObjectRetain();
              MEMORY[0x1DA6F9CE0](v36);
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D726272C();
                v8 = v54;
              }

              sub_1D726278C();
              swift_unknownObjectRelease();
              v18 = v71;
            }

            v27 = type metadata accessor for FeedHeadline;
            v28 = v8;
            goto LABEL_20;
          case 5:
            v44 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v44;
            *(v64 + 9) = *(v11 + 121);
            v45 = *(v11 + 1);
            v57 = *v11;
            v58 = v45;
            v46 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v46;
            v47 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v47;
            v48 = [v57 sourceChannel];
            MEMORY[0x1DA6F9CE0]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5ECF320(&v57);
            v18 = v71;
            goto LABEL_21;
          case 7:
            v30 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v30;
            v64[1] = *(v11 + 8);
            LOBYTE(v65) = v11[144];
            v31 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v31;
            v32 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v32;
            v33 = *(v11 + 1);
            v57 = *v11;
            v58 = v33;
            v34 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v34);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5EE5B54(&v57);
            v18 = v71;
            goto LABEL_21;
        }
      }

      v27 = type metadata accessor for FeedItem;
      v28 = v11;
LABEL_20:
      sub_1D5BCF630(v28, v27);
LABEL_21:
      v26 += 72;
      --v25;
    }

    while (v25);
  }

  return v18;
}

uint64_t sub_1D62EFCE4@<X0>(int a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v6 = type metadata accessor for FeedItem(0);
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725A0AC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v69 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v64 - v20;
  v22 = *a2;
  sub_1D5B68374((v3 + 8), v85);
  v23 = *(v3 + 6);
  v74 = v15;
  v75 = v10;
  v24 = *(v15 + 16);
  v25 = &v3[*(v10 + 52)];
  v73 = v21;
  v68 = v24;
  v66 = v15 + 16;
  v24(v21, v25, v14);
  v71 = v14;
  v72 = a3;
  if (v22 == 2)
  {
    v67 = *v3;
  }

  else
  {
    v67 = v22;
  }

  v26 = *(v3 + 12);
  v27 = v75;
  *&v13[v75[14]] = MEMORY[0x1E69E7CC8];
  *&v13[v27[15]] = MEMORY[0x1E69E7CC0];
  *&v13[v27[19]] = 0;
  sub_1D5B68374(v85, (v13 + 8));
  *(v13 + 6) = v23;
  v29 = v86;
  v28 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v30 = *(v28 + 56);

  v76 = v30(v29, v28);
  sub_1D5B7F04C(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
  sub_1D6306FC4();
  sub_1D5BCAF5C();
  v31 = sub_1D72623BC();

  *(v13 + 9) = v31;
  v32 = v86;
  v33 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  *(v13 + 10) = (*(v33 + 56))(v32, v33);
  v34 = v86;
  v35 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  *(v13 + 7) = (*(v35 + 24))(v34, v35);

  v37 = sub_1D5BCB16C(v36);

  *(v13 + 8) = v37;
  v13[v27[16]] = v70 & 1;
  v38 = v73;
  v39 = v71;
  v40 = v68;
  v68(&v13[v27[13]], v73, v71);
  *v13 = v67 & 1;
  *(v13 + 12) = v26;
  v13[88] = 0;
  v41 = v69;
  v40(v69, v38, v39);
  v42 = (*(v74 + 88))(v41, v39);
  if (v42 == *MEMORY[0x1E69D7210])
  {
    v43 = v86;
    v44 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    (*(v44 + 72))(&v76, v43, v44);
    if (v84)
    {
      v45 = v72;
    }

    else
    {
      v45 = v72;
      if ((v81 & 1) == 0)
      {
        v49 = v80;
LABEL_14:
        *&v13[v75[18]] = v49;
        v50 = v86;
        v51 = v87;
        __swift_project_boxed_opaque_existential_1(v85, v86);
        (*(v51 + 72))(&v76, v50, v51);
        if ((v84 & 1) == 0)
        {
          v52 = v83;
          v53 = v82;
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    v49 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  if (v42 != *MEMORY[0x1E69D7218])
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v46 = v86;
  v47 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  (*(v47 + 72))(&v76, v46, v47);
  v45 = v72;
  if (v84 & 1) != 0 || (v77)
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v76;
  }

  *&v13[v75[18]] = v48;
  v54 = v86;
  v55 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  (*(v55 + 72))(&v76, v54, v55);
  if ((v84 & 1) == 0)
  {
    v52 = v79;
    v53 = v78;
LABEL_20:
    if (v52)
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    goto LABEL_23;
  }

LABEL_18:
  v56 = 0;
LABEL_23:
  *&v13[v75[17]] = v56;
  v57 = v86;
  v58 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v59 = (*(v58 + 16))(v57, v58);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v62 = *(v65 + 72);
    do
    {
      sub_1D5BD86D4(v61, v9, type metadata accessor for FeedItem);
      sub_1D5BCEE08(v9);
      sub_1D5BCF630(v9, type metadata accessor for FeedItem);
      v61 += v62;
      --v60;
    }

    while (v60);
  }

  (*(v74 + 8))(v73, v39);
  sub_1D5BE2F1C(v13, v45, type metadata accessor for GroupLayoutBindingContext);
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_1D62F03D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v25 = *(v3 + 16);
  if (v25)
  {
    v24 = v3 + 32;

    v4 = 0;
    v5 = 0;
    v23 = v3;
    while (v4 < *(v3 + 16))
    {
      v6 = (v24 + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
      swift_retain_n();
      *&v29[0] = sub_1D62FFD74(a1);
      sub_1D6306024(v29, v7, v8, &unk_1F5144BF0, sub_1D62FFB30, sub_1D630347C);
      if (v5)
      {
        goto LABEL_17;
      }

      v9 = *&v29[0];
      v10 = *(*&v29[0] + 16);
      if (v10)
      {
        v27 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        sub_1D5BD0BA0(0, v10, 0);
        a1 = v33;
        v26 = v9;
        v11 = v9 + 32;
        do
        {
          sub_1D5BD86D4(v11, v29, sub_1D630B6C8);
          v28[0] = v29[0];
          v28[1] = v29[1];
          v28[2] = v29[2];
          sub_1D5B63F14((v28 + 8), v30);
          v33 = a1;
          v13 = *(a1 + 16);
          v12 = *(a1 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_1D5BD0BA0((v12 > 1), v13 + 1, 1);
          }

          v14 = v31;
          v15 = v32;
          v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
          v17 = MEMORY[0x1EEE9AC00](v16, v16);
          v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v20 + 16))(v19, v17);
          sub_1D5BD0BE4(v13, v19, &v33, v14, v15);
          __swift_destroy_boxed_opaque_existential_1(v30);
          a1 = v33;
          v11 += 48;
          --v10;
        }

        while (v10);

        v3 = v23;
        v5 = v27;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v25)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F071C(void *a1)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v33 - v8;
  v9 = type metadata accessor for FeedHeadline(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v37 = *(v14 + 16);
  if (v37)
  {
    v36 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v33 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v36 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D62FFF18(a1);
      v44 = v20;
      sub_1D6303848(&v44, v18, v19);
      if (v16)
      {
        goto LABEL_17;
      }

      v21 = v44;
      v22 = v44[2];
      if (v22)
      {
        v39 = v19;
        v40 = v15;
        v41 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D5C0F91C(0, v22, 0);
        v23 = v35;
        a1 = v44;
        v24 = *(v34 + 80);
        v38 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v34 + 72);
        do
        {
          v27 = v42;
          sub_1D630B5FC(v25, v42, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          v28 = v27;
          v29 = v43;
          sub_1D630BA20(v28, v43, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedHeadline);
          v44 = a1;
          v31 = a1[2];
          v30 = a1[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D5C0F91C(v30 > 1, v31 + 1, 1);
            v23 = v35;
            a1 = v44;
          }

          a1[2] = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedHeadline);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v33;
        v15 = v40;
        v16 = v41;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v37)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F0AF0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v29 = *(v3 + 16);
  if (v29)
  {
    v28 = v3 + 32;

    v4 = 0;
    v27 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = *(v28 + 16 * v4);

      *v31 = sub_1D63002A8(a1);
      sub_1D6305428(v31, sub_1D6306E80, v5);

      v6 = *v31;
      v7 = *(*v31 + 16);
      if (v7)
      {
        v32 = MEMORY[0x1E69E7CC0];
        sub_1D6997F04(0, v7, 0);
        a1 = v32;
        v8 = v7 - 1;
        for (i = 32; ; i += 152)
        {
          v10 = *(v6 + i + 16);
          *v31 = *(v6 + i);
          *&v31[16] = v10;
          v11 = *(v6 + i + 32);
          v12 = *(v6 + i + 48);
          v13 = *(v6 + i + 80);
          *&v31[64] = *(v6 + i + 64);
          *&v31[80] = v13;
          *&v31[32] = v11;
          *&v31[48] = v12;
          v14 = *(v6 + i + 96);
          v15 = *(v6 + i + 112);
          v16 = *(v6 + i + 128);
          v31[144] = *(v6 + i + 144);
          *&v31[112] = v15;
          *&v31[128] = v16;
          *&v31[96] = v14;
          sub_1D6306E88(v31, v30, &unk_1EC88EAF0);
          v32 = a1;
          v18 = *(a1 + 16);
          v17 = *(a1 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1D6997F04((v17 > 1), v18 + 1, 1);
            a1 = v32;
          }

          *(a1 + 16) = v18 + 1;
          v19 = (a1 + 144 * v18);
          v19[2] = *&v31[8];
          v20 = *&v31[24];
          v21 = *&v31[40];
          v22 = *&v31[72];
          v19[5] = *&v31[56];
          v19[6] = v22;
          v19[3] = v20;
          v19[4] = v21;
          v23 = *&v31[88];
          v24 = *&v31[104];
          v25 = *&v31[120];
          *(v19 + 153) = *&v31[129];
          v19[8] = v24;
          v19[9] = v25;
          v19[7] = v23;
          if (!v8)
          {
            break;
          }

          --v8;
        }

        v3 = v27;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v29)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F0DA0(void *a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v33 - v8;
  v9 = type metadata accessor for FeedCustomItem();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v37 = *(v14 + 16);
  if (v37)
  {
    v36 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v33 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v36 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D630052C(a1);
      v44 = v20;
      sub_1D630B330(&v44, v18, v19);
      if (v16)
      {
        goto LABEL_17;
      }

      v21 = v44;
      v22 = v44[2];
      if (v22)
      {
        v39 = v19;
        v40 = v15;
        v41 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D6998274(0, v22, 0);
        v23 = v35;
        a1 = v44;
        v24 = *(v34 + 80);
        v38 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v34 + 72);
        do
        {
          v27 = v42;
          sub_1D630B5FC(v25, v42, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
          v28 = v27;
          v29 = v43;
          sub_1D630BA20(v28, v43, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedCustomItem);
          v44 = a1;
          v31 = a1[2];
          v30 = a1[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D6998274(v30 > 1, v31 + 1, 1);
            v23 = v35;
            a1 = v44;
          }

          a1[2] = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedCustomItem);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v33;
        v15 = v40;
        v16 = v41;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v37)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F1174(void *a1)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v33 - v8;
  v9 = type metadata accessor for FeedRecipe();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v37 = *(v14 + 16);
  if (v37)
  {
    v36 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v33 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v36 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D63008BC(a1);
      v44 = v20;
      sub_1D630AFA8(&v44, v18, v19);
      if (v16)
      {
        goto LABEL_17;
      }

      v21 = v44;
      v22 = v44[2];
      if (v22)
      {
        v39 = v19;
        v40 = v15;
        v41 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D69982C4(0, v22, 0);
        v23 = v35;
        a1 = v44;
        v24 = *(v34 + 80);
        v38 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v34 + 72);
        do
        {
          v27 = v42;
          sub_1D630B5FC(v25, v42, &unk_1EDF04740, type metadata accessor for FeedRecipe);
          v28 = v27;
          v29 = v43;
          sub_1D630BA20(v28, v43, &unk_1EDF04740, type metadata accessor for FeedRecipe);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedRecipe);
          v44 = a1;
          v31 = a1[2];
          v30 = a1[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D69982C4(v30 > 1, v31 + 1, 1);
            v23 = v35;
            a1 = v44;
          }

          a1[2] = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedRecipe);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v33;
        v15 = v40;
        v16 = v41;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v37)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F1548(void *a1)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v33 - v8;
  v9 = type metadata accessor for FeedPuzzleStatistic();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v37 = *(v14 + 16);
  if (v37)
  {
    v36 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v33 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v36 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D6300C4C(a1);
      v44 = v20;
      sub_1D630AC20(&v44, v18, v19);
      if (v16)
      {
        goto LABEL_17;
      }

      v21 = v44;
      v22 = v44[2];
      if (v22)
      {
        v39 = v19;
        v40 = v15;
        v41 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D6998314(0, v22, 0);
        v23 = v35;
        a1 = v44;
        v24 = *(v34 + 80);
        v38 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v34 + 72);
        do
        {
          v27 = v42;
          sub_1D630B5FC(v25, v42, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
          v28 = v27;
          v29 = v43;
          sub_1D630BA20(v28, v43, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedPuzzleStatistic);
          v44 = a1;
          v31 = a1[2];
          v30 = a1[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D6998314(v30 > 1, v31 + 1, 1);
            v23 = v35;
            a1 = v44;
          }

          a1[2] = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedPuzzleStatistic);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v33;
        v15 = v40;
        v16 = v41;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v37)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F191C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v22 = *(v3 + 16);
  if (v22)
  {
    v21 = v3 + 32;

    v4 = 0;
    v20 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = *(v21 + 16 * v4);

      *v24 = sub_1D6300FDC(a1);
      sub_1D630A910(v24, sub_1D630B534, v5);

      v6 = *v24;
      v7 = *(*v24 + 16);
      if (v7)
      {
        v25 = MEMORY[0x1E69E7CC0];
        sub_1D6998364(0, v7, 0);
        a1 = v25;
        v8 = v7 - 1;
        for (i = 32; ; i += 72)
        {
          *v24 = *(v6 + i);
          v10 = *(v6 + i + 16);
          v11 = *(v6 + i + 32);
          v12 = *(v6 + i + 48);
          *&v24[64] = *(v6 + i + 64);
          *&v24[32] = v11;
          *&v24[48] = v12;
          *&v24[16] = v10;
          sub_1D6306E88(v24, v23, &unk_1EC88F4D0);
          v25 = a1;
          v14 = *(a1 + 16);
          v13 = *(a1 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1D6998364((v13 > 1), v14 + 1, 1);
            a1 = v25;
          }

          *(a1 + 16) = v14 + 1;
          v15 = (a1 + (v14 << 6));
          v16 = *&v24[8];
          v17 = *&v24[24];
          v18 = *&v24[56];
          v15[4] = *&v24[40];
          v15[5] = v18;
          v15[2] = v16;
          v15[3] = v17;
          if (!v8)
          {
            break;
          }

          --v8;
        }

        v3 = v20;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v22)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F1B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v27 = *(v3 + 16);
  if (v27)
  {
    v26 = v3 + 32;

    v4 = 0;
    v25 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v26 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      v29 = sub_1D63011FC(a1);
      sub_1D6306024(&v29, v6, v7, &unk_1F5144808, sub_1D62FFC48, sub_1D6309A4C);

      v8 = v29;
      v9 = *(v29 + 16);
      if (v9)
      {
        v28 = v4;
        v56 = MEMORY[0x1E69E7CC0];
        sub_1D6998384(0, v9, 0);
        v10 = v8;
        a1 = v56;
        v11 = v10 + 32;
        do
        {
          sub_1D6306E88(v11, &v29, &unk_1EDF04750);
          v53 = v40;
          v54 = v41;
          v55 = v42;
          v49 = v36;
          v50 = v37;
          v51 = v38;
          v52 = v39;
          v44 = v31;
          v45 = v32;
          v48 = v35;
          v46 = v33;
          v47 = v34;
          v13 = *(a1 + 16);
          v12 = *(a1 + 24);
          v43 = v30;
          v56 = a1;
          if (v13 >= v12 >> 1)
          {
            sub_1D6998384((v12 > 1), v13 + 1, 1);
            a1 = v56;
          }

          *(a1 + 16) = v13 + 1;
          v14 = (a1 + 208 * v13);
          v14[2] = v43;
          v15 = v44;
          v16 = v45;
          v17 = v47;
          v14[5] = v46;
          v14[6] = v17;
          v14[3] = v15;
          v14[4] = v16;
          v18 = v48;
          v19 = v49;
          v20 = v51;
          v14[9] = v50;
          v14[10] = v20;
          v14[7] = v18;
          v14[8] = v19;
          v21 = v52;
          v22 = v53;
          v23 = v55;
          v14[13] = v54;
          v14[14] = v23;
          v14[11] = v21;
          v14[12] = v22;
          v11 += 216;
          --v9;
        }

        while (v9);

        v3 = v25;
        v4 = v28;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v27)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F1E7C(void *a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v33 - v8;
  v9 = type metadata accessor for FeedWebEmbed();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v37 = *(v14 + 16);
  if (v37)
  {
    v36 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v33 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v36 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D630142C(a1);
      v44 = v20;
      sub_1D6308E04(&v44, v18, v19);
      if (v16)
      {
        goto LABEL_17;
      }

      v21 = v44;
      v22 = v44[2];
      if (v22)
      {
        v39 = v19;
        v40 = v15;
        v41 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D69983A4(0, v22, 0);
        v23 = v35;
        a1 = v44;
        v24 = *(v34 + 80);
        v38 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v34 + 72);
        do
        {
          v27 = v42;
          sub_1D630B5FC(v25, v42, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
          v28 = v27;
          v29 = v43;
          sub_1D630BA20(v28, v43, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedWebEmbed);
          v44 = a1;
          v31 = a1[2];
          v30 = a1[3];
          if (v31 >= v30 >> 1)
          {
            sub_1D69983A4(v30 > 1, v31 + 1, 1);
            v23 = v35;
            a1 = v44;
          }

          a1[2] = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedWebEmbed);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v33;
        v15 = v40;
        v16 = v41;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v37)
      {

        return a1;
      }
    }

    __break(1u);
LABEL_17:

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F2250(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v22 = v3 + 32;

    v4 = 0;
    v21 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v22 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      v26 = sub_1D63017BC(a1);
      sub_1D6306024(&v26, v6, v7, &unk_1F5144628, sub_1D62FFC70, sub_1D6307D4C);

      v8 = *(v26 + 16);
      if (v8)
      {
        v24 = v4;
        v47 = MEMORY[0x1E69E7CC0];
        v25 = v26;
        sub_1D69983F4(0, v8, 0);
        a1 = v47;
        v9 = v25 + 32;
        do
        {
          sub_1D6306E88(v9, &v26, &qword_1EDF04760);
          v43 = v33;
          v44 = v34;
          v45 = v35;
          v46 = v36;
          v39 = v29;
          v40 = v30;
          v41 = v31;
          v42 = v32;
          v37 = v27;
          v38 = v28;
          v11 = *(a1 + 16);
          v10 = *(a1 + 24);
          v47 = a1;
          if (v11 >= v10 >> 1)
          {
            sub_1D69983F4((v10 > 1), v11 + 1, 1);
            a1 = v47;
          }

          *(a1 + 16) = v11 + 1;
          v12 = a1 + 152 * v11;
          v13 = v38;
          *(v12 + 32) = v37;
          *(v12 + 48) = v13;
          v14 = v39;
          v15 = v40;
          v16 = v42;
          *(v12 + 96) = v41;
          *(v12 + 112) = v16;
          *(v12 + 64) = v14;
          *(v12 + 80) = v15;
          v17 = v43;
          v18 = v44;
          v19 = v45;
          *(v12 + 176) = v46;
          *(v12 + 144) = v18;
          *(v12 + 160) = v19;
          *(v12 + 128) = v17;
          v9 += 160;
          --v8;
        }

        while (v8);

        v3 = v21;
        v4 = v24;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v23)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F2518(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8 = *(v3 + 16);
  if (v8)
  {

    v4 = 0;
    while (v4 < *(v3 + 16))
    {
      *(swift_allocObject() + 16) = *(v3 + 32 + 16 * v4);

      v9 = sub_1D6301C14(a1);
      sub_1D63042A0(&v9, sub_1D6306E78);

      v5 = v9[2];
      if (v5)
      {
        v9 = MEMORY[0x1E69E7CC0];
        sub_1D7263ECC();
        v6 = 40;
        do
        {

          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          v6 += 16;
          --v5;
        }

        while (v5);

        a1 = v9;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v8)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F270C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v17 = *(v3 + 16);
  if (v17)
  {
    v16 = v3 + 32;

    v4 = 0;
    v15 = v3;
    while (v4 < *(v3 + 16))
    {
      v18 = v4;
      v5 = (v16 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      v8 = sub_1D6301E1C(a1);

      v19 = v8;
      sub_1D6306024(&v19, v6, v7, &unk_1F51442B8, sub_1D62FFCD4, sub_1D6305E9C);

      v9 = v19;
      v10 = *(v19 + 16);
      if (v10)
      {
        v22 = MEMORY[0x1E69E7CC0];
        sub_1D69992A8(0, v10, 0);
        a1 = v22;
        v11 = v9 + 32;
        do
        {
          sub_1D6306E88(v11, &v19, &qword_1EC885950);
          memcpy(__dst, v20, sizeof(__dst));
          v22 = a1;
          v13 = *(a1 + 16);
          v12 = *(a1 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_1D69992A8((v12 > 1), v13 + 1, 1);
            a1 = v22;
          }

          *(a1 + 16) = v13 + 1;
          memcpy((a1 + 288 * v13 + 32), __dst, 0x11AuLL);
          v11 += 296;
          --v10;
        }

        while (v10);

        v3 = v15;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      v4 = v18 + 1;
      if (v18 + 1 == v17)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F2984(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v22 = v3 + 32;

    v4 = 0;
    v21 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v22 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      v26 = sub_1D6301FC8(a1);
      sub_1D6306024(&v26, v6, v7, &unk_1F5144178, sub_1D62FFCE8, sub_1D6306BB4);

      v8 = *(v26 + 16);
      if (v8)
      {
        v24 = v4;
        v47 = MEMORY[0x1E69E7CC0];
        v25 = v26;
        sub_1D69992C8(0, v8, 0);
        a1 = v47;
        v9 = v25 + 32;
        do
        {
          sub_1D6306E88(v9, &v26, &qword_1EC885930);
          v43 = v33;
          v44 = v34;
          v45 = v35;
          v46 = v36;
          v39 = v29;
          v40 = v30;
          v41 = v31;
          v42 = v32;
          v37 = v27;
          v38 = v28;
          v11 = *(a1 + 16);
          v10 = *(a1 + 24);
          v47 = a1;
          if (v11 >= v10 >> 1)
          {
            sub_1D69992C8((v10 > 1), v11 + 1, 1);
            a1 = v47;
          }

          *(a1 + 16) = v11 + 1;
          v12 = a1 + 152 * v11;
          v13 = v38;
          *(v12 + 32) = v37;
          *(v12 + 48) = v13;
          v14 = v39;
          v15 = v40;
          v16 = v42;
          *(v12 + 96) = v41;
          *(v12 + 112) = v16;
          *(v12 + 64) = v14;
          *(v12 + 80) = v15;
          v17 = v43;
          v18 = v44;
          v19 = v45;
          *(v12 + 176) = v46;
          *(v12 + 144) = v18;
          *(v12 + 160) = v19;
          *(v12 + 128) = v17;
          v9 += 160;
          --v8;
        }

        while (v8);

        v3 = v21;
        v4 = v24;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v23)
      {

        return a1;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1D62F2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5B68374(a2, &v13);
  v10 = a3;
  sub_1D5B68374(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D5BCF630(&v10, sub_1D630B744);
  sub_1D5BCF630(&v12, sub_1D630B744);
  return v9;
}

uint64_t sub_1D62F2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F2DEAC(a2, &v13);
  v10 = a3;
  sub_1D5F2DEAC(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6, unint64_t *a7, void (*a8)(uint64_t), uint64_t (*a9)(void))
{
  v25[1] = a6;
  v26 = a5;
  sub_1D5C14BE8(0, a7, a8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v25 - v22;
  *(v25 - v22) = a1;
  sub_1D5BD86D4(a2, v25 + *(v16 + 56) - v22, a9);
  *v19 = a3;
  sub_1D5BD86D4(a4, v19 + *(v16 + 56), a9);
  v26(&v27, v23, v19);
  sub_1D630B668(v19, a7, a8, sub_1D5C14BE8);
  sub_1D630B668(v23, a7, a8, sub_1D5C14BE8);
  return v27;
}

uint64_t sub_1D62F2F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5EE5AF8(a2, &v13);
  v10 = a3;
  sub_1D5EE5AF8(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F2FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F76E40(a2, &v13);
  v10 = a3;
  sub_1D5F76E40(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F30D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F76D3C(a2, &v13);
  v10 = a3;
  sub_1D5F76D3C(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
  return v9;
}

uint64_t GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v43 = a4;
  v47 = a1;
  v10 = *&v4[*(type metadata accessor for GroupLayoutBindingContext() + 60)];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v44 = v5;
    v45 = a2;
    v46 = a3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v11, 0);
    v12 = v53;
    v13 = v10 + 32;
    do
    {
      sub_1D5BD03B0(v13, v48);
      sub_1D5B68374(&v49, v50);
      sub_1D5BD03E8(v48);
      v53 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5BD0BA0((v14 > 1), v15 + 1, 1);
      }

      v16 = v51;
      v17 = v52;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
      v19 = MEMORY[0x1EEE9AC00](v18, v18);
      v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      sub_1D5BD0BE4(v15, v21, &v53, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v50);
      v12 = v53;
      v13 += 72;
      --v11;
    }

    while (v11);
    a2 = v45;
    a3 = v46;
    v6 = v44;
  }

  v23 = v7;
  v24 = v6;
  v25 = sub_1D5BF08EC(v12, a2, a3);

  if (!v24)
  {
    v27 = *(v25 + 16);
    v28 = v47;
    if (v47 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v27 < v47)
      {

        sub_1D5ED8048();
        swift_allocError();
        *v29 = v28;
        *(v29 + 8) = v27;
        *(v29 + 16) = a2;
        *(v29 + 24) = a3;
        v30 = v48[1];
        *(v29 + 32) = v48[0];
        *(v29 + 48) = v30;
        *(v29 + 64) = 2;
        swift_willThrow();

        return v23;
      }

      v27 = v47;
    }

    if ((*v7 & 1) == 0 && v43)
    {
      v31 = sub_1D62F03D8(v25);

      v25 = v31;
    }

    v35 = sub_1D691601C(v27, v25);
    if (v34)
    {
      v37 = v34;
      v38 = v33;
      v39 = v32;
      sub_1D72647AC();
      swift_unknownObjectRetain_n();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
        swift_unknownObjectRelease();
        v40 = MEMORY[0x1E69E7CC0];
      }

      v41 = *(v40 + 16);

      if (__OFSUB__(v37 >> 1, v38))
      {
        __break(1u);
      }

      else if (v41 == (v37 >> 1) - v38)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v23)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v23;
      }

      swift_unknownObjectRelease();
      v34 = v37;
      v33 = v38;
      v32 = v39;
    }

    sub_1D5EC2874(v35, v32, v33, v34);
    v23 = v36;
    swift_unknownObjectRelease();
  }

  return v23;
}

uint64_t sub_1D62F3514(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for GroupLayoutBindingContext();
  v4 = *(a1 + *(v39 + 60));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v5, 0);
    v6 = v40;
    v7 = v4 + 32;
    do
    {
      sub_1D5BD03B0(v7, v46);
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      v8 = sub_1D725AA4C();
      v10 = v9;
      sub_1D5BD03E8(v46);
      v12 = *(v40 + 16);
      v11 = *(v40 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      }

      *(v40 + 16) = v12 + 1;
      v13 = v40 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v7 += 72;
      --v5;
    }

    while (v5);
  }

  v14 = sub_1D5B86020(v6);

  v37 = *(v39 + 60);
  v38 = v2;
  v16 = *(v2 + v37);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v14 + 56;
    v20 = MEMORY[0x1E69E7CC0];
    while (v18 < *(v16 + 16))
    {
      sub_1D5BD03B0(v16 + 32 + 72 * v18, v46);
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      v21 = sub_1D725AA4C();
      v23 = v22;
      if (*(v14 + 16) && (v24 = v21, sub_1D7264A0C(), sub_1D72621EC(), v25 = sub_1D7264A5C(), v26 = -1 << *(v14 + 32), v27 = v25 & ~v26, ((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v14 + 48) + 16 * v27);
          v30 = *v29 == v24 && v29[1] == v23;
          if (v30 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v19 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v43 = v47;
        v44 = v48;
        v45 = v49;
        v41 = v46[0];
        v42 = v46[1];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D5BD06F0(0, *(v20 + 16) + 1, 1);
        }

        v32 = *(v20 + 16);
        v31 = *(v20 + 24);
        if (v32 >= v31 >> 1)
        {
          result = sub_1D5BD06F0((v31 > 1), v32 + 1, 1);
        }

        *(v20 + 16) = v32 + 1;
        v33 = v20 + 72 * v32;
        *(v33 + 32) = v41;
        *(v33 + 96) = v45;
        *(v33 + 64) = v43;
        *(v33 + 80) = v44;
        *(v33 + 48) = v42;
      }

      else
      {
LABEL_8:

        result = sub_1D5BD03E8(v46);
      }

      if (++v18 == v17)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_27:

    *(v38 + v37) = v20;
    v34 = *(v39 + 56);
    v35 = *(v38 + v34);

    v36 = sub_1D5BD0710(v35, v14, sub_1D62F3E3C);

    result = swift_bridgeObjectRelease_n();
    *(v38 + v34) = v36;
  }

  return result;
}

Swift::Int __swiftcall GroupLayoutBindingContext.count(forSlotIdentifier:)(Swift::String_optional forSlotIdentifier)
{
  object = forSlotIdentifier.value._object;
  countAndFlagsBits = forSlotIdentifier.value._countAndFlagsBits;
  v4 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext() + 60));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20[1] = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v5, 0);
    v6 = v26;
    v7 = v4 + 32;
    do
    {
      sub_1D5BD03B0(v7, v21);
      sub_1D5B68374(&v22, v23);
      sub_1D5BD03E8(v21);
      v26 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D5BD0BA0((v8 > 1), v9 + 1, 1);
      }

      v10 = v24;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v13 = MEMORY[0x1EEE9AC00](v12, v12);
      v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_1D5BD0BE4(v9, v15, &v26, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v6 = v26;
      v7 += 72;
      --v5;
    }

    while (v5);
  }

  v17 = sub_1D5BF08EC(v6, countAndFlagsBits, object);

  v18 = *(v17 + 16);

  return v18;
}

uint64_t sub_1D62F3AA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedItemAuxiliaryItem();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[5];
  v31 = a2[4];
  v32 = v14;
  v33 = v18;
  v34 = v15;
  v19 = type metadata accessor for GroupLayoutBindingContext();
  *(a3 + v19[14]) = MEMORY[0x1E69E7CC8];
  v20 = MEMORY[0x1E69E7CC0];
  *(a3 + v19[15]) = MEMORY[0x1E69E7CC0];
  *(a3 + v19[19]) = 0;
  v35 = a1;
  sub_1D5B68374(a1, a3 + 8);
  *(a3 + 48) = sub_1D5BF796C(v20);
  sub_1D5B7F04C(0, &unk_1EDF19A00, &type metadata for FeedSlot, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  v36 = v32;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v31;
  v41 = v18;
  sub_1D6724598((v21 + 32));
  v36 = v21;
  sub_1D5B7F04C(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
  sub_1D6306FC4();
  sub_1D5BCAF5C();
  *(a3 + 72) = sub_1D72623BC();
  *(a3 + 80) = v21;
  *(a3 + 56) = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CC0];
  *(a3 + 64) = sub_1D605B514(MEMORY[0x1E69E7CC0]);
  *(a3 + v19[16]) = 0;
  v23 = v19[13];
  v24 = *MEMORY[0x1E69D7218];
  v25 = sub_1D725A0AC();
  (*(*(v25 - 8) + 104))(a3 + v23, v24, v25);
  *a3 = 1;
  *(a3 + 96) = sub_1D605B66C(v22);
  *(a3 + v19[18]) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + v19[17]) = 0;
  *(a3 + 88) = 1;

  v26 = *(v16 + 16);
  if (v26)
  {
    v27 = v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v28 = *(v30 + 72);
    do
    {
      sub_1D5BD86D4(v27, v13, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BD86D4(v13, v9, type metadata accessor for FeedItem);
      sub_1D5BCF630(v13, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BCEE08(v9);
      sub_1D5BCF630(v9, type metadata accessor for FeedItem);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D62F3E3C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v3 = *result;
  v30 = *(*result + 16);
  if (v30)
  {
    v5 = 0;
    v29 = v3 + 32;
    v6 = a2 + 56;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      sub_1D5B68374(v29 + 40 * v5, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v8 = sub_1D725AA4C();
      v10 = v9;
      if (*(a2 + 16) && (v11 = v8, sub_1D7264A0C(), sub_1D72621EC(), v12 = sub_1D7264A5C(), v13 = -1 << *(a2 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(a2 + 48) + 16 * v14);
          v17 = *v16 == v11 && v16[1] == v10;
          if (v17 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1D5B63F14(&v34, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5BD0BA0(0, *(v7 + 16) + 1, 1);
          v7 = v36;
        }

        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5BD0BA0((v19 > 1), v20 + 1, 1);
        }

        v21 = v32;
        v22 = v33;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        v24 = MEMORY[0x1EEE9AC00](v23, v23);
        v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26, v24);
        sub_1D5BD0BE4(v20, v26, &v36, v21, v22);
        result = __swift_destroy_boxed_opaque_existential_1(v31);
        v7 = v36;
      }

      else
      {
LABEL_3:

        result = __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      if (++v5 == v30)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *v28 = v7;
  }

  return result;
}

uint64_t GroupLayoutBindingContext.count.getter()
{
  v1 = type metadata accessor for GroupLayoutBindingContext();
  v2 = 0;
  result = 0;
  v4 = *(v0 + *(v1 + 56));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16);
    v12 = __OFADD__(result, v11);
    result += v11;
    if (v12)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return result;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double sub_1D62F41C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = type metadata accessor for GroupLayoutBindingContext();
  v8 = *(v25 + 56);
  v9 = *(v3 + v8);
  v10 = *(v9 + 16);

  v26 = a2;
  if (v10 && (v11 = sub_1D5BCF83C(0x6F4D6E6967756C50, 0xEB000000006C6564, a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D5BDEE24(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1D5BDEE24((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = sub_1D725CC1C();
  v28 = v16;
  v17 = sub_1D5B7EEE0(&qword_1EDF17308, MEMORY[0x1E69D7608]);
  v29 = v17;
  *&v27 = a1;
  v13[2] = v15 + 1;
  sub_1D5B63F14(&v27, &v13[5 * v15 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = *(v4 + v8);
  sub_1D5BCF690(v13, 0x6F4D6E6967756C50, 0xEB000000006C6564, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v27;
  v19 = *(v25 + 60);
  v20 = *(v4 + v19);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1D5BCFD9C(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1D5BCFD9C((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[72 * v22];
  *(v23 + 4) = 0x6F4D6E6967756C50;
  *(v23 + 5) = 0xEB000000006C6564;
  *(v23 + 6) = v26;
  *(v23 + 7) = a3;
  *(v23 + 8) = a1;
  result = *&v27;
  *(v23 + 72) = v27;
  *(v23 + 11) = v16;
  *(v23 + 12) = v17;
  *(v4 + v19) = v20;
  return result;
}

double sub_1D62F4468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v31 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x4F70614764656546, 0xEE00656E696C6666, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6307094(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v33 = &type metadata for FeedGapOffline;
  v17 = sub_1D63070F0();
  v34 = v17;
  v18 = swift_allocObject();
  *&v32 = v18;
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v32, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x4F70614764656546, 0xEE00656E696C6666, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v32;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = *(v8 + 60);
  v26 = *(v4 + v25);
  sub_1D6307094(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  strcpy(v29 + 32, "FeedGapOffline");
  v29[47] = -18;
  *(v29 + 6) = v31;
  *(v29 + 7) = a3;
  *(v29 + 8) = v22;
  result = *&v32;
  *(v29 + 72) = v32;
  *(v29 + 11) = &type metadata for FeedGapOffline;
  *(v29 + 12) = v17;
  *(v4 + v25) = v26;
  return result;
}

__n128 sub_1D62F477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext();
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x4562655764656546, 0xEC0000006465626DLL, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedWebEmbed);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedWebEmbed);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedWebEmbed);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x4562655764656546, 0xEC0000006465626DLL, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedWebEmbed);
  strcpy(&v41, "FeedWebEmbed");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

double sub_1D62F4AF4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v35 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5ECF2C4(a1, &v36);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v37 = &type metadata for FeedIssue;
  v17 = sub_1D5EE5AA4();
  v38 = v17;
  v18 = swift_allocObject();
  *&v36 = v18;
  v19 = a1[7];
  v18[7] = a1[6];
  v18[8] = v19;
  *(v18 + 137) = *(a1 + 121);
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v21 = a1[5];
  v18[5] = a1[4];
  v18[6] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v36, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7573734964656546, 0xE900000000000065, v35, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v36;
  v24 = swift_allocObject();
  v25 = a1[3];
  v24[3] = a1[2];
  v24[4] = v25;
  *(v24 + 137) = *(a1 + 121);
  v26 = a1[7];
  v24[7] = a1[6];
  v24[8] = v26;
  v27 = a1[5];
  v24[5] = a1[4];
  v24[6] = v27;
  v28 = a1[1];
  v24[1] = *a1;
  v24[2] = v28;
  v29 = *(v8 + 60);
  v30 = *(v4 + v29);
  sub_1D5ECF2C4(a1, &v36);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D5BCFD9C(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1D5BCFD9C((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[72 * v32];
  *(v33 + 4) = 0x7573734964656546;
  *(v33 + 5) = 0xE900000000000065;
  *(v33 + 6) = v35;
  *(v33 + 7) = a3;
  *(v33 + 8) = v24;
  result = *&v36;
  *(v33 + 72) = v36;
  *(v33 + 11) = &type metadata for FeedIssue;
  *(v33 + 12) = v17;
  *(v4 + v29) = v30;
  return result;
}

double sub_1D62F4E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x6174614364656546, 0xEF6D657449676F6CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F76E40(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedCatalogItem;
  v17 = sub_1D5F76E9C();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F76E40(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F76EF0(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x6174614364656546, 0xEF6D657449676F6CLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5F76E40(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x6174614364656546;
  *(v24 + 5) = 0xEF6D657449676F6CLL;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedCatalogItem;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

double sub_1D62F50EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x67615464656546, 0xE700000000000000, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5EE5AF8(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedTag;
  v17 = sub_1D5EE5BA8();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5EE5AF8(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5EE5B54(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x67615464656546, 0xE700000000000000, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5EE5AF8(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x67615464656546;
  *(v24 + 5) = 0xE700000000000000;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedTag;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

__n128 sub_1D62F53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext();
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedCustomItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF15710, type metadata accessor for FeedCustomItem);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedCustomItem);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedCustomItem);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x7473754364656546, 0xEE006D6574496D6FLL, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedCustomItem);
  strcpy(&v41, "FeedCustomItem");
  HIBYTE(v41) = -18;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

double sub_1D62F572C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x6574614364656546, 0xEC00000079726F67, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F76D3C(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedCategory;
  v17 = sub_1D5F76D98();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F76D3C(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F76DEC(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x6574614364656546, 0xEC00000079726F67, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5F76D3C(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  strcpy(v24 + 32, "FeedCategory");
  v24[45] = 0;
  *(v24 + 23) = -5120;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedCategory;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

__n128 sub_1D62F5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for FeedEngagementBanner();
  MEMORY[0x1EEE9AC00](v35, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for GroupLayoutBindingContext();
  v10 = *(v34 + 56);
  v38 = v3;
  v11 = *(v3 + v10);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1D5BCF83C(0xD000000000000014, 0x80000001D73D1900, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v9, type metadata accessor for FeedEngagementBanner);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D5BDEE24(0, v15[2] + 1, 1, v15);
  }

  v18 = v15[2];
  v17 = v15[3];
  v36 = a1;
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D5BDEE24((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = v35;
  v40.n128_u64[1] = v35;
  v20 = sub_1D5B7EEE0(&qword_1EDF14740, type metadata accessor for FeedEngagementBanner);
  *&v41 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_1D5BD86D4(v9, boxed_opaque_existential_1, type metadata accessor for FeedEngagementBanner);
  v15[2] = v18 + 1;
  sub_1D5B63F14(&v39, &v15[5 * v18 + 4]);
  sub_1D5BCF630(v9, type metadata accessor for FeedEngagementBanner);

  v22 = v38;

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(v22 + v10);
  v24 = v37;
  sub_1D5BCF690(v15, 0xD000000000000014, 0x80000001D73D1900, v37, a3, v23);

  *(v22 + v10) = v39;
  *(&v42 + 1) = v19;
  v43 = v20;
  v25 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v36, v25, type metadata accessor for FeedEngagementBanner);
  *&v39 = 0xD000000000000014;
  *(&v39 + 1) = 0x80000001D73D1900;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = a3;
  v26 = *(v34 + 60);
  v27 = *(v22 + v26);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1D5BCFD9C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1D5BCFD9C((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[72 * v29];
  *(v30 + 2) = v39;
  result = v40;
  v32 = v41;
  v33 = v42;
  *(v30 + 12) = v43;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  *(v30 + 3) = result;
  *(v38 + v26) = v27;
  return result;
}

double sub_1D62F5D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v29 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x726F705364656546, 0xEF746E6576457374, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6307144(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v31 = &type metadata for FeedSportsEvent;
  v17 = sub_1D62DC038();
  v32 = v17;
  v18 = swift_allocObject();
  *&v30 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v30, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x726F705364656546, 0xEF746E6576457374, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30;
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  v23 = *(v8 + 60);
  v24 = *(v4 + v23);
  sub_1D6307144(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D5BCFD9C(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1D5BCFD9C((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[72 * v26];
  *(v27 + 4) = 0x726F705364656546;
  *(v27 + 5) = 0xEF746E6576457374;
  *(v27 + 6) = v29;
  *(v27 + 7) = a3;
  *(v27 + 8) = v21;
  result = *&v30;
  *(v27 + 72) = v30;
  *(v27 + 11) = &type metadata for FeedSportsEvent;
  *(v27 + 12) = v17;
  *(v4 + v23) = v24;
  return result;
}

double sub_1D62F606C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F2DEAC(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedPuzzle;
  v17 = sub_1D63071A0();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F2DEAC(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F2DF58(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7A7A755064656546, 0xEA0000000000656CLL, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5F2DEAC(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x7A7A755064656546;
  *(v24 + 5) = 0xEA0000000000656CLL;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedPuzzle;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

double sub_1D62F6340(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v31 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D63071F4(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v33 = &type metadata for FeedPuzzleType;
  v17 = sub_1D6307250();
  v34 = v17;
  v18 = swift_allocObject();
  *&v32 = v18;
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v32, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7A7A755064656546, 0xEE0065707954656CLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v32;
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v24 = a1[3];
  v22[3] = a1[2];
  v22[4] = v24;
  v25 = *(v8 + 60);
  v26 = *(v4 + v25);
  sub_1D63071F4(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  strcpy(v29 + 32, "FeedPuzzleType");
  v29[47] = -18;
  *(v29 + 6) = v31;
  *(v29 + 7) = a3;
  *(v29 + 8) = v22;
  result = *&v32;
  *(v29 + 72) = v32;
  *(v29 + 11) = &type metadata for FeedPuzzleType;
  *(v29 + 12) = v17;
  *(v4 + v25) = v26;
  return result;
}

__n128 sub_1D62F6634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v35, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for GroupLayoutBindingContext();
  v10 = *(v34 + 56);
  v38 = v3;
  v11 = *(v3 + v10);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1D5BCF83C(0xD000000000000013, 0x80000001D73C3770, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v9, type metadata accessor for FeedPuzzleStatistic);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D5BDEE24(0, v15[2] + 1, 1, v15);
  }

  v18 = v15[2];
  v17 = v15[3];
  v36 = a1;
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D5BDEE24((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = v35;
  v40.n128_u64[1] = v35;
  v20 = sub_1D5B7EEE0(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic);
  *&v41 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_1D5BD86D4(v9, boxed_opaque_existential_1, type metadata accessor for FeedPuzzleStatistic);
  v15[2] = v18 + 1;
  sub_1D5B63F14(&v39, &v15[5 * v18 + 4]);
  sub_1D5BCF630(v9, type metadata accessor for FeedPuzzleStatistic);

  v22 = v38;

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(v22 + v10);
  v24 = v37;
  sub_1D5BCF690(v15, 0xD000000000000013, 0x80000001D73C3770, v37, a3, v23);

  *(v22 + v10) = v39;
  *(&v42 + 1) = v19;
  v43 = v20;
  v25 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v36, v25, type metadata accessor for FeedPuzzleStatistic);
  *&v39 = 0xD000000000000013;
  *(&v39 + 1) = 0x80000001D73C3770;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = a3;
  v26 = *(v34 + 60);
  v27 = *(v22 + v26);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1D5BCFD9C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1D5BCFD9C((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[72 * v29];
  *(v30 + 2) = v39;
  result = v40;
  v32 = v41;
  v33 = v42;
  *(v30 + 12) = v43;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  *(v30 + 3) = result;
  *(v38 + v26) = v27;
  return result;
}

double sub_1D62F69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext();
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v41 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7779615064656546, 0xEB000000006C6C61, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D62DAD08(a1, &v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v43 = &type metadata for FeedPaywall;
  v17 = sub_1D62DBF34();
  v44 = v17;
  v18 = swift_allocObject();
  *&v42 = v18;
  v19 = *(a1 + 208);
  *(v18 + 208) = *(a1 + 192);
  *(v18 + 224) = v19;
  *(v18 + 240) = *(a1 + 224);
  *(v18 + 256) = *(a1 + 240);
  v20 = *(a1 + 144);
  *(v18 + 144) = *(a1 + 128);
  *(v18 + 160) = v20;
  v21 = *(a1 + 176);
  *(v18 + 176) = *(a1 + 160);
  *(v18 + 192) = v21;
  v22 = *(a1 + 80);
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = v22;
  v23 = *(a1 + 112);
  *(v18 + 112) = *(a1 + 96);
  *(v18 + 128) = v23;
  v24 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v24;
  v25 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v25;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v42, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7779615064656546, 0xEB000000006C6C61, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v42;
  v27 = swift_allocObject();
  v28 = *(a1 + 208);
  *(v27 + 208) = *(a1 + 192);
  *(v27 + 224) = v28;
  *(v27 + 240) = *(a1 + 224);
  *(v27 + 256) = *(a1 + 240);
  v29 = *(a1 + 144);
  *(v27 + 144) = *(a1 + 128);
  *(v27 + 160) = v29;
  v30 = *(a1 + 176);
  *(v27 + 176) = *(a1 + 160);
  *(v27 + 192) = v30;
  v31 = *(a1 + 80);
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = v31;
  v32 = *(a1 + 112);
  *(v27 + 112) = *(a1 + 96);
  *(v27 + 128) = v32;
  v33 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v33;
  v34 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v34;
  v35 = *(v8 + 60);
  v36 = *(v4 + v35);
  sub_1D62DAD08(a1, &v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1D5BCFD9C(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1D5BCFD9C((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[72 * v38];
  *(v39 + 4) = 0x7779615064656546;
  *(v39 + 5) = 0xEB000000006C6C61;
  *(v39 + 6) = v41;
  *(v39 + 7) = a3;
  *(v39 + 8) = v27;
  result = *&v42;
  *(v39 + 72) = v42;
  *(v39 + 11) = &type metadata for FeedPaywall;
  *(v39 + 12) = v17;
  *(v4 + v35) = v36;
  return result;
}

__n128 sub_1D62F6CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GroupLayoutBindingContext();
  v12 = *(v33 + 56);
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v11, type metadata accessor for FeedRecipe);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v34 = a1;
  v35 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v37.n128_u64[1] = v8;
  v20 = sub_1D5B7EEE0(&qword_1EDF12E00, type metadata accessor for FeedRecipe);
  *&v38 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_1D5BD86D4(v11, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v36, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v11, type metadata accessor for FeedRecipe);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *(v4 + v12);
  v23 = v35;
  sub_1D5BCF690(v17, 0x6963655264656546, 0xEA00000000006570, v35, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v12) = v36;
  *(&v39 + 1) = v8;
  v40 = v20;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v38);
  sub_1D5BD86D4(v34, v24, type metadata accessor for FeedRecipe);
  *&v36 = 0x6963655264656546;
  *(&v36 + 1) = 0xEA00000000006570;
  v37.n128_u64[0] = v23;
  v37.n128_u64[1] = a3;
  v25 = *(v33 + 60);
  v26 = *(v4 + v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  *(v29 + 2) = v36;
  result = v37;
  v31 = v38;
  v32 = v39;
  *(v29 + 12) = v40;
  *(v29 + 4) = v31;
  *(v29 + 5) = v32;
  *(v29 + 3) = result;
  *(v4 + v25) = v26;
  return result;
}

__n128 GroupLayoutBindingContext.bind<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v50 - v17;
  v56 = v11;
  v20 = *(v11 + 16);
  v19 = v11 + 16;
  v58 = v21;
  v22 = v20;
  (v20)(v50 - v17, v16);

  v51 = v18;
  v57 = a5;
  sub_1D61A57CC(v18, a2, a3, a4, &v60);
  v23 = v60;
  v24 = v61;
  v55 = type metadata accessor for GroupLayoutBindingContext();
  v25 = *(v55 + 56);
  v59 = v6;
  v52 = v25;
  v53 = v24.n128_u64[0];
  v26 = *(v6 + v25);
  if (*(v26 + 16) && (v27 = sub_1D5BCF83C(v23, *(&v23 + 1), v24.n128_i64[0], v24.n128_i64[1]), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v22(v13, v58, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v24.n128_u64[0];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D5BDEE24(0, v29[2] + 1, 1, v29);
    v65 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  v54 = v23;
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1D5BDEE24((v31 > 1), v32 + 1, 1, v29);
    v65 = v29;
  }

  v33 = v51;
  v50[0] = v22;
  v50[1] = v19;
  v22(v51, v13, a4);
  sub_1D6302700(v32, v33, &v65, a4, v57);
  v34 = v56;
  (*(v56 + 8))(v13, a4);

  v35 = v59;
  v36 = v52;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = *(v35 + v36);
  v38 = v29;
  v40 = v53;
  v39 = v54;
  sub_1D5BCF690(v38, v54, *(&v23 + 1), v53, v24.n128_i64[1], v37);

  *(v35 + v36) = v60;
  (v50[0])(v33, v58, a4);
  *&v60 = v39;
  *(&v60 + 1) = *(&v23 + 1);
  v61.n128_u64[0] = v40;
  v61.n128_u64[1] = v24.n128_u64[1];
  *(&v63 + 1) = a4;
  v64 = v57;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  (*(v34 + 32))(boxed_opaque_existential_1, v33, a4);
  v42 = *(v55 + 60);
  v43 = *(v35 + v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1D5BCFD9C(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1D5BCFD9C((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[72 * v45];
  *(v46 + 2) = v60;
  result = v61;
  v48 = v62;
  v49 = v63;
  *(v46 + 12) = v64;
  *(v46 + 4) = v48;
  *(v46 + 5) = v49;
  *(v46 + 3) = result;
  *(v59 + v42) = v43;
  return result;
}

uint64_t sub_1D62F744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, _BYTE *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v45 = a2;
  v46 = a6;
  v43 = a7;
  v44 = a1;
  v12 = sub_1D726393C();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  v20 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a3;
  result = type metadata accessor for GroupLayoutBindingContext();
  v27 = result;
  v28 = *(v8 + *(result + 76));
  if (v28 < *(v8 + *(result + 68)))
  {
    sub_1D62F881C(v44, v25, v45, a4 & 1, a5, v46, v19);
    if ((*(v20 + 48))(v19, 1, a5) != 1)
    {
      v37 = *(v20 + 32);
      v37(v24, v19, a5);
      v38 = v43;
      v37(v43, v24, a5);
      return (*(v20 + 56))(v38, 0, 1, a5);
    }

    result = (*(v41 + 8))(v19, v42);
  }

  v29 = *(v8 + *(v27 + 72));
  v30 = __OFSUB__(v29, v28);
  v31 = v29 - v28;
  if (v30)
  {
    __break(1u);
    return result;
  }

  if (v31 > 0)
  {
    return sub_1D62F8A74(v8, v44, v25, v45, a4 & 1, a5, v46, 0, v43, 1);
  }

  v32 = a4;
  v33 = a4 & 1;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  sub_1D62F8A74(v8, v44, v25, v45, v33, a5, v46, 4096, v15, 0);
  v40 = *(v20 + 48);
  if (v40(v15, 1, a5) != 1)
  {
    v38 = v43;
    (*(v20 + 32))(v43, v15, a5);
    return (*(v20 + 56))(v38, 0, 1, a5);
  }

  sub_1D62F8A74(v8, v34, v25, v35, v32 & 1, a5, v36, 0, v43, 1);
  result = (v40)(v15, 1, a5);
  if (result != 1)
  {
    return (*(v41 + 8))(v15, v42);
  }

  return result;
}

uint64_t sub_1D62F77E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v1 = sub_1D725AA4C();
  v3 = v2;
  if (v1 == sub_1D725AA4C() && v3 == v4)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D62F78BC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a1 && (*a2 & 1) == 0)
  {

    v5 = sub_1D614BCAC(a3);

    return v5;
  }

  else
  {
  }
}

uint64_t sub_1D62F7928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v8 = sub_1D72627FC();

  swift_getWitnessTable();
  v21 = sub_1D7263E7C();
  v17 = a3;
  v18 = a4;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1D5B874E4(sub_1D630B9B4, v16, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v13 = *(v11 + 16);
  if (v13 <= a2)
  {

    return a1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1D62DCAC8(v11 + 32, a2, (2 * v13) | 1);

    v21 = a1;
    MEMORY[0x1EEE9AC00](v14, v15);

    a1 = sub_1D7263E7C();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D62F7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a6;
  v12 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v14 + 16))(v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  result = sub_1D72624EC();
  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  while (1)
  {
    if (v18 == v17)
    {

      return 0;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v19 = *(v16 + 8 * v17 + 32);
    result = sub_1D726279C();
    ++v17;
    if (result >= v19 || v19 == 0x7FFFFFFFFFFFFFFFLL)
    {

      *&v25 = a2;
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7262CBC();
      v25 = v27;
      v26 = v28;
      sub_1D7263AFC();
      swift_getWitnessTable();
      v21 = sub_1D726281C();
      *&v27 = a3;
      MEMORY[0x1EEE9AC00](v21, v22);
      v24[-6] = a4;
      v24[-5] = a5;
      v24[-4] = v24[0];
      v24[-3] = a7;
      v24[-2] = v23;

      swift_getWitnessTable();
      sub_1D7263E7C();
      return v21;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D62F7D9C()
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D72624DC() & 1) == 0;
}

uint64_t sub_1D62F7E38()
{
  v0 = sub_1D725AA4C();
  v2 = v1;
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D62F7EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, _BYTE *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v94 = a7;
  v80 = a5;
  v14 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v78 = &v71 - v16;
  v17 = sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v18);
  v20 = &v71 - v19;
  v81 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v71 - v26;
  v83 = swift_getTupleTypeMetadata2();
  v93 = sub_1D726393C();
  v88 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v28);
  v92 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v71 - v32;
  v90 = *a2;
  v82 = *a4;
  v87 = *(a4 + 8);
  *&v96 = a1;
  WitnessTable = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v35 = swift_getTupleTypeMetadata2();
    v36 = *(*(v35 - 8) + 56);
    v37 = a8;
LABEL_20:
    v60 = 1;
    return v36(v37, v60, 1, v35);
  }

  else
  {
    v38 = *v91;
    v91 = a6;
    v74 = a8;
    v72 = v20;
    v73 = WitnessTable;
    if ((v38 & 1) != 0 || !a3)
    {
    }

    else
    {
      a1 = sub_1D614BCAC(a1);
    }

    v99 = a1;
    v39 = swift_getWitnessTable();
    MEMORY[0x1DA6F9AD0](v95, v17, v39);
    v75 = a1;

    v99 = *&v95[0];
    sub_1D72640AC();
    sub_1D726407C();
    v76 = v17;
    v89 = sub_1D726409C();
    v40 = (v88 + 32);
    v41 = v83;
    v88 = v83 - 8;
    v42 = (v81 + 32);
    v43 = v87;
    if (!v82)
    {
      v43 = 1;
    }

    v87 = v43;
    v44 = (v81 + 8);
    v86 = (v94 + 24);
    v85 = (v94 + 24) & 0xFFFFFFFFFFFFLL | 0xCD14000000000000;
    v45 = v91;
    while (1)
    {
      v46 = v92;
      sub_1D726408C();
      (*v40)(v33, v46, v93);
      if ((*(*(v41 - 8) + 48))(v33, 1, v41) == 1)
      {
        break;
      }

      v84 = *v33;
      v47 = *v42;
      (*v42)(v27, &v33[*(v41 + 48)], v45);
      v48 = *v86;
      if (v87)
      {
        v49 = v45;
        v50 = 0;
        v51 = v94;
      }

      else
      {
        v52 = v42;
        v53 = v27;
        v54 = v94;
        v48(v95, v45, v94);
        v51 = v54;
        v27 = v53;
        v42 = v52;
        v41 = v83;
        v49 = v45;
        v50 = (v82 & ~*&v95[0]) == 0;
      }

      v48(v95, v49, v51);
      if ((v90 & ~*&v95[0]) == 0 && !v50)
      {

        *&v95[0] = v75;
        v55 = v79;
        sub_1D72627CC();
        v56 = v91;
        (*v44)(v27, v91);
        v57 = swift_getTupleTypeMetadata2();
        v58 = *(v57 + 48);
        v59 = v74;
        (v47)(v74, v55, v56);
        *(v59 + v58) = *&v95[0];
        v36 = *(*(v57 - 8) + 56);
        v37 = v59;
LABEL_23:
        v60 = 0;
        v35 = v57;
        return v36(v37, v60, 1, v35);
      }

      v45 = v91;
      (*v44)(v27, v91);
    }

    if (v80)
    {

      v35 = swift_getTupleTypeMetadata2();
      v36 = *(*(v35 - 8) + 56);
      v37 = v74;
      goto LABEL_20;
    }

    v61 = v75;
    v99 = v75;
    v62 = v78;
    sub_1D7262C9C();
    result = (*(v81 + 48))(v62, 1, v45);
    if (result != 1)
    {
      v64 = TupleTypeMetadata2;
      v65 = *(TupleTypeMetadata2 + 48);
      v94 = *v42;
      v66 = v72;
      (v94)(v72, v62, v45);
      v98 = v61;
      *&v95[0] = 1;
      sub_1D630B814(0, &qword_1EC885990, MEMORY[0x1E69E6D08]);
      swift_getWitnessTable();
      v67 = v45;
      sub_1D630B874();
      sub_1D7261F9C();

      v95[0] = v96;
      v95[1] = v97;
      sub_1D7263AFC();
      swift_getWitnessTable();
      *&v66[v65] = sub_1D726281C();
      v68 = *&v66[*(v64 + 48)];
      v57 = swift_getTupleTypeMetadata2();
      v69 = *(v57 + 48);
      v70 = v74;
      (v94)(v74, v66, v67);
      *(v70 + v69) = v68;
      v36 = *(*(v57 - 8) + 56);
      v37 = v70;
      goto LABEL_23;
    }

    __break(1u);
  }

  return result;
}