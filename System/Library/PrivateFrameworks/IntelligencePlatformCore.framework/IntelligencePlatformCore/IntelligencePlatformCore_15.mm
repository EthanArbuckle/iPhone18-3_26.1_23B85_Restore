uint64_t sub_1C4549C48(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDDBE8, type metadata accessor for WalletClassicOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549CA0(uint64_t a1)
{
  result = sub_1C4D42B30(&qword_1EDDDC7A0, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549E68(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDEDB0, type metadata accessor for WalletEmailOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549EC0(uint64_t a1)
{
  result = sub_1C4D4E828(&qword_1EDDDCE80, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4549F34()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C4549F78()
{
  sub_1C43FBDBC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C454A378(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = type metadata accessor for PhaseStores();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = type metadata accessor for Source();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 252)
      {
        v15 = *(v3 + a3[6]);
        if (v15 >= 4)
        {
          return v15 - 3;
        }

        else
        {
          return 0;
        }
      }

      v9 = sub_1C4EFD548();
      v14 = a3[8];
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C454A478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = type metadata accessor for PhaseStores();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = type metadata accessor for Source();
    result = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 252)
      {
        *(v4 + a4[6]) = a2 + 3;
        return result;
      }

      v11 = sub_1C4EFD548();
      v16 = a4[8];
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C454A648(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDDB30, type metadata accessor for WalletTrackedOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A6A0(uint64_t a1)
{
  result = sub_1C4D5D218(&qword_1EDDDC6E8, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A7B8(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDCA88, type metadata accessor for WalletTransactionOrderSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A810(uint64_t a1)
{
  result = sub_1C4D5F5CC(&qword_1EDDDC360, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C454A868()
{
  v1 = *(v0 + 16);

  v2 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1C454A898()
{
  v1 = sub_1C44067F0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1C454A9C8()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[10];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
              v9 = v2[11];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454ABD0()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[10];
            }

            else
            {
              sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
              v20 = v0[11];
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454ADE0()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[20];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
              v9 = v2[21];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454AFE8()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[20];
            }

            else
            {
              sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
              v20 = v0[21];
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454B1F0()
{
  sub_1C440CE48();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v9 = type metadata accessor for Source();
      sub_1C43FCF8C(v9);
      if (*(v10 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
        sub_1C4416C14();
      }
    }

    v4 = v1 + v8;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C454B308()
{
  sub_1C43FF404();
  v1 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v3 = sub_1C4EFD548();
    sub_1C43FCF8C(v3);
    if (*(v4 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      v5 = type metadata accessor for Source();
      sub_1C43FCF8C(v5);
      if (*(v6 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C454B7CC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v6 = v15;
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454B95C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }

          v12 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454BAEC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[59];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
              v9 = v2[60];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454BCF4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[59];
            }

            else
            {
              sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
              v20 = v0[60];
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454C348()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        v13 = sub_1C43FCF8C(v12);
        if (*(v14 + 84) == v0)
        {
          v6 = v13;
          v9 = v2[7];
        }

        else
        {
          v15 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
          v16 = sub_1C43FCF8C(v15);
          if (*(v17 + 84) == v0)
          {
            v6 = v16;
            v9 = v2[8];
          }

          else
          {
            v6 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
            v9 = v2[9];
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C454C4F0()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          v10 = v0[7];
        }

        else
        {
          v11 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
          sub_1C43FCF8C(v11);
          if (*(v12 + 84) == v1)
          {
            v13 = v0[8];
          }

          else
          {
            sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
            v14 = v0[9];
          }
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v15, v16, v17, v18);
}

uint64_t sub_1C454C698()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) != v0)
      {
        return sub_1C4405628(*(v1 + *(v2 + 28)));
      }

      sub_1C440EED4();
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C454C7B0()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = type metadata accessor for Source();
      result = sub_1C43FCF8C(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0;
        return result;
      }

      sub_1C4416C20();
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C454C8C8()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        v13 = sub_1C43FCF8C(v12);
        if (*(v14 + 84) == v0)
        {
          v6 = v13;
          v9 = v2[7];
        }

        else
        {
          v15 = sub_1C4EFEEF8();
          v16 = sub_1C43FCF8C(v15);
          if (*(v17 + 84) != v0)
          {
            return sub_1C4405628(*(v1 + v2[9] + 8));
          }

          v6 = v16;
          v9 = v2[8];
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C454CA64()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = sub_1C4EFD548();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        v10 = type metadata accessor for Source();
        sub_1C43FCF8C(v10);
        if (*(v11 + 84) == v3)
        {
          v12 = v2[7];
        }

        else
        {
          v13 = sub_1C4EFEEF8();
          result = sub_1C43FCF8C(v13);
          if (*(v15 + 84) != v3)
          {
            *(v1 + v2[9] + 8) = v0;
            return result;
          }

          v16 = v2[8];
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v17, v18, v19, v20);
}

uint64_t sub_1C454CD08(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v9 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
            v14 = a3[10];
          }
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C454CED8()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = sub_1C4EFEEF8();
          v20 = sub_1C43FCF8C(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              sub_1C441864C(v2[9]);
              return;
            }

            v7 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
            v12 = v2[10];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C454D0A8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_1C4EFEEF8();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != a2)
        {
          return sub_1C43FE264(a3[8]);
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C454D210()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C4EFD548();
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = type metadata accessor for Source();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = sub_1C4EFEEF8();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) != v3)
        {
          sub_1C441864C(v2[8]);
          return;
        }

        v7 = v17;
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C454D374(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v9 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
            v14 = a3[12];
          }
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C454D544()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = sub_1C4EFEEF8();
          v20 = sub_1C43FCF8C(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              sub_1C441864C(v2[9]);
              return;
            }

            v7 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
            v12 = v2[12];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C454D8A4()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C4405628(*(v1 + *(v2 + 32) + 8));
          }

          v6 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
          v9 = *(v2 + 36);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454DA28()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
          v10 = *(v0 + 36);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C454DBCC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) != v0)
          {
            return sub_1C4405628(*(v1 + *(v2 + 36) + 8));
          }

          v6 = v15;
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454DD64()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }

          v12 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454DEF4()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C4405628(*(v1 + *(v2 + 32)));
          }

          v6 = sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
          v9 = *(v2 + 36);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C454E074()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = sub_1C4EFD548();
      sub_1C43FCF8C(v8);
      if (*(v9 + 84) == v3)
      {
        sub_1C4416C20();
      }

      else
      {
        v10 = type metadata accessor for Source();
        result = sub_1C43FCF8C(v10);
        if (*(v12 + 84) == v3)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v3 == 2147483646)
          {
            *(v1 + *(v2 + 32)) = v0;
            return result;
          }

          sub_1C456902C(&qword_1EC0C74A0, &unk_1C4F73760);
          v13 = *(v2 + 36);
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C454E1F4()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C4405628(*(v1 + v2[9] + 8));
            }

            v18 = sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[12];
            }

            else
            {
              v21 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
              v22 = sub_1C43FCF8C(v21);
              if (*(v23 + 84) == v0)
              {
                v6 = v22;
                v9 = v2[13];
              }

              else
              {
                v6 = sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
                v9 = v2[17];
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454E450()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0C7400, &unk_1C4F73730);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[12];
            }

            else
            {
              v20 = sub_1C456902C(&qword_1EC0C3430, &qword_1C4F51390);
              sub_1C43FCF8C(v20);
              if (*(v21 + 84) == v1)
              {
                v22 = v0[13];
              }

              else
              {
                sub_1C456902C(&qword_1EC0C3428, &unk_1C4F73720);
                v23 = v0[17];
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454E964()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) != v0)
        {
          return sub_1C43FE264(*(v2 + 32));
        }

        sub_1C4416C14();
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454EAB4()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) != v1)
        {
          sub_1C441864C(*(v0 + 32));
          return;
        }

        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v10, v11, v12, v13);
}

uint64_t sub_1C454EC04()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v14)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v9 = *(v2 + 60);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454ED7C()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C445AC84();
          if (v10)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v11 = *(v0 + 60);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C454EEF4()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            sub_1C44A1CD0();
            if (v18)
            {
              return sub_1C43FE264(v2[9]);
            }

            v19 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
            v20 = sub_1C43FCF8C(v19);
            if (*(v21 + 84) == v0)
            {
              v6 = v20;
              v9 = v2[10];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v9 = v2[11];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454F0F8()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            sub_1C445AC84();
            if (v17)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v18 = sub_1C456902C(&qword_1EC0BFA50, &qword_1C4F3BA60);
            sub_1C43FCF8C(v18);
            if (*(v19 + 84) == v1)
            {
              v20 = v0[10];
            }

            else
            {
              sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v21 = v0[11];
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454F2FC()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
LABEL_8:

    return sub_1C44157D4(v5, v0, v6);
  }

  v7 = sub_1C4EFD548();
  sub_1C43FCF8C(v7);
  if (*(v8 + 84) == v0)
  {
    sub_1C441E0CC();
LABEL_7:
    v5 = v1 + v9;
    goto LABEL_8;
  }

  v10 = type metadata accessor for Source();
  sub_1C43FCF8C(v10);
  if (*(v11 + 84) == v0)
  {
    sub_1C440EED4();
    goto LABEL_7;
  }

  v13 = *(v1 + *(v2 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1C454F42C()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v4);
  if (*(v5 + 84) == v3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v3)
    {
      sub_1C4418160();
    }

    else
    {
      v8 = type metadata accessor for Source();
      result = sub_1C43FCF8C(v8);
      if (*(v10 + 84) != v3)
      {
        *(v1 + *(v2 + 28)) = v0;
        return result;
      }

      sub_1C4416C20();
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C454F544()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            sub_1C44A1CD0();
            if (v18)
            {
              return sub_1C43FE264(v2[9]);
            }

            v19 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
            v20 = sub_1C43FCF8C(v19);
            if (*(v21 + 84) == v0)
            {
              v6 = v20;
              v9 = v2[12];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v9 = v2[13];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454F748()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            sub_1C445AC84();
            if (v17)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v18 = sub_1C456902C(&qword_1EC0BFA58, &unk_1C4F3BA68);
            sub_1C43FCF8C(v18);
            if (*(v19 + 84) == v1)
            {
              v20 = v0[12];
            }

            else
            {
              sub_1C456902C(&qword_1EC0BFA40, &unk_1C4F74970);
              v21 = v0[13];
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454F94C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v6 = v15;
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454FADC()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }

          v12 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C454FC6C()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v14)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v9 = *(v2 + 52);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C454FDE4()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C445AC84();
          if (v10)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA48, &unk_1C4F74980);
          v11 = *(v0 + 52);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C455015C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[12];
            }

            else
            {
              v21 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
              v22 = sub_1C43FCF8C(v21);
              if (*(v23 + 84) == v0)
              {
                v6 = v22;
                v9 = v2[13];
              }

              else
              {
                v6 = sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
                v9 = v2[15];
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45503B0()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0BFA60, &qword_1C4F3BB30);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[12];
            }

            else
            {
              v20 = sub_1C456902C(&qword_1EC0BFA68, &qword_1C4F3BB38);
              sub_1C43FCF8C(v20);
              if (*(v21 + 84) == v1)
              {
                v22 = v0[13];
              }

              else
              {
                sub_1C456902C(&qword_1EC0C79E0, &unk_1C4F75510);
                v23 = v0[15];
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C4550604()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
          v9 = *(v2 + 60);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4550780()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
          v10 = *(v0 + 60);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C45508FC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v6 = v15;
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4550A8C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }

          v12 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C4550C1C()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
          v9 = *(v2 + 52);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4550D98()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0BFA70, &unk_1C4F75520);
          v10 = *(v0 + 52);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C455103C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4404078();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == v3)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == v3)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v9 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
            v14 = a3[10];
          }
        }
      }
    }

    v10 = v4 + v14;
  }

  return sub_1C44157D4(v10, v3, v9);
}

