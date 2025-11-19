uint64_t sub_22C392CA4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[8];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a4[10];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C392E00()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22C392E48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C392E88()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C392EC8()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C392F0C()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22C392F64(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a3[11];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C3930C4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a4[11];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C393220()
{
  sub_22C4C36D0();
  v1 = *(v0 + 96);

  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C393254()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C393294()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C3932D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 64));
  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C393314()
{
  sub_22C4C36D0();
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[24];
  swift_unknownObjectRelease();
  sub_22C36FF94(v0 + 26);
  sub_22C36FF94(v0 + 31);

  return MEMORY[0x2821FE8E8](v0, 289, 7);
}

uint64_t sub_22C393378()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  v1 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C3933D0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a3[11];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C393530(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a4[11];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C39368C()
{
  sub_22C4C36D0();
  v1 = *(v0 + 96);

  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3936C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C393700()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C393744()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 64));
  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C393780()
{
  sub_22C4C36D0();
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[24];
  swift_unknownObjectRelease();
  sub_22C36FF94(v0 + 26);
  sub_22C36FF94(v0 + 31);

  return MEMORY[0x2821FE8E8](v0, 289, 7);
}

uint64_t sub_22C3937E4()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  v1 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C39383C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a3[11];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C39399C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v12 = a4[11];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C393AF8()
{
  sub_22C4C36D0();
  v1 = *(v0 + 96);

  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C393B2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C393B6C()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C393BB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 64));
  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C393BEC()
{
  sub_22C4C36D0();
  sub_22C36FF94(v0 + 12);
  sub_22C36FF94(v0 + 17);
  v1 = v0[22];
  swift_unknownObjectRelease();
  v2 = v0[24];
  swift_unknownObjectRelease();
  sub_22C36FF94(v0 + 26);
  sub_22C36FF94(v0 + 31);

  return MEMORY[0x2821FE8E8](v0, 289, 7);
}

uint64_t sub_22C393C50()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  v1 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C393CA8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v19 = type metadata accessor for FullPlannerPreferences();
          v20 = sub_22C3699C8(v19);
          if (*(v21 + 84) == a2)
          {
            v11 = v20;
            v12 = a3[11];
          }

          else
          {
            v11 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
            v12 = a3[13];
          }
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C393E54(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v19 = type metadata accessor for FullPlannerPreferences();
          v20 = sub_22C3699C8(v19);
          if (*(v21 + 84) == a3)
          {
            v11 = v20;
            v12 = a4[11];
          }

          else
          {
            v11 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
            v12 = a4[13];
          }
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C393FFC()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  v1 = v0[12];

  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39403C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C394084()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 64));
  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3940C0()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C3940F8()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22C394140()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  v1 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C394190(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v19 = type metadata accessor for FullPlannerPreferences();
          v20 = sub_22C3699C8(v19);
          if (*(v21 + 84) == a2)
          {
            v11 = v20;
            v12 = a3[11];
          }

          else
          {
            v11 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
            v12 = a3[13];
          }
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C39433C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90077C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[7];
      }

      else
      {
        v16 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v19 = type metadata accessor for FullPlannerPreferences();
          v20 = sub_22C3699C8(v19);
          if (*(v21 + 84) == a3)
          {
            v11 = v20;
            v12 = a4[11];
          }

          else
          {
            v11 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
            v12 = a4[13];
          }
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C3944E4()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  v1 = v0[12];

  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C394524()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C39456C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_22C36FF94((v0 + 64));
  v2 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3945A4()
{
  sub_22C36FF94(v0 + 2);
  if (v0[10])
  {
    sub_22C36FF94(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C3945EC()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C394624()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22C39466C()
{
  sub_22C36FF94((v0 + 24));
  sub_22C36FF94((v0 + 64));
  v1 = sub_22C374B9C();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

BOOL sub_22C3946C4()
{
  v0 = sub_22C90B21C();

  return v0 != 0;
}

uint64_t sub_22C394748@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 200);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C3951E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
      v16 = sub_22C3699C8(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
        v19 = sub_22C3699C8(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[15];
        }

        else
        {
          v21 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
          v22 = sub_22C3699C8(v21);
          if (*(v23 + 84) != a2)
          {
            v25 = *(a1 + a3[33]);
            if (v25 >= 2)
            {
              return ((v25 + 2147483646) & 0x7FFFFFFF) + 1;
            }

            else
            {
              return 0;
            }
          }

          v9 = v22;
          v14 = a3[20];
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C3953E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22C3A5908(&qword_27D9BC1C8, &unk_22C918A20);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
        v21 = sub_22C3699C8(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[15];
        }

        else
        {
          v23 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
          result = sub_22C3699C8(v23);
          if (*(v25 + 84) != a3)
          {
            *(a1 + a4[33]) = a2 + 1;
            return result;
          }

          v11 = result;
          v16 = a4[20];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C395614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 29)
  {
    v4 = *(a1 + 16);
    v5 = (v4 >> 57) & 0x18 | v4 & 7;
    v6 = ((2 * v5) & 0x1E | (((v4 >> 57) & 0x18) >> 4)) ^ 0x1F;
    if (((2 * v5) & 0x1E) != 0)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
    v11 = a1 + *(a3 + 20);

    return sub_22C370B74(v11, a2, v10);
  }
}

void *sub_22C3956B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 29)
  {
    v6 = (~a2 >> 1) & 0xF | (16 * (~a2 & 0x1F));
    *result = 0;
    result[1] = 0;
    result[2] = (v6 | (v6 << 57)) & 0x3000000000000007;
    result[3] = 0;
  }

  else
  {
    v8 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
    v9 = v5 + *(a4 + 20);

    return sub_22C36C640(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22C395758(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22C369A48();
  v6 = sub_22C90077C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_15:

    return sub_22C370B74(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v17 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v16 = a3[7];
      }

      else
      {
        v20 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
        v21 = sub_22C3699C8(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v16 = a3[9];
        }

        else
        {
          v9 = type metadata accessor for FullPlannerPreferences();
          v16 = a3[10];
        }
      }
    }

    v10 = v3 + v16;
    goto LABEL_15;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22C395904(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22C369A48();
  v8 = sub_22C90077C();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
        v21 = sub_22C3699C8(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for FullPlannerPreferences();
          v16 = a4[10];
        }
      }
    }

    v12 = v4 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C395AC4()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C395B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_22C370B74(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for FullPlannerPreferences();
    v8 = a1 + *(a3 + 48);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 104);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_22C395C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 104) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for FullPlannerPreferences();
    v10 = a1 + *(a4 + 48);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C395CD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C395D08()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C395D50()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C395D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_22C370B74(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22C395E38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_22C36C640(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C395EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C908AEC();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C395F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C908AEC();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C395F8C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C395FC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C395FFC()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396030()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396064()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C396148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C3961F4()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396228()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39625C()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3962A0()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3962D4()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C396338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C36986C();
  v6 = sub_22C90077C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = type metadata accessor for FullPlannerPreferences();
    v10 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v10, v3, v9);
}

uint64_t sub_22C3963CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C36986C();
  v8 = sub_22C90077C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = type metadata accessor for FullPlannerPreferences();
    v12 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v12, v4, v4, v11);
}

uint64_t sub_22C39648C()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  sub_22C908AEC();
  v3 = sub_22C36ECCC(*(v0 + 28));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C3964F0()
{
  sub_22C3700E0();
  if (v1)
  {
    sub_22C50B5F0();
  }

  else
  {
    sub_22C36D3B4();
    sub_22C908AEC();
    v2 = sub_22C36FCD8(*(v0 + 28));

    sub_22C36C640(v2, v3, v4, v5);
  }
}

uint64_t sub_22C396584()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C37FDC4();
  }

  v4 = v1;
  v5 = v0;
  v6 = sub_22C3A5908(&qword_27D9BD818, &qword_22C9195B8);
  sub_22C3699C8(v6);
  if (*(v7 + 84) == v5)
  {
    v8 = v4[6];
  }

  else
  {
    v9 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
    sub_22C3699C8(v9);
    if (*(v10 + 84) == v5)
    {
      v8 = v4[7];
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v8 = v4[8];
    }
  }

  v11 = sub_22C36ECCC(v8);

  return sub_22C370B74(v11, v12, v13);
}

void sub_22C396688()
{
  sub_22C3700E0();
  if (v2)
  {
    sub_22C50B5F0();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_22C3A5908(&qword_27D9BD818, &qword_22C9195B8);
    sub_22C3699C8(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = v3[6];
    }

    else
    {
      v8 = sub_22C3A5908(&qword_27D9BD820, &unk_22C9195C0);
      sub_22C3699C8(v8);
      if (*(v9 + 84) == v4)
      {
        v7 = v3[7];
      }

      else
      {
        type metadata accessor for FullPlannerPreferences();
        v7 = v3[8];
      }
    }

    v10 = sub_22C36FCD8(v7);

    sub_22C36C640(v10, v11, v12, v13);
  }
}

uint64_t sub_22C39678C()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C3725D8(*(v0 + 64));
  }

  sub_22C374A1C();
  type metadata accessor for FullPlannerPreferences();
  v4 = sub_22C36ECCC(*(v1 + 24));

  return sub_22C370B74(v4, v5, v6);
}

void sub_22C3967F4()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    sub_22C36D3B4();
    type metadata accessor for FullPlannerPreferences();
    v4 = sub_22C36FCD8(*(v2 + 24));

    sub_22C36C640(v4, v5, v6, v7);
  }
}

uint64_t sub_22C39688C()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  type metadata accessor for FullPlannerPreferences();
  v3 = sub_22C36ECCC(*(v0 + 24));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C3968F0()
{
  sub_22C3700E0();
  if (v1)
  {
    sub_22C50B5F0();
  }

  else
  {
    sub_22C36D3B4();
    type metadata accessor for FullPlannerPreferences();
    v2 = sub_22C36FCD8(*(v0 + 24));

    sub_22C36C640(v2, v3, v4, v5);
  }
}

uint64_t sub_22C396954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(v3 + *(a3 + 20) + 24));
  }

  return sub_22C370B74(v3, a2, v7);
}

uint64_t sub_22C3969F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C36986C();
  v8 = sub_22C908AEC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C370078();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }

  return result;
}

uint64_t sub_22C396A88()
{
  sub_22C36986C();
  v2 = sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);

  return sub_22C370B74(v1, v0, v2);
}