uint64_t sub_1C455120C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4404078();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for Source();
        v21 = sub_1C43FCF8C(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = sub_1C4EFEEF8();
          result = sub_1C43FCF8C(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = result;
            v16 = a4[8];
          }

          else
          {
            if (a3 == 2147483646)
            {
              *(v5 + a4[9] + 8) = v4;
              return result;
            }

            v11 = sub_1C456902C(&qword_1EC0C0890, &qword_1C4F3F420);
            v16 = a4[10];
          }
        }
      }
    }

    v12 = v5 + v16;
  }

  return sub_1C440BAA8(v12, v4, v4, v11);
}

uint64_t sub_1C45513EC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C4404078();
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_1C4EFEEF8();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != v3)
        {
          return sub_1C43FE264(a3[8]);
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = v4 + v14;
  }

  return sub_1C44157D4(v10, v3, v9);
}

uint64_t sub_1C4551550(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C4404078();
  v8 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = sub_1C4EFD548();
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for Source();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v20);
        if (*(v22 + 84) != a3)
        {
          *(v5 + a4[8] + 8) = v4;
          return result;
        }

        v11 = result;
        v16 = a4[7];
      }
    }

    v12 = v5 + v16;
  }

  return sub_1C440BAA8(v12, v4, v4, v11);
}

uint64_t sub_1C4551A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E05EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4551AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E260AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4551BB4()
{
  result = sub_1C4E2E060();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = sub_1C44553A4();
      break;
    case 3:
      result = sub_1C4461FC0();
      break;
    case 4:
      result = sub_1C4E2CB90();
      break;
    case 5:
      result = 1701667182;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1C4551C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4E13600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C455203C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C441528C();
            }

            v9 = sub_1C456902C(&qword_1EC0C19B0, &qword_1C4F45548);
            v14 = a3[14];
          }
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C4552208(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for Source();
        v21 = sub_1C43FCF8C(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = sub_1C4EFEEF8();
          v24 = sub_1C43FCF8C(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[8];
          }

          else
          {
            if (a3 == 2147483646)
            {
              sub_1C4424ABC();
              return;
            }

            v11 = sub_1C456902C(&qword_1EC0C19B0, &qword_1C4F45548);
            v16 = a4[14];
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C45523DC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) != a2)
          {
            return sub_1C441528C();
          }

          v9 = v22;
          v14 = a3[8];
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C455257C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for Source();
        v21 = sub_1C43FCF8C(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = sub_1C4EFEEF8();
          v24 = sub_1C43FCF8C(v23);
          if (*(v25 + 84) != a3)
          {
            sub_1C4424ABC();
            return;
          }

          v11 = v24;
          v16 = a4[8];
        }
      }
    }

    v12 = v4 + v16;
  }

  sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C455280C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v25 = sub_1C456902C(&qword_1EC0C2A88, &qword_1C4F4C988);
            v26 = sub_1C43FCF8C(v25);
            if (*(v27 + 84) == a2)
            {
              v9 = v26;
              v14 = a3[10];
            }

            else
            {
              v9 = sub_1C456902C(&qword_1EC0C2A60, &qword_1C4F4C970);
              v14 = a3[11];
            }
          }
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4552A28(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1C43FBE94();
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCF8C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v14 = sub_1C43FCF8C(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1C4EFD548();
      v18 = sub_1C43FCF8C(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for Source();
        v21 = sub_1C43FCF8C(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[7];
        }

        else
        {
          v23 = sub_1C4EFEEF8();
          result = sub_1C43FCF8C(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = result;
            v16 = a4[8];
          }

          else
          {
            if (a3 == 2147483646)
            {
              *(v4 + a4[9] + 8) = a2;
              return result;
            }

            v26 = sub_1C456902C(&qword_1EC0C2A88, &qword_1C4F4C988);
            v27 = sub_1C43FCF8C(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[10];
            }

            else
            {
              v11 = sub_1C456902C(&qword_1EC0C2A60, &qword_1C4F4C970);
              v16 = a4[11];
            }
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  return sub_1C440BAA8(v12, a2, a2, v11);
}

uint64_t sub_1C4552DAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C4405628(*(a1 + a3[9]));
            }

            v9 = sub_1C456902C(&qword_1EC0C8C18, &qword_1C4F7A3E8);
            v14 = a3[16];
          }
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C4552F84()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = sub_1C4EFEEF8();
          result = sub_1C43FCF8C(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = result;
            v12 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              *(v1 + v2[9]) = v0;
              return result;
            }

            v7 = sub_1C456902C(&qword_1EC0C8C18, &qword_1C4F7A3E8);
            v12 = v2[16];
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  return sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C4553344()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) == v0)
          {
            v6 = v15;
            v9 = v2[8];
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v6 = sub_1C456902C(&qword_1EC0C3448, &unk_1C4F7AAC0);
            v9 = v2[26];
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4553500()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            v12 = v0[8];
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            sub_1C456902C(&qword_1EC0C3448, &unk_1C4F7AAC0);
            v13 = v0[26];
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C45536BC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          v15 = sub_1C43FCF8C(v14);
          if (*(v16 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          v6 = v15;
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455384C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) != v1)
          {
            sub_1C441864C(*(v0 + 36));
            return;
          }

          v12 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C45539DC()
{
  sub_1C440CE48();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = sub_1C4404F74();
  }

  else
  {
    v6 = sub_1C4EFD548();
    sub_1C43FCF8C(v6);
    if (*(v7 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v9 = type metadata accessor for Source();
      sub_1C43FCF8C(v9);
      if (*(v10 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        sub_1C456902C(&qword_1EC0C3450, &unk_1C4F7AAD0);
        sub_1C4416C14();
      }
    }

    v4 = v1 + v8;
  }

  return sub_1C44157D4(v4, v0, v5);
}

uint64_t sub_1C4553AF4()
{
  sub_1C43FF404();
  v1 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v3 = sub_1C4EFD548();
    sub_1C43FCF8C(v3);
    if (*(v4 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      v5 = type metadata accessor for Source();
      sub_1C43FCF8C(v5);
      if (*(v6 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        sub_1C456902C(&qword_1EC0C3450, &unk_1C4F7AAD0);
        sub_1C441D7B0();
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v7, v8, v9, v10);
}

uint64_t sub_1C4553C14()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          if (v0 == 2147483646)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0C3438, &qword_1C4F51398);
          v9 = *(v2 + 36);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4553D90()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          if (v1 == 2147483646)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0C3438, &qword_1C4F51398);
          v10 = *(v0 + 36);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C4553F0C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v6 = sub_1C456902C(&qword_1EC0C3440, &qword_1C4F7AAE0);
          v9 = *(v2 + 32);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

uint64_t sub_1C4554064()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C456902C(&qword_1EC0C3440, &qword_1C4F7AAE0);
          v10 = *(v0 + 32);
        }
      }
    }
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C4554664(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1C4EFD548();
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = type metadata accessor for Source();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = sub_1C4EFEEF8();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) != a2)
        {
          return sub_1C4405628(*(a1 + a3[8] + 8));
        }

        v9 = v19;
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