uint64_t sub_22C396AD8()
{
  sub_22C36986C();
  sub_22C3A5908(&qword_27D9BB730, &unk_22C90FE30);
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C396B20()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396B54()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396B88()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396BBC()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C396BF8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_22C396C04()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C396D14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C396DC0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C396E08()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396E3C()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396EB8()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396EEC()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396F20()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C396F5C()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C374A1C();
  type metadata accessor for FullPlannerPreferences();
  v3 = sub_22C36ECCC(*(v0 + 32));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C396FC0()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for FullPlannerPreferences();
    v5 = sub_22C36ECCC(*(v4 + 32));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C397038()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39706C()
{
  v1 = *(v0 + 32);

  v2 = sub_22C3716D4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39709C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397160()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  v2 = sub_22C3716D4();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3971B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C397260(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C397308()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39733C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397370()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3973B4()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3973E8()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_22C397424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C3974D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C397580()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3975C8()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3975FC()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397680(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_22C38BA58();
    return (v4 + 1);
  }

  else
  {
    sub_22C374A1C();
    v6 = sub_22C908AEC();
    sub_22C3699C8(v6);
    if (*(v7 + 84) == v2)
    {
      v8 = v3[7];
    }

    else
    {
      v9 = sub_22C90077C();
      sub_22C3699C8(v9);
      if (*(v10 + 84) == v2)
      {
        v8 = v3[8];
      }

      else
      {
        type metadata accessor for FullPlannerPreferences();
        v8 = v3[9];
      }
    }

    v11 = sub_22C36ECCC(v8);

    return sub_22C370B74(v11, v12, v13);
  }
}

void sub_22C397770()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_22C908AEC();
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[7];
    }

    else
    {
      v10 = sub_22C90077C();
      sub_22C3699C8(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[8];
      }

      else
      {
        type metadata accessor for FullPlannerPreferences();
        v9 = v5[9];
      }
    }

    v12 = sub_22C36ECCC(v9);

    sub_22C36C640(v12, v13, v0, v14);
  }
}

uint64_t sub_22C397868(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    sub_22C38BA58();
    return (v4 + 1);
  }

  else
  {
    v6 = sub_22C374A1C();
    v7 = type metadata accessor for DynamicEnumerationRenderer_v1_0(v6);
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v2)
    {
      v9 = *(v3 + 24);
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v9 = *(v3 + 32);
    }

    v10 = sub_22C36ECCC(v9);

    return sub_22C370B74(v10, v11, v12);
  }
}

void sub_22C397918()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v9 = *(v5 + 32);
    }

    v10 = sub_22C36ECCC(v9);

    sub_22C36C640(v10, v11, v0, v12);
  }
}

uint64_t sub_22C3979CC()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22C36D6EC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C397A04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C397A3C()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397A70()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397AA4()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C397BA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C397C4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C397C84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C397CBC()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C397D34()
{
  v1 = *(v0 + 24);

  v2 = sub_22C36A8CC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397D64()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397D98()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36BE74();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C397DCC()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C397E00()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  sub_22C380498();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22C397E48()
{
  if (v0[3])
  {

    sub_22C36FF94(v0 + 4);
    sub_22C36FF94(v0 + 9);
    sub_22C36FF94(v0 + 14);
    sub_22C36FF94(v0 + 19);
    sub_22C36FF94(v0 + 24);
    v1 = v0[29];
    swift_unknownObjectRelease();
    v2 = v0[31];
    swift_unknownObjectRelease();
    sub_22C36FF94(v0 + 33);
    sub_22C36FF94(v0 + 38);
    sub_22C36FF94(v0 + 43);
  }

  return MEMORY[0x2821FE8E8](v0, 384, 7);
}

uint64_t sub_22C397ED4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C397F24()
{
  v1 = v0[3];

  sub_22C36FF94(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22C397F80()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C397FC0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22C398024()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C398080()
{
  v1 = v0[3];

  if (v0[7])
  {
    sub_22C36FF94(v0 + 4);
  }

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_22C39813C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C398174()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3981D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C398288(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C398334()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C39836C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3983A4()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3983EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C398434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolDefinitionGrammarGenerator_v5_0(0);

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C398480()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36BE74();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C3984B4()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3984E8()
{
  if (v0[3])
  {

    sub_22C36FF94(v0 + 4);
    sub_22C36FF94(v0 + 9);
    sub_22C36FF94(v0 + 14);
    sub_22C36FF94(v0 + 19);
    sub_22C36FF94(v0 + 24);
    v1 = v0[29];
    swift_unknownObjectRelease();
    v2 = v0[31];
    swift_unknownObjectRelease();
    sub_22C36FF94(v0 + 33);
    sub_22C36FF94(v0 + 38);
    sub_22C36FF94(v0 + 43);
  }

  return MEMORY[0x2821FE8E8](v0, 384, 7);
}

uint64_t sub_22C398574()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  sub_22C380498();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22C3985BC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C39860C()
{
  v1 = v0[3];

  sub_22C36FF94(v0 + 4);
  v2 = v0[9];

  v3 = v0[10];

  v4 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22C398668()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C3986A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_22C39870C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C398768()
{
  v1 = v0[3];

  if (v0[7])
  {
    sub_22C36FF94(v0 + 4);
  }

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_22C398810()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22C36D6EC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C398848()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39887C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3988B0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3988E8()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39891C()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C398964()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C398998(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }

    return (v2 + 1);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v4 = sub_22C54CE44();

    return sub_22C370B74(v4, v5, v6);
  }
}

uint64_t sub_22C398A18(uint64_t result, uint64_t a2, int a3)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v4 = sub_22C54CE44();

    return sub_22C36C640(v4, v5, a2, v6);
  }

  return result;
}

uint64_t sub_22C398A90()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C398AD8()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C398B0C()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C398B40()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C398B74(void *a1, int a2)
{
  if (a2 == 122)
  {
    v2 = ((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7));
    v3 = v2 ^ 0x7E;
    v4 = 128 - v2;
    if (v3 >= 0x7A)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    sub_22C901FAC();
    v6 = sub_22C54CE44();

    return sub_22C370B74(v6, v7, v8);
  }
}

unint64_t *sub_22C398C08(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 122)
  {
    v6 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    v8 = sub_22C901FAC();
    v9 = v5 + *(a4 + 28);

    return sub_22C36C640(v9, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22C398CC0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C398D00()
{
  sub_22C37ABC4();
  if (v3)
  {
    return sub_22C3725D8(*(v1 + 24));
  }

  v5 = sub_22C558048();
  sub_22C3699C8(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v7 = *(v2 + 36);
  }

  v8 = sub_22C36ECCC(v7);

  return sub_22C370B74(v8, v9, v10);
}

void sub_22C398DA4()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22C387B74();
    v5 = sub_22C908AEC();
    sub_22C3699C8(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v7 = *(v2 + 36);
    }

    v8 = sub_22C36ECCC(v7);

    sub_22C36C640(v8, v9, v0, v10);
  }
}

uint64_t sub_22C398E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) != a2)
    {
      return sub_22C3725D8(*(v3 + *(a3 + 24) + 24));
    }

    v9 = v12;
    v10 = v3 + *(a3 + 20);
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C398F34()
{
  sub_22C387B74();
  v4 = v3;
  sub_22C369A48();
  v5 = sub_22C908AEC();
  v6 = sub_22C3699C8(v5);
  if (*(v7 + 84) == v2)
  {
    v8 = v6;
    v9 = v0;
  }

  else
  {
    v10 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
    result = sub_22C3699C8(v10);
    if (*(v12 + 84) != v2)
    {
      *(v0 + *(v1 + 24) + 24) = (v4 - 1);
      return result;
    }

    v8 = result;
    v9 = v0 + *(v1 + 20);
  }

  return sub_22C36C640(v9, v4, v4, v8);
}

uint64_t sub_22C399018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(a1 + *(a3 + 20) + 24));
  }

  return sub_22C370B74(a1, a2, v7);
}

uint64_t sub_22C3990B8()
{
  sub_22C387B74();
  v4 = v3;
  sub_22C369A48();
  v5 = sub_22C908AEC();
  result = sub_22C3699C8(v5);
  if (*(v7 + 84) == v2)
  {

    return sub_22C36C640(v0, v4, v4, result);
  }

  else
  {
    *(v0 + *(v1 + 20) + 24) = (v4 - 1);
  }

  return result;
}

uint64_t sub_22C399158()
{
  sub_22C37ABC4();
  if (v3)
  {
    return sub_22C3725D8(*(v1 + 24));
  }

  v5 = sub_22C558048();
  sub_22C3699C8(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v7 = *(v2 + 32);
  }

  v8 = sub_22C36ECCC(v7);

  return sub_22C370B74(v8, v9, v10);
}

void sub_22C3991FC()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    sub_22C387B74();
    v5 = sub_22C908AEC();
    sub_22C3699C8(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v7 = *(v2 + 32);
    }

    v8 = sub_22C36ECCC(v7);

    sub_22C36C640(v8, v9, v0, v10);
  }
}

uint64_t sub_22C3992AC()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C399328()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C399370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C399420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C3994CC()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C399514()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C39954C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C399588()
{
  sub_22C37ABC4();
  if (v1)
  {
    return sub_22C37FDC4();
  }

  sub_22C558048();
  v3 = sub_22C36ECCC(*(v0 + 24));

  return sub_22C370B74(v3, v4, v5);
}

void sub_22C3995E8()
{
  sub_22C3700E0();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_22C908AEC();
    v5 = sub_22C36ECCC(*(v4 + 24));

    sub_22C36C640(v5, v6, v0, v7);
  }
}

uint64_t sub_22C399658()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C37FDC4();
  }

  v4 = sub_22C558048();
  sub_22C3699C8(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[5];
  }

  else
  {
    v7 = type metadata accessor for FullPlannerPreferences();
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[9];
    }

    else
    {
      type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
      v6 = v1[10];
    }
  }

  v9 = sub_22C36ECCC(v6);

  return sub_22C370B74(v9, v10, v11);
}

void sub_22C399738()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_22C908AEC();
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[5];
    }

    else
    {
      v10 = type metadata accessor for FullPlannerPreferences();
      sub_22C3699C8(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[9];
      }

      else
      {
        type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
        v9 = v5[10];
      }
    }

    v12 = sub_22C36ECCC(v9);

    sub_22C36C640(v12, v13, v0, v14);
  }
}

uint64_t sub_22C39982C()
{
  sub_22C37ABC4();
  if (v2)
  {
    return sub_22C37FDC4();
  }

  v4 = sub_22C558048();
  sub_22C3699C8(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 36);
  }

  else
  {
    type metadata accessor for FullPlannerPreferences();
    v6 = *(v1 + 40);
  }

  v7 = sub_22C36ECCC(v6);

  return sub_22C370B74(v7, v8, v9);
}

void sub_22C3998CC()
{
  sub_22C3700E0();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_22C908AEC();
    sub_22C3699C8(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 36);
    }

    else
    {
      type metadata accessor for FullPlannerPreferences();
      v9 = *(v5 + 40);
    }

    v10 = sub_22C36ECCC(v9);

    sub_22C36C640(v10, v11, v0, v12);
  }
}

uint64_t sub_22C3999A0()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3999D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C399A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C9097BC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C399A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C399B30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C399BDC()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C399C24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C399C5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C399CDC()
{
  sub_22C4242E4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_22C36D6EC();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_22C399D14()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C399D48()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C399D80()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C399F08()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C399F3C()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C399F70()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C399FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90981C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C39A060(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90981C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C39A13C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*a1);
  }

  v7 = sub_22C90963C();
  v8 = a1 + *(a3 + 24);

  return sub_22C370B74(v8, a2, v7);
}

void *sub_22C39A1B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22C90963C();
    v8 = v5 + *(a4 + 24);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C39A238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3704C4();
  v7 = type metadata accessor for SegmentedPrompt.SegmentPayload(v6);
  if (*(*(v7 - 8) + 84) != a2)
  {
    return sub_22C3725D8(*(v3 + *(a3 + 20)));
  }

  return sub_22C370B74(v3, a2, v7);
}

uint64_t sub_22C39A2D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SegmentedPrompt.SegmentPayload(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39A4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C39A518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerPreferences();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C39A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C369A48();
  v7 = sub_22C587924(v6);
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = v3;
  }

  else
  {
    v12 = sub_22C90069C();
    v13 = sub_22C3699C8(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v15 = *(a3 + 20);
    }

    else
    {
      v10 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
      v15 = *(a3 + 24);
    }

    v11 = v3 + v15;
  }

  return sub_22C370B74(v11, a2, v10);
}

uint64_t sub_22C39A644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C369A48();
  v9 = sub_22C587924(v8);
  sub_22C3699C8(v9);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C58AA20();
  }

  else
  {
    v13 = sub_22C90069C();
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v12 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v12 = sub_22C3A5908(&qword_27D9BB7A0, &qword_22C9110D0);
      v16 = *(a4 + 24);
    }

    v11 = v4 + v16;
  }

  return sub_22C36C640(v11, a2, a2, v12);
}

uint64_t sub_22C39A728(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9073DC();
  v5 = sub_22C370B74(v2, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C39A76C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 1);
  }

  else
  {
    v4 = 0;
  }

  sub_22C9073DC();
  v5 = sub_22C58AA20();

  return sub_22C36C640(v5, v4, a3, v6);
}

uint64_t sub_22C39A7C4()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C9073DC();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C39A800()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C587924(0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C39A83C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39A87C()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39A8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C901E8C();
  v5 = sub_22C370B74(a1, a2, v4);
  if (v5 >= 0x10)
  {
    return v5 - 15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C39A944(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 15);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C901E8C();

  return sub_22C36C640(a1, v5, a3, v6);
}

uint64_t sub_22C39A9A4()
{
  v1 = sub_22C9087BC();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for PlannerServiceContext() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = *(v0 + 16);

  sub_22C36FF94((v0 + 24));
  (*(v3 + 8))(v0 + v5, v1);
  v13 = sub_22C90069C();
  sub_22C36985C(v13);
  v15 = *(v14 + 8);
  v15(v0 + v10, v13);
  v16 = v8[7];
  if (!sub_22C370B74(v0 + v10 + v16, 1, v13))
  {
    v15(v0 + v10 + v16, v13);
  }

  v17 = (v11 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v4 | v9 | 7);
}

uint64_t sub_22C39AB4C(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90880C();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C39AB90()
{
  sub_22C369A48();
  sub_22C90880C();
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C39ABCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22C39AC90(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C370078();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_22C39ADB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908A0C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C39AE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C908A0C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39AF8C()
{
  v1 = (type metadata accessor for PlanGenerationInstrumentation.PlanGenerationTelemetryWrapper() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_22C90069C();
  sub_22C369824(v5);
  v7 = v6;
  v8 = *(v6 + 80);
  v9 = (v3 + v4 + v8) & ~v8;
  v11 = *(v10 + 64);
  v12 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
  sub_22C3699B8(v12);
  v14 = *(v13 + 80);
  v15 = (v9 + v11 + v14) & ~v14;
  v26 = *(v16 + 64);
  v17 = *(v0 + 16);
  swift_unknownObjectRelease();
  v18 = v0 + v3;
  v19 = sub_22C90580C();
  sub_22C36985C(v19);
  (*(v20 + 8))(v18);
  v21 = v1[7];
  v22 = sub_22C90622C();
  sub_22C36985C(v22);
  (*(v23 + 8))(v18 + v21);
  v24 = *(v7 + 8);
  v24(v0 + v9, v5);
  if (!sub_22C370B74(v0 + v15, 1, v5))
  {
    v24(v0 + v15, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v26, v2 | v8 | v14 | 7);
}

uint64_t sub_22C39B1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C90580C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_22C90622C();
    v8 = v3 + *(a3 + 20);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C39B274(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C90580C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_22C90622C();
    v10 = v4 + *(a4 + 20);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C39B4E8(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x747865546E616C70;
  }
}

uint64_t sub_22C39B540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90355C();
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C39B5C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C90355C();
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C39B740()
{
  v1 = sub_22C9087BC();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C39B7F8()
{
  sub_22C369A48();
  sub_22C90880C();
  v0 = sub_22C5CA980();

  return sub_22C370B74(v0, v1, v2);
}

uint64_t sub_22C39B834()
{
  sub_22C369A48();
  sub_22C90880C();
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C39B870()
{
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v0 = sub_22C5CA980();

  return sub_22C370B74(v0, v1, v2);
}

uint64_t sub_22C39B8BC()
{
  sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C39B93C()
{
  v1 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39B984()
{
  sub_22C369A48();
  sub_22C90069C();
  v0 = sub_22C5CA980();

  return sub_22C370B74(v0, v1, v2);
}

uint64_t sub_22C39B9C0()
{
  sub_22C369A48();
  sub_22C90069C();
  v0 = sub_22C370078();

  return sub_22C36C640(v0, v1, v2, v3);
}

uint64_t sub_22C39BA10()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C39BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v9 = a1 + *(a3 + 36);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C39BB34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v8 = v5 + *(a4 + 36);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C39BC88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901DFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C39BCB4(uint64_t a1, int a2, uint64_t a3)
{
  if (*(*(sub_22C907BAC() - 8) + 84) == a2)
  {
    v5 = sub_22C36BA00();

    return sub_22C370B74(v5, v6, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C39BD60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C907BAC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39BE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9081FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C39BEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C9081FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39C0FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39C13C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C39C184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9069BC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 2)
    {
      return v8 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22C39C22C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C9069BC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22C39C310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22C39C3BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C908AEC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39C460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C9093BC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22C901FAC();
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C39C540(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C9093BC();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_22C3A5908(&qword_27D9BF308, &qword_22C922570);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22C901FAC();
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C39C628()
{
  v1 = sub_22C9093BC();
  sub_22C369848(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22C39C6A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39C71C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C39C748()
{
  sub_22C371718();
  v2 = sub_22C908AEC();

  return sub_22C370B74(v1, v0, v2);
}

uint64_t sub_22C39C788()
{
  sub_22C371718();
  v2 = sub_22C908AEC();

  return sub_22C36C640(v1, v0, v0, v2);
}

uint64_t sub_22C39C7CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39C80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C371718();
  v6 = sub_22C9093BC();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_22C901FAC();
    v8 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v8, v3, v7);
}

uint64_t sub_22C39C8A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C9093BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_22C901FAC();
    v10 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v10, v4, v4, v9);
}

uint64_t sub_22C39C99C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C90880C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_11:

    return sub_22C370B74(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v13 = sub_22C908AEC();
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a2)
    {
      v9 = v14;
      v16 = a3[6];
    }

    else
    {
      v9 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
      v16 = a3[8];
    }

    v10 = a1 + v16;
    goto LABEL_11;
  }

  v11 = *(a1 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_22C39CAB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22C90880C();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[5]) = (a2 - 1);
      return result;
    }

    v13 = sub_22C908AEC();
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v11 = sub_22C3A5908(&qword_27D9BC028, &unk_22C9134B0);
      v16 = a4[8];
    }

    v12 = a1 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C39CC60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C39CD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(v3 + *(a3 + 20) + 24));
  }

  return sub_22C370B74(v3, a2, v7);
}

uint64_t sub_22C39CE08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C908AEC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39CEAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_22C3725D8(*a1);
  }

  v7 = sub_22C901FAC();
  v8 = a1 + *(a3 + 20);

  return sub_22C370B74(v8, a2, v7);
}

void *sub_22C39CF28(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22C901FAC();
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C39CFA8()
{
  v1 = sub_22C901FAC();
  sub_22C36985C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22C39D08C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39D104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = j_j__swift_bridgeObjectRetain(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C39D15C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C39D1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C39D254(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  result = sub_22C908AEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39D2FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39D524()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39D660()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_22C380498();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C39D69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C900EDC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_10:

    return sub_22C370B74(v10, a2, v9);
  }

  if (a2 != 2147483646)
  {
    v9 = sub_22C908AEC();
    v10 = v3 + *(a3 + 24);
    goto LABEL_10;
  }

  v11 = *(v3 + *(a3 + 20) + 24);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  v12 = v11 - 1;
  if (v12 < 0)
  {
    v12 = -1;
  }

  return (v12 + 1);
}

uint64_t sub_22C39D774(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C900EDC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 24) = a2;
      return result;
    }

    v11 = sub_22C908AEC();
    v12 = v4 + *(a4 + 24);
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C39D8AC(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9087BC();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C39D8F0(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9087BC();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C39D94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C908AEC();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C39D994(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C908AEC();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C39D9E0()
{
  v1 = v0[5];

  v2 = v0[9];

  v3 = v0[13];

  v4 = v0[17];

  v5 = v0[21];

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_22C39DA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90355C();

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C39DA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90355C();

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C39DB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90063C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    v10 = v9 <= 0;
    if (v9 < 0)
    {
      v9 = -1;
    }

    if (v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }
}

uint64_t sub_22C39DC00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90063C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_22C39DCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JointResolution.DeviceContext();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_22C39DD68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JointResolution.DeviceContext();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39DE38()
{
  v3 = sub_22C74948C();
  v4 = sub_22C3699C8(v3);
  if (*(v5 + 84) != v1)
  {
    return sub_22C3725D8(*(v0 + *(v2 + 20) + 8));
  }

  return sub_22C370B74(v0, v1, v4);
}

uint64_t sub_22C39DEC8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = type metadata accessor for JointResolution.DeviceContext();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C370078();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39DF60()
{
  v3 = sub_22C74948C();
  v4 = sub_22C3699C8(v3);
  if (*(v5 + 84) != v1)
  {
    return sub_22C3725D8(*(v0 + *(v2 + 20)));
  }

  return sub_22C370B74(v0, v1, v4);
}

uint64_t sub_22C39DFEC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = type metadata accessor for JointResolution.DeviceContext();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = sub_22C370078();

    return sub_22C36C640(v11, v12, v13, v14);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39E0A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C74E684(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C39E0D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3D87D0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_22C39E150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) != a2)
    {
      return sub_22C3725D8(*(a1 + *(a3 + 24)));
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C39E248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C3A5908(&qword_27D9BF330, &unk_22C923250);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C3A5908(&qword_27D9BDC50, &unk_22C91B470);
    result = sub_22C3699C8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C39E39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  v6 = sub_22C9093BC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_22C3725D8(*(v3 + *(a3 + 20) + 8));
  }

  return sub_22C370B74(v3, a2, v7);
}

uint64_t sub_22C39E438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C9093BC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22C39E508()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C39E544()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C39E580()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C39E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90063C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C39E674(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90063C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C39E720(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFCF8, &qword_22C9253D8);

  return sub_22C370B74(a1, a2, v4);
}

uint64_t sub_22C39E774(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BFCF8, &qword_22C9253D8);

  return sub_22C36C640(a1, a2, a2, v4);
}

uint64_t sub_22C39E870(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90981C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C90077C();
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_22C90063C();
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = sub_22C90083C();
          v12 = a3[10];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C39E9B8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90981C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C90077C();
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = sub_22C90063C();
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = sub_22C90083C();
          v12 = a4[10];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C39EAFC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90981C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[5];
    }

    else
    {
      v13 = sub_22C90077C();
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[6];
      }

      else
      {
        v16 = sub_22C90063C();
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a2)
        {
          v11 = v17;
          v12 = a3[9];
        }

        else
        {
          v11 = sub_22C90083C();
          v12 = a3[10];
        }
      }
    }

    return sub_22C370B74(a1 + v12, a2, v11);
  }
}

uint64_t sub_22C39EC44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90981C();
    v9 = sub_22C3699C8(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_22C90077C();
      v14 = sub_22C3699C8(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v16 = sub_22C90063C();
        v17 = sub_22C3699C8(v16);
        if (*(v18 + 84) == a3)
        {
          v11 = v17;
          v12 = a4[9];
        }

        else
        {
          v11 = sub_22C90083C();
          v12 = a4[10];
        }
      }
    }

    return sub_22C36C640(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22C39ED88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90952C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_22C370B74(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_22C908AEC();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_22C39EE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90952C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_22C908AEC();
    v10 = a1 + *(a4 + 24);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C39EF3C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_22C369A48();
  v6 = sub_22C90731C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_6:

    return sub_22C370B74(v10, a2, v9);
  }

  v11 = sub_22C90880C();
  v12 = sub_22C3699C8(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = v3 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = sub_22C908AEC();
    v18 = sub_22C3699C8(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[7];
    }

    else
    {
      v20 = sub_22C90941C();
      v21 = sub_22C3699C8(v20);
      if (*(v22 + 84) == a2)
      {
        v9 = v21;
        v14 = a3[9];
      }

      else
      {
        v9 = type metadata accessor for TranscriptValueFetcher(0);
        v14 = a3[10];
      }
    }

    goto LABEL_5;
  }

  v16 = *(v3 + a3[6]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_22C39F0C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_22C369A48();
  v8 = sub_22C90731C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_22C90880C();
    result = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6]) = (a2 - 1);
        return result;
      }

      v17 = sub_22C908AEC();
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_22C90941C();
        v21 = sub_22C3699C8(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v11 = type metadata accessor for TranscriptValueFetcher(0);
          v16 = a4[10];
        }
      }
    }

    v12 = v4 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C39F278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C906FBC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for TranscriptValueFetcher(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C39F314(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C906FBC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for TranscriptValueFetcher(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C39F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C9087BC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_22C908AEC();
    v8 = v3 + *(a3 + 20);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C39F450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C9087BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_22C908AEC();
    v10 = v4 + *(a4 + 20);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

uint64_t sub_22C39F54C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C3A5908(&qword_27D9C0178, &qword_22C9261C8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C39F57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
      v10 = *(a3 + 24);
    }

    return sub_22C370B74(a1 + v10, a2, v9);
  }
}

uint64_t sub_22C39F654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
      v10 = *(a4 + 24);
    }

    return sub_22C36C640(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22C39F788()
{
  v1 = sub_22C90592C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C39F840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C39F878()
{
  v1 = sub_22C9087BC();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_22C908EAC();
  sub_22C369824(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);
  v18 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v15 | 7);
}

uint64_t sub_22C39F9EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_22C903E7C();
    v10 = a1 + *(a3 + 24);

    return sub_22C370B74(v10, a2, v9);
  }
}