uint64_t sub_1C45547D4()
{
  sub_1C43FF404();
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C4EFD548();
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = type metadata accessor for Source();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = sub_1C4EFEEF8();
        result = sub_1C43FCF8C(v16);
        if (*(v18 + 84) != v3)
        {
          *(v1 + v2[8] + 8) = v0;
          return result;
        }

        v7 = result;
        v12 = v2[7];
      }
    }

    v8 = v1 + v12;
  }

  return sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C4554A60(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) == a2)
          {
            v9 = v22;
            v14 = a3[8];
          }

          else
          {
            if (a2 == 2147483646)
            {
              return sub_1C43FE264(a3[9]);
            }

            v25 = sub_1C456902C(&qword_1EC0C9550, &qword_1C4F7C908);
            v26 = sub_1C43FCF8C(v25);
            if (*(v27 + 84) == a2)
            {
              v9 = v26;
              v14 = a3[22];
            }

            else
            {
              v28 = sub_1C456902C(&qword_1EC0BB2B0, &qword_1C4F7C900);
              v29 = sub_1C43FCF8C(v28);
              if (*(v30 + 84) == a2)
              {
                v9 = v29;
                v14 = a3[23];
              }

              else
              {
                v9 = sub_1C456902C(&qword_1EC0BB2A0, &qword_1C4F1E970);
                v14 = a3[24];
              }
            }
          }
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C4554CC8()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = sub_1C4EFEEF8();
          v20 = sub_1C43FCF8C(v19);
          if (*(v21 + 84) == v3)
          {
            v7 = v20;
            v12 = v2[8];
          }

          else
          {
            if (v3 == 2147483646)
            {
              sub_1C441864C(v2[9]);
              return;
            }

            v22 = sub_1C456902C(&qword_1EC0C9550, &qword_1C4F7C908);
            v23 = sub_1C43FCF8C(v22);
            if (*(v24 + 84) == v3)
            {
              v7 = v23;
              v12 = v2[22];
            }

            else
            {
              v25 = sub_1C456902C(&qword_1EC0BB2B0, &qword_1C4F7C900);
              v26 = sub_1C43FCF8C(v25);
              if (*(v27 + 84) == v3)
              {
                v7 = v26;
                v12 = v2[23];
              }

              else
              {
                v7 = sub_1C456902C(&qword_1EC0BB2A0, &qword_1C4F1E970);
                v12 = v2[24];
              }
            }
          }
        }
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C4554F38(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1C43FBE94();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCF8C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v12 = sub_1C43FCF8C(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1C4EFD548();
      v16 = sub_1C43FCF8C(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v18 = type metadata accessor for Source();
        v19 = sub_1C43FCF8C(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[7];
        }

        else
        {
          v21 = sub_1C4EFEEF8();
          v22 = sub_1C43FCF8C(v21);
          if (*(v23 + 84) != a2)
          {
            return sub_1C43FE264(a3[9]);
          }

          v9 = v22;
          v14 = a3[8];
        }
      }
    }

    v10 = v3 + v14;
  }

  return sub_1C44157D4(v10, a2, v9);
}

void sub_1C45550DC()
{
  sub_1C43FF404();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCF8C(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = v5;
    v8 = v1;
  }

  else
  {
    v9 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    v10 = sub_1C43FCF8C(v9);
    if (*(v11 + 84) == v3)
    {
      v7 = v10;
      v12 = v2[5];
    }

    else
    {
      v13 = sub_1C4EFD548();
      v14 = sub_1C43FCF8C(v13);
      if (*(v15 + 84) == v3)
      {
        v7 = v14;
        v12 = v2[6];
      }

      else
      {
        v16 = type metadata accessor for Source();
        v17 = sub_1C43FCF8C(v16);
        if (*(v18 + 84) == v3)
        {
          v7 = v17;
          v12 = v2[7];
        }

        else
        {
          v19 = sub_1C4EFEEF8();
          v20 = sub_1C43FCF8C(v19);
          if (*(v21 + 84) != v3)
          {
            sub_1C441864C(v2[9]);
            return;
          }

          v7 = v20;
          v12 = v2[8];
        }
      }
    }

    v8 = v1 + v12;
  }

  sub_1C440BAA8(v8, v0, v0, v7);
}