void *sub_22C39FA80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_22C903E7C();
    v8 = v5 + *(a4 + 24);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C39FB28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22C7AA104(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_22C39FC00()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C39FC58()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C39FCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);

  return sub_22C370B74(a1 + v5, a2, DecorationEntityValue);
}

uint64_t sub_22C39FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);

  return sub_22C36C640(a1 + v6, a2, a2, DecorationEntityValue);
}

uint64_t sub_22C39FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3704C4();
  v6 = sub_22C9037EC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_22C370B74(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22C39FDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C9037EC();
  result = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_22C36C640(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_22C39FE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C371718();
  v6 = sub_22C90981C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == v3)
  {
    DecorationEntity = v7;
    v10 = v4;
  }

  else
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v10 = v4 + *(a3 + 20);
  }

  return sub_22C370B74(v10, v3, DecorationEntity);
}

uint64_t sub_22C39FF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C371718();
  v8 = sub_22C90981C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    DecorationEntity = v9;
    v12 = v5;
  }

  else
  {
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v12 = v5 + *(a4 + 20);
  }

  return sub_22C36C640(v12, v4, v4, DecorationEntity);
}

uint64_t sub_22C39FFB4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A0044()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_22C36FF94(v0 + 4);
  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

void sub_22C3A00A4()
{
  sub_22C370030();
  v1 = v0;
  v3 = v2;
  v4 = sub_22C9037EC();
  v5 = sub_22C369824(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v31 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v38 = MEMORY[0x277D84F90];
  sub_22C3B60C0(0, v1 & ~(v1 >> 63), 0);
  v15 = 0;
  v16 = v38;
  v37 = v7 + 16;
  v35 = (v7 + 8);
  v28[1] = v7 + 32;
  v29 = v3;
  v30 = v1;
  while (1)
  {
    if (v15 == v1)
    {
LABEL_11:

      sub_22C36FB20();
      return;
    }

    if (v1 < 0)
    {
      break;
    }

    v17 = *(v7 + 72);
    v32 = v15;
    v33 = *(v7 + 16);
    v34 = v15 + 1;
    v33(v14, v3 + v17 * v15, v4);
    v18 = *(v16 + 16) + 1;
    v36 = v16;
    while (--v18)
    {
      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_22C373A7C();
      sub_22C7FB604(&qword_281435760, v20);
      v16 += v17;
      if (sub_22C90A0BC())
      {
        (*v35)(v14, v4);
        goto LABEL_11;
      }
    }

    v21 = v31;
    v33(v31, v14, v4);
    v39 = v36;
    v23 = *(v36 + 16);
    v22 = *(v36 + 24);
    v1 = v30;
    if (v23 >= v22 >> 1)
    {
      sub_22C3B60C0(v22 > 1, v23 + 1, 1);
      v21 = v31;
    }

    (*(v7 + 8))(v14, v4);
    *(v39 + 16) = v23 + 1;
    v24 = *(v7 + 80);
    sub_22C36BA94();
    v26 = v21;
    v16 = v27;
    (*(v7 + 32))(v27 + v25 + v23 * v17, v26, v4);
    v15 = v34;
    v3 = v29;
  }

  __break(1u);
}

void sub_22C3A0354()
{
  sub_22C370030();
  v44 = v1;
  v3 = v2;
  v5 = v4;
  v60 = v6;
  v7 = sub_22C9037EC();
  v8 = sub_22C369824(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v13 = (v11 - v12);
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  if (v5)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      v50 = v3;
      v42 = v0;
      v18 = 0;
      v19 = (v15 + 8);
      v41 = v5;
      v40 = v15;
      while (!__OFADD__(v18, 1))
      {
        v43 = v18 + 1;
        v20 = *(v15 + 72);
        v49 = v18;
        v51 = v20;
        v21 = v60 + v20 * v18;
        v22 = *(v15 + 16);
        v22(v17, v21, v7);
        v23 = v50;
        v24 = *v50;
        sub_22C373A7C();
        sub_22C7FB604(&qword_281435768, v25);
        v26 = sub_22C909F7C();
        v27 = 1 << *v23;
        v28 = __OFSUB__(v27, 1);
        v29 = v27 - 1;
        if (v28)
        {
          goto LABEL_13;
        }

        v48 = v29 & v26;
        v30 = v44;
        v31 = sub_22C9030FC();
        v46 = v32;
        v47 = v31;
        v45 = v33;
        v34 = *v19;
        (*v19)(v17, v7);
        *&v52 = v50;
        *(&v52 + 1) = v30;
        *&v53 = v48;
        *(&v53 + 1) = v47;
        *&v54 = v46;
        *(&v54 + 1) = v45;
        v55 = 0;
        while (1)
        {
          v56 = v52;
          v57 = v53;
          v58 = v54;
          v59 = v55;
          v35 = sub_22C90313C();
          if (v36)
          {
            break;
          }

          v22(v17, v60 + v35 * v51, v7);
          v22(v13, v21, v7);
          sub_22C373A7C();
          sub_22C7FB604(&qword_281435760, v37);
          v38 = sub_22C90A0BC();
          v34(v13, v7);
          v34(v17, v7);
          if (v38)
          {
            goto LABEL_11;
          }

          sub_22C90315C();
        }

        sub_22C90314C();
        v18 = v43;
        v15 = v40;
        if (v43 == v41)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    sub_22C36FB20();
  }
}

uint64_t sub_22C3A0680()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22C3A06C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A0708(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9037EC();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A074C(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9037EC();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A079C()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);
  v1 = v0[18];

  v2 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_22C3A082C@<X0>(uint64_t a1@<X8>)
{
  result = sub_22C901E4C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_22C3A08B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C90981C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C909ADC();
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_22C908ECC();
      v16 = sub_22C3699C8(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = sub_22C90966C();
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C3A09C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22C90981C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C909ADC();
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_22C908ECC();
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = sub_22C90966C();
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C3A0BE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C814BF8();
  *a2 = result;
  return result;
}

uint64_t sub_22C3A0C48()
{
  sub_22C36BA7C();
  v1 = sub_22C90069C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_22C90622C();
  sub_22C369824(v7);
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  v14 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_22C3A0D80()
{
  v26 = sub_22C905A5C();
  sub_22C369824(v26);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v25 = sub_22C90069C();
  sub_22C369824(v25);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_22C90622C();
  sub_22C369824(v13);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v24 = *(v17 + 64);
  v20 = v3 | v9 | v18;
  v21 = *(v0 + 16);
  swift_unknownObjectRelease();
  v22 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v26);
  (*(v8 + 8))(v0 + v10, v25);
  (*(v15 + 8))(v0 + v19, v13);

  return MEMORY[0x2821FE8E8](v0, v19 + v24, v20 | 7);
}

uint64_t sub_22C3A0F40()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22C823694();
  v9(v8);
  v10 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22C3A0FF0()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = (*(v2 + 80) + 42) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22C823694();
  v9(v8);
  v10 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22C3A10B8()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22C823694();
  v9(v8);
  v10 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22C3A1168()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  v8 = v0[5];

  v9 = v0[6];

  v10 = v0[7];

  v11 = sub_22C823694();
  v12(v11);
  v13 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_22C3A1230()
{
  sub_22C36BA7C();
  v1 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C3699B8(v1);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22C90622C();
  sub_22C369824(v6);
  v8 = v7;
  v9 = *(v7 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 2);
  swift_unknownObjectRelease();
  v13 = *(v0 + 4);

  v14 = *(v0 + 5);

  v15 = *(v0 + 6);

  v16 = sub_22C903F4C();
  if (!sub_22C370B74(&v0[v3], 1, v16))
  {
    (*(*(v16 - 8) + 8))(&v0[v3], v16);
  }

  (*(v8 + 8))(&v0[(v3 + v5 + v9) & ~v9], v6);
  sub_22C36CC48();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_22C3A13C8()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22C823694();
  v9(v8);
  v10 = sub_22C8236B4();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_22C3A1478()
{
  v1 = sub_22C90622C();
  sub_22C369824(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  v8 = sub_22C823694();
  v9(v8);
  v10 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22C3A1548@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8242BC();
  *a2 = result;
  return result;
}

uint64_t sub_22C3A15A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_22C90B0EC();
      v10 = *(a3 + 28);
    }

    return sub_22C370B74(a1 + v10, a2, v9);
  }
}

uint64_t sub_22C3A166C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22C90069C();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_22C90B0EC();
      v10 = *(a4 + 28);
    }

    return sub_22C36C640(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22C3A1734()
{
  v1 = sub_22C90399C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  sub_22C36FF94((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v4 | 7);
}

uint64_t sub_22C3A1808()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A1840()
{
  v1 = sub_22C903E7C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 88) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[2];
  swift_unknownObjectRelease();
  v9 = v0[4];

  v10 = v0[5];

  sub_22C36FF94(v0 + 6);
  (*(v3 + 8))(v0 + v5, v1);
  sub_22C36FF94((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, v7 + 40, v4 | 7);
}

uint64_t sub_22C3A1924()
{
  v1 = sub_22C903E7C();
  sub_22C36985C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22C3A19B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3A1A18()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A1A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_22C3E07B0(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_22C3A1AAC()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22C90413C();
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22C3A1AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_22C83AAA8();
  v8 = sub_22C3699C8(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return sub_22C3725D8(*(a1 + *(a3 + 32) + 8));
    }

    v13 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a2)
    {
      v10 = v14;
      v16 = *(a3 + 40);
    }

    else
    {
      v10 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
      v16 = *(a3 + 52);
    }

    v11 = a1 + v16;
  }

  return sub_22C370B74(v11, a2, v10);
}

uint64_t sub_22C3A1C0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_22C83AAA8();
  result = sub_22C3699C8(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = result;
    v13 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 32) + 8) = (a2 - 1);
      return result;
    }

    v14 = sub_22C3A5908(&qword_27D9C06F8, &qword_22C929520);
    v15 = sub_22C3699C8(v14);
    if (*(v16 + 84) == a3)
    {
      v12 = v15;
      v17 = *(a4 + 40);
    }

    else
    {
      v12 = sub_22C3A5908(&qword_27D9C0588, &qword_22C927FD0);
      v17 = *(a4 + 52);
    }

    v13 = a1 + v17;
  }

  return sub_22C36C640(v13, a2, a2, v12);
}

uint64_t sub_22C3A1D90()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C3A1DD4()
{
  v1 = sub_22C903F4C();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 5);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C3A1EA4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_22C3A1EF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A1F78()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A1FAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C3A1FF4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A2044()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_22C36D2A8();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_22C3A20B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C9037EC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 <= 6)
    {
      v9 = 6;
    }

    else
    {
      v9 = *(a1 + *(a3 + 20));
    }

    v10 = v9 - 6;
    if (v8 >= 6)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22C3A2168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C9037EC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_22C3A2298()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A22D0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22C3A2318()
{
  v1 = *(v0 + 16);

  sub_22C369AEC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A2360(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x4449746E65746E69;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
      result = 0x65736E6F70736572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22C3A2414()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C3A2464(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86ADD8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A24B8(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86AEAC();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A250C(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86AFB8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A2560(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86B08C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A25B4(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86B160();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A2608(uint64_t *a1)
{
  sub_22C37B4A0(a1);
  result = sub_22C86B26C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_22C3A26AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C90806C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return sub_22C370B74(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6] + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_22C3A278C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22C90806C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6] + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
    v10 = a4[7];
  }

  return sub_22C36C640(a1 + v10, a2, a2, v9);
}

BOOL sub_22C3A2890()
{
  v0 = sub_22C90B21C();

  return v0 != 0;
}

uint64_t sub_22C3A28D8()
{
  v1 = *(v0 + 24);

  v2 = sub_22C36A8CC();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A2908@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_22C8744A0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_22C3A29DC(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90240C();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A2A20(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C90240C();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A2A68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TypedValueFormatter(0);
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

void *sub_22C3A2AF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TypedValueFormatter(0);
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C3A2B70(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();

  return sub_22C370B74(v2, a2, v4);
}

uint64_t sub_22C3A2BB4(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();

  return sub_22C36C640(v2, a2, a2, v4);
}

uint64_t sub_22C3A2C1C()
{
  sub_22C36FF94((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C3A2C58()
{
  v1 = sub_22C9093BC();
  sub_22C369824(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_22C3A2D18(uint64_t a1, uint64_t a2)
{
  sub_22C369A48();
  v4 = sub_22C9093BC();
  v5 = sub_22C370B74(v2, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A2D5C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22C9093BC();

  return sub_22C36C640(a1, v5, a3, v6);
}

uint64_t sub_22C3A2E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C908AEC();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C90077C();
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = sub_22C9021BC();
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C3A2F1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C908AEC();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C90077C();
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = sub_22C9021BC();
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C3A3050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C3A3118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C3A5908(&qword_27D9C0F60, &qword_22C92B9A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C3A3278(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    if (v2 >= 2)
    {
      return v2 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
    v5 = sub_22C37EE84();

    return sub_22C370B74(v5, a2, v6);
  }
}

_BYTE *sub_22C3A3300(_BYTE *result, uint64_t a2, int a3)
{
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
    v4 = sub_22C37EE84();

    return sub_22C36C640(v4, a2, a2, v5);
  }

  return result;
}

uint64_t sub_22C3A3388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return sub_22C370B74(v10, a2, v9);
  }

  v11 = sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
  sub_22C3699C8(v11);
  if (*(v12 + 84) == a2)
  {
    v10 = sub_22C37EE84();
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22C3A348C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C3A5908(&qword_27D9BB728, &qword_22C911230);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C3A5908(&qword_27D9C1110, &unk_22C92C180);
    result = sub_22C3699C8(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    v12 = sub_22C37EE84();
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C3A3C28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
    v12 = sub_22C3699C8(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
      v16 = sub_22C3699C8(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
        v19 = sub_22C3699C8(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[10];
        }

        else
        {
          v21 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
          v22 = sub_22C3699C8(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[11];
          }

          else
          {
            v24 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
            v25 = sub_22C3699C8(v24);
            if (*(v26 + 84) == a2)
            {
              v9 = v25;
              v14 = a3[15];
            }

            else
            {
              v9 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
              v14 = a3[17];
            }
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C3A3E54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22C3A5908(&qword_27D9C1208, &qword_22C92C6E8);
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_22C3A5908(&qword_27D9C1180, &qword_22C92C260);
    v14 = sub_22C3699C8(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_22C3A5908(&qword_27D9C1190, &qword_22C92C270);
      v18 = sub_22C3699C8(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_22C3A5908(&qword_27D9C1188, &qword_22C92C268);
        v21 = sub_22C3699C8(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[10];
        }

        else
        {
          v23 = sub_22C3A5908(&qword_27D9C1198, &unk_22C92C278);
          v24 = sub_22C3699C8(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[11];
          }

          else
          {
            v26 = sub_22C3A5908(&qword_27D9C1210, &qword_22C92C6F0);
            v27 = sub_22C3699C8(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[15];
            }

            else
            {
              v11 = sub_22C3A5908(&qword_27D9BE020, &qword_22C91CD10);
              v16 = a4[17];
            }
          }
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

void sub_22C3A4108(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22C90A0EC();
  [a3 setString_];
}

uint64_t sub_22C3A4160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C369A48();
  v6 = sub_22C90806C();
  v7 = sub_22C3699C8(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v9 = type metadata accessor for DialogValues(0);
    v10 = v3 + *(a3 + 20);
  }

  return sub_22C370B74(v10, a2, v9);
}

uint64_t sub_22C3A41F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22C369A48();
  v8 = sub_22C90806C();
  v9 = sub_22C3699C8(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v11 = type metadata accessor for DialogValues(0);
    v12 = v4 + *(a4 + 20);
  }

  return sub_22C36C640(v12, a2, a2, v11);
}

uint64_t sub_22C3A42B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22C3A4300()
{
  v1 = (type metadata accessor for ResponseValidationContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0[2];
  swift_unknownObjectRelease();
  sub_22C36FF94(v0 + 4);
  v6 = v0[10];

  v7 = sub_22C90806C();
  sub_22C369848(v7);
  (*(v8 + 8))(v0 + v3);
  v9 = (v0 + v3 + v1[7]);
  v10 = *v9;

  v11 = v9 + *(type metadata accessor for DialogValues(0) + 20);
  v12 = sub_22C90077C();
  sub_22C369848(v12);
  (*(v13 + 8))(v11);
  v14 = *&v11[*(type metadata accessor for TypedValueFormatter(0) + 20) + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22C3A4474()
{
  v25 = sub_22C90806C();
  sub_22C369824(v25);
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v24 = sub_22C90069C();
  sub_22C369824(v24);
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  v13 = sub_22C9087BC();
  sub_22C369824(v13);
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v23 = *(v17 + 64);
  v20 = v3 | v9 | v18;
  v21 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v25);
  (*(v8 + 8))(v0 + v10, v24);
  (*(v15 + 8))(v0 + v19, v13);

  return MEMORY[0x2821FE8E8](v0, v19 + v23, v20 | 7);
}

uint64_t sub_22C3A4654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C901DEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22C3A4718()
{
  if (*(v0 + 16) >= 0x11uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22C3A4758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C90302C();
    v9 = a1 + *(a3 + 20);

    return sub_22C370B74(v9, a2, v8);
  }
}

uint64_t sub_22C3A47E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22C90302C();
    v8 = v5 + *(a4 + 20);

    return sub_22C36C640(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22C3A48B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22C9007EC();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = type metadata accessor for TypedValueFormatter(0);
      v10 = *(a3 + 24);
    }

    return sub_22C370B74(a1 + v10, a2, v9);
  }
}

void *sub_22C3A497C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22C9007EC();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = type metadata accessor for TypedValueFormatter(0);
      v10 = *(a4 + 24);
    }

    return sub_22C36C640(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_22C3A4A90()
{
  v1 = *(v0 + 24);

  sub_22C36A83C();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_22C3A4ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90077C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_22C370B74(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_22C3A4B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22C90077C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_22C36C640(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22C3A4C6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22C3A4CE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22C3A4D1C()
{
  v1 = sub_22C3A5908(&qword_27D9BBB28, &qword_22C910DF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22C3A4DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22C90069C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
    v8 = a1 + *(a3 + 20);
  }

  return sub_22C370B74(v8, a2, v7);
}

uint64_t sub_22C3A4E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22C90069C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_22C3A5908(&qword_27D9BB190, qword_22C90DD90);
    v10 = a1 + *(a4 + 20);
  }

  return sub_22C36C640(v10, a2, a2, v9);
}

char *sub_22C3A4F80(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

char *sub_22C3A4FA0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22C36A714(a3, result);
  }

  return result;
}

uint64_t sub_22C3A5038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22C3A5074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C3FD26C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_22C3A50BC()
{
  sub_22C372564();
  result = sub_22C38C5C8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_22C3A50F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3A4FF4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22C3A5124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3E07B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t Session.Event.init(planText:prompt:sessionState:fullyResolvedProgram:overrideId:source:eventId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v113 = a8;
  v101 = a7;
  v112 = a4;
  v99 = a3;
  v111 = a2;
  v100 = a1;
  v102 = a9;
  v117 = a10;
  v118 = a11;
  v116 = sub_22C902D3C();
  v13 = sub_22C369824(v116);
  v109 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v97 = v18 - v17;
  sub_22C36BA0C();
  v108 = sub_22C90888C();
  v19 = sub_22C369824(v108);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v96 = v25 - v24;
  sub_22C36BA0C();
  v95 = sub_22C9089DC();
  v26 = sub_22C369824(v95);
  v98 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v32 = v31 - v30;
  v33 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v104 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v105 = &v91 - v37;
  sub_22C36BA0C();
  v38 = sub_22C90880C();
  v39 = sub_22C369824(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  sub_22C369838();
  v46 = v45 - v44;
  v106 = sub_22C908A0C();
  v47 = sub_22C369824(v106);
  v103 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22C369838();
  v53 = v52 - v51;
  v54 = sub_22C9075EC();
  v55 = sub_22C369824(v54);
  v114 = v56;
  v115 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22C369838();
  v61 = v60 - v59;
  v122 = a5;
  sub_22C9087AC();
  MEMORY[0x2318B4A90]();
  sub_22C9075AC();
  v110 = v61;
  v62 = v107;
  v63 = sub_22C9075DC();
  if (v62)
  {

    (*(v21 + 8))(v117, v108);
    (*(v109 + 8))(a6, v116);
    v64 = sub_22C9087BC();
    sub_22C369848(v64);
    (*(v65 + 8))(v122);
  }

  else
  {
    v93 = v63;
    v94 = v53;
    v66 = v103;
    v92 = v32;
    v107 = a6;
    sub_22C90878C();
    v67 = sub_22C9087DC();
    (*(v41 + 8))(v46, v38);
    sub_22C38B744();
    v68 = v105;
    sub_22C3A59F0(v67);

    v69 = v104;
    sub_22C3A7214();
    if (sub_22C370B74(v69, 1, v106) != 1)
    {
      sub_22C3A5E98(v68);
      (*(v66 + 32))(v94, v69, v106);
      v80 = v21;
      v81 = *(v21 + 16);
      v105 = 0;
      v82 = v117;
      v83 = v108;
      v81(v96, v117, v108);
      sub_22C9088AC();
      v84 = v92;
      sub_22C90889C();
      v85 = v98;
      v86 = v95;
      (*(v98 + 104))(v84, *MEMORY[0x277D1E6F8], v95);
      sub_22C90892C();
      (*(v80 + 8))(v82, v83);
      v87 = sub_22C3A785C();
      v88(v87);
      v89 = sub_22C9087BC();
      sub_22C369848(v89);
      (*(v90 + 8))(v122);
      (*(v85 + 8))(v84, v86);
      (*(v66 + 8))(v94, v106);
      return (*(v114 + 8))(v110);
    }

    sub_22C3A5E98(v69);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v70 = v121;
    v71 = v120;
    *v72 = v119;
    *(v72 + 16) = v71;
    *(v72 + 32) = v70;
    swift_willThrow();
    (*(v21 + 8))(v117, v108);
    v73 = sub_22C3A785C();
    v74(v73);
    v75 = sub_22C9087BC();
    sub_22C369848(v75);
    (*(v76 + 8))(v122);
    sub_22C3A5E98(v68);
  }

  (*(v114 + 8))(v110, v115);
  v77 = sub_22C90069C();
  sub_22C369848(v77);
  return (*(v78 + 8))(v118);
}

uint64_t sub_22C3A5908(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C3A5968(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

uint64_t sub_22C3A59F0(uint64_t a1)
{
  v2 = sub_22C3704AC(a1);
  if (v4)
  {
    v5 = v2;
    v6 = v4 - 1;
    v7 = v3(0);
    sub_22C36985C(v7);
    (*(v8 + 16))(v1, v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = sub_22C37049C();
    v12 = v7;
  }

  else
  {
    v3(0);
    v9 = sub_22C37582C();
  }

  return sub_22C36C640(v9, v10, v11, v12);
}

uint64_t sub_22C3A5AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A5AFC(uint64_t a1)
{
  v1 = sub_22C3704AC(a1);
  if (v3)
  {
    v4 = v1;
    v5 = v2(0);
    sub_22C372570(v5);
    v7 = v6;
    v9 = v8;
    v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v9 + 72);
    sub_22C3A726C();
    v12 = sub_22C37049C();
    v15 = v5;
  }

  else
  {
    v2(0);
    v12 = sub_22C37582C();
  }

  return sub_22C36C640(v12, v13, v14, v15);
}

uint64_t sub_22C3A5BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 24 * v1;
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    v6 = sub_22C36BA00();
    sub_22C3A775C(v6, v7, v5);
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

void sub_22C3A5C2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    sub_22C3A7850();
LABEL_5:
    sub_22C36BA00();
    return;
  }

  if ((a4 >> 1) > a3)
  {
    v4 = a2 + 24 * (a4 >> 1);
    v5 = *(v4 - 24);
    v6 = *(v4 - 16);
    v7 = *(v4 - 8);
    v8 = sub_22C36BA00();
    sub_22C3A775C(v8, v9, v7);
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_22C3A5C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 24 * v1);
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

uint64_t sub_22C3A5CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32 * v1);
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
  }

  else
  {
    sub_22C3A7850();
  }

  return sub_22C36BA00();
}

uint64_t sub_22C3A5D48(uint64_t a1)
{
  result = sub_22C3704AC(a1);
  if (v3)
  {
    v4 = (result + 24 * v3);
    v6 = v4[1];
    v5 = v4[2];
    v7 = v4[3];
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *v1 = v6;
  v1[1] = v5;
  v1[2] = v7;
  return result;
}

uint64_t sub_22C3A5DAC(uint64_t a1)
{
  v1 = sub_22C3704AC(a1);
  if (v2)
  {
    v3 = v1;
    v4 = sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
    sub_22C372570(v4);
    v6 = v5;
    v8 = v7;
    v9 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v10 = *(v8 + 72);
    sub_22C3A7214();
    v11 = sub_22C37049C();
    v14 = v4;
  }

  else
  {
    sub_22C3A5908(&qword_27D9BA910, &unk_22C90C960);
    v11 = sub_22C37582C();
  }

  return sub_22C36C640(v11, v12, v13, v14);
}

uint64_t sub_22C3A5E98(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C3A5F00()
{
  result = qword_27D9BA810;
  if (!qword_27D9BA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BA810);
  }

  return result;
}

uint64_t Session.Event.init(programStatements:transcript:overrideId:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v63 = a6;
  v68 = a5;
  v65 = a1;
  v66 = a4;
  v62 = a3;
  v7 = sub_22C902D3C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v60 = v10 - v9;
  sub_22C36BA0C();
  v67 = sub_22C90888C();
  v11 = sub_22C369824(v67);
  v64 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v61 = sub_22C9089DC();
  v18 = sub_22C369824(v61);
  v59 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v58 = v23 - v22;
  v24 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  v31 = sub_22C908A0C();
  v32 = sub_22C369824(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22C369838();
  v39 = v38 - v37;
  v72 = a2;
  sub_22C9087DC();
  sub_22C38B744();
  sub_22C3A59F0(v40);

  sub_22C3A7214();
  if (sub_22C370B74(v28, 1, v31) == 1)
  {

    sub_22C3A5E98(v28);
    sub_22C90735C();
    sub_22C3A5F00();
    swift_allocError();
    v41 = v71;
    v42 = v70;
    *v43 = v69;
    *(v43 + 16) = v42;
    *(v43 + 32) = v41;
    swift_willThrow();
    (*(v64 + 8))(v68, v67);
    v44 = sub_22C90880C();
    sub_22C369848(v44);
    (*(v45 + 8))(v72);
    return sub_22C3A5E98(v30);
  }

  else
  {
    sub_22C3A5E98(v30);
    v47 = *(v34 + 32);
    v57 = v39;
    v47(v39, v28, v31);
    v48 = v64;
    v50 = v67;
    v49 = v68;
    (*(v64 + 16))(v17, v68, v67);
    sub_22C9088AC();
    v51 = v58;
    sub_22C90889C();
    v52 = v59;
    v53 = v61;
    (*(v59 + 104))(v51, *MEMORY[0x277D1E6F8], v61);
    v54 = v57;
    sub_22C90893C();
    (*(v48 + 8))(v49, v50);
    v55 = sub_22C90880C();
    sub_22C369848(v55);
    (*(v56 + 8))(v72);
    (*(v52 + 8))(v51, v53);
    return (*(v34 + 8))(v54, v31);
  }
}

uint64_t sub_22C3A6410@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9089DC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  v48 = sub_22C90069C();
  v11 = sub_22C369824(v48);
  v44 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C908A0C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C9087DC();
  v28 = *(v27 + 16);
  if (v28)
  {
    v46 = v10;
    v41 = a1;
    v47 = v27 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v29 = (v44 + 8);
    v30 = (v21 + 8);
    v45 = (v5 + 88);
    v43 = *MEMORY[0x277D1E710];
    v40 = v5;
    v42 = (v5 + 8);
    v31 = v27;
    while (v28 <= *(v31 + 16))
    {
      --v28;
      (*(v21 + 16))(v26, v47 + *(v21 + 72) * v28, v18);
      sub_22C9087FC();
      v32 = sub_22C90067C();
      (*v29)(v17, v48);
      if (v32)
      {
        sub_22C9089EC();
        (*v30)(v26, v18);
        if ((*v45)(v46, v2) == v43)
        {

          (*(v40 + 96))(v46, v2);
          v37 = sub_22C9086FC();
          sub_22C36985C(v37);
          (*(v38 + 32))(v41, v46, v37);
          v33 = v41;
          v34 = 0;
          v35 = 1;
          v36 = v37;
          return sub_22C36C640(v33, v34, v35, v36);
        }

        (*v42)(v46, v2);
        if (!v28)
        {
          goto LABEL_9;
        }
      }

      else
      {
        (*v30)(v26, v18);
        if (!v28)
        {
          goto LABEL_9;
        }
      }
    }

    __break(1u);
  }

LABEL_9:

  sub_22C9086FC();
  v33 = sub_22C37582C();
  return sub_22C36C640(v33, v34, v35, v36);
}

uint64_t default argument 0 of AgenticRemotePlanningService.init(endpoint:)()
{
  swift_getKeyPath();
  sub_22C901F3C();

  return v1;
}

uint64_t sub_22C3A6830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C901E0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t default argument 1 of ActionResolverRequestEvaluator.init<A, B>(toolbox:actionRequirements:toolExecutionSession:)@<X0>(void *a1@<X8>)
{
  if (qword_281430890 != -1)
  {
    swift_once();
  }

  *a1 = qword_281437500;
}

uint64_t _s30IntelligenceFlowPlannerRuntime14QueryDecoratorC27clientApplicationIdentifier16toolboxResources17selfLoggerFactory10signposter13contextClientACSSSg_AA07ToolboxK0CSgAA0E29DecorationSELFLoggingBuilding_pAA0eS11Signposting_pAA016ContextRetrievalQ0_ptcfcfA3__0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C9043BC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_22C9043AC();
  a1[3] = v2;
  a1[4] = &protocol witness table for ContextRetrieval;
  *a1 = result;
  return result;
}

uint64_t sub_22C3A69F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A6A18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_22C3A6A68()
{
  v0 = sub_22C90A11C();
  v1 = MEMORY[0x2318B7920](v0);

  return v1;
}

uint64_t sub_22C3A6AA0()
{
  sub_22C90A11C();
  sub_22C909FFC();
}

uint64_t sub_22C3A6AF4()
{
  sub_22C90A11C();
  sub_22C90B62C();
  sub_22C909FFC();
  v0 = sub_22C90B66C();

  return v0;
}

uint64_t sub_22C3A6B68()
{
  sub_22C36986C();

  result = sub_22C90A0FC();
  *v0 = 0;
  return result;
}

uint64_t sub_22C3A6BDC()
{
  sub_22C36986C();

  v2 = sub_22C90A10C();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_22C3A6C64@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C3A6C98(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_22C3A6CA8@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_22C3A6CD8()
{
  v1 = sub_22C372564();
  result = sub_22C8C6100(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_22C3A6D00(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_28142F9A0, type metadata accessor for MLModelMetadataKey);
  v3 = sub_22C3A70C8(&qword_27D9BA9C8, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6DBC(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9B8, type metadata accessor for DocumentReadingOptionKey);
  v3 = sub_22C3A70C8(&qword_27D9BA9C0, type metadata accessor for DocumentReadingOptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6E78(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9A8, type metadata accessor for DocumentType);
  v3 = sub_22C3A70C8(&qword_27D9BA9B0, type metadata accessor for DocumentType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A6F34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22C90A0EC();

  *a2 = v5;
  return result;
}

uint64_t sub_22C3A6F7C(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA900, type metadata accessor for NLLanguage);
  v3 = sub_22C3A70C8(&qword_27D9BA908, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A70C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C3A7158(uint64_t a1)
{
  v2 = sub_22C3A70C8(&qword_27D9BA9D0, type metadata accessor for NLTagScheme);
  v3 = sub_22C3A70C8(&qword_27D9BA9D8, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22C3A7214()
{
  sub_22C36986C();
  v3 = sub_22C3A5908(v1, v2);
  sub_22C36985C(v3);
  v5 = *(v4 + 16);
  v6 = sub_22C36BA00();
  v7(v6);
  return v0;
}

uint64_t sub_22C3A726C()
{
  sub_22C36986C();
  v2 = v1(0);
  sub_22C36985C(v2);
  v4 = *(v3 + 16);
  v5 = sub_22C36BA00();
  v6(v5);
  return v0;
}

__n128 sub_22C3A7350(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22C3A7364(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22C3A7384(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_22C3A7724()
{
  sub_22C90A11C();
  v0 = sub_22C90A0EC();

  return v0;
}

uint64_t sub_22C3A775C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for UIControlToolRetriever(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UIControlToolRetriever(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UIControlToolRetriever(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_22C3A77D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22C3A785C()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 224);
  v3 = *(v0 - 152);
  return result;
}

uint64_t Dictionary.asyncMapValues<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v10 = *(*(sub_22C90AC6C() - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v11 = *(a5 - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v13 = *(a4 - 8);
  v7[14] = v13;
  v14 = *(v13 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_getTupleTypeMetadata2();
  v15 = sub_22C90AC6C();
  v7[18] = v15;
  v16 = *(v15 - 8);
  v7[19] = v16;
  v17 = *(v16 + 64) + 15;
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22C3A7A7C, 0, 0);
}

uint64_t sub_22C3A7A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v14 = v12[8];
  v15 = v12[9];
  v17 = v12[5];
  v16 = v12[6];
  v12[2] = sub_22C909E8C();
  v18 = v12[5];
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v17 = sub_22C90B18C() | 0x8000000000000000;
    v22 = v12[5];
  }

  else
  {
    v19 = v18 + 64;
    v23 = -1 << *(v18 + 32);
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v18 + 64);
  }

  v12[22] = v17;
  v12[23] = v19;
  v26 = v12[14];
  v27 = v12[11];
  v12[25] = 0;
  v12[26] = v21;
  v12[24] = v20;

  if ((v17 & 0x8000000000000000) != 0)
  {
    if (sub_22C90B19C())
    {
      v29 = v12[16];
      v30 = v12[13];
      v31 = v12[6];
      v32 = v12[7];
      sub_22C90B4CC();
      swift_unknownObjectRelease();
      sub_22C90B4CC();
      swift_unknownObjectRelease();
      v28 = 0;
      v13 = v21;
LABEL_17:
      v43 = v12[20];
      v44 = v12[13];
      v45 = v12[11];
      v46 = v12[7];
      v47 = *(v12[17] + 48);
      (*(v12[14] + 32))(v43, v12[16], v12[6]);
      (*(v45 + 32))(v43 + v47, v44, v46);
      v48 = 0;
      v34 = v28;
      goto LABEL_18;
    }

    v34 = 0;
    v48 = 1;
    v13 = v21;
  }

  else
  {
    if (v21)
    {
      v28 = 0;
      a9 = v21;
LABEL_16:
      v36 = v12[16];
      v37 = v12[13];
      v38 = v12[6];
      v39 = v12[7];
      sub_22C377B0C();
      v41 = v40 | (v28 << 6);
      v42 = *(v17 + 48) + *(v26 + 72) * v41;
      (*(v26 + 16))();
      (*(v27 + 16))(v37, *(v17 + 56) + *(v27 + 72) * v41, v39);
      goto LABEL_17;
    }

    v33 = 0;
    v34 = ((v20 + 64) >> 6) - 1;
    while (v34 != v33)
    {
      v28 = v33 + 1;
      if (*(v19 + 8 + 8 * v33++))
      {
        a9 = 0;
        goto LABEL_16;
      }
    }

    v13 = 0;
    v48 = 1;
  }

LABEL_18:
  v12[27] = v34;
  v12[28] = v13;
  v50 = v12[20];
  v49 = v12[21];
  v52 = v12[18];
  v51 = v12[19];
  v53 = v12[17];
  sub_22C36C640(v50, v48, 1, v53);
  (*(v51 + 32))(v49, v50, v52);
  if (sub_22C370B74(v49, 1, v53) == 1)
  {
    v54 = v12[23];
    v55 = v12[24];
    v57 = v12[21];
    v56 = v12[22];
    v58 = v12[20];
    v60 = v12[15];
    v59 = v12[16];
    v62 = v12[12];
    v61 = v12[13];
    v63 = v12[10];
    sub_22C36A674();
    v64 = v12[2];

    sub_22C3714CC();
    sub_22C372034();
  }

  else
  {
    v74 = sub_22C369880();
    v75(v74);
    v76 = sub_22C38B75C();
    v77(v76);
    sub_22C36A67C();
    a9 = v78;
    v79 = *(v52 + 4);
    v80 = swift_task_alloc();
    v12[29] = v80;
    *v80 = v12;
    sub_22C37310C(v80);
    sub_22C372034();
  }

  return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12);
}

uint64_t sub_22C3A7E1C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[6]);
    v4 = v2[2];

    v5 = sub_22C3A82C8;
  }

  else
  {
    v5 = sub_22C3A7F50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22C3A7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = v12[15];
  v15 = v12[11];
  v14 = v12[12];
  v16 = v12[9];
  v17 = v12[7];
  v18 = v12[6];
  sub_22C36C640(v12[10], 0, 1, v12[8]);
  sub_22C909F2C();
  sub_22C909F3C();
  result = (*(v15 + 8))(v14, v17);
  v21 = v12[27];
  v20 = v12[28];
  v12[25] = v21;
  v12[26] = v20;
  v22 = v12[22];
  if (v22 < 0)
  {
    if (!sub_22C90B19C())
    {
      v44 = 1;
      v24 = v21;
      v18 = v20;
      goto LABEL_11;
    }

    v35 = v12[16];
    v36 = v12[13];
    v37 = v12[6];
    v38 = v12[7];
    sub_22C90B4CC();
    swift_unknownObjectRelease();
    sub_22C90B4CC();
    swift_unknownObjectRelease();
    v23 = v21;
    v18 = v20;
LABEL_10:
    v39 = v12[20];
    v40 = v12[13];
    v41 = v12[11];
    v42 = v12[7];
    v43 = *(v12[17] + 48);
    (*(v12[14] + 32))(v39, v12[16], v12[6]);
    (*(v41 + 32))(v39 + v43, v40, v42);
    v44 = 0;
    v24 = v23;
LABEL_11:
    v12[27] = v24;
    v12[28] = v18;
    v46 = v12[20];
    v45 = v12[21];
    v47 = v12[18];
    v48 = v12[19];
    v49 = v12[17];
    sub_22C36C640(v46, v44, 1, v49);
    (*(v48 + 32))(v45, v46, v47);
    if (sub_22C370B74(v45, 1, v49) == 1)
    {
      v50 = v12[23];
      v51 = v12[24];
      v53 = v12[21];
      v52 = v12[22];
      v54 = v12[20];
      v56 = v12[15];
      v55 = v12[16];
      v58 = v12[12];
      v57 = v12[13];
      v59 = v12[10];
      sub_22C36A674();
      v60 = v12[2];

      sub_22C3714CC();
      sub_22C372034();
    }

    else
    {
      v69 = sub_22C369880();
      v70(v69);
      v71 = sub_22C38B75C();
      v72(v71);
      sub_22C36A67C();
      a9 = v73;
      v74 = *(v46 + 4);
      v75 = swift_task_alloc();
      v12[29] = v75;
      *v75 = v12;
      sub_22C37310C();
      sub_22C372034();
    }

    return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12);
  }

  v23 = v21;
  if (v20)
  {
LABEL_7:
    v25 = v12[16];
    v27 = v12[13];
    v26 = v12[14];
    v28 = v12[11];
    v29 = v12[6];
    v30 = v12[7];
    sub_22C377B0C();
    v32 = v31 | (v23 << 6);
    v34 = *(v22 + 48) + *(v33 + 72) * v32;
    (*(v33 + 16))();
    (*(v28 + 16))(v27, *(v22 + 56) + *(v28 + 72) * v32, v30);
    goto LABEL_10;
  }

  v24 = v21;
  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= ((v12[24] + 64) >> 6))
    {
      v18 = 0;
      v44 = 1;
      goto LABEL_11;
    }

    ++v24;
    if (*(v12[23] + 8 * v23))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C3A82C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C36BA18();
  v13 = v12[25];
  v14 = v12[26];
  v15 = v12[23];
  v16 = v12[24];
  v18 = v12[21];
  v17 = v12[22];
  v19 = v12[20];
  v21 = v12[15];
  v20 = v12[16];
  v23 = v12[12];
  v22 = v12[13];
  v24 = v12[10];
  v25 = v12[11];
  v26 = v12[7];
  sub_22C36A674();
  (*(v25 + 8))(v23, v26);

  v27 = v12[1];
  v28 = v12[30];
  sub_22C372034();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t StructuredContext.SiriRequestContext.mode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9063DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_22C903A5C();
  if (!v11)
  {
    sub_22C90405C();
    v23 = sub_22C9063CC();
    v24 = sub_22C90AADC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22C366000, v23, v24, "No response mode", v25, 2u);
      MEMORY[0x2318B9880](v25, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_14;
  }

  v12 = v10;
  v13 = v11;
  v14 = sub_22C90A1BC();
  v16 = v15;
  if (v14 != 0x6C6E6F6563696F76 || v15 != 0xE900000000000079)
  {
    v18 = v14;
    if ((sub_22C36A6B0() & 1) == 0)
    {
      v27 = v18 == 0x726F666563696F76 && v16 == 0xEC00000064726177;
      if (v27 || (sub_22C36A6B0() & 1) != 0)
      {

        v19 = MEMORY[0x277D1DC20];
        goto LABEL_8;
      }

      v28 = v18 == 0x6679616C70736964 && v16 == 0xEE0064726177726FLL;
      if (v28 || (sub_22C36A6B0() & 1) != 0)
      {

        v19 = MEMORY[0x277D1DC28];
        goto LABEL_8;
      }

      if (v18 == 0x6F79616C70736964 && v16 == 0xEB00000000796C6ELL)
      {
      }

      else
      {
        v30 = sub_22C36A6B0();

        if ((v30 & 1) == 0)
        {
          sub_22C90405C();

          v31 = sub_22C9063CC();
          v32 = sub_22C90AAEC();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v37 = v34;
            *v33 = 136315138;
            v35 = sub_22C36F9F4(v12, v13, &v37);

            *(v33 + 4) = v35;
            _os_log_impl(&dword_22C366000, v31, v32, "Unknown response mode %s", v33, 0xCu);
            sub_22C36FF94(v34);
            MEMORY[0x2318B9880](v34, -1, -1);
            MEMORY[0x2318B9880](v33, -1, -1);
          }

          else
          {
          }

          (*(v3 + 8))(v9, v2);
LABEL_14:
          v26 = sub_22C90687C();
          return sub_22C36C640(a1, 1, 1, v26);
        }
      }

      v19 = MEMORY[0x277D1DC18];
      goto LABEL_8;
    }
  }

  v19 = MEMORY[0x277D1DC30];
LABEL_8:
  v20 = *v19;
  v21 = sub_22C90687C();
  (*(*(v21 - 8) + 104))(a1, v20, v21);

  return sub_22C36C640(a1, 0, 1, v21);
}

char *sub_22C3A880C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22C3A5908(&qword_27D9BA9E8, &qword_22C90D030);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void static Session.Transcript.userQuery(event:)()
{
  sub_22C36BA7C();
  v0 = sub_22C906B9C();
  v1 = sub_22C369824(v0);
  v84 = v2;
  v85 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C3698A8();
  v83 = v5;
  sub_22C36BA0C();
  v6 = sub_22C906B6C();
  v7 = sub_22C369824(v6);
  v87 = v8;
  v88 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v86 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90720C();
  v13 = sub_22C369824(v12);
  v90 = v14;
  v91 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22C3698A8();
  v89 = v17;
  sub_22C36BA0C();
  v18 = sub_22C90873C();
  v19 = sub_22C369824(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C9089DC();
  v28 = sub_22C369824(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v35 = v34 - v33;
  v92 = sub_22C906C4C();
  v36 = sub_22C369824(v92);
  v38 = v37;
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v36);
  v43 = &v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v83 - v44;
  sub_22C9089EC();
  v46 = v30[11];
  v47 = sub_22C36EBF0();
  v49 = v48(v47);
  if (v49 == *MEMORY[0x277D1E858])
  {
    v50 = v30[12];
    v51 = sub_22C36EBF0();
    v52(v51);
    (*(v21 + 32))(v26, v35, v18);
    sub_22C90763C();
    (*(v21 + 8))(v26, v18);
  }

  else
  {
    if (v49 != *MEMORY[0x277D1E778])
    {
      v72 = v30[1];
      v73 = sub_22C36EBF0();
      v74(v73);
      goto LABEL_13;
    }

    v53 = v30[12];
    v54 = sub_22C36EBF0();
    v55(v54);
    v56 = v89;
    v57 = v90;
    v58 = v91;
    (*(v90 + 32))(v89, v35, v91);
    sub_22C9071FC();
    (*(v57 + 8))(v56, v58);
  }

  v59 = v92;
  (*(v38 + 16))(v43, v45, v92);
  v60 = *(v38 + 88);
  v61 = sub_22C37493C();
  v63 = v62(v61);
  if (v63 == *MEMORY[0x277D1DDC8])
  {
LABEL_6:
    v64 = *(v38 + 8);
    v64(v45, v59);
    v65 = sub_22C37493C();
    (v64)(v65);
LABEL_13:
    sub_22C36CC48();
    return;
  }

  if (v63 == *MEMORY[0x277D1DDD0])
  {
    v66 = *(v38 + 96);
    v67 = sub_22C37493C();
    v68(v67);
    v69 = v87;
    v70 = sub_22C380424();
    v71(v70);
    sub_22C906B5C();
LABEL_12:
    v80 = *(v69 + 8);
    v81 = sub_22C370018();
    v82(v81);
    (*(v38 + 8))(v45, v59);
    goto LABEL_13;
  }

  if (v63 == *MEMORY[0x277D1DDD8])
  {
    v75 = *(v38 + 96);
    v76 = sub_22C37493C();
    v77(v76);
    v69 = v84;
    v78 = sub_22C380424();
    v79(v78);
    sub_22C906B5C();
    goto LABEL_12;
  }

  if (v63 == *MEMORY[0x277D1DD78])
  {
    goto LABEL_6;
  }

  sub_22C90B4EC();
  __break(1u);
}