uint64_t sub_1C4555358()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0C6848, &unk_1C4F6F5E0);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[17];
            }

            else
            {
              v21 = sub_1C456902C(&qword_1EC0C6838, &qword_1C4F6F5D0);
              v22 = sub_1C43FCF8C(v21);
              if (*(v23 + 84) == v0)
              {
                v6 = v22;
                v9 = v2[18];
              }

              else
              {
                v6 = sub_1C456902C(&qword_1EC0C6818, &qword_1C4F6F5B8);
                v9 = v2[19];
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45555A4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(v0[9]);
              return;
            }

            v16 = sub_1C456902C(&qword_1EC0C6848, &unk_1C4F6F5E0);
            sub_1C43FCF8C(v16);
            if (*(v17 + 84) == v1)
            {
              v18 = v0[17];
            }

            else
            {
              v19 = sub_1C456902C(&qword_1EC0C6838, &qword_1C4F6F5D0);
              sub_1C43FCF8C(v19);
              if (*(v20 + 84) == v1)
              {
                v21 = v0[18];
              }

              else
              {
                sub_1C456902C(&qword_1EC0C6818, &qword_1C4F6F5B8);
                v22 = v0[19];
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C4555858()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
            v9 = *(v2 + 48);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4555A0C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
            v12 = *(v0 + 48);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C4555C14()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
            v9 = *(v2 + 96);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4555DC8()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C441864C(*(v0 + 36));
              return;
            }

            sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
            v12 = *(v0 + 96);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

uint64_t sub_1C45562D8()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0C6898, &qword_1C4F6F848);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[19];
            }

            else
            {
              v21 = sub_1C456902C(&qword_1EC0C68A8, &unk_1C4F7E540);
              v22 = sub_1C43FCF8C(v21);
              if (*(v23 + 84) == v0)
              {
                v6 = v22;
                v9 = v2[21];
              }

              else
              {
                v24 = sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
                v25 = sub_1C43FCF8C(v24);
                if (*(v26 + 84) == v0)
                {
                  v6 = v25;
                  v9 = v2[23];
                }

                else
                {
                  v6 = sub_1C456902C(&qword_1EC0C6868, &qword_1C4F7E550);
                  v9 = v2[25];
                }
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4556570()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v16)
            {
              sub_1C4424ABC();
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0C6898, &qword_1C4F6F848);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[19];
            }

            else
            {
              v20 = sub_1C456902C(&qword_1EC0C68A8, &unk_1C4F7E540);
              sub_1C43FCF8C(v20);
              if (*(v21 + 84) == v1)
              {
                v22 = v0[21];
              }

              else
              {
                v23 = sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
                sub_1C43FCF8C(v23);
                if (*(v24 + 84) == v1)
                {
                  v25 = v0[23];
                }

                else
                {
                  sub_1C456902C(&qword_1EC0C6868, &qword_1C4F7E550);
                  v26 = v0[25];
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C455682C()
{
  sub_1C440CE48();
  v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C4EFD548();
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = type metadata accessor for Source();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          sub_1C44A1CD0();
          if (v14)
          {
            return sub_1C43FE264(*(v2 + 32));
          }

          v6 = sub_1C456902C(&qword_1EC0C68B0, &unk_1C4F6F860);
          v9 = *(v2 + 36);
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45569A4()
{
  sub_1C43FF404();
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C4EFD548();
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = type metadata accessor for Source();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = sub_1C4EFEEF8();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          sub_1C445AC84();
          if (v10)
          {
            sub_1C441864C(*(v0 + 32));
            return;
          }

          sub_1C456902C(&qword_1EC0C68B0, &unk_1C4F6F860);
          v11 = *(v0 + 36);
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C4556B1C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0C68B8, &qword_1C4F7E620);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[30];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
              v9 = v2[32];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4556D1C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v16)
            {
              sub_1C4424ABC();
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0C68B8, &qword_1C4F7E620);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = *(v0 + 120);
            }

            else
            {
              sub_1C456902C(&qword_1EC0C68C8, &qword_1C4F6F878);
              v20 = *(v0 + 128);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C4556F40()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C68C0, &qword_1C4F6F870);
            v9 = *(v2 + 64);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45570F4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C68C0, &qword_1C4F6F870);
            v13 = *(v0 + 64);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C455733C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0C6890, &qword_1C4F6F840);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[16];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0C6888, &qword_1C4F6F838);
              v9 = v2[18];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455753C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v16)
            {
              sub_1C4424ABC();
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0C6890, &qword_1C4F6F840);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = *(v0 + 64);
            }

            else
            {
              sub_1C456902C(&qword_1EC0C6888, &qword_1C4F6F838);
              v20 = *(v0 + 72);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C45577BC()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6878, &qword_1C4F7E750);
            v9 = *(v2 + 96);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4557970()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C6878, &qword_1C4F7E750);
            v13 = *(v0 + 96);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C4557D28(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = sub_1C44553A4();
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4557DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4EAC3B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C455815C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0C6998, &qword_1C4F6FC48);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[18];
            }

            else
            {
              v21 = sub_1C456902C(&qword_1EC0C6978, &qword_1C4F804B0);
              v22 = sub_1C43FCF8C(v21);
              if (*(v23 + 84) == v0)
              {
                v6 = v22;
                v9 = v2[19];
              }

              else
              {
                v24 = sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
                v25 = sub_1C43FCF8C(v24);
                if (*(v26 + 84) == v0)
                {
                  v6 = v25;
                  v9 = v2[20];
                }

                else
                {
                  v6 = sub_1C456902C(&qword_1EC0C69B0, &qword_1C4F6FC60);
                  v9 = v2[21];
                }
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45583F4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v16)
            {
              sub_1C4424ABC();
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0C6998, &qword_1C4F6FC48);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = v0[18];
            }

            else
            {
              v20 = sub_1C456902C(&qword_1EC0C6978, &qword_1C4F804B0);
              sub_1C43FCF8C(v20);
              if (*(v21 + 84) == v1)
              {
                v22 = v0[19];
              }

              else
              {
                v23 = sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
                sub_1C43FCF8C(v23);
                if (*(v24 + 84) == v1)
                {
                  v25 = v0[20];
                }

                else
                {
                  sub_1C456902C(&qword_1EC0C69B0, &qword_1C4F6FC60);
                  v26 = v0[21];
                }
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C45586A8()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
            v9 = *(v2 + 88);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455885C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C69C0, &qword_1C4F6FC78);
            v13 = *(v0 + 88);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C4558A0C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          sub_1C4E93CF0();
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4558B98()
{
  sub_1C43FF404();
  v1 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v3);
    if (*(v4 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      v5 = sub_1C4EFD548();
      sub_1C43FCF8C(v5);
      if (*(v6 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        v7 = type metadata accessor for Source();
        sub_1C43FCF8C(v7);
        if (*(v8 + 84) == v0)
        {
          sub_1C441D7B0();
        }

        else
        {
          v9 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v9);
          if (*(v10 + 84) != v0)
          {
            sub_1C4424ABC();
            return;
          }

          sub_1C4E93CE4();
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C4558D48()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C69A8, &qword_1C4F6FC58);
            v9 = *(v2 + 64);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4558EFC()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C69A8, &qword_1C4F6FC58);
            v13 = *(v0 + 64);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C45590F4()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v17)
            {
              return sub_1C43FE264(v2[9]);
            }

            v18 = sub_1C456902C(&qword_1EC0CA3A0, &qword_1C4F80620);
            v19 = sub_1C43FCF8C(v18);
            if (*(v20 + 84) == v0)
            {
              v6 = v19;
              v9 = v2[17];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0CA3A8, &qword_1C4F80628);
              v9 = v2[18];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C45592F4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v16)
            {
              sub_1C4424ABC();
              return;
            }

            v17 = sub_1C456902C(&qword_1EC0CA3A0, &qword_1C4F80620);
            sub_1C43FCF8C(v17);
            if (*(v18 + 84) == v1)
            {
              v19 = *(v0 + 68);
            }

            else
            {
              sub_1C456902C(&qword_1EC0CA3A8, &qword_1C4F80628);
              v20 = *(v0 + 72);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C455954C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
            v9 = *(v2 + 48);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4559700()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
            v13 = *(v0 + 48);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C4559900()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            sub_1C44A1CD0();
            if (v16)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
            v9 = *(v2 + 104);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C4559AB4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            sub_1C445AC84();
            if (v12)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C6988, &qword_1C4F806D0);
            v13 = *(v0 + 104);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v14, v15, v16, v17);
}

uint64_t sub_1C4559EAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4ED1174();
  *a1 = result;
  return result;
}

uint64_t sub_1C4559EF0()
{
  result = sub_1C4E2E060();
  switch(v1)
  {
    case 1:
      result = sub_1C44553A4();
      break;
    case 2:
      result = sub_1C4461FC0();
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4559F74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4ED2B18();
  *a1 = result;
  return result;
}

uint64_t sub_1C455A274()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v17 = sub_1C456902C(&qword_1EC0C69F0, &unk_1C4F6FE90);
            v18 = sub_1C43FCF8C(v17);
            if (*(v19 + 84) == v0)
            {
              v6 = v18;
              v9 = v2[14];
            }

            else
            {
              v20 = sub_1C456902C(&qword_1EC0C6A08, &unk_1C4F82440);
              v21 = sub_1C43FCF8C(v20);
              if (*(v22 + 84) == v0)
              {
                v6 = v21;
                v9 = v2[16];
              }

              else
              {
                v6 = sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
                v9 = v2[18];
              }
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455A4C4()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C4424ABC();
              return;
            }

            v16 = sub_1C456902C(&qword_1EC0C69F0, &unk_1C4F6FE90);
            sub_1C43FCF8C(v16);
            if (*(v17 + 84) == v1)
            {
              v18 = v0[14];
            }

            else
            {
              v19 = sub_1C456902C(&qword_1EC0C6A08, &unk_1C4F82440);
              sub_1C43FCF8C(v19);
              if (*(v20 + 84) == v1)
              {
                v21 = v0[16];
              }

              else
              {
                sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
                v22 = v0[18];
              }
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C455A71C()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) != v0)
          {
            return sub_1C43FE264(*(v2 + 36));
          }

          sub_1C4E93CF0();
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455A8A8()
{
  sub_1C43FF404();
  v1 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v1);
  if (*(v2 + 84) == v0)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v3 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v3);
    if (*(v4 + 84) == v0)
    {
      sub_1C4418160();
    }

    else
    {
      v5 = sub_1C4EFD548();
      sub_1C43FCF8C(v5);
      if (*(v6 + 84) == v0)
      {
        sub_1C4416C20();
      }

      else
      {
        v7 = type metadata accessor for Source();
        sub_1C43FCF8C(v7);
        if (*(v8 + 84) == v0)
        {
          sub_1C441D7B0();
        }

        else
        {
          v9 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v9);
          if (*(v10 + 84) != v0)
          {
            sub_1C4424ABC();
            return;
          }

          sub_1C4E93CE4();
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v11, v12, v13, v14);
}

uint64_t sub_1C455AA80()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(v2[9]);
            }

            v17 = sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
            v18 = sub_1C43FCF8C(v17);
            if (*(v19 + 84) == v0)
            {
              v6 = v18;
              v9 = v2[24];
            }

            else
            {
              v6 = sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
              v9 = v2[25];
            }
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455AC84()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C4424ABC();
              return;
            }

            v16 = sub_1C456902C(&qword_1EC0C6A18, &qword_1C4F6FEC0);
            sub_1C43FCF8C(v16);
            if (*(v17 + 84) == v1)
            {
              v18 = *(v0 + 96);
            }

            else
            {
              sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
              v19 = *(v0 + 100);
            }
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v12, v13, v14, v15);
}

uint64_t sub_1C455AE84()
{
  sub_1C440CE48();
  v3 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v3);
  if (*(v4 + 84) == v0)
  {
    v5 = sub_1C4404F74();
  }

  else
  {
    v7 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v7);
    if (*(v8 + 84) == v0)
    {
      sub_1C441E0CC();
    }

    else
    {
      v10 = sub_1C4EFD548();
      sub_1C43FCF8C(v10);
      if (*(v11 + 84) == v0)
      {
        sub_1C440EED4();
      }

      else
      {
        v12 = type metadata accessor for Source();
        sub_1C43FCF8C(v12);
        if (*(v13 + 84) == v0)
        {
          sub_1C4416C14();
        }

        else
        {
          v14 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v14);
          if (*(v15 + 84) == v0)
          {
            sub_1C4E93CF0();
          }

          else
          {
            if (v0 == 2147483646)
            {
              return sub_1C43FE264(*(v2 + 36));
            }

            v6 = sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
            v9 = *(v2 + 48);
          }
        }
      }
    }

    v5 = v1 + v9;
  }

  return sub_1C44157D4(v5, v0, v6);
}

void sub_1C455B03C()
{
  sub_1C43FF404();
  v2 = sub_1C4EFF0C8();
  sub_1C43FCF8C(v2);
  if (*(v3 + 84) == v1)
  {
    sub_1C43FD5B4();
  }

  else
  {
    v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C43FCF8C(v4);
    if (*(v5 + 84) == v1)
    {
      sub_1C4418160();
    }

    else
    {
      v6 = sub_1C4EFD548();
      sub_1C43FCF8C(v6);
      if (*(v7 + 84) == v1)
      {
        sub_1C4416C20();
      }

      else
      {
        v8 = type metadata accessor for Source();
        sub_1C43FCF8C(v8);
        if (*(v9 + 84) == v1)
        {
          sub_1C441D7B0();
        }

        else
        {
          v10 = sub_1C4EFEEF8();
          sub_1C43FCF8C(v10);
          if (*(v11 + 84) == v1)
          {
            sub_1C4E93CE4();
          }

          else
          {
            if (v1 == 2147483646)
            {
              sub_1C4424ABC();
              return;
            }

            sub_1C456902C(&qword_1EC0C6A20, &qword_1C4F6FEC8);
            v12 = *(v0 + 48);
          }
        }
      }
    }
  }

  sub_1C43FE688();

  sub_1C440BAA8(v13, v14, v15, v16);
}

char *sub_1C455B4D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

char *sub_1C455B4F4(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return sub_1C44330DC(a3, result, a2);
  }

  return result;
}

char *sub_1C455B518(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1C441904C(a3, result);
  }

  return result;
}

uint64_t sub_1C455B594()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t getEnumTagSinglePayload for MotionStateContent(uint64_t a1, int a2)
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

unint64_t sub_1C455B6E4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C46D6F7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C455B730@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4415EFC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C455B75C(uint64_t a1)
{
  v2 = sub_1C4569608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455B798(uint64_t a1)
{
  v2 = sub_1C4569608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455B7D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61436F69647561 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7564659 && a2 == 0xE300000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7564653 && a2 == 0xE300000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4D746E6174736E69 && a2 == 0xEE00656761737365;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4F89C70 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x706F7244726961 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D6F74737563 && a2 == 0xE600000000000000;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 1885958006 && a2 == 0xE400000000000000;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x69616D6563696F76 && a2 == 0xE90000000000006CLL;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D695465636166 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656D695465636166 && a2 == 0xED00006F69647541;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C61436F65646976 && a2 == 0xE90000000000006CLL;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6568536572616873 && a2 == 0xEA00000000007465;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6761546F746F6870 && a2 == 0xE800000000000000;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x656D695465636166 && a2 == 0xED00006F65646956;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6867696C68676968 && a2 == 0xE900000000000074;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x616C506572616873 && a2 == 0xE900000000000079;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001BLL && 0x80000001C4F89C90 == a2;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_1C4F02938();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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
      }
    }
  }
}

unint64_t sub_1C455BEA0(char a1)
{
  result = 0x6C61436F69647561;
  switch(a1)
  {
    case 1:
      result = 0x6C69616D65;
      break;
    case 2:
      result = 7564659;
      break;
    case 3:
      result = 7564653;
      break;
    case 4:
      result = 0x4D746E6174736E69;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x706F7244726961;
      break;
    case 7:
      result = 0x6E776F6E6B6E75;
      break;
    case 8:
      result = 0x6D6F74737563;
      break;
    case 9:
      result = 1885958006;
      break;
    case 10:
      result = 0x69616D6563696F76;
      break;
    case 11:
    case 12:
    case 18:
      result = 0x656D695465636166;
      break;
    case 13:
      result = 0x6C61436F65646976;
      break;
    case 14:
      result = 0x6568536572616873;
      break;
    case 15:
      result = 0x74696D69786F7270;
      break;
    case 16:
      result = 0x6761546F746F6870;
      break;
    case 17:
      result = 0x656E6F6870;
      break;
    case 19:
      result = 0x6867696C68676968;
      break;
    case 20:
      result = 0x616C506572616873;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0x746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C455C0D4(uint64_t a1)
{
  v2 = sub_1C4569800();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C110(uint64_t a1)
{
  v2 = sub_1C4569800();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C455B7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C455C1B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C455BE98();
  *a1 = result;
  return result;
}

uint64_t sub_1C455C1DC(uint64_t a1)
{
  v2 = sub_1C4569074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C218(uint64_t a1)
{
  v2 = sub_1C4569074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C254(uint64_t a1)
{
  v2 = sub_1C45690C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C290(uint64_t a1)
{
  v2 = sub_1C45690C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C2CC(uint64_t a1)
{
  v2 = sub_1C4569560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C308(uint64_t a1)
{
  v2 = sub_1C4569560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C344(uint64_t a1)
{
  v2 = sub_1C45697AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C380(uint64_t a1)
{
  v2 = sub_1C45697AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C3BC(uint64_t a1)
{
  v2 = sub_1C4569410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C3F8(uint64_t a1)
{
  v2 = sub_1C4569410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C434(uint64_t a1)
{
  v2 = sub_1C4569464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C470(uint64_t a1)
{
  v2 = sub_1C4569464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C4AC(uint64_t a1)
{
  v2 = sub_1C4569218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C4E8(uint64_t a1)
{
  v2 = sub_1C4569218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C524(uint64_t a1)
{
  v2 = sub_1C45691C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C560(uint64_t a1)
{
  v2 = sub_1C45691C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C59C(uint64_t a1)
{
  v2 = sub_1C45696B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C5D8(uint64_t a1)
{
  v2 = sub_1C45696B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C614(uint64_t a1)
{
  v2 = sub_1C4569704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C650(uint64_t a1)
{
  v2 = sub_1C4569704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C68C(uint64_t a1)
{
  v2 = sub_1C456926C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C6C8(uint64_t a1)
{
  v2 = sub_1C456926C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C704(uint64_t a1)
{
  v2 = sub_1C45692C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C740(uint64_t a1)
{
  v2 = sub_1C45692C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C77C(uint64_t a1)
{
  v2 = sub_1C4569314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C7B8(uint64_t a1)
{
  v2 = sub_1C4569314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C7F4(uint64_t a1)
{
  v2 = sub_1C456965C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C830(uint64_t a1)
{
  v2 = sub_1C456965C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C86C(uint64_t a1)
{
  v2 = sub_1C4569170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C8A8(uint64_t a1)
{
  v2 = sub_1C4569170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C8E4(uint64_t a1)
{
  v2 = sub_1C4569368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C920(uint64_t a1)
{
  v2 = sub_1C4569368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C95C(uint64_t a1)
{
  v2 = sub_1C456911C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455C998(uint64_t a1)
{
  v2 = sub_1C456911C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455C9D4(uint64_t a1)
{
  v2 = sub_1C4569758();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455CA10(uint64_t a1)
{
  v2 = sub_1C4569758();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455CA4C(uint64_t a1)
{
  v2 = sub_1C45695B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455CA88(uint64_t a1)
{
  v2 = sub_1C45695B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455CAC4(uint64_t a1)
{
  v2 = sub_1C45693BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455CB00(uint64_t a1)
{
  v2 = sub_1C45693BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455CB3C(uint64_t a1)
{
  v2 = sub_1C45694B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455CB78(uint64_t a1)
{
  v2 = sub_1C45694B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C455CBB4(uint64_t a1)
{
  v2 = sub_1C456950C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C455CBF0(uint64_t a1)
{
  v2 = sub_1C456950C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CommunicationMechanism.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0B71D0, &qword_1C4F06E10);
  v28 = sub_1C43FCDF8(v27);
  v227 = v29;
  v228 = v28;
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBC74();
  v226 = v33;
  v34 = sub_1C456902C(&qword_1EC0B71D8, &qword_1C4F06E18);
  v35 = sub_1C43FCDF8(v34);
  v224 = v36;
  v225 = v35;
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C441087C(v40, v183);
  v41 = sub_1C456902C(&qword_1EC0B71E0, &qword_1C4F06E20);
  v42 = sub_1C43FCDF8(v41);
  v221 = v43;
  v222 = v42;
  v45 = *(v44 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C442FA70(v47, v184);
  v48 = sub_1C456902C(&qword_1EC0B71E8, &qword_1C4F06E28);
  v49 = sub_1C43FCDF8(v48);
  v218 = v50;
  v219 = v49;
  v52 = *(v51 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBC74();
  v217 = v54;
  v55 = sub_1C456902C(&qword_1EC0B71F0, &qword_1C4F06E30);
  v56 = sub_1C43FCDF8(v55);
  v215 = v57;
  v216 = v56;
  v59 = *(v58 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBC74();
  v214 = v61;
  v62 = sub_1C456902C(&qword_1EC0B71F8, &qword_1C4F06E38);
  v63 = sub_1C43FCDF8(v62);
  v212 = v64;
  v213 = v63;
  v66 = *(v65 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBC74();
  v211 = v68;
  v69 = sub_1C456902C(&qword_1EC0B7200, &qword_1C4F06E40);
  sub_1C43FFAE0(v69, &a18);
  v209 = v70;
  v72 = *(v71 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBC74();
  sub_1C43FCE30(v74);
  v75 = sub_1C456902C(&qword_1EC0B7208, &qword_1C4F06E48);
  sub_1C43FFAE0(v75, &a15);
  v206 = v76;
  v78 = *(v77 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBC74();
  sub_1C43FCE30(v80);
  v81 = sub_1C456902C(&qword_1EC0B7210, &qword_1C4F06E50);
  sub_1C43FFAE0(v81, &a12);
  v203 = v82;
  v84 = *(v83 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBC74();
  sub_1C43FCE30(v86);
  v87 = sub_1C456902C(&qword_1EC0B7218, &qword_1C4F06E58);
  sub_1C43FFAE0(v87, &a9);
  v200 = v88;
  v90 = *(v89 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBC74();
  sub_1C43FCE30(v92);
  v93 = sub_1C456902C(&qword_1EC0B7220, &qword_1C4F06E60);
  sub_1C43FFAE0(v93, &v230);
  v197 = v94;
  v96 = *(v95 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v97);
  sub_1C43FBC74();
  sub_1C43FCE30(v98);
  v99 = sub_1C456902C(&qword_1EC0B7228, &qword_1C4F06E68);
  sub_1C43FFAE0(v99, &v227);
  v194 = v100;
  v102 = *(v101 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C43FBC74();
  sub_1C43FCE30(v104);
  v105 = sub_1C456902C(&qword_1EC0B7230, &qword_1C4F06E70);
  sub_1C43FFAE0(v105, &v224);
  v193 = v106;
  v108 = *(v107 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v109);
  sub_1C43FBC74();
  sub_1C43FCE30(v110);
  v111 = sub_1C456902C(&qword_1EC0B7238, &qword_1C4F06E78);
  sub_1C43FFAE0(v111, &v221);
  v192 = v112;
  v114 = *(v113 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v115);
  sub_1C43FBC74();
  sub_1C43FCE30(v116);
  v117 = sub_1C456902C(&qword_1EC0B7240, &qword_1C4F06E80);
  sub_1C43FFAE0(v117, &v218);
  v191 = v118;
  v120 = *(v119 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v121);
  sub_1C43FBC74();
  sub_1C43FCE30(v122);
  v123 = sub_1C456902C(&qword_1EC0B7248, &qword_1C4F06E88);
  sub_1C43FFAE0(v123, &v215);
  v190 = v124;
  v126 = *(v125 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v127);
  sub_1C43FBC74();
  sub_1C43FCE30(v128);
  v129 = sub_1C456902C(&qword_1EC0B7250, &qword_1C4F06E90);
  sub_1C43FFAE0(v129, &v212);
  v189 = v130;
  v132 = *(v131 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v133);
  sub_1C43FBC74();
  sub_1C43FCE30(v134);
  v135 = sub_1C456902C(&qword_1EC0B7258, &qword_1C4F06E98);
  sub_1C43FFAE0(v135, &v209);
  v188 = v136;
  v138 = *(v137 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v139);
  sub_1C43FBC74();
  sub_1C43FCE30(v140);
  v141 = sub_1C456902C(&qword_1EC0B7260, &qword_1C4F06EA0);
  sub_1C43FFAE0(v141, &v206);
  v187 = v142;
  v144 = *(v143 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v145);
  sub_1C43FBC74();
  sub_1C43FCE30(v146);
  v147 = sub_1C456902C(&qword_1EC0B7268, &qword_1C4F06EA8);
  sub_1C43FFAE0(v147, &v203);
  v186 = v148;
  v150 = *(v149 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v151);
  sub_1C43FBC74();
  sub_1C43FCE30(v152);
  v153 = sub_1C456902C(&qword_1EC0B7270, &qword_1C4F06EB0);
  sub_1C43FFAE0(v153, &v200);
  v185 = v154;
  v156 = *(v155 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v157);
  sub_1C43FBC74();
  sub_1C43FCE30(v158);
  v159 = sub_1C456902C(&qword_1EC0B7278, &qword_1C4F06EB8);
  sub_1C43FFAE0(v159, &v197);
  v161 = *(v160 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v162);
  v163 = sub_1C456902C(&qword_1EC0B7280, &qword_1C4F06EC0);
  sub_1C43FCDF8(v163);
  v165 = *(v164 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v166);
  sub_1C4402A68();
  v230 = sub_1C456902C(&qword_1EC0B7288, &qword_1C4F06EC8);
  sub_1C43FCDF8(v230);
  v168 = v167;
  v170 = *(v169 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v171);
  sub_1C43FE94C();
  v172 = *v24;
  v173 = v26[4];
  sub_1C4417F50(v26, v26[3]);
  sub_1C4569074();
  v229 = v21;
  sub_1C4F02BF8();
  v174 = (v168 + 8);
  switch(v172)
  {
    case 1:
      sub_1C4459AE4();
      sub_1C45697AC();
      v26 = v229;
      v163 = v230;
      sub_1C44099B8();
      sub_1C4F02718();
      v179 = sub_1C440570C(&v196);
      v181 = &v197;
      goto LABEL_23;
    case 2:
      sub_1C442A898();
      sub_1C4569758();
      sub_1C43FCE0C(&v198);
      v179 = sub_1C441E18C(&v199);
      v181 = &v200;
      goto LABEL_23;
    case 3:
      sub_1C442F628();
      sub_1C4569704();
      sub_1C43FCE0C(&v201);
      v179 = sub_1C441E18C(&v202);
      v181 = &v203;
      goto LABEL_23;
    case 4:
      sub_1C444AFEC();
      sub_1C45696B0();
      sub_1C43FCE0C(&v204);
      v179 = sub_1C441E18C(&v205);
      v181 = &v206;
      goto LABEL_23;
    case 5:
      sub_1C448DF7C();
      sub_1C456965C();
      sub_1C43FCE0C(&v207);
      v179 = sub_1C441E18C(&v208);
      v181 = &v209;
      goto LABEL_23;
    case 6:
      sub_1C44229F8();
      sub_1C4569608();
      sub_1C43FCE0C(&v210);
      v179 = sub_1C441E18C(&v211);
      v181 = &v212;
      goto LABEL_23;
    case 7:
      sub_1C442F084();
      sub_1C45695B4();
      sub_1C43FCE0C(&v213);
      v179 = sub_1C441E18C(&v214);
      v181 = &v215;
      goto LABEL_23;
    case 8:
      sub_1C4430580();
      sub_1C4569560();
      sub_1C43FCE0C(&v216);
      v179 = sub_1C441E18C(&v217);
      v181 = &v218;
      goto LABEL_23;
    case 9:
      sub_1C4461F14();
      sub_1C456950C();
      sub_1C43FCE0C(&v219);
      v179 = sub_1C441E18C(&v220);
      v181 = &v221;
      goto LABEL_23;
    case 10:
      sub_1C441B2D4();
      sub_1C45694B8();
      sub_1C43FCE0C(&v222);
      v179 = sub_1C441E18C(&v223);
      v181 = &v224;
      goto LABEL_23;
    case 11:
      sub_1C448F0CC();
      sub_1C4569464();
      sub_1C43FCE0C(&v225);
      v179 = sub_1C441E18C(&v226);
      v181 = &v227;
      goto LABEL_23;
    case 12:
      sub_1C442A360();
      sub_1C4569410();
      sub_1C43FCE0C(&v228);
      v179 = sub_1C441E18C(&v229);
      v181 = &v230;
      goto LABEL_23;
    case 13:
      sub_1C4414134();
      sub_1C45693BC();
      sub_1C43FCE0C(&v231);
      v179 = sub_1C441E18C(&v232);
      v181 = &a9;
      goto LABEL_23;
    case 14:
      sub_1C444AC68();
      sub_1C4569368();
      sub_1C43FCE0C(&a10);
      v179 = sub_1C441E18C(&a11);
      v181 = &a12;
      goto LABEL_23;
    case 15:
      sub_1C4461BF8();
      sub_1C4569314();
      sub_1C43FCE0C(&a13);
      v179 = sub_1C441E18C(&a14);
      v181 = &a15;
      goto LABEL_23;
    case 16:
      sub_1C4462384();
      sub_1C45692C0();
      sub_1C43FCE0C(&a16);
      v179 = sub_1C441E18C(&a17);
      v181 = &a18;
LABEL_23:
      v182 = *(v181 - 32);
      goto LABEL_27;
    case 17:
      sub_1C4440920();
      sub_1C456926C();
      sub_1C440DD1C();
      goto LABEL_26;
    case 18:
      sub_1C44144D8();
      sub_1C4569218();
      sub_1C440DD1C();
      goto LABEL_26;
    case 19:
      sub_1C447CB84();
      sub_1C45691C4();
      sub_1C440DD1C();
      goto LABEL_26;
    case 20:
      sub_1C4441888();
      sub_1C4569170();
      sub_1C440DD1C();
      goto LABEL_26;
    case 21:
      sub_1C442AAF4();
      sub_1C456911C();
      sub_1C440DD1C();
      goto LABEL_26;
    case 22:
      sub_1C4440CC0();
      sub_1C45690C8();
      sub_1C440DD1C();
LABEL_26:
      v179 = sub_1C4401D04();
LABEL_27:
      v180(v179, v182);
      (*v174)(v26, v163);
      break;
    default:
      HIBYTE(a10) = 0;
      sub_1C4569800();
      v175 = v229;
      v176 = v230;
      sub_1C440BAD0();
      sub_1C4F02718();
      v177 = sub_1C441E18C(&v195);
      v178(v177, v163);
      (*v174)(v175, v176);
      break;
  }

  sub_1C43FBC80();
}

void CommunicationMechanism.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  sub_1C4460154(v25);
  v26 = sub_1C456902C(&qword_1EC0B7350, &qword_1C4F06ED0);
  sub_1C43FFAE0(v26, &a15);
  v220 = v27;
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  sub_1C4417F70(v31);
  v32 = sub_1C456902C(&qword_1EC0B7358, &qword_1C4F06ED8);
  sub_1C43FFAE0(v32, &a13);
  v218 = v33;
  v35 = *(v34 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBC74();
  sub_1C4451268(v37);
  v38 = sub_1C456902C(&qword_1EC0B7360, &qword_1C4F06EE0);
  sub_1C43FFAE0(v38, &a11);
  v216 = v39;
  v41 = *(v40 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C441087C(v43, v207[0]);
  v44 = sub_1C456902C(&qword_1EC0B7368, &qword_1C4F06EE8);
  sub_1C43FFAE0(v44, &a9);
  v214 = v45;
  v47 = *(v46 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  v236 = v49;
  v50 = sub_1C456902C(&qword_1EC0B7370, &qword_1C4F06EF0);
  sub_1C43FFAE0(v50, &v245);
  v212 = v51;
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBC74();
  v235 = v55;
  v56 = sub_1C456902C(&qword_1EC0B7378, &qword_1C4F06EF8);
  sub_1C43FFAE0(v56, &v243);
  v210 = v57;
  v59 = *(v58 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C442FA70(v61, v207[0]);
  v62 = sub_1C456902C(&qword_1EC0B7380, &qword_1C4F06F00);
  sub_1C43FFAE0(v62, &v241);
  v208[2] = v63;
  v65 = *(v64 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C43FBC74();
  v233 = v67;
  v68 = sub_1C456902C(&qword_1EC0B7388, &qword_1C4F06F08);
  sub_1C43FFAE0(v68, &v239);
  v208[0] = v69;
  v71 = *(v70 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBC74();
  v232 = v73;
  v74 = sub_1C456902C(&qword_1EC0B7390, &qword_1C4F06F10);
  sub_1C43FFAE0(v74, &v237);
  v207[31] = v75;
  v77 = *(v76 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBC74();
  v231 = v79;
  v80 = sub_1C456902C(&qword_1EC0B7398, &qword_1C4F06F18);
  sub_1C43FFAE0(v80, &v235);
  v207[29] = v81;
  v83 = *(v82 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBC74();
  v230 = v85;
  v86 = sub_1C456902C(&qword_1EC0B73A0, &qword_1C4F06F20);
  sub_1C43FFAE0(v86, &v233);
  v207[27] = v87;
  v89 = *(v88 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v90);
  sub_1C43FBC74();
  sub_1C445BEF4(v91);
  v92 = sub_1C456902C(&qword_1EC0B73A8, &qword_1C4F06F28);
  sub_1C43FFAE0(v92, &v231);
  v207[25] = v93;
  v95 = *(v94 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FBC74();
  v228 = v97;
  v98 = sub_1C456902C(&qword_1EC0B73B0, &qword_1C4F06F30);
  sub_1C43FFAE0(v98, &v229);
  v207[23] = v99;
  v101 = *(v100 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v102);
  sub_1C43FBC74();
  v227 = v103;
  v104 = sub_1C456902C(&qword_1EC0B73B8, &qword_1C4F06F38);
  sub_1C43FFAE0(v104, &v227);
  v207[21] = v105;
  v107 = *(v106 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBC74();
  sub_1C444C200(v109);
  v110 = sub_1C456902C(&qword_1EC0B73C0, &qword_1C4F06F40);
  sub_1C43FFAE0(v110, &v225);
  v207[19] = v111;
  v113 = *(v112 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v114);
  sub_1C44258A4(v115, v207[0]);
  v116 = sub_1C456902C(&qword_1EC0B73C8, &qword_1C4F06F48);
  sub_1C43FFAE0(v116, &v223);
  v207[17] = v117;
  v119 = *(v118 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C43FBC74();
  v242 = v121;
  v122 = sub_1C456902C(&qword_1EC0B73D0, &qword_1C4F06F50);
  sub_1C43FFAE0(v122, &v216);
  v207[16] = v123;
  v125 = *(v124 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v126);
  sub_1C43FBC74();
  v225 = v127;
  v128 = sub_1C456902C(&qword_1EC0B73D8, &qword_1C4F06F58);
  sub_1C43FFAE0(v128, &v220);
  v207[14] = v129;
  v131 = *(v130 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FBC74();
  sub_1C43FCE30(v133);
  v134 = sub_1C456902C(&qword_1EC0B73E0, &qword_1C4F06F60);
  sub_1C43FFAE0(v134, &v218);
  v207[12] = v135;
  v137 = *(v136 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v138);
  sub_1C43FE938(v139, v207[0]);
  v140 = sub_1C456902C(&qword_1EC0B73E8, &qword_1C4F06F68);
  sub_1C43FFAE0(v140, &v215);
  v207[9] = v141;
  v143 = *(v142 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C43FBC74();
  sub_1C43FCE30(v145);
  v146 = sub_1C456902C(&qword_1EC0B73F0, &qword_1C4F06F70);
  sub_1C43FFAE0(v146, &v213);
  v207[7] = v147;
  v149 = *(v148 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v150);
  sub_1C43FBC74();
  sub_1C43FCE30(v151);
  v152 = sub_1C456902C(&qword_1EC0B73F8, &qword_1C4F06F78);
  sub_1C43FFAE0(v152, &v211);
  v207[5] = v153;
  v155 = *(v154 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v156);
  v158 = v207 - v157;
  v159 = sub_1C456902C(&qword_1EC0B7400, &qword_1C4F06F80);
  sub_1C43FCDF8(v159);
  v207[4] = v160;
  v162 = *(v161 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v163);
  sub_1C43FE95C();
  v164 = sub_1C456902C(&qword_1EC0B7408, &qword_1C4F06F88);
  sub_1C43FCDF8(v164);
  v166 = v165;
  v168 = *(v167 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v169);
  sub_1C440A474();
  v171 = v20[3];
  v170 = v20[4];
  v244 = v20;
  sub_1C4417F50(v20, v171);
  sub_1C4569074();
  v172 = v245;
  sub_1C4F02BC8();
  if (!v172)
  {
    v207[2] = v22;
    v207[1] = v159;
    v207[3] = v158;
    v173 = v243;
    v245 = v166;
    v174 = v21;
    v175 = sub_1C4F026E8();
    sub_1C4569EC0(v175, 0);
    v177 = v176;
    if (v179 != v178 >> 1)
    {
      sub_1C444FC04();
      v207[0] = 0;
      sub_1C44182D0();
      if (v184 == v185)
      {
        __break(1u);
        return;
      }

      v186 = *(v183 + v181);
      sub_1C4570108(v181 + 1, v180, v177, v183, v181, v182);
      v188 = v187;
      v190 = v189;
      swift_unknownObjectRelease();
      if (v188 == v190 >> 1)
      {
        v191 = v240;
        switch(v186)
        {
          case 1:
            sub_1C4459AE4();
            sub_1C45697AC();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v210);
            v194 = &v211;
            break;
          case 2:
            sub_1C442A898();
            sub_1C4569758();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v212);
            v194 = &v213;
            break;
          case 3:
            sub_1C442F628();
            sub_1C4569704();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v214);
            v194 = &v215;
            break;
          case 4:
            sub_1C444AFEC();
            sub_1C45696B0();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v217);
            v194 = &v218;
            break;
          case 5:
            sub_1C448DF7C();
            sub_1C456965C();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v219);
            v194 = &v220;
            break;
          case 6:
            sub_1C44229F8();
            sub_1C4569608();
            v205 = v225;
            sub_1C4424EF0();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v221);
            v192 = v205;
            v194 = &v216;
            break;
          case 7:
            sub_1C442F084();
            sub_1C45695B4();
            sub_1C4424EF0();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v222);
            v194 = &v223;
            break;
          case 8:
            sub_1C4430580();
            sub_1C4569560();
            sub_1C4424EF0();
            swift_unknownObjectRelease();
            sub_1C43FFB20(&v224);
            v192 = v173;
            v194 = &v225;
            break;
          case 9:
            sub_1C4461F14();
            sub_1C456950C();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v226);
            v194 = &v227;
            break;
          case 10:
            sub_1C441B2D4();
            sub_1C45694B8();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v228);
            v194 = &v229;
            break;
          case 11:
            sub_1C448F0CC();
            sub_1C4569464();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v230);
            v194 = &v231;
            break;
          case 12:
            sub_1C442A360();
            sub_1C4569410();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v232);
            v194 = &v233;
            break;
          case 13:
            sub_1C4414134();
            sub_1C45693BC();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v234);
            v194 = &v235;
            break;
          case 14:
            sub_1C444AC68();
            sub_1C4569368();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v236);
            v194 = &v237;
            break;
          case 15:
            sub_1C4461BF8();
            sub_1C4569314();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v238);
            v194 = &v239;
            break;
          case 16:
            sub_1C4462384();
            sub_1C45692C0();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v240);
            v194 = &v241;
            break;
          case 17:
            sub_1C4440920();
            sub_1C456926C();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v242);
            v194 = &v243;
            break;
          case 18:
            sub_1C44144D8();
            sub_1C4569218();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v244);
            v194 = &v245;
            break;
          case 19:
            sub_1C447CB84();
            sub_1C45691C4();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v246);
            v194 = &a9;
            break;
          case 20:
            sub_1C4441888();
            sub_1C4569170();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&a10);
            v194 = &a11;
            break;
          case 21:
            sub_1C442AAF4();
            sub_1C456911C();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&a12);
            v194 = &a13;
            break;
          case 22:
            sub_1C4440CC0();
            sub_1C45690C8();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&a14);
            v194 = &a15;
            break;
          default:
            HIBYTE(a10) = 0;
            sub_1C4569800();
            sub_1C440F150();
            swift_unknownObjectRelease();
            v192 = sub_1C440570C(&v209);
            v194 = v208;
            break;
        }

        v193(v192, *(v194 - 32));
        sub_1C441E19C();
        v206(v174, v164);
        v204 = v244;
        *v191 = v186;
        goto LABEL_10;
      }
    }

    sub_1C4F022E8();
    sub_1C43FFB2C();
    v196 = v195;
    v197 = *(sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90) + 48);
    *v196 = &type metadata for CommunicationMechanism;
    sub_1C4F025F8();
    sub_1C44157FC();
    v198 = *MEMORY[0x1E69E6AF8];
    sub_1C4402A78();
    v200 = *(v199 + 104);
    v201 = sub_1C4434510();
    v202(v201);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1C441E19C();
    v203(v174, v164);
  }

  v204 = v244;
LABEL_10:
  sub_1C440962C(v204);
  sub_1C43FBC80();
}