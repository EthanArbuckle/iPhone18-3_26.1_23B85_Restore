uint64_t CustomGraphPerson.getName(using:)(uint64_t *a1)
{
  if (!*(a1 + 16) || *(a1 + 16) == 1)
  {
    return CustomGraphPerson.getFullName()().value._countAndFlagsBits;
  }

  v1 = *a1;
  v2 = a1[1];

  return v1;
}

Swift::String_optional __swiftcall CustomGraphPerson.getFullName()()
{
  v0 = MEMORY[0x259C2C310]();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_254EEF9A4(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  result = a1();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      return v3;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v9 = *i;
    objc_allocWithZone(MEMORY[0x277CD3E98]);

    sub_254EEFAC0(v10, v9, a2);
    MEMORY[0x259C2DCB0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_254F29580();
    }

    result = sub_254F295B0();
    v3 = v11;
    ++v6;
  }

  __break(1u);
  return result;
}

id sub_254EEFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254F29420();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_254EEFB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_254F27840();
  v17 = 0;
  if (sub_254EB2F2C(a2, 1, v16) != 1)
  {
    v17 = sub_254F27830();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_254F29420();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_254F29420();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_254F29420();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_254EF18DC();
    v21 = sub_254F29550();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

uint64_t sub_254EEFCEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_254EEFD00(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_254EEFD00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_254EEFD18(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_254F29AA0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_254EEFD3C()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F1E8, &qword_254F2C2F8);
      v8 = sub_254EC1FA8();
      v9 = j__malloc_size(v8);
      sub_254EB7FAC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECB640(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC8BC0(&qword_27F75F1F0, &qword_254F2C300);
    sub_254EB4968();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EEFDF8()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F260, &qword_254F2C3A0);
      v8 = sub_254EC1FA8();
      v9 = j__malloc_size(v8);
      sub_254EB7FAC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254EC7048(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC8BC0(&qword_27F75F268, &qword_254F2C3A8);
    sub_254EB4968();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EEFEB4()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &unk_27F75EF00, &unk_254F2B660);
  sub_254EB4B34();
  v9 = sub_254F28120();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA138(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EEFF7C()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
      v8 = sub_254EC1BF8();
      sub_254EC005C(v8);
      sub_254EB5178(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECA150(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC38E0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EF0038()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F2C0, &unk_254F2C400);
  sub_254EB4B34();
  v9 = type metadata accessor for ContextValueElement();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA170(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0100()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F2B8, &qword_254F2C3F8);
      v8 = sub_254EC1BF8();
      sub_254EC005C(v8);
      sub_254EB5178(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECA188(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = sub_254EC38E0();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EF01B4()
{
  sub_254EC0D48();
  if (v3)
  {
    sub_254EB3BC8();
    if (v5 != v6)
    {
      sub_254EB5724();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_254EF105C(v7, v4);
  v9 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    sub_254ECA1A8(v0 + v12, v7, v8 + v12);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_254EF028C()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F1F8, &qword_254F2C308);
  sub_254EB4B34();
  v9 = sub_254F289A0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA1BC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0354()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F208, &qword_254F2C318);
      v8 = sub_254EC1FA8();
      v9 = j__malloc_size(v8);
      sub_254EB7FAC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECB640(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC8BC0(&qword_27F75F210, &qword_254F2C320);
    sub_254EB4968();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EF0410()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F2C8, &qword_254F2C410);
  sub_254EB4B34();
  v9 = sub_254F28410();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA1D4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF04D8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F218, &qword_254F2C328);
  sub_254EB4B34();
  v9 = sub_254F29290();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA1EC(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF05A0()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F228, &qword_254F2C338);
  sub_254EB4B34();
  v9 = sub_254F28EE0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA204(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0668()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F250, &unk_254F2C388);
  sub_254EB4B34();
  v9 = sub_254F28050();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA21C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0730()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F240, &qword_254F2C360);
      v8 = sub_254EC1FA8();
      v9 = j__malloc_size(v8);
      sub_254EB7FAC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECB640(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC8BC0(&qword_27F75F248, &qword_254F2C368);
    sub_254EB4968();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EF07EC()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F168, &qword_254F2BF00);
      v8 = sub_254EC1BF8();
      sub_254EC005C(v8);
      sub_254EB5178(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECA150(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = sub_254EC38E0();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_254EF08A0()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F0D0, &qword_254F2BD40);
  sub_254EB4B34();
  v9 = sub_254F28080();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA330(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0968()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75EDA8, &qword_254F2C380);
  sub_254EB4B34();
  v9 = sub_254F28260();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA234(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0A30()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F230, &unk_254F2C340);
  sub_254EB4B34();
  v9 = sub_254F289F0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA368(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0AF8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &unk_27F75F4F0, &unk_254F2AF70);
  sub_254EB4B34();
  v9 = sub_254F28CA0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA380(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0BC0()
{
  sub_254EB4068();
  if (v2)
  {
    sub_254EB7A58();
    if (v3 != v4)
    {
      sub_254EB5C00();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  v5 = *(v0 + 16);
  sub_254EB7D58();
  sub_254EF118C(v5, v6, v7, v8, v9);
  sub_254EB4B34();
  v10 = sub_254F28CE0();
  sub_254EB7DAC(v10);
  v12 = *(v11 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v14 = sub_254EB6C20(v13);
    sub_254ECA398(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0C80()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F270, &qword_254F2C3B0);
  sub_254EB4B34();
  v9 = sub_254F28750();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA3B0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0D48()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F238, &qword_254F2C358);
  sub_254EB4B34();
  v9 = sub_254F278E0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA3C8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0E10()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F200, &qword_254F2C310);
  sub_254EB4B34();
  v9 = sub_254F286E0();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA3E0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0ED8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_254EB4A5C(v2, v5, &qword_27F75F220, &qword_254F2C330);
  sub_254EB4B34();
  v9 = sub_254F27F50();
  sub_254EB7DAC(v9);
  v11 = *(v10 + 80);
  sub_254EB3A30();
  if (v1)
  {
    v13 = sub_254EB6C20(v12);
    sub_254ECA3F8(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0FA0()
{
  sub_254EC0D48();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_254EB3BC8();
  if (v6 == v7)
  {
LABEL_7:
    sub_254EB7E5C(v5);
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F288, &qword_254F2C3C8);
      v8 = sub_254EC1FA8();
      v9 = j__malloc_size(v8);
      sub_254EB7FAC(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_254EB6830();
        sub_254ECB640(v10);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_254EC8BC0(&qword_27F75F290, &qword_254F2C3D0);
    sub_254EB4968();
    goto LABEL_12;
  }

  sub_254EB5724();
  if (!v6)
  {
    sub_254EB3BB8();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_254EF105C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(&qword_27F75ED78, &qword_254F2AF60);
  v4 = *(sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_254EF118C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254EF1288(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(&qword_27F75F298, &qword_254F2C3E0);
  v4 = sub_254EC1BF8();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

unint64_t sub_254EF1308(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_254EF1328(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_254EF1344()
{
  result = qword_27F75F1C0;
  if (!qword_27F75F1C0)
  {
    sub_254F27BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F1C0);
  }

  return result;
}

uint64_t sub_254EF139C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F188, &qword_254F2C260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254EF140C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254EF1430(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  sub_254EC8BC0(&qword_27F75F248, &qword_254F2C368);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_254F29940();
  MEMORY[0x259C2DC50](0xD000000000000043, 0x8000000254F2E120);
  MEMORY[0x259C2DC50](0xD00000000000001ELL, 0x8000000254F2E170);
  MEMORY[0x259C2DC50](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_254F29C20();
  MEMORY[0x259C2DC50](v4);

  result = sub_254F29A80();
  __break(1u);
  return result;
}

uint64_t sub_254EF1594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_254F29AA0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_254EC5594(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_254EF18DC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_254EBEDE8(&qword_27F75F2B0, &qword_27F75F2A8, &unk_254F2C3E8);
        for (i = 0; i != v7; ++i)
        {
          sub_254EC8BC0(&qword_27F75F2A8, &unk_254F2C3E8);
          v9 = sub_254EF17B0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_254EF171C(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v6 = sub_254EECB14();
  sub_254EF1308(a2, v6 & 1, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v8 = sub_254EF1430(a2, a3);
  }

  *a1 = v8;
  return sub_254EF17A8;
}

void (*sub_254EF17B0(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_254EF12FC(a3);
  sub_254EF140C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x259C2E0D0](a2, a3);
  }

  *a1 = v7;
  return sub_254EF183C;
}

unint64_t sub_254EF18DC()
{
  result = qword_27F75F2A0;
  if (!qword_27F75F2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F2A0);
  }

  return result;
}

uint64_t sub_254EF1920()
{

  return swift_allocObject();
}

uint64_t sub_254EF1940()
{
  v0 = sub_254F27D10();
  v1 = sub_254F0B968(0x7463656C65537369, 0xEA00000000006465, v0);
  v3 = v2;

  if (!v3)
  {
    return sub_254F27D30() & 1;
  }

  if (v1 == 1702195828 && v3 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = sub_254F29B10();

    if ((v5 & 1) == 0)
    {
      return sub_254F27D30() & 1;
    }
  }

  return 1;
}

uint64_t sub_254EF1A04(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v197 = a4;
  v7 = sub_254F291E0();
  v8 = sub_254EB2CBC(v7);
  v183 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  v15 = sub_254EB2D90(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v195 = &v156 - v18;
  v194 = sub_254F29290();
  v19 = sub_254EB2CBC(v194);
  v196 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254EB2E04();
  v193 = v23 - v24;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v25);
  sub_254EB40A4();
  v192 = v26;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v27);
  sub_254EB40A4();
  v191 = v28;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v29);
  sub_254EB59E4();
  v190 = v30;
  v199 = sub_254F29330();
  v31 = sub_254EB2CBC(v199);
  v182 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_254EB2E04();
  v189 = (v35 - v36);
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v37);
  sub_254EB40A4();
  v188 = v38;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v39);
  sub_254EB59E4();
  v187 = v40;
  v41 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  v42 = sub_254EB2D90(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_254EB2E04();
  v186 = v45 - v46;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v47);
  sub_254EB40A4();
  v185 = v48;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v49);
  sub_254EB59E4();
  v184 = v50;
  v51 = sub_254F27720();
  v52 = sub_254EB2CBC(v51);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  sub_254EB2E04();
  v59 = (v57 - v58);
  v61 = MEMORY[0x28223BE20](v60);
  v63 = (&v156 - v62);
  MEMORY[0x28223BE20](v61);
  sub_254EB59E4();
  v198 = v64;
  v65 = sub_254F27D80();
  if (v66 >> 60 == 15)
  {
LABEL_6:
    a3(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v181 = v54;
  v175 = a1;
  v176 = a2;
  v67 = v66;
  v68 = v65;
  sub_254EB48D8(0, &qword_2814260A8, 0x277CCAAC8);
  sub_254EB48D8(0, &unk_2814260B0, 0x277D23CD8);
  v177 = v68;
  v178 = v67;
  v69 = sub_254F29750();
  if (!v69)
  {
    sub_254F284E0();
    v70 = sub_254F291D0();
    v71 = sub_254F29700();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v200 = v73;
      *v72 = 136315138;
      v74 = sub_254F29C20();
      v76 = a3;
      v77 = sub_254EC2D74(v74, v75, &v200);

      *(v72 + 4) = v77;
      a3 = v76;
      _os_log_impl(&dword_254EAE000, v70, v71, "unable to convert decoded data of type %s to annotation identifiers", v72, 0xCu);
      sub_254EB2BBC(v73);
      MEMORY[0x259C2EB80](v73, -1, -1);
      MEMORY[0x259C2EB80](v72, -1, -1);
    }

    sub_254EB6D9C();

    (*(v183 + 8))(v13, v7);
    goto LABEL_6;
  }

  v79 = v69;
  v80 = sub_254F29740();
  v157 = v79;
  v158 = a3;
  v81 = *(v80 + 16);
  if (v81)
  {
    v82 = *(v181 + 16);
    v83 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v156 = v80;
    v84 = v80 + v83;
    v173 = *(v181 + 72);
    v183 = v181 + 88;
    v172 = *MEMORY[0x277CBA3C0];
    v159 = *MEMORY[0x277CBA3C8];
    v180 = (v181 + 8);
    v179 = v181 + 96;
    v171 = *MEMORY[0x277D72D28];
    v170 = v182 + 104;
    v169 = v182 + 16;
    v168 = v196 + 16;
    v167 = v196 + 8;
    v166 = v182 + 8;
    v165 = v196 + 32;
    v85 = MEMORY[0x277D84F90];
    v164 = *MEMORY[0x277CBA3B8];
    v160 = MEMORY[0x277D84F90];
    v181 += 16;
    v86 = v198;
    v174 = v82;
    do
    {
      v182 = v81;
      v82(v86, v84, v51);
      v82(v63, v86, v51);
      v87 = *v183;
      v88 = sub_254EB5188();
      v89 = v87(v88);
      if (v89 == v172)
      {
        v163 = v87;
        sub_254EB6AC0(&v204);
        v90 = sub_254EB5188();
        v91(v90);
        v93 = *v63;
        v92 = v63[1];
        v94 = v63[3];
        *&v162 = v63[2];
        v161 = v94;
        v95 = sub_254EC8BC0(&qword_27F75F2E0, &qword_254F2C428);
        v96 = v184;
        sub_254EF27E4(v63 + *(v95 + 64), v184);
        v97 = swift_allocObject();
        v98 = v176;
        v97[2] = v175;
        v97[3] = v98;
        v97[4] = v93;
        v97[5] = v92;
        v99 = v187;
        *v187 = v97;
        sub_254EB6AC0(&v203);
        v100 = sub_254EB6840();
        v101(v100);
        sub_254EB6AC0(v202);
        v102(v188, v99, v92);
        v103 = v185;
        sub_254EB2F54(v96, v185, &qword_27F75F2D0, &qword_254F2C418);
        v104 = v194;

        sub_254F19374(v103, v195);
        v105 = sub_254F29380();
        sub_254EB4988(v105);
        v106 = v190;
        sub_254F29270();
        sub_254EB6AC0(v201);
        v107(v191, v106, v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v147 = *(v85 + 16);
          sub_254EB4958();
          sub_254EF04D8();
          v85 = v148;
        }

        v109 = *(v85 + 16);
        v108 = *(v85 + 24);
        v82 = v174;
        if (v109 >= v108 >> 1)
        {
          sub_254EB4090(v108);
          sub_254EF04D8();
          v85 = v149;
        }

        v110 = v196;
        (*(v196 + 8))(v190, v104);
        sub_254EB6AC0(&v199);
        v111(v187, v199);
        sub_254EB2B68(v184, &qword_27F75F2D0, &qword_254F2C418);
        *(v85 + 16) = v109 + 1;
        (*(v110 + 32))(v85 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v191, v104);
        v86 = v198;
        v87 = v163;
      }

      else if (v89 == v159)
      {
        v112 = v87;
        sub_254EB6AC0(&v204);
        v113 = sub_254EB5188();
        v114(v113);
        v115 = v63[1];
        v163 = *v63;
        *&v162 = v115;
        v116 = v160;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v153 = *(v116 + 16);
          sub_254EB4958();
          sub_254EEFF7C();
          v116 = v154;
        }

        v160 = v116;
        v118 = *(v116 + 16);
        v117 = *(v116 + 24);
        if (v118 >= v117 >> 1)
        {
          sub_254EB4090(v117);
          sub_254EEFF7C();
          v160 = v155;
        }

        v87 = v112;
        v119 = v160;
        *(v160 + 16) = v118 + 1;
        v120 = v119 + 16 * v118;
        v121 = v162;
        *(v120 + 32) = v163;
        *(v120 + 40) = v121;
        v86 = v198;
      }

      else
      {
        sub_254EB6AC0(&v205);
        v122 = sub_254EB5188();
        v123(v122);
      }

      v82(v59, v86, v51);
      v124 = (v87)(v59, v51);
      if (v124 == v164)
      {
        sub_254EB6AC0(&v204);
        v125(v59, v51);
        v126 = *v59;
        v127 = v59[1];
        v162 = *(v59 + 1);
        v128 = v59[5];
        v163 = v59[4];
        v129 = sub_254EC8BC0(&qword_27F75F2D8, &qword_254F2C420);
        v130 = v186;
        sub_254EF27E4(v59 + *(v129 + 80), v186);
        v131 = swift_allocObject();
        *(v131 + 16) = v162;
        *(v131 + 32) = v126;
        *(v131 + 40) = v127;
        v132 = v189;
        *v189 = v131;
        sub_254EB6AC0(&v203);
        v133 = sub_254EB6840();
        v134(v133);
        sub_254EB6AC0(v202);
        v135(v188, v132, v126);
        v136 = v185;
        sub_254EB2F54(v130, v185, &qword_27F75F2D0, &qword_254F2C418);
        sub_254F19374(v136, v195);
        v137 = sub_254F29380();
        sub_254EB4988(v137);
        v138 = v192;
        sub_254F29270();
        sub_254EB6AC0(v201);
        v139 = v194;
        v140(v193, v138, v194);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = *(v85 + 16);
          sub_254EB4958();
          sub_254EF04D8();
          v85 = v151;
        }

        v142 = *(v85 + 16);
        v141 = *(v85 + 24);
        v86 = v198;
        if (v142 >= v141 >> 1)
        {
          sub_254EB4090(v141);
          sub_254EF04D8();
          v85 = v152;
        }

        v143 = v196;
        (*(v196 + 8))(v192, v139);
        sub_254EB6AC0(&v199);
        v144(v189, v199);
        sub_254EB2B68(v186, &qword_27F75F2D0, &qword_254F2C418);
        sub_254EB6AC0(&v205);
        v145(v86, v51);
        *(v85 + 16) = v142 + 1;
        (*(v143 + 32))(v85 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v142, v193, v139);
        v82 = v174;
      }

      else
      {
        v146 = *v180;
        (*v180)(v86, v51);
        v146(v59, v51);
      }

      v84 += v173;
      v81 = v182 - 1;
    }

    while (v182 != 1);

    sub_254EB6D9C();

    v158(v85, v160);
  }

  else
  {

    sub_254EB6D9C();

    v158(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

LABEL_7:
}

uint64_t sub_254EF2778(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_254EF278C(a1, a2);
  }

  return a1;
}

uint64_t sub_254EF278C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_254EF27E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_254EF2854(uint64_t a1, uint64_t a2)
{
  v51 = sub_254F28750();
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v51);
  v50 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v37 - v9;
  v48 = sub_254F28CE0();
  v10 = *(v48 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v48);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v37 = v2;
    v58 = MEMORY[0x277D84F90];
    v15 = v5;
    sub_254ECA87C(0, v14, 0);
    v16 = v58;
    result = sub_254EF79A0(a1);
    v20 = 0;
    v21 = a1 + 56;
    v46 = v10;
    v47 = v15;
    v43 = v15 + 8;
    v44 = v15 + 16;
    v41 = a1;
    v42 = v10 + 32;
    v38 = a1 + 64;
    v39 = v14;
    v40 = a2;
    v45 = a1 + 56;
    if ((result & 0x8000000000000000) == 0)
    {
      while (result < 1 << *(a1 + 32))
      {
        if ((*(v21 + 8 * (result >> 6)) & (1 << result)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v18)
        {
          goto LABEL_27;
        }

        v53 = 1 << result;
        v54 = result >> 6;
        v57 = v19;
        v55 = result;
        v56 = v18;
        v52 = v20;
        v22 = *(a1 + 48);
        v23 = v47;
        v24 = *(v47 + 16);
        v25 = v49;
        v26 = v51;
        v24(v49, v22 + *(v47 + 72) * result, v51);
        v24(v50, v25, v26);
        sub_254EF3344(v25, a2);
        sub_254F28CF0();
        (*(v23 + 8))(v25, v26);
        v58 = v16;
        v28 = *(v16 + 16);
        v27 = *(v16 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_254ECA87C(v27 > 1, v28 + 1, 1);
          v16 = v58;
        }

        *(v16 + 16) = v28 + 1;
        result = (*(v46 + 32))(v16 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28, v13, v48);
        v21 = v45;
        if (v57)
        {
          goto LABEL_31;
        }

        a2 = v40;
        a1 = v41;
        v29 = 1 << *(v41 + 32);
        result = v55;
        if (v55 >= v29)
        {
          goto LABEL_28;
        }

        v30 = *(v45 + 8 * v54);
        if ((v30 & v53) == 0)
        {
          goto LABEL_29;
        }

        if (*(v41 + 36) != v56)
        {
          goto LABEL_30;
        }

        v31 = v30 & (-2 << (v55 & 0x3F));
        if (v31)
        {
          v29 = __clz(__rbit64(v31)) | v55 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v32 = v54 << 6;
          v33 = v54 + 1;
          v34 = (v38 + 8 * v54);
          while (v33 < (v29 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              sub_254ED2134(v55, v56, 0);
              v29 = __clz(__rbit64(v35)) + v32;
              goto LABEL_19;
            }
          }

          sub_254ED2134(v55, v56, 0);
        }

LABEL_19:
        v20 = v52 + 1;
        if (v52 + 1 == v39)
        {

          return v16;
        }

        v19 = 0;
        v18 = *(a1 + 36);
        result = v29;
        if (v29 < 0)
        {
          break;
        }
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
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_254EF2CA4(uint64_t a1, void *a2)
{
  v45 = a2;
  v43 = sub_254F28750();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_254F28CE0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v33 - v12;
  v14 = sub_254F287A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_254EC5594(a1);
  v20 = 0;
  v47 = a1 & 0xC000000000000001;
  v46 = a1 & 0xFFFFFFFFFFFFFF8;
  v37 = (v15 + 16);
  v38 = (v15 + 32);
  v36 = *MEMORY[0x277D1D318];
  v34 = (v15 + 8);
  v35 = (v3 + 104);
  v21 = v19;
  v39 = v6;
  v40 = v9;
  v33[2] = v6 + 32;
  v44 = a1;
  while (v21 != v20)
  {
    if (v47)
    {
      v22 = MEMORY[0x259C2E0D0](v20, a1);
    }

    else
    {
      if (v20 >= *(v46 + 16))
      {
        goto LABEL_18;
      }

      v22 = *(a1 + 8 * v20 + 32);
    }

    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v23 = v22;
    sub_254F28790();
    if (sub_254EB2F2C(v13, 1, v14) == 1)
    {
      sub_254EB306C(v13, &qword_27F75F5E0, &unk_254F2C9C0);
    }

    else
    {
      (*v38)(v18, v13, v14);
      v24 = v42;
      (*v37)(v42, v18, v14);
      (*v35)(v24, v36, v43);
      sub_254F28CF0();
      v25 = v45;
      v26 = *v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v25 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = *(v26 + 16);
        sub_254EF0BC0();
        v26 = v31;
        *v45 = v31;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_254EF0BC0();
        *v45 = v32;
      }

      (*v34)(v18, v14);
      v29 = *v45;
      *(v29 + 16) = v28 + 1;
      (*(v39 + 32))(v29 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v28, v40, v41);
      a1 = v44;
    }

    ++v20;
  }
}

uint64_t sub_254EF30F0(uint64_t result, uint64_t *a2)
{
  v4 = *(result + 16);
  v5 = (result + 40);
  if (v4)
  {
    while (1)
    {
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;

      sub_254EF6140(v7, a2);
      if (v2)
      {
        break;
      }

      v5 += 2;
      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

id sub_254EF3180()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_254F29420();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_254EF31F4()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *v0;
  sub_254EB2CE0();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_254EB9648, 0, 0);
}

BOOL sub_254EF3344(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F28750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return 0;
  }

  v9 = *(a2 + 40);
  sub_254EBBA88(&qword_2814274F0, MEMORY[0x277D1D330]);
  v18 = a1;
  v10 = sub_254F293F0();
  v11 = a2 + 56;
  v19 = a2;
  v12 = ~(-1 << *(a2 + 32));
  do
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    v15 = v14 != 0;
    if (!v14)
    {
      break;
    }

    (*(v5 + 16))(v8, *(v19 + 48) + *(v5 + 72) * v13, v4);
    sub_254EBBA88(&qword_27F75F358, MEMORY[0x277D1D330]);
    v16 = sub_254F29410();
    (*(v5 + 8))(v8, v4);
    v10 = v13 + 1;
  }

  while ((v16 & 1) == 0);
  return v15;
}

uint64_t sub_254EF3548(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = MEMORY[0x259C2E320](*(a2 + 40), a1, 2);
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 2 * v7) != v4);
  }

  return v2;
}

size_t sub_254EF35D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_254EF1164();
  v5 = *(sub_254F28CE0() - 8);
  v6 = sub_254EF75B0(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  sub_254EF7A88();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

void *sub_254EF36A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_254EF1288(*(a1 + 16), 0);
  v4 = sub_254EF7848(&v6, v3 + 4, v2, a1);
  sub_254EF7A88();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_254EF3730()
{
  v1 = sub_254F28F20();
  v0[2] = v1;
  sub_254EB2CAC(v1);
  v0[3] = v2;
  v4 = *(v3 + 64);
  v0[4] = sub_254EB3FC4();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_254EF3824;

  return sub_254EC10F4();
}

uint64_t sub_254EF3824(uint64_t a1)
{
  v5 = *(*v2 + 40);
  v4 = *v2;
  sub_254EB2CE0();
  *v6 = v4;
  v4[6] = v1;

  if (v1)
  {
    v7 = sub_254EF39BC;
  }

  else
  {
    v9 = v4[3];
    v8 = v4[4];
    v10 = v4[2];
    v4[7] = a1;
    (*(v9 + 8))(v8, v10);
    v7 = sub_254EF3958;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_254EF3958()
{
  sub_254EB3BD8();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2(v3);
}

uint64_t sub_254EF39BC()
{
  sub_254EB3BD8();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_254EF3A1C(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v30 = a4;
  v31 = a2;
  v4 = sub_254F29180();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254F29140();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254F29170();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F178D0();
  sub_254F280C0();
  v18 = sub_254F29160();
  sub_254F29190();
  v27 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v12, v8);
    return (*(v14 + 8))(v17, v13);
  }

  v26 = v13;
  if ((v30 & 1) == 0)
  {
    if (v31)
    {
LABEL_9:

      sub_254F291C0();

      v21 = v28;
      v20 = v29;
      if ((*(v28 + 88))(v7, v29) == *MEMORY[0x277D85B00])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v7, v20);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v18, v27, v24, v31, v22, v23, 2u);
      MEMORY[0x259C2EB80](v23, -1, -1);
      v13 = v26;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v31 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v31 & 0xFFFFF800) != 0xD800)
  {
    if (v31 >> 16 <= 0x10)
    {
      v31 = &v32;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EF3D68()
{
  sub_254EF7A90((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_254EF3DA0(void *a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v76 = sub_254F28750();
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_254F28CE0();
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F28C50();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v9);
  v84 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v73 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v81 = &v73 - v16;
  v87 = sub_254F29290();
  v83 = *(v87 - 8);
  v17 = *(v83 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v73 - v21;
  v23 = sub_254F28CA0();
  v24 = *(v23 - 8);
  v25 = v24[8];
  MEMORY[0x28223BE20](v23);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96[0] = MEMORY[0x277D84F90];
  v28 = sub_254F28A90();
  v29 = *MEMORY[0x277D1D468];
  v90 = v24[13];
  v90(v27, v29, v23);
  v30 = sub_254EBB8C0(v27, v28);

  v89 = v24[1];
  v89(v27, v23);
  if (v30)
  {
    v80 = a3;
    sub_254F27E30();
    v31 = sub_254F27F50();
    if (sub_254EB2F2C(v22, 1, v31) == 1)
    {
      sub_254EB306C(v22, &qword_27F75F2E8, &qword_254F2C430);
    }

    else
    {
      sub_254F27F30();
      v33 = v32;
      (*(*(v31 - 8) + 8))(v22, v31);
      if (v33)
      {
        v34 = v81;
        sub_254EFB450();

        v35 = v87;
        if (sub_254EB2F2C(v34, 1, v87) == 1)
        {
          sub_254EB306C(v34, &qword_27F75EE50, &unk_254F2C4F0);
        }

        else
        {
          v36 = v83;
          v37 = v82;
          (*(v83 + 32))(v82, v34, v35);
          v38 = v73;
          (*(v36 + 16))(v73, v37, v35);
          sub_254EB2F04(v38, 0, 1, v35);
          v39 = v84;
          sub_254F28C20();
          sub_254F28C40();
          v40 = v74;
          (*(v85 + 16))(v74, v39, v86);
          (*(v75 + 104))(v40, *MEMORY[0x277D1D2E8], v76);
          v41 = v77;
          sub_254F28CF0();
          sub_254EF0BC0();
          v43 = v42;
          v44 = *(v42 + 16);
          if (v44 >= *(v42 + 24) >> 1)
          {
            sub_254EF0BC0();
            v43 = v72;
          }

          (*(v85 + 8))(v84, v86);
          (*(v83 + 8))(v82, v87);
          *(v43 + 16) = v44 + 1;
          (*(v78 + 32))(v43 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v44, v41, v79);
          v96[0] = v43;
        }
      }
    }
  }

  v45 = sub_254F28A90();
  v90(v27, *MEMORY[0x277D1D498], v23);
  v46 = sub_254EBB8C0(v27, v45);

  v89(v27, v23);
  if (!v46)
  {
    return v96[0];
  }

  v47 = [a1 activityType];
  v48 = sub_254F29450();
  v50 = v49;

  if (v48 == 0xD00000000000001ELL && 0x8000000254F2E200 == v50)
  {
  }

  else
  {
    v52 = sub_254F29B10();

    if ((v52 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v53 = sub_254F07A04(a1);
  if (!v53)
  {
    v94 = 0u;
    v95 = 0u;
    goto LABEL_23;
  }

  v54 = v53;
  v91 = 0xD000000000000012;
  v92 = 0x8000000254F2E270;
  sub_254F298E0();
  sub_254F0B9C0(v93, v54, &v94);

  sub_254EF79E0(v93);
  if (!*(&v95 + 1))
  {
LABEL_23:
    sub_254EB306C(&v94, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    v55 = v93[0];
    v56 = v93[1];
    sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_254F2AE00;
    *(v57 + 32) = v55;
    *(v57 + 40) = v56;
    v58 = sub_254F291F0();

    sub_254EF2CA4(v58, v96);
LABEL_41:

    return v96[0];
  }

LABEL_24:
  v59 = [a1 activityType];
  v60 = sub_254F29450();
  v62 = v61;

  if (v60 == 0xD000000000000012 && 0x8000000254F2E220 == v62)
  {
  }

  else
  {
    v64 = sub_254F29B10();

    if ((v64 & 1) == 0)
    {
      return v96[0];
    }
  }

  v65 = sub_254F07A04(a1);
  if (!v65)
  {
    v94 = 0u;
    v95 = 0u;
    goto LABEL_38;
  }

  v66 = v65;
  v91 = 0xD000000000000021;
  v92 = 0x8000000254F2E240;
  sub_254F298E0();
  sub_254F0B9C0(v93, v66, &v94);

  sub_254EF79E0(v93);
  if (!*(&v95 + 1))
  {
LABEL_38:
    sub_254EB306C(&v94, &qword_27F75EE68, &qword_254F2B4C0);
    return v96[0];
  }

  if (swift_dynamicCast())
  {
    sub_254EF5E20();
    v68 = v67;

    if (v68)
    {
      v69 = sub_254F0BA24(0x6E65697069636572, 0xE900000000000074, v68);
      if (v69)
      {
        v70 = v69;

LABEL_40:
        sub_254EF30F0(v70, v96);
        goto LABEL_41;
      }

      v70 = sub_254F0BA24(0x6E65697069636572, 0xEA00000000007374, v68);

      if (v70)
      {
        goto LABEL_40;
      }
    }
  }

  return v96[0];
}

uint64_t sub_254EF4848(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v50 - v5;
  v6 = sub_254F28EE0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_254F289F0();
  v55 = *(v52 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v61 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_254F27E90();
  v11 = *(v68 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v68);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254F27E10();
  v64 = *(v15 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_254F27F10();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v21;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = sub_254F27CC0();
  v27 = *(v26 + 16);
  if (!v27)
  {

    return MEMORY[0x277D84F90];
  }

  v63 = v15;
  v50[0] = v26;
  v28 = v26 + v25;
  v29 = v24 + 16;
  v30 = *(v24 + 16);
  v69 = *(v24 + 72);
  v66 = (v11 + 88);
  v65 = *MEMORY[0x277D74650];
  v31 = (v24 + 8);
  v58 = (v11 + 96);
  v59 = (v11 + 8);
  v57 = (v64 + 32);
  v56 = (v64 + 8);
  v51 = *MEMORY[0x277D1D350];
  v50[1] = v55 + 32;
  v64 = MEMORY[0x277D84F90];
  v32 = v62;
  v33 = v18;
  v60 = v29;
  v67 = v30;
  do
  {
    v30(v23, v28, v19);
    if (MEMORY[0x259C2C530](v23, v32))
    {
      (*v31)(v23, v19);
    }

    else
    {
      sub_254F27EA0();
      v34 = v68;
      v35 = (*v66)(v14, v68);
      if (v35 == v65)
      {
        (*v58)(v14, v34);
        v36 = v33;
        v37 = v33;
        v38 = v63;
        (*v57)(v36, v14, v63);
        sub_254F27E00();
        v39 = sub_254F294D0();

        if (v39 > 79)
        {
          (*v56)(v37, v38);
          (*v31)(v23, v19);
          v32 = v62;
          v33 = v37;
        }

        else
        {
          sub_254EBB528(v23, MEMORY[0x277D84F90]);
          sub_254F27E00();
          v40 = v54;
          sub_254F287B0();
          v41 = sub_254F287E0();
          (*(*(v41 - 8) + 104))(v40, v51, v41);
          sub_254EB2F04(v40, 0, 1, v41);
          sub_254F28EB0();
          sub_254F289C0();
          v42 = v64;
          v33 = v37;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = *(v42 + 16);
            sub_254EF0A30();
            v42 = v47;
          }

          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          v64 = v42;
          if (v44 >= v43 >> 1)
          {
            sub_254EF0A30();
            v64 = v48;
          }

          (*v56)(v37, v63);
          (*v31)(v23, v19);
          v45 = v64;
          *(v64 + 16) = v44 + 1;
          (*(v55 + 32))(v45 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v44, v61, v52);
          v32 = v62;
        }
      }

      else
      {
        (*v31)(v23, v19);
        (*v59)(v14, v34);
      }

      v30 = v67;
    }

    v28 += v69;
    --v27;
  }

  while (v27);

  return v64;
}

uint64_t sub_254EF4FB4()
{
  sub_254F27F40();
  v2 = sub_254F29AF0();
  MEMORY[0x259C2DC50](45, 0xE100000000000000);
  sub_254F27F20();
  v0 = sub_254F29AF0();
  MEMORY[0x259C2DC50](v0);

  return v2;
}

uint64_t sub_254EF5054(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_254EC8BC0(&qword_27F75F368, &qword_254F2C5B0);
  return sub_254F29410() & 1;
}

uint64_t sub_254EF50B8(uint64_t *a1)
{
  v2 = *a1;
  sub_254EC8BC0(&qword_27F75F368, &qword_254F2C5B0);
  return sub_254F29400();
}

void sub_254EF5108(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_254EBD87C();
  sub_254F27850();
  __break(1u);
}

void sub_254EF5130()
{
  sub_254EB8078();
  v60 = v3;
  v61 = v4;
  v63 = v5;
  v69 = v6;
  v67 = v7;
  v70 = sub_254F29A20();
  v8 = sub_254EB2CBC(v70);
  v68 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_254EB6ACC();
  v66 = v12;
  sub_254EB7FC4();
  v13 = sub_254F29A40();
  v14 = sub_254EB2CBC(v13);
  v64 = v15;
  v65 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_254EB6ACC();
  v62 = v18;
  sub_254EB7FC4();
  v19 = sub_254F29140();
  v20 = sub_254EB2CBC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  sub_254EB2E04();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v29 = sub_254EF7B70();
  v30 = sub_254EB2CBC(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_254EB2E04();
  sub_254EB3AF8();
  MEMORY[0x28223BE20](v35);
  sub_254EF7B50();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v58 = *(v32 + 8);
  v59 = v29;
  v58(v0, v29);
  v36 = sub_254F29160();
  v37 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v57 = v19;
    v38 = swift_slowAlloc();
    *v38 = 0;
    v39 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v36, v37, v39, "UIContext.TextEntityDetector", "", v38, 2u);
    v19 = v57;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v22 + 16))(v27, v1, v19);
  v40 = sub_254F291B0();
  sub_254EC0118(v40);
  swift_allocObject();
  v41 = sub_254F291A0();
  (*(v22 + 8))(v1, v19);
  v58(v2, v59);
  v42 = v62;
  sub_254F29A30();
  v43 = v66;
  sub_254F29A00();
  v44 = v67;
  v45 = v69;
  sub_254F08DC0(v67, v69, v63);
  v46 = *MEMORY[0x277CD8968];
  MEMORY[0x28223BE20](v47);
  v48 = v60;
  *(&v56 - 6) = v63;
  *(&v56 - 5) = v48;
  v55 = v45;
  sub_254F297E0();
  v54 = &unk_254F2C5C8;
  v52 = &type metadata for NLTaggerBasedEntityDetector;
  v53 = &unk_27F75F378;
  sub_254EB80D0();
  sub_254EF65D8(v49, v50, v51, v41, v44, v45, v43, v42);

  (*(v68 + 8))(v43, v70);
  (*(v64 + 8))(v42, v65);
  sub_254EB4A74();
}

void sub_254EF55AC()
{
  sub_254EB8078();
  v51 = v3;
  v53 = v4;
  v54 = v5;
  v6 = sub_254F29A20();
  v7 = sub_254EB2CBC(v6);
  v55 = v8;
  v56 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_254EB6ACC();
  v52 = v11;
  sub_254EB7FC4();
  v12 = sub_254F29A40();
  v13 = sub_254EB2CBC(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_254EB6ACC();
  v50 = v16;
  sub_254EB7FC4();
  v49 = sub_254F29140();
  v17 = sub_254EB2CBC(v49);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254EB2E04();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = sub_254EF7B70();
  v27 = sub_254EB2CBC(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_254EB2E04();
  sub_254EB3AF8();
  MEMORY[0x28223BE20](v32);
  sub_254EF7B50();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v48 = *(v29 + 8);
  v48(v0, v26);
  v33 = sub_254F29160();
  v34 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v47 = v24;
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v33, v34, v36, "UIContext.TextEntityDetector", "", v35, 2u);
    v24 = v47;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v19 + 16))(v24, v1, v49);
  v37 = sub_254F291B0();
  sub_254EC0118(v37);
  swift_allocObject();
  v38 = sub_254F291A0();
  (*(v19 + 8))(v1, v49);
  v48(v2, v26);
  sub_254F29A30();
  sub_254F29A00();
  v39 = sub_254EB82D8();
  sub_254F08DC0(v39, v40, v51);
  if (qword_27F75EB88 != -1)
  {
    v41 = swift_once();
  }

  MEMORY[0x28223BE20](v41);
  sub_254F297E0();
  sub_254EB80D0();
  sub_254EF65D8(v42, v43, v44, v38, v53, v54, v52, v50);

  (*(v55 + 8))(v52, v56);
  v45 = sub_254EF7B30();
  v46(v45);
  sub_254EB4A74();
}

void sub_254EF5A38()
{
  sub_254EB8078();
  v48 = v1;
  v49 = v2;
  v51 = v3;
  v52 = v4;
  v5 = sub_254F29A20();
  v6 = sub_254EB2CBC(v5);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_254EB6ACC();
  v53 = v10;
  sub_254EB7FC4();
  v11 = sub_254F29A40();
  v12 = sub_254EB2CBC(v11);
  v54 = v13;
  v55 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_254EB6ACC();
  v50 = v16;
  sub_254EB7FC4();
  v47 = sub_254F29140();
  v17 = sub_254EB2CBC(v47);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254EB3D38();
  v46 = v22;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v23);
  sub_254EB63F4();
  v24 = sub_254F29170();
  v25 = sub_254EB2CBC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_254EB2E04();
  sub_254EB3AF8();
  MEMORY[0x28223BE20](v30);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v31 = *(v27 + 8);
  v32 = sub_254EC1AF8();
  v45 = v33;
  v33(v32);
  v34 = sub_254F29160();
  v35 = sub_254F297A0();
  if (sub_254F29800())
  {
    sub_254EB7D24();
    v44 = v5;
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v34, v35, v37, "UIContext.TextEntityDetector", "", v36, 2u);
    v5 = v44;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
  }

  (*(v19 + 16))(v46, v0, v47);
  v38 = sub_254F291B0();
  sub_254EC0118(v38);
  swift_allocObject();
  v39 = sub_254F291A0();
  (*(v19 + 8))(v0, v47);
  v40 = sub_254EB82D8();
  v45(v40);
  sub_254F29A30();
  sub_254F29A00();
  SiriEntityMatcherEntityDetector.detectEntities(text:appBundleId:)(v51, v52, v48, v49);
  sub_254EB80D0();
  sub_254EF6BAC(v41, v42, v43, v39, v51, v52, v53, v50);

  (*(v56 + 8))(v53, v5);
  (*(v54 + 8))(v50, v55);
  sub_254EB4A74();
}

void sub_254EF5E20()
{
  sub_254EF7A34();
  v0 = sub_254F29830();
  sub_254EF6590(v0);
  v2 = v1;

  if (v2)
  {
    v3 = sub_254F29830();

    v4 = 0;
    v23 = *(v3 + 16);
    v22 = v3 + 32;
    v5 = MEMORY[0x277D84F98];
LABEL_3:
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      goto LABEL_24;
    }

    v27 = *(v22 + 16 * v4);
    v28 = *(v22 + 16 * v4 + 8);
    v6 = sub_254F29830();
    if (v6[2])
    {
      v8 = v6[4];
      v7 = v6[5];
      sub_254EF6590(v6);
      v10 = v9;

      if (v10)
      {
        v24 = v8;
        v25 = v4 + 1;
        v26 = v5;
        v11 = sub_254F29830();

        v12 = 0;
        v13 = *(v11 + 16);
        v14 = MEMORY[0x277D84F90];
LABEL_8:
        v15 = (v11 + 40 + 16 * v12);
        while (1)
        {
          if (v13 == v12)
          {

            swift_isUniquelyReferenced_nonNull_native();
            sub_254F06D58(v14, v24, v7);

            v5 = v26;
            v4 = v25;
            goto LABEL_3;
          }

          if (v12 >= *(v11 + 16))
          {
            break;
          }

          ++v12;
          v16 = *(v15 - 1);
          v17 = *v15;
          v15 += 2;
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = v16 & 0xFFFFFFFFFFFFLL;
          }

          if (v18)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_254ECA804(0, *(v14 + 16) + 1, 1);
            }

            v20 = *(v14 + 16);
            v19 = *(v14 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_254ECA804(v19 > 1, v20 + 1, 1);
            }

            *(v14 + 16) = v20 + 1;
            v21 = v14 + 16 * v20;
            *(v21 + 32) = v16;
            *(v21 + 40) = v17;
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_254EF6140(uint64_t *a1, uint64_t *a2)
{
  v38 = a2;
  v3 = sub_254F28750();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F28CE0();
  v36 = *(v7 - 8);
  v37 = v7;
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254F287A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_254EC8BC0(&qword_27F75F5E0, &unk_254F2C9C0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v33 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v33 - v23;
  v25 = *a1;
  v26 = a1[1];
  if ((sub_254F19B20() & 1) != 0 || String.isValidPhoneNumber()())
  {

    sub_254F28770();
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  sub_254EB2F04(v22, v27, 1, v10);
  sub_254EBEE30(v22, v24, &qword_27F75F5E0, &unk_254F2C9C0);
  sub_254EBEE7C(v24, v19, &qword_27F75F5E0, &unk_254F2C9C0);
  if (sub_254EB2F2C(v19, 1, v10) == 1)
  {
    sub_254EB306C(v24, &qword_27F75F5E0, &unk_254F2C9C0);
    return sub_254EB306C(v19, &qword_27F75F5E0, &unk_254F2C9C0);
  }

  else
  {
    (*(v11 + 32))(v14, v19, v10);
    (*(v11 + 16))(v6, v14, v10);
    (*(v33 + 104))(v6, *MEMORY[0x277D1D318], v34);
    v29 = v35;
    sub_254F28CF0();
    v30 = v38;
    sub_254F16C30();
    v31 = *(*v30 + 16);
    sub_254F16CD8(v31);
    (*(v11 + 8))(v14, v10);
    sub_254EB306C(v24, &qword_27F75F5E0, &unk_254F2C9C0);
    v32 = *v30;
    *(v32 + 16) = v31 + 1;
    return (*(v36 + 32))(v32 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v29, v37);
  }
}

uint64_t sub_254EF6590(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_254EF65D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = sub_254EB6858(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_254EB2CBC(v69);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  sub_254EB7FC4();
  v62 = sub_254F29180();
  v12 = sub_254EB2CBC(v62);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_254EB3AB8();
  v17 = v16 - v15;
  v18 = sub_254F29140();
  v19 = sub_254EB2CBC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254EB3AB8();
  v26 = v25 - v24;
  v27 = sub_254F29170();
  v28 = sub_254EB2CBC(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_254EB3AB8();
  v35 = v34 - v33;
  sub_254F280C0();
  v36 = sub_254F29160();
  sub_254F29190();
  v63 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v61 = v18;
  v60 = v30;
  if ((v64 & 1) == 0)
  {
    if (!v70)
    {
      __break(1u);
LABEL_5:

      (*(v21 + 8))(v26, v18);
      v39 = *(v30 + 8);
      v38 = (v30 + 8);
      v39(v35, v27);
      sub_254EC0D54();
LABEL_14:
      type metadata accessor for Analytics();
      sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
      inited = swift_initStackObject();
      v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_254EBED90(v53, "entityDetectionType");
      sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
      v72 = v26;
      sub_254EC8BC0(v36, v38);
      sub_254F29480();
      v54 = sub_254EF3180();
      sub_254EC0078(v54);
      sub_254F29A10();
      v55 = sub_254EB4B40();
      v56(v55);
      sub_254EC1AF8();
      sub_254F29C10();
      v57 = sub_254EC4378();
      LODWORD(v58) = v8;
      inited[6].n128_u64[0] = [v57 initWithFloat_];
      sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
      v59 = sub_254F293D0();
      sub_254EB5194(v59);
    }

LABEL_10:

    sub_254F291C0();

    v40 = sub_254EB996C();
    v42 = v36;
    if (v41(v40) == *MEMORY[0x277D85B00])
    {
      v65 = "[Error] Interval already ended";
    }

    else
    {
      (*(v36 + 8))(v17, v18);
      v65 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    sub_254EB5B2C(v44);
    sub_254EC8BC0(v67, v68);
    v45 = sub_254F29480();
    sub_254EF7BD0(v45, v46);
    sub_254EF7BE8();
    *(v43 + 4) = v17;
    *(v43 + 12) = 2080;
    sub_254F280B0();
    v47 = sub_254F29950();
    sub_254EF7BD0(v47, v48);
    sub_254EF7BE8();
    *(v43 + 14) = v17;
    v49 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v36, v63, v49, v70, v65, v43, 0x16u);
    swift_arrayDestroy();
    v36 = v67;
    sub_254EB695C();
    MEMORY[0x259C2EB80]();
    sub_254EB695C();
    MEMORY[0x259C2EB80]();

    v38 = v68;
    v50 = sub_254EF7B30();
    v26 = v66;
    v51(v50, v61);
    (*(v60 + 8))(v35, v27);
    goto LABEL_14;
  }

  if (v70 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v70 & 0xFFFFF800) != 0xD800)
  {
    if (v70 >> 16 <= 0x10)
    {
      v70 = &v71;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_254EF6BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = sub_254EB6858(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sub_254EB2CBC(v70);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB6ACC();
  sub_254EB7FC4();
  v62 = sub_254F29180();
  v12 = sub_254EB2CBC(v62);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_254EB3AB8();
  v17 = v16 - v15;
  v18 = sub_254F29140();
  v19 = sub_254EB2CBC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254EB3AB8();
  v26 = (v25 - v24);
  v27 = sub_254F29170();
  v28 = sub_254EB2CBC(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  sub_254EB3AB8();
  v35 = v34 - v33;
  sub_254F280C0();
  v36 = sub_254F29160();
  sub_254F29190();
  v64 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {

    (*(v21 + 8))(v26, v18);
    v41 = *(v30 + 8);
    v40 = (v30 + 8);
    v41(v35, v27);
    sub_254EC0D54();
LABEL_14:
    type metadata accessor for Analytics();
    sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
    inited = swift_initStackObject();
    v52 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    sub_254EBED90(v52, "entityDetectionType");
    sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);
    v73 = (v36)(0);
    sub_254EC8BC0(v26, v40);
    sub_254F29480();
    v53 = sub_254EF3180();
    sub_254EC0078(v53);
    sub_254F29A10();
    v54 = sub_254EB4B40();
    v55(v54);
    sub_254EC1AF8();
    sub_254F29C10();
    v56 = sub_254EC4378();
    LODWORD(v57) = v8;
    inited[6].n128_u64[0] = [v56 initWithFloat_];
    sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
    v58 = sub_254F293D0();
    sub_254EB5194(v58);
  }

  v60 = v27;
  v61 = v18;
  v59 = v36;
  if ((v65 & 1) == 0)
  {
    if (v71)
    {
      v38 = v21;
      v39 = v30;
LABEL_10:

      sub_254F291C0();

      v42 = sub_254EB996C();
      v66 = v26;
      if (v43(v42) == *MEMORY[0x277D85B00])
      {
        v63 = "[Error] Interval already ended";
      }

      else
      {
        (v36[1].isa)(v17, v21);
        v63 = "EntityDetector=%{signpost.telemetry:string1,public}s %s";
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      sub_254EB5B2C(v45);
      v36 = v67;
      (v67)(0);
      v40 = v69;
      sub_254EC8BC0(v68, v69);
      v46 = sub_254F29480();
      sub_254EF7BD0(v46, v47);
      sub_254EF7BE8();
      *(v44 + 4) = v17;
      *(v44 + 12) = 2080;
      sub_254F280B0();
      v48 = sub_254F29950();
      sub_254EF7BD0(v48, v49);
      sub_254EF7BE8();
      *(v44 + 14) = v17;
      v50 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v59, v64, v50, v71, v63, v44, 0x16u);
      swift_arrayDestroy();
      v26 = v68;
      sub_254EB695C();
      MEMORY[0x259C2EB80]();
      sub_254EB695C();
      MEMORY[0x259C2EB80]();

      (*(v38 + 8))(v66, v61);
      (*(v39 + 8))(v35, v60);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v71 >> 32)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v71 & 0xFFFFF800) != 0xD800)
  {
    if (v71 >> 16 <= 0x10)
    {
      v38 = v21;
      v39 = v30;
      v71 = &v72;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_254EF71A4()
{
  sub_254EB8078();
  v1 = v0;
  v3 = v2;
  v4 = sub_254F286E0();
  v5 = sub_254EB2CBC(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_254EB3AB8();
  v11 = v10 - v9;
  v12 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  sub_254EB2D90(v12);
  v14 = *(v13 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = sub_254EC8BC0(&qword_27F75F388, &qword_254F2C5E0);
  sub_254EB2D90(v18);
  v20 = *(v19 + 64);
  sub_254EB6BCC();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v29 - v23;
  v25 = *(v22 + 56);
  sub_254EBEE7C(v3, &v29 - v23, &qword_27F75EDF8, &unk_254F2B560);
  sub_254EBEE7C(v1, &v24[v25], &qword_27F75EDF8, &unk_254F2B560);
  sub_254EB6AE0(v24);
  if (!v26)
  {
    sub_254EBEE7C(v24, v17, &qword_27F75EDF8, &unk_254F2B560);
    sub_254EB6AE0(&v24[v25]);
    if (!v26)
    {
      v27 = v30;
      (*(v30 + 32))(v11, &v24[v25], v4);
      sub_254EBBA88(&qword_2814274F8, MEMORY[0x277D85578]);
      sub_254EB82D8();
      sub_254F29410();
      v28 = *(v27 + 8);
      v28(v11, v4);
      v28(v17, v4);
      sub_254EB306C(v24, &qword_27F75EDF8, &unk_254F2B560);
      goto LABEL_10;
    }

    (*(v30 + 8))(v17, v4);
LABEL_9:
    sub_254EB306C(v24, &qword_27F75F388, &qword_254F2C5E0);
    goto LABEL_10;
  }

  sub_254EB6AE0(&v24[v25]);
  if (!v26)
  {
    goto LABEL_9;
  }

  sub_254EB306C(v24, &qword_27F75EDF8, &unk_254F2B560);
LABEL_10:
  sub_254EB4A74();
}

BOOL sub_254EF7458(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
    sub_254EB2CAC(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_254EF7540(void *a1)
{
  v2 = [a1 resourceSpecifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_254F29450();

  return v3;
}

unint64_t sub_254EF75B0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_254F28CE0();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254EF7848(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_254EF79A0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_254F298B0();
  v4 = *(a1 + 36);
  return result;
}

unint64_t sub_254EF7A34()
{
  result = qword_27F75F320;
  if (!qword_27F75F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F320);
  }

  return result;
}

uint64_t sub_254EF7A90(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return sub_254EB5C0C(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_254EF7B50()
{

  return sub_254F280C0();
}

uint64_t sub_254EF7B70()
{

  return sub_254F29170();
}

uint64_t sub_254EF7B90()
{

  return sub_254F29870();
}

uint64_t sub_254EF7BB0()
{
  v2 = *(v0 - 248);

  return sub_254F28CF0();
}

uint64_t sub_254EF7BD0(uint64_t a1, unint64_t a2)
{

  return sub_254EC2D74(a1, a2, (v2 - 216));
}

uint64_t sub_254EF7BE8()
{
}

uint64_t sub_254EF7C00(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_254EC8BC0(&qword_27F75F390, &qword_254F2C5F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_254F28EE0();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v32 = v15;
  v33 = &v28 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v35 = (v15 + 32);
  v36 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v36;
    }

    v18 = *(sub_254F27C80() - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (sub_254EB2F2C(v9, 1, v10) == 1)
    {
      sub_254EB300C(v9, &qword_27F75F390, &qword_254F2C5F0);
      ++v16;
    }

    else
    {
      v19 = *v35;
      (*v35)(v33, v9, v10);
      v31 = v19;
      v19(v34, v33, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v36 + 16);
        sub_254EF05A0();
        v36 = v24;
      }

      v20 = *(v36 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v36 + 24) >> 1)
      {
        v29 = *(v36 + 16);
        v30 = v20 + 1;
        sub_254EF05A0();
        v20 = v29;
        v21 = v30;
        v36 = v25;
      }

      ++v16;
      v22 = v36;
      *(v36 + 16) = v21;
      v31((v22 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20), v34, v10);
    }
  }

  v26 = v36;

  return v26;
}

uint64_t sub_254EF7F20(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v8 = (*(*(sub_254EC8BC0(&qword_27F75F3A0, &qword_254F2C5F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  sub_254EB40B0();
  v9 = sub_254F28260();
  v10 = sub_254EB6C30(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_254EB3D38();
  v37 = v13;
  MEMORY[0x28223BE20](v14);
  v35 = v16;
  v36 = &v31 - v15;
  v17 = 0;
  v18 = *(a3 + 16);
  v38 = (v16 + 32);
  v39 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v17)
    {
      return v39;
    }

    v19 = sub_254F28120();
    sub_254EB2CAC(v19);
    a1(a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v21 + 72) * v17);
    if (v3)
    {
      break;
    }

    if (sub_254EB2F2C(v4, 1, v5) == 1)
    {
      sub_254EB300C(v4, &qword_27F75F3A0, &qword_254F2C5F8);
      ++v17;
    }

    else
    {
      v22 = *v38;
      (*v38)(v36, v4, v5);
      v34 = v22;
      v22(v37, v36, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v39 + 16);
        sub_254EF0968();
        v39 = v27;
      }

      v23 = *(v39 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v39 + 24) >> 1)
      {
        v32 = *(v39 + 16);
        v33 = v23 + 1;
        sub_254EF0968();
        v23 = v32;
        v24 = v33;
        v39 = v28;
      }

      ++v17;
      v25 = v39;
      *(v39 + 16) = v24;
      v34((v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23), v37, v5);
    }
  }

  v29 = v39;

  return v29;
}

id sub_254EF8210(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v8 = sub_254EC8BC0(&qword_27F75F3A8, &qword_254F2C600);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_254EB40B0();
  v10 = sub_254F28750();
  v11 = sub_254EB6C30(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  sub_254EB3D38();
  v35 = v16;
  MEMORY[0x28223BE20](v17);
  v30 = &v29 - v18;
  result = sub_254EC5594(a3);
  v20 = 0;
  v37 = a3 & 0xC000000000000001;
  v38 = result;
  v36 = a3 & 0xFFFFFFFFFFFFFF8;
  v31 = v13;
  v34 = (v13 + 32);
  v21 = MEMORY[0x277D84F90];
  v32 = a1;
  v33 = a3;
  while (1)
  {
    if (v38 == v20)
    {
      return v21;
    }

    if (v37)
    {
      result = MEMORY[0x259C2E0D0](v20, a3);
    }

    else
    {
      if (v20 >= *(v36 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v20 + 32);
    }

    v22 = result;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    v39 = result;
    a1(&v39);
    if (v3)
    {

      return v21;
    }

    if (sub_254EB2F2C(v4, 1, v5) == 1)
    {
      result = sub_254EB300C(v4, &qword_27F75F3A8, &qword_254F2C600);
    }

    else
    {
      v23 = *v34;
      v24 = v30;
      (*v34)(v30, v4, v5);
      v23(v35, v24, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = *(v21 + 16);
        sub_254EF0C80();
        v21 = v27;
      }

      v25 = *(v21 + 16);
      if (v25 >= *(v21 + 24) >> 1)
      {
        sub_254EF0C80();
        v21 = v28;
      }

      *(v21 + 16) = v25 + 1;
      result = (v23)(v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25, v35, v5);
      a1 = v32;
      a3 = v33;
    }

    ++v20;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_254EF84F4(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_254F27F10();
  v1[11] = v2;
  sub_254EB2CAC(v2);
  v1[12] = v3;
  v5 = *(v4 + 64);
  v1[13] = sub_254EB3FC4();
  v6 = sub_254F27F50();
  v1[14] = v6;
  sub_254EB2CAC(v6);
  v1[15] = v7;
  v9 = *(v8 + 64);
  v1[16] = sub_254EB3C44();
  v1[17] = swift_task_alloc();
  v10 = sub_254F290E0();
  v1[18] = v10;
  sub_254EB2CAC(v10);
  v1[19] = v11;
  v13 = *(v12 + 64);
  v1[20] = sub_254EB3C44();
  v1[21] = swift_task_alloc();
  v14 = sub_254F29100();
  v1[22] = v14;
  sub_254EB2CAC(v14);
  v1[23] = v15;
  v17 = *(v16 + 64);
  v1[24] = sub_254EB3FC4();
  v18 = sub_254F28F20();
  v1[25] = v18;
  sub_254EB2CAC(v18);
  v1[26] = v19;
  v21 = *(v20 + 64);
  v1[27] = sub_254EB3FC4();
  v22 = sub_254F290B0();
  v1[28] = v22;
  sub_254EB2CAC(v22);
  v1[29] = v23;
  v25 = *(v24 + 64);
  v1[30] = sub_254EB3FC4();
  v26 = sub_254F29140();
  v1[31] = v26;
  sub_254EB2CAC(v26);
  v1[32] = v27;
  v29 = *(v28 + 64);
  v1[33] = sub_254EB3C44();
  v1[34] = swift_task_alloc();
  v30 = sub_254F29170();
  v1[35] = v30;
  sub_254EB2CAC(v30);
  v1[36] = v31;
  v33 = *(v32 + 64);
  v1[37] = sub_254EB3C44();
  v1[38] = swift_task_alloc();
  v34 = sub_254F291E0();
  v1[39] = v34;
  sub_254EB2CAC(v34);
  v1[40] = v35;
  v37 = *(v36 + 64);
  v1[41] = sub_254EB3C44();
  v1[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EF8840, 0, 0);
}

uint64_t sub_254EF8840()
{
  v40 = v0;
  v1 = v0[42];
  sub_254F284E0();
  v2 = sub_254F291D0();
  v3 = sub_254F296F0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_254EC2D74(0xD00000000000001CLL, 0x8000000254F2E350, &v39);
    _os_log_impl(&dword_254EAE000, v2, v3, "%s fetching UI elements...", v8, 0xCu);
    sub_254EB2BBC(v9);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  (*(v7 + 8))(v5, v6);
  v11 = v0[37];
  v10 = v0[38];
  v12 = v0[35];
  v13 = v0[36];
  v14 = v0[34];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v38 = *(v13 + 8);
  v38(v11, v12);
  v15 = sub_254F29160();
  v16 = sub_254F297A0();
  if (sub_254F29800())
  {
    v17 = v0[34];
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v16, v19, "UIContext.retrieveUIElements", "", v18, 2u);
    sub_254EB3C04();
  }

  v21 = v0[34];
  v20 = v0[35];
  v22 = v0[32];
  v23 = v0[33];
  v25 = v0[30];
  v24 = v0[31];
  v36 = v0[38];
  v37 = v0[24];
  v26 = v0[10];

  (*(v22 + 16))(v23, v21, v24);
  v27 = sub_254F291B0();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v0[43] = sub_254F291A0();
  (*(v22 + 8))(v21, v24);
  v38(v36, v20);
  sub_254F290A0();
  sub_254EC3B58();
  sub_254F29110();
  sub_254EC4434(v37);
  v30 = *(MEMORY[0x277D74980] + 4);
  v31 = swift_task_alloc();
  v0[44] = v31;
  *v31 = v0;
  v31[1] = sub_254EF8B64;
  v32 = v0[30];
  v33 = v0[27];
  v34 = v0[24];

  return MEMORY[0x2821DCB08](v33, v34, v32);
}

uint64_t sub_254EF8B64()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_254EF8CBC, 0, 0);
}

uint64_t sub_254EF8CBC()
{
  v93 = v0;
  *(v0 + 72) = MEMORY[0x277D84F90];
  v1 = (v0 + 16);
  v2 = (v0 + 56);
  v3 = *(v0 + 216);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v90 = (v0 + 72);
  v7 = *(v0 + 120);
  sub_254F28F00();
  v8 = sub_254F290C0();
  v69 = *(v5 + 8);
  result = v69(v4, v6);
  v10 = 0;
  v12 = v8 + 56;
  v11 = *(v8 + 56);
  v86 = v8;
  v13 = -1;
  v14 = -1 << *(v8 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v11;
  v16 = (63 - v14) >> 6;
  v74 = v8 + 56;
  v77 = v7;
  v70 = (v7 + 8);
  v72 = v16;
  if ((v13 & v11) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      do
      {
LABEL_8:
        v19 = *(v0 + 128);
        v18 = *(v0 + 136);
        v20 = *(v0 + 112);
        (*(v77 + 16))(v18, *(v86 + 48) + *(v77 + 72) * (__clz(__rbit64(v15)) | (v10 << 6)), v20);
        (*(v77 + 32))(v19, v18, v20);
        sub_254F27F30();
        if (v21)
        {
          v22 = *(v0 + 216);
          v23 = *(v0 + 160);
          v82 = *(v0 + 144);
          v24 = *(v0 + 128);

          sub_254F28F00();
          v25 = sub_254EF4FB4();
          v27 = v26;
          v28 = sub_254F290D0();
          v29 = swift_task_alloc();
          v29[2] = v24;
          v29[3] = v25;
          v29[4] = v27;
          v30 = sub_254EF7C00(sub_254EFA18C, v29, v28);

          v69(v23, v82);
          v31 = v30;
          v2 = (v0 + 56);
          sub_254EED960(v31);
        }

        v15 &= v15 - 1;
        result = (*v70)(*(v0 + 128), *(v0 + 112));
        v16 = v72;
        v12 = v74;
      }

      while (v15);
    }
  }

  v32 = *(v0 + 216);

  v33 = *(v0 + 72);
  v75 = *(v33 + 16);
  v34 = sub_254F28F10();
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v0 + 96);
    v38 = *(v36 + 16);
    v37 = v36 + 16;
    v39 = v34 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v83 = *(v37 + 56);
    v87 = v38;
    do
    {
      v40 = *(v0 + 104);
      v41 = *(v0 + 88);
      v87(v40, v39, v41);
      *v1 = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = 1;
      *v2 = 0;
      v2[1] = 0;
      v42 = swift_task_alloc();
      v42[2] = v1;
      v42[3] = v2;
      v42[4] = v90;
      sub_254F27DB0();

      (*(v37 - 8))(v40, v41);
      v43 = *(v0 + 64);

      v39 += v83;
      --v35;
    }

    while (v35);

    v33 = *v90;
  }

  else
  {
  }

  v44 = *(v0 + 328);
  v45 = *(v33 + 16);

  sub_254F284E0();
  v46 = sub_254F291D0();
  v47 = sub_254F296F0();
  v48 = os_log_type_enabled(v46, v47);
  v50 = *(v0 + 320);
  v49 = *(v0 + 328);
  v51 = v33;
  v52 = *(v0 + 232);
  v53 = *(v0 + 240);
  v54 = *(v0 + 224);
  v84 = v49;
  v88 = *(v0 + 216);
  v55 = *(v0 + 208);
  v78 = *(v0 + 312);
  v80 = *(v0 + 200);
  v91 = v51;
  if (v48)
  {
    v71 = *(v0 + 240);
    v56 = v45 - v75;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v92 = v58;
    *v57 = 136315650;
    *(v57 + 4) = sub_254EC2D74(0xD00000000000001CLL, 0x8000000254F2E350, &v92);
    *(v57 + 12) = 2050;
    *(v57 + 14) = v75;
    *(v57 + 22) = 2050;
    *(v57 + 24) = v56;
    _os_log_impl(&dword_254EAE000, v46, v47, "%s %{public}ld commands, %{public}ld elements", v57, 0x20u);
    sub_254EB2BBC(v58);
    sub_254EB3C04();
    sub_254EB3C04();

    (*(v50 + 8))(v84, v78);
    (*(v55 + 8))(v88, v80);
    (*(v52 + 8))(v71, v54);
  }

  else
  {

    (*(v50 + 8))(v84, v78);
    (*(v55 + 8))(v88, v80);
    (*(v52 + 8))(v53, v54);
  }

  v60 = *(v0 + 336);
  v59 = *(v0 + 344);
  v61 = *(v0 + 328);
  v62 = *(v0 + 296);
  v63 = *(v0 + 304);
  v64 = *(v0 + 264);
  v65 = *(v0 + 272);
  v66 = *(v0 + 240);
  v67 = *(v0 + 216);
  v73 = *(v0 + 192);
  v76 = *(v0 + 168);
  v79 = *(v0 + 160);
  v81 = *(v0 + 136);
  v85 = *(v0 + 128);
  v89 = *(v0 + 104);
  sub_254EF92F8("UIContext.retrieveUIElements", 28, 2);

  v68 = *(v0 + 8);

  return v68(v91);
}

uint64_t sub_254EF92F8(const char *a1, uint64_t a2, int a3)
{
  v29 = a3;
  v30 = a1;
  v3 = sub_254F29180();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  sub_254F29190();
  v26 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  v25 = v12;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_254F291C0();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v6, v28) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v6, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
      v12 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EF963C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v75 = a5;
  v77 = a4;
  v69 = a2;
  v6 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v67 - v8;
  v9 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v67 - v11;
  v12 = sub_254F28EE0();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v67 - v16;
  v17 = sub_254F27E10();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v76 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_254F27E80();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_254F27E90();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F27EA0();
  v31 = (*(v27 + 88))(v30, v26);
  if (v31 == *MEMORY[0x277D74660])
  {
    sub_254F27CB0();
    *a3 = v32;
    a3[1] = v33;
    a3[2] = v34;
    a3[3] = v35;
    *(a3 + 32) = 0;
    return (*(v27 + 8))(v30, v26);
  }

  if (v31 == *MEMORY[0x277D74678])
  {
    (*(v27 + 96))(v30, v26);
    (*(v22 + 32))(v25, v30, v21);
    v37 = sub_254F27E40();
    v39 = v38;
    (*(v22 + 8))(v25, v21);
    v40 = v77;
    v41 = v77[1];
    *v77 = v37;
    v40[1] = v39;
  }

  else
  {
    if (v31 != *MEMORY[0x277D74650])
    {
      return (*(v27 + 8))(v30, v26);
    }

    (*(v27 + 96))(v30, v26);
    v42 = v18;
    v43 = *(v18 + 32);
    v44 = v76;
    v43(v76, v30, v17);
    if (a3[4])
    {
      return (*(v42 + 8))(v44, v17);
    }

    v45 = v77[1];
    if (!v45)
    {
      return (*(v42 + 8))(v44, v17);
    }

    else
    {
      v47 = a3[2];
      v46 = a3[3];
      v49 = *a3;
      v48 = a3[1];
      v67 = *v77;
      v77 = v45;

      sub_254F27CB0();
      sub_254F27E00();
      v50 = v71;
      sub_254F287B0();
      v51 = *MEMORY[0x277D1D350];
      v52 = sub_254F287E0();
      (*(*(v52 - 8) + 104))(v50, v51, v52);
      sub_254EB2F04(v50, 0, 1, v52);
      v53 = v68;
      sub_254F27D40();
      v54 = sub_254F27F50();
      if (sub_254EB2F2C(v53, 1, v54) == 1)
      {
        sub_254EB300C(v53, &qword_27F75F2E8, &qword_254F2C430);
      }

      else
      {
        sub_254EF4FB4();
        (*(*(v54 - 8) + 8))(v53, v54);
      }

      sub_254EF1940();
      v55 = sub_254F27D10();
      v56 = sub_254F0B968(0x72616D6972507369, 0xE900000000000079, v55);
      v58 = v57;

      if (v58)
      {
        if (v56 != 1702195828 || v58 != 0xE400000000000000)
        {
          sub_254F29B10();
        }
      }

      sub_254F27D20();
      v60 = v70;
      sub_254F28EB0();
      v62 = v72;
      v61 = v73;
      v63 = v74;
      (*(v73 + 16))(v72, v60, v74);
      v64 = v75;
      sub_254F16C00();
      v65 = *(*v64 + 16);
      sub_254F16CA8(v65);
      (*(v61 + 8))(v60, v63);
      (*(v42 + 8))(v76, v17);
      v66 = *v64;
      *(v66 + 16) = v65 + 1;
      return (*(v61 + 32))(v66 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v65, v62, v63);
    }
  }
}

uint64_t sub_254EF9DB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v44 = a1;
  v6 = sub_254EC8BC0(&qword_27F75F310, &unk_254F2C4D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v36 - v8;
  v10 = sub_254F27C30();
  v39 = *(v10 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_254F287D0();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  MEMORY[0x28223BE20](v14);
  v41 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254F27C70();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    goto LABEL_7;
  }

  v21 = sub_254F27C50();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
LABEL_7:
    v25 = sub_254F27C70();
    v36[0] = v26;
    v36[1] = v25;
    sub_254F27C50();
    v38 = a2;
    sub_254F27C40();
    sub_254EFA1B8();
    sub_254F29AF0();
    v37 = a4;
    (*(v39 + 8))(v13, v10);
    sub_254F27C60();
    v27 = v41;
    sub_254F287C0();
    v29 = v42;
    v28 = v43;
    (*(v42 + 16))(v9, v27, v43);
    v30 = *MEMORY[0x277D1D358];
    v31 = sub_254F287E0();
    (*(*(v31 - 8) + 104))(v9, v30, v31);
    sub_254EB2F04(v9, 0, 1, v31);
    sub_254F27F30();

    v32 = v37;
    sub_254F28EB0();
    (*(v29 + 8))(v27, v28);
    v33 = sub_254F28EE0();
    return sub_254EB2F04(v32, 0, 1, v33);
  }

  else
  {
    v35 = sub_254F28EE0();
    return sub_254EB2F04(a4, 1, 1, v35);
  }
}

unint64_t sub_254EFA1B8()
{
  result = qword_27F75F398;
  if (!qword_27F75F398)
  {
    sub_254F27C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F398);
  }

  return result;
}

uint64_t sub_254EFA210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254F27F50();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254EB2F04(a2, v7, 1, v6);
}

uint64_t sub_254EFA2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v6 = v5;
  if (v4)
  {
    sub_254F07FAC(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_27F75ED80, &qword_254F2AF68);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_254EB2F04(a2, v7, 1, v6);
}

uint64_t sub_254EFA378(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v59 = sub_254F286E0();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254F28C80();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = (&v54 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v54 - v13);
  MEMORY[0x28223BE20](v12);
  v77 = &v54 - v16;
  v17 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a1 + 56);
  v21 = (v18 + 63) >> 6;
  v22 = v15 + 16;
  v71 = v15 + 88;
  v70 = *MEMORY[0x277D1D428];
  v76 = (v15 + 8);
  v63 = *MEMORY[0x277D1D438];
  v60 = *MEMORY[0x277D1D420];
  v58 = v3;
  v57 = v3 + 32;
  v74 = v15;
  v75 = a1;
  v65 = (v15 + 96);

  v24 = 0;
  v72 = v22;
  v73 = v14;
  v68 = v21;
  for (i = a1 + 56; v20; v14 = v73)
  {
LABEL_8:
    v26 = v74;
    v27 = *(v74 + 16);
    v28 = v77;
    v27(v77, *(v75 + 48) + *(v74 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v6);
    v27(v14, v28, v6);
    v29 = *(v26 + 88);
    v30 = v29(v14, v6);
    v79 = v76 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v30 == v70)
    {
      v31 = v76;
      (*v65)(v14, v6);
      v32 = *v14;
      v33 = sub_254F28FF0();
      sub_254EFB234(v32, v33);
      sub_254F29000();
      v34 = *v31;
      v35 = v28;
    }

    else
    {
      v66 = *v76;
      v66(v14, v6);
      v36 = v64;
      v27(v64, v28, v6);
      v37 = v29(v36, v6);
      if (v37 == v63)
      {
        (*v65)(v36, v6);
        v38 = *v36;
        v39 = sub_254F29050();
        sub_254EEDABC(v38);
        v39(v78, 0);
        v21 = v68;
        v17 = i;
        v34 = v66;
        v35 = v77;
        goto LABEL_13;
      }

      v40 = v36;
      v41 = v66;
      v66(v40, v6);
      v42 = v61;
      v27(v61, v77, v6);
      v43 = v29(v42, v6);
      v41(v42, v6);
      v34 = v41;
      v35 = v77;
      if (v43 == v60)
      {
        sub_254F286B0();
        v44 = sub_254F29050();
        v46 = v45;
        v47 = *v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v46;
        *v46 = v47;
        v21 = v68;
        v17 = i;
        v56 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = *(v47 + 16);
          sub_254EF0E10();
          v47 = v52;
          *v55 = v52;
        }

        v49 = *(v47 + 16);
        v50 = v49 + 1;
        if (v49 >= *(v47 + 24) >> 1)
        {
          v54 = v49 + 1;
          sub_254EF0E10();
          v50 = v54;
          v47 = v53;
          *v55 = v53;
        }

        *(v47 + 16) = v50;
        (*(v58 + 32))(v47 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49, v62, v59);
        v56(v78, 0);
        goto LABEL_13;
      }
    }

    v21 = v68;
    v17 = i;
LABEL_13:
    v20 &= v20 - 1;
    result = v34(v35, v6);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
    }

    v20 = *(v17 + 8 * v25);
    ++v24;
    if (v20)
    {
      v24 = v25;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_254EFA974(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v9 = v5;
  v12 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  sub_254EB2D90(v12);
  v14 = *(v13 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  sub_254EB3CD0(v18);
  v20 = *(v19 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v21);
  v23 = &v34 - v22;
  v24 = sub_254EB81DC();
  if (sub_254EB2F2C(v24, v25, v26) == 1)
  {
    sub_254EB306C(a1, &qword_27F75F428, &qword_254F2C6B0);
    a5(a2);
    v27 = a4(0);
    sub_254EB2D80(v27);
    (*(v28 + 8))(a2);
    return sub_254EB306C(v17, &qword_27F75F428, &qword_254F2C6B0);
  }

  else
  {
    sub_254F07FF4(a1, v23, &qword_27F75F430, &qword_254F2C6B8);
    v30 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v9;
    a3(v23, a2, isUniquelyReferenced_nonNull_native);
    *v9 = v35;
    v32 = a4(0);
    sub_254EB2D80(v32);
    return (*(v33 + 8))(a2);
  }
}

uint64_t sub_254EFAB5C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v6 = sub_254F291E0();
  v3[4] = v6;
  sub_254EB2CAC(v6);
  v3[5] = v7;
  v9 = *(v8 + 64);
  v3[6] = sub_254EB3FC4();
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_254EFAC50;

  return sub_254EFD0F0(a1, a2);
}

uint64_t sub_254EFAC50()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;

  v7 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EFAD3C()
{
  sub_254F29260();
  v1 = sub_254F29250();
  v0[10] = v1;
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_254EFAE10;
  v3 = v0[9];
  v4 = v0[2];
  v5 = v0[3];

  return sub_254EFD328(v3, v1, v4);
}

uint64_t sub_254EFAE10()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  v4 = v3[11];
  v5 = v3[10];
  v6 = v3[9];
  v7 = *v0;
  sub_254EB2DB4();
  *v8 = v7;
  *(v10 + 96) = v9;

  v11 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_254EFAF34()
{
  v19 = v0;
  v1 = v0[12];
  v2 = v0[6];
  v18 = v0[8];
  sub_254EED908(v1);
  v3 = v18;
  sub_254F284E0();

  v4 = sub_254F291D0();
  v5 = sub_254F296E0();
  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_254EC2D74(0xD000000000000028, 0x8000000254F2E390, &v18);
    *(v10 + 12) = 2048;
    *(v10 + 14) = *(v3 + 16);

    _os_log_impl(&dword_254EAE000, v4, v5, "%s found %ld on screen contents", v10, 0x16u);
    sub_254EB2BBC(v11);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  else
  {
  }

  v12 = *(v8 + 8);
  v13 = sub_254EB3AEC();
  v14(v13);
  v15 = v0[6];

  v16 = v0[1];

  return v16(v3);
}

void sub_254EFB0DC()
{
  sub_254EC1A1C();
  v1 = v0;
  v3 = v2;
  v4 = sub_254F28CE0();
  v5 = sub_254EB2CBC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v23 - v13;
  v23[1] = v1;
  v15 = *(v3 + 16);
  if (v15)
  {
    v18 = *(v7 + 16);
    v16 = v7 + 16;
    v17 = v18;
    v19 = *(v16 + 64);
    sub_254EB3A30();
    v23[0] = v3;
    v21 = v3 + v20;
    v22 = *(v16 + 56);
    do
    {
      v17(v12, v21, v4);
      sub_254F0FAB8();
      (*(v16 - 8))(v14, v4);
      v21 += v22;
      --v15;
    }

    while (v15);
  }

  sub_254EB4078();
}

uint64_t sub_254EFB234(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F27C10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - v11;
  result = MEMORY[0x28223BE20](v10);
  v15 = v26 - v14;
  v16 = 0;
  v27 = a1;
  v28 = a2;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v5 + 32;
  v26[3] = v5 + 16;
  v26[1] = v5 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v5 + 16))(v15, *(v27 + 48) + *(v5 + 72) * (v25 | (v24 << 6)), v4);
      (*(v5 + 32))(v9, v15, v4);
      sub_254F0FC24();
      result = (*(v5 + 8))(v12, v4);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_254EFB450()
{
  sub_254EC1A1C();
  v1 = v0;
  v94 = v2;
  v4 = v3;
  v96 = v5;
  v6 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  sub_254EB2D90(v6);
  v8 = *(v7 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v9);
  v11 = &v90 - v10;
  v12 = sub_254F29330();
  v13 = sub_254EB2CBC(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_254EB3D38();
  v92 = v18;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v19);
  sub_254EB59E4();
  v93 = v20;
  sub_254EB7FC4();
  v95 = sub_254F291E0();
  v21 = sub_254EB2CBC(v95);
  v23 = v22;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v90 - v30;
  MEMORY[0x28223BE20](v29);
  sub_254EB59E4();
  v91 = v32;
  v33 = sub_254EC8BC0(&qword_27F75F440, &qword_254F2C6C8);
  sub_254EB2D90(v33);
  v35 = *(v34 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v36);
  v38 = (&v90 - v37);
  sub_254F29720();
  v39 = sub_254F27720();
  if (sub_254EB2F2C(v38, 1, v39) == 1)
  {
    sub_254EB306C(v38, &qword_27F75F440, &qword_254F2C6C8);
  }

  else
  {
    v90 = v15;
    v40 = v12;
    v41 = v11;
    v42 = *(v39 - 8);
    if ((*(v42 + 88))(v38, v39) == *MEMORY[0x277CBA3C0])
    {
      (*(v42 + 96))(v38, v39);
      v43 = *v38;
      v44 = v38[1];
      v45 = v38[2];
      v46 = v38[3];
      v47 = sub_254EC8BC0(&qword_27F75F2E0, &qword_254F2C428);
      sub_254EB306C(v38 + *(v47 + 64), &qword_27F75F2D0, &qword_254F2C418);

      v48 = v94;
      v11 = v41;
      v49 = v40;
      v15 = v90;
LABEL_25:
      v86 = swift_allocObject();
      v86[2] = v48;
      v86[3] = v1;
      v86[4] = v43;
      v86[5] = v44;
      v87 = v93;
      *v93 = v86;
      (*(v15 + 104))(v87, *MEMORY[0x277D72D28], v49);
      (*(v15 + 16))(v92, v87, v49);
      v88 = sub_254F29380();
      sub_254EB2F04(v11, 1, 1, v88);
      sub_254F29270();
      (*(v15 + 8))(v87, v49);
      v69 = 0;
      goto LABEL_26;
    }

    (*(v42 + 8))(v38, v39);
    v11 = v41;
    v12 = v40;
    v15 = v90;
  }

  v50 = sub_254F07A04(v4);
  if (!v50)
  {
    v100 = 0u;
    v101 = 0u;
    goto LABEL_14;
  }

  v51 = v50;
  v97 = 0xD000000000000016;
  v98 = 0x8000000254F2E3F0;
  sub_254F298E0();
  sub_254F0B9C0(v99, v51, &v100);

  sub_254EF79E0(v99);
  if (!*(&v101 + 1))
  {
LABEL_14:
    sub_254EB306C(&v100, &qword_27F75EE68, &qword_254F2B4C0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    sub_254F284E0();
    v58 = sub_254F291D0();
    v59 = sub_254F296E0();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v95;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v99[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      _os_log_impl(&dword_254EAE000, v58, v59, "%s there was no entity identifier found in the NSUserActivity", v62, 0xCu);
      sub_254EB2BBC(v63);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    v64 = *(v23 + 8);
    v64(v31, v61);

    sub_254F284E0();

    v65 = sub_254F291D0();
    v66 = sub_254F296E0();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v67 = 136315906;
      *(v67 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_254EBBB18();
      *(v67 + 22) = 2080;
      *(v67 + 24) = sub_254EBBB18();
      *(v67 + 32) = 2080;
      v68 = sub_254EC2D74(v94, v1, v99);

      *(v67 + 34) = v68;
      _os_log_impl(&dword_254EAE000, v65, v66, "%s unable to get entityId (%s), and/or entityType (%s) for (%s) from userInfo[_NSAppEntityIdentifier]", v67, 0x2Au);
      swift_arrayDestroy();
      sub_254EB3C04();
      sub_254EB3C04();
    }

    else
    {
    }

    v64(v28, v61);
    goto LABEL_21;
  }

  sub_254EF7A34();
  v52 = sub_254F29850();

  if (v52[2] <= 2uLL)
  {

    v53 = v91;
    sub_254F284E0();
    v54 = sub_254F291D0();
    v55 = sub_254F296E0();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v99[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_254EB6408("entityIdentifierValue(from:bundleId:)");
      _os_log_impl(&dword_254EAE000, v54, v55, "%s userInfo[_NSAppEntityIdentifier] contains malformatted String", v56, 0xCu);
      sub_254EB2BBC(v57);
      sub_254EB3C04();
      sub_254EB3C04();
    }

    (*(v23 + 8))(v53, v95);
LABEL_21:
    v69 = 1;
LABEL_26:
    v89 = sub_254F29290();
    sub_254EB2F04(v96, v69, 1, v89);
    sub_254EB4078();
    return;
  }

  v95 = v12;
  v70 = v52[4];
  v71 = v52[5];
  v72 = v52[6];
  v73 = v52[7];

  sub_254EB4B64();
  sub_254EBEDA8();
  v48 = MEMORY[0x259C2DC20]();
  v1 = v74;

  if (v52[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v75 = v52[8];
    v76 = v52[9];
    v77 = v52[10];
    v78 = v52[11];

    v79 = sub_254EB4B64();
    v94 = MEMORY[0x259C2DC20](v79);
    v91 = v80;

    if (v52[2] >= 3uLL)
    {
      v81 = v52[12];
      v82 = v52[13];
      v83 = v52[14];
      v84 = v52[15];

      v85 = sub_254EB80DC();
      MEMORY[0x259C2DC20](v85);

      v43 = v94;
      v49 = v95;
      v44 = v91;
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_254EFBD20()
{
  sub_254EB3BD8();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_254F29100();
  v1[5] = v3;
  sub_254EB2CAC(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = sub_254EB3FC4();
  v7 = sub_254F28F20();
  v1[8] = v7;
  sub_254EB2CAC(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = sub_254EB3FC4();
  v11 = sub_254F28F60();
  v1[11] = v11;
  sub_254EB2CAC(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = sub_254EB3FC4();
  v15 = sub_254F28010();
  v1[14] = v15;
  sub_254EB2CAC(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = sub_254EB3FC4();
  v19 = sub_254F27FA0();
  v1[17] = v19;
  sub_254EB2CAC(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = sub_254EB3FC4();
  v23 = sub_254EC8BC0(&qword_27F75F2F8, &qword_254F2C4B0);
  sub_254EB2D90(v23);
  v25 = *(v24 + 64);
  v1[20] = sub_254EB3FC4();
  v26 = sub_254F27FC0();
  v1[21] = v26;
  sub_254EB2CAC(v26);
  v1[22] = v27;
  v29 = *(v28 + 64);
  v1[23] = sub_254EB3FC4();
  v30 = sub_254F28D50();
  v1[24] = v30;
  sub_254EB2CAC(v30);
  v1[25] = v31;
  v33 = *(v32 + 64);
  v1[26] = sub_254EB3C44();
  v1[27] = swift_task_alloc();
  v34 = sub_254F27FD0();
  v1[28] = v34;
  sub_254EB2CAC(v34);
  v1[29] = v35;
  v37 = *(v36 + 64);
  v1[30] = sub_254EB3C44();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v38 = sub_254F290B0();
  v1[33] = v38;
  sub_254EB2CAC(v38);
  v1[34] = v39;
  v41 = *(v40 + 64);
  v1[35] = sub_254EB3FC4();
  v42 = sub_254F29140();
  v1[36] = v42;
  sub_254EB2CAC(v42);
  v1[37] = v43;
  v45 = *(v44 + 64);
  v1[38] = sub_254EB3C44();
  v1[39] = swift_task_alloc();
  v46 = sub_254F29170();
  v1[40] = v46;
  sub_254EB2CAC(v46);
  v1[41] = v47;
  v49 = *(v48 + 64);
  v1[42] = sub_254EB3C44();
  v1[43] = swift_task_alloc();
  v50 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v50, v51, v52);
}

uint64_t sub_254EFC124()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[39];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v83 = *(v4 + 8);
  v83(v2, v3);
  v6 = sub_254F29160();
  v7 = sub_254F297A0();
  if (sub_254F29800())
  {
    v8 = v0[39];
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v6, v7, v10, "UIContext.onScreenContent", "", v9, 2u);
    sub_254EB3C04();
  }

  v11 = v0[39];
  v79 = v0[40];
  v81 = v0[43];
  v13 = v0[37];
  v12 = v0[38];
  v14 = v0[36];
  v71 = v0[35];
  v72 = v0[32];
  v73 = v0[31];
  v74 = v0[30];
  v87 = v0[29];
  v15 = v0[27];
  v16 = v0[26];
  v85 = v0[28];
  v86 = v0[25];
  v17 = v0[24];
  v75 = v0[22];
  v76 = v0[23];
  v77 = v0[21];
  v18 = v0[3];

  (*(v13 + 16))(v12, v11, v14);
  v19 = sub_254F291B0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v78 = 1;
  sub_254EB81DC();
  v0[44] = sub_254F291A0();
  (*(v13 + 8))(v11, v14);
  v83(v81, v79);
  sub_254F290A0();
  sub_254F28DE0();
  sub_254F28D00();
  sub_254EC1B80(&unk_281427480, MEMORY[0x277D1D4E0]);
  sub_254EB3D4C();
  LOBYTE(v12) = sub_254F29870();
  v22 = *(v86 + 8);
  v22(v16, v17);
  v23 = sub_254EB3AEC();
  (v22)(v23);
  v82 = *MEMORY[0x277D74840];
  v84 = *MEMORY[0x277D74828];
  if (v12)
  {
    v24 = *MEMORY[0x277D74840];
  }

  else
  {
    v24 = *MEMORY[0x277D74828];
  }

  v80 = *(v87 + 104);
  v80(v72, v24, v85);
  sub_254F28FA0();
  sub_254F28DE0();
  sub_254F28D00();
  sub_254EB3D4C();
  sub_254F29870();
  v25 = sub_254EB7E6C();
  (v22)(v25);
  v26 = sub_254EB3AEC();
  (v22)(v26);
  if (v18)
  {
    v27 = v82;
  }

  else
  {
    v27 = v84;
  }

  v80(v73, v27, v85);
  sub_254F28FC0();
  sub_254F28DE0();
  sub_254F28D40();
  sub_254EB3D4C();
  sub_254F29870();
  v28 = sub_254EB7E6C();
  (v22)(v28);
  v29 = sub_254EB3AEC();
  (v22)(v29);
  if (v18)
  {
    v30 = v82;
  }

  else
  {
    v30 = v84;
  }

  v80(v74, v30, v85);
  sub_254F29010();
  sub_254F28DE0();
  sub_254F28D30();
  sub_254EB3D4C();
  sub_254F29870();
  v31 = sub_254EB7E6C();
  (v22)(v31);
  v32 = sub_254EB3AEC();
  (v22)(v32);
  v33 = MEMORY[0x277D747E8];
  if ((v18 & 1) == 0)
  {
    v33 = MEMORY[0x277D747F8];
  }

  (*(v75 + 104))(v76, *v33, v77);
  sub_254F28F90();
  sub_254F28DE0();
  sub_254F28D30();
  sub_254EB3D4C();
  sub_254F29870();
  v34 = sub_254EB7E6C();
  (v22)(v34);
  v35 = sub_254EB3AEC();
  (v22)(v35);
  if (v18)
  {
    v36 = v0[20];
    (*(v0[18] + 104))(v0[19], *MEMORY[0x277D747A0], v0[17]);
    sub_254F27F90();
    v78 = 0;
  }

  v37 = v0[35];
  v39 = v0[26];
  v38 = v0[27];
  v40 = v0[24];
  v41 = v0[20];
  v42 = v0[3];
  v43 = sub_254F27FB0();
  sub_254EB2F04(v41, v78, 1, v43);
  sub_254F28F30();
  sub_254F28DE0();
  sub_254F28D10();
  LOBYTE(v37) = sub_254F080EC();
  v44 = sub_254EB80DC();
  (v22)(v44);
  v22(v38, v40);
  if (v37)
  {
    v45 = (v0[15] + 104);
    v46 = MEMORY[0x277D748C0];
  }

  else
  {
    v48 = v0[26];
    v47 = v0[27];
    v49 = v0[24];
    v50 = v0[15];
    v51 = v0[3];
    sub_254F28DE0();
    sub_254F28D20();
    LOBYTE(v51) = sub_254F080EC();
    v52 = sub_254EB80DC();
    (v22)(v52);
    v22(v47, v49);
    v45 = (v50 + 104);
    v46 = MEMORY[0x277D748E0];
    if (v51)
    {
      v46 = MEMORY[0x277D748C8];
    }
  }

  v53 = v0[35];
  v54 = v0[13];
  v55 = v0[11];
  v56 = v0[12];
  v57 = v0[6];
  v88 = v0[7];
  v58 = v0[5];
  v59 = v0[3];
  (*v45)(v0[16], *v46, v0[14]);
  sub_254F29080();
  sub_254F29000();
  v60 = sub_254F29060();
  v61 = MEMORY[0x259C2D4D0](v60);
  sub_254EFA378(v61, v53);

  sub_254EC8BC0(&qword_27F75F3B0, &qword_254F2C620);
  v62 = *(v56 + 72);
  v63 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_254F2AE00;
  sub_254F28F50();
  v0[2] = v64;
  sub_254EC1B80(&qword_281427468, MEMORY[0x277D74968]);
  sub_254EC8BC0(&qword_27F75F2F0, &qword_254F2C498);
  sub_254F05780();
  sub_254F298A0();
  sub_254F28FE0();
  sub_254F28DF0();
  sub_254F29090();
  sub_254F28DC0();
  sub_254F29020();
  sub_254F29110();
  (*(v57 + 104))(v88, *MEMORY[0x277D74998], v58);
  v65 = *(MEMORY[0x277D74980] + 4);
  v66 = swift_task_alloc();
  v0[45] = v66;
  *v66 = v0;
  v66[1] = sub_254EFC91C;
  v67 = v0[35];
  v68 = v0[10];
  v69 = v0[7];

  return MEMORY[0x2821DCB08](v68, v69, v67);
}

uint64_t sub_254EFC91C()
{
  sub_254EB4918();
  v2 = v1[45];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = *v0;
  sub_254EB2DB4();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);
  v8 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_254EFCA64()
{
  sub_254EB3BD8();
  v1 = v0[10];
  v2 = sub_254F28F10();
  v0[46] = v2;
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_254EFCB04;
  v4 = v0[3];
  v5 = v0[4];

  return sub_254EFAB5C(v2, v4);
}

uint64_t sub_254EFCB04()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB2DB4();
  *v2 = v1;
  v4 = *(v3 + 376);
  v5 = *(v3 + 368);
  v6 = *v0;
  sub_254EB2DB4();
  *v7 = v6;
  *(v9 + 384) = v8;

  v10 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_254EFCC0C()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[34];
  v7 = v0[35];
  v8 = v0[33];
  v12 = v0[32];
  v13 = v0[31];
  v14 = v0[30];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[16];
  v21 = v0[13];
  v22 = v0[7];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v7, v8);
  sub_254EFCDAC("UIContext.onScreenContent", 25, 2);

  v9 = v0[1];
  v10 = v0[48];

  return v9(v10);
}

uint64_t sub_254EFCDAC(const char *a1, uint64_t a2, int a3)
{
  v29 = a3;
  v30 = a1;
  v3 = sub_254F29180();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254F29170();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  sub_254F29190();
  v26 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  v25 = v12;
  if ((v29 & 1) == 0)
  {
    if (v30)
    {
LABEL_9:

      sub_254F291C0();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v6, v28) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v6, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x259C2EB80](v22, -1, -1);
      v12 = v25;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v30 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EFD0F0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_254EB3CA0();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EFD11C()
{
  v23 = v0;
  v1 = 0;
  v0[2] = MEMORY[0x277D84F90];
  v2 = MEMORY[0x277D84F98];
  v0[3] = MEMORY[0x277D84F98];
  v0[4] = v2;
  v0[5] = v2;
  v3 = *(v0[6] + 16);
  while (v3 != v1)
  {
    v4 = v0[6];
    v5 = sub_254F27F10();
    sub_254EB2CAC(v5);
    v6 = v1 + 1;
    v9 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v1;
    v10 = swift_task_alloc();
    v10[2] = v0 + 2;
    v10[3] = v0 + 4;
    v10[4] = v0 + 5;
    v10[5] = v0 + 3;
    sub_254F27DB0();

    v1 = v6;
  }

  v12 = v0[7];
  v11 = v0[8];
  v13 = sub_254F01998(v0[4], v0[5]);
  v14 = v0[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v0[3];
  sub_254F0750C(v13, sub_254F07490, 0, isUniquelyReferenced_nonNull_native, &v22);
  v16 = v22;
  if (sub_254F28DD0())
  {
    v17 = v0[8];
    v18 = sub_254F02DE8(v16);
  }

  else
  {

    v18 = v16;
  }

  v19 = v0[2];

  v20 = v0[1];

  return v20(v19, v18);
}

uint64_t sub_254EFD328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3[3] = a1;
  v3[4] = a3;
  v4 = *(*(sub_254EC8BC0(&qword_27F75F3B8, &qword_254F2C640) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_254F289A0();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = sub_254F288E0();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = *(*(sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v12 = sub_254F27F50();
  v3[15] = v12;
  v13 = *(v12 - 8);
  v3[16] = v13;
  v14 = *(v13 + 64) + 15;
  v3[17] = swift_task_alloc();
  v15 = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  v3[18] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_254EFD5B4, 0, 0);
}

uint64_t sub_254EFD5B4()
{
  v213 = *MEMORY[0x277D85DE8];
  v210 = v0[18];
  v1 = v0[16];
  v2 = v0[3];
  v4 = *(v2 + 64);
  v3 = v2 + 64;
  v5 = *(v0[3] + 32);
  sub_254EB573C();
  v8 = v7 & v6;
  v188 = (v10 + 32);
  v189 = v10 + 16;
  v190 = v10;
  v191 = (v10 + 8);
  v186 = (63 - v9) >> 6;
  v187 = (v0[11] + 8);
  v208 = v11;

  v12 = 0;
  v185 = MEMORY[0x277D84F90];
  v212 = v0;
  v206 = v3;
LABEL_2:
  if (v8)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v186)
    {
      v79 = v0[3];

      v80 = sub_254F0CB58(v185);
      v203 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
      v81 = *(v80 + 56);
      v82 = *(v80 + 32);
      sub_254EB573C();
      v85 = v84 & v83;
      v87 = (63 - v86) >> 6;

      v88 = 0;
      v89 = MEMORY[0x277D84F90];
      while (v85)
      {
        v90 = v88;
LABEL_29:
        v91 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        v92 = (*(v80 + 48) + ((v90 << 10) | (16 * v91)));
        v93 = *v92;
        v94 = v92[1];

        v95 = sub_254F29420();
        v212[2] = 0;
        v96 = [v203 entitiesForBundleIdentifier:v95 error:v212 + 2];

        v97 = v212[2];
        if (v96)
        {
          sub_254EB48D8(0, &unk_2814260C8, 0x277D23818);
          v100 = sub_254F29560();
          v101 = v97;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = *(v89 + 16);
            sub_254EB4958();
            sub_254EF0354();
            v89 = v105;
          }

          v103 = *(v89 + 16);
          v102 = *(v89 + 24);
          if (v103 >= v102 >> 1)
          {
            sub_254EB5124(v102);
            sub_254EF0354();
            v89 = v106;
          }

          *(v89 + 16) = v103 + 1;
          *(v89 + 8 * v103 + 32) = v100;
          v88 = v90;
        }

        else
        {
          v98 = v97;
          v99 = sub_254F27870();

          swift_willThrow();

          v88 = v90;
        }
      }

      while (1)
      {
        v90 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_80;
        }

        if (v90 >= v87)
        {
          break;
        }

        v85 = *(v80 + 56 + 8 * v90);
        ++v88;
        if (v85)
        {
          goto LABEL_29;
        }
      }

      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = MEMORY[0x277D84F98];
      while (1)
      {
        if (!v108)
        {
          goto LABEL_41;
        }

LABEL_38:
        if (v108 >> 62)
        {
          v111 = sub_254F29AA0();
        }

        else
        {
          v111 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v107 == v111)
        {
LABEL_41:
          while (1)
          {
            v112 = *(v89 + 16);
            if (v109 == v112)
            {
              break;
            }

            if (v109 >= v112)
            {
              goto LABEL_82;
            }

            v113 = *(v89 + 8 * v109 + 32);

            v107 = 0;
            v108 = v113;
            ++v109;
            if (v113)
            {
              goto LABEL_38;
            }
          }

          v200 = v110;
          v135 = v212[7];
          v136 = v212[3];

          v137 = -1;
          v138 = -1 << *(v208 + 32);
          if (-v138 < 64)
          {
            v137 = ~(-1 << -v138);
          }

          v139 = v137 & *(v208 + 64);
          v140 = (63 - v138) >> 6;
          v192 = v135;
          v194 = (v135 + 32);

          v141 = 0;
          v196 = MEMORY[0x277D84F90];
LABEL_63:
          v142 = v206;
          if (!v139)
          {
            goto LABEL_65;
          }

          do
          {
            v143 = v141;
LABEL_68:
            v144 = v212[19];
            v145 = v212[5];
            v205 = v212[6];
            v146 = v212[4];
            v147 = __clz(__rbit64(v139));
            v139 &= v139 - 1;
            v148 = v147 | (v143 << 6);
            v149 = *(v208 + 48);
            v150 = sub_254F29290();
            sub_254EB3CD0(v150);
            (*(v151 + 16))(v144, v149 + *(v151 + 72) * v148);
            v152 = *(v208 + 56);
            v153 = sub_254F28910();
            sub_254EB3CD0(v153);
            v155 = v152 + *(v154 + 72) * v148;
            v156 = *(v210 + 48);
            (*(v154 + 16))(v144 + v156, v155);
            sub_254F03D80(v144, v144 + v156, v200, v146, v145);
            sub_254EB306C(v144, &qword_27F75F3C0, &qword_254F2C648);
            if (sub_254EB2F2C(v145, 1, v205) == 1)
            {
              sub_254EB306C(v212[5], &qword_27F75F3B8, &qword_254F2C640);
              v141 = v143;
              goto LABEL_63;
            }

            v157 = v212[8];
            v158 = *v194;
            (*v194)(v212[9], v212[5], v212[6]);
            v159 = sub_254EB4B64();
            v158(v159);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = *(v196 + 16);
              sub_254EB4958();
              sub_254EF028C();
              v196 = v169;
            }

            v142 = v206;
            v161 = *(v196 + 16);
            v160 = *(v196 + 24);
            if (v161 >= v160 >> 1)
            {
              sub_254EB5124(v160);
              sub_254EF028C();
              v196 = v170;
            }

            v162 = v212[8];
            v163 = v212[6];
            *(v196 + 16) = v161 + 1;
            v164 = *(v192 + 80);
            sub_254EB3A30();
            v158(v166 + v165 + *(v167 + 72) * v161);
            v141 = v143;
          }

          while (v139);
LABEL_65:
          while (1)
          {
            v143 = v141 + 1;
            if (__OFADD__(v141, 1))
            {
              goto LABEL_81;
            }

            if (v143 >= v140)
            {
              v172 = v212[21];
              v171 = v212[22];
              v173 = v212[20];
              v174 = v212[19];
              v175 = v212[17];
              v176 = v212[14];
              v177 = v212[13];
              v178 = v212[12];
              v207 = v212[9];
              v209 = v212[8];
              v211 = v212[5];
              v179 = v212[3];

              v180 = v212[1];
              v181 = *MEMORY[0x277D85DE8];

              return v180(v196);
            }

            v139 = *(v142 + 8 * v143);
            ++v141;
            if (v139)
            {
              goto LABEL_68;
            }
          }
        }

        if ((v108 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x259C2E0D0](v107, v108);
        }

        else
        {
          if ((v107 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          if (v107 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v114 = *(v108 + 8 * v107 + 32);
        }

        v115 = v114;
        v116 = __OFADD__(v107++, 1);
        if (v116)
        {
          goto LABEL_87;
        }

        v117 = v110;
        v118 = [v114 identifier];
        v119 = sub_254F29450();
        v121 = v120;

        v199 = v115;
        swift_isUniquelyReferenced_nonNull_native();
        sub_254F057E4(v119, v121);
        sub_254EB7FD0();
        if (__OFADD__(v124, v125))
        {
          goto LABEL_89;
        }

        v126 = v122;
        v127 = v123;
        sub_254EC8BC0(&qword_27F75F3C8, &qword_254F2C650);
        if (sub_254F29A50())
        {
          v128 = sub_254F057E4(v119, v121);
          if ((v127 & 1) != (v129 & 1))
          {
            goto LABEL_83;
          }

          v126 = v128;
          if (v127)
          {
LABEL_58:

            v110 = v117;
            v133 = v117[7];
            v134 = *(v133 + 8 * v126);
            *(v133 + 8 * v126) = v199;

            continue;
          }
        }

        else if (v127)
        {
          goto LABEL_58;
        }

        v110 = v117;
        v117[(v126 >> 6) + 8] |= 1 << v126;
        v130 = (v117[6] + 16 * v126);
        *v130 = v119;
        v130[1] = v121;
        *(v117[7] + 8 * v126) = v199;

        v131 = v117[2];
        v116 = __OFADD__(v131, 1);
        v132 = v131 + 1;
        if (v116)
        {
          goto LABEL_90;
        }

        v117[2] = v132;
      }
    }

    v8 = *(v3 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
LABEL_7:
      v14 = v0[21];
      v15 = v0[22];
      v16 = __clz(__rbit64(v8)) | (v12 << 6);
      v17 = *(v208 + 48);
      v18 = sub_254F29290();
      sub_254EB2CBC(v18);
      v201 = v20;
      v20[2](v15, v17 + *(v19 + 72) * v16, v18);
      v21 = *(v208 + 56);
      v22 = sub_254F28910();
      sub_254EB2CBC(v22);
      v24 = v23;
      (*(v23 + 16))(v15 + *(v210 + 48), v21 + *(v25 + 72) * v16, v22);
      sub_254F07FAC(v15, v14, &qword_27F75F3C0, &qword_254F2C648);
      v26 = *(v210 + 48);
      v27 = sub_254F28850();
      v30 = *(v24 + 8);
      v29 = v24 + 8;
      v28 = v30;
      v198 = v22;
      v30(v14 + v26, v22);
      v204 = v18;
      if (*(v27 + 16))
      {
        v31 = v0[14];
        v32 = v0[15];
        v33 = *(v190 + 80);
        sub_254EB3A30();
        (*(v34 + 16))();
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v8 &= v8 - 1;
      v37 = v0[14];
      v36 = v0[15];
      sub_254EB2F04(v37, v35, 1, v36);

      v38 = sub_254EB2F2C(v37, 1, v36);
      v40 = v0[21];
      v39 = v0[22];
      v41 = v0[14];
      v42 = v0[15];
      if (v38 == 1)
      {
        v197 = v0[15];
        v43 = v0[20];
        v193 = v0[13];
        v44 = v28;
        v45 = v212[12];
        v195 = v212[10];
        sub_254EB306C(v41, &qword_27F75F2E8, &qword_254F2C430);
        v46 = v40;
        v40 = v204;
        v202 = v201[1];
        v202(v46, v204);
        sub_254F07FAC(v39, v43, &qword_27F75F3C0, &qword_254F2C648);
        v47 = *(v210 + 48);
        sub_254F28900();
        v44(v43 + v47, v198);
        sub_254F28870();
        v0 = v212;
        (*v187)(v45, v195);
        v48 = sub_254EB2F2C(v193, 1, v197);
        v49 = v212[20];
        if (v48 == 1)
        {
          v50 = v212[13];
          v202(v212[20], v204);
          sub_254EB306C(v50, &qword_27F75F2E8, &qword_254F2C430);
          v3 = v206;
          goto LABEL_16;
        }

        v61 = v212[15];
        v62 = v212[13];
        v63 = sub_254F27F30();
        v71 = sub_254EC0D70(v63, v64, v65, v66, v67, v68, v69, v70, v184, v185, v186, v187, v188, v189, v190, v191);
        v72(v71);
        v202(v49, v204);
        v3 = v206;
        if (v29)
        {
          sub_254EB306C(v212[22], &qword_27F75F3C0, &qword_254F2C648);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = *(v185 + 16);
            sub_254EB4958();
            sub_254EEFF7C();
            v185 = v77;
          }

          v74 = *(v185 + 16);
          v73 = *(v185 + 24);
          if (v74 >= v73 >> 1)
          {
            sub_254EB5124(v73);
            sub_254EEFF7C();
            v185 = v78;
          }

          *(v185 + 16) = v74 + 1;
          v75 = v185 + 16 * v74;
          *(v75 + 32) = v40;
          *(v75 + 40) = v29;
          goto LABEL_2;
        }

LABEL_16:
        sub_254EB306C(v212[22], &qword_27F75F3C0, &qword_254F2C648);
      }

      else
      {
        (*v188)(v0[17], v41, v0[15]);
        (v201[1])(v40, v204);
        v51 = sub_254F27F30();
        v59 = sub_254EC0D70(v51, v52, v53, v54, v55, v56, v57, v58, v184, v185, v186, v187, v188, v189, v190, v191);
        v60(v59);
        sub_254EB306C(v39, &qword_27F75F3C0, &qword_254F2C648);
        v3 = v206;
        if (v29)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  v183 = *MEMORY[0x277D85DE8];

  return sub_254F29B50();
}

uint64_t sub_254EFE2DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v279 = a6;
  v276 = a5;
  v269 = a4;
  v302 = a3;
  v324 = a2;
  v7 = sub_254F27980();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v294 = &v259 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_254F27CA0();
  v271 = *(v272 - 8);
  v10 = *(v271 + 64);
  MEMORY[0x28223BE20](v272);
  v270 = &v259 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v267 = &v259 - v14;
  v265 = sub_254F27C00();
  v264 = *(v265 - 8);
  v15 = *(v264 + 64);
  MEMORY[0x28223BE20](v265);
  v263 = &v259 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_254EC8BC0(&qword_27F75EEA0, &qword_254F2B5C8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v320 = &v259 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v315 = &v259 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v260 = &v259 - v24;
  MEMORY[0x28223BE20](v23);
  v274 = &v259 - v25;
  v325 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  v26 = *(*(v325 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v325);
  v295 = &v259 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v293 = &v259 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v266 = &v259 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v307 = &v259 - v34;
  MEMORY[0x28223BE20](v33);
  v275 = &v259 - v35;
  v36 = sub_254EC8BC0(&qword_27F75F3D8, &qword_254F2C660);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v277 = &v259 - v38;
  v39 = sub_254EC8BC0(&qword_27F75F458, &qword_254F2C6D0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v291 = &v259 - v41;
  v290 = sub_254EC8BC0(&qword_27F75F460, &qword_254F2C6D8);
  v289 = *(v290 - 8);
  v42 = *(v289 + 64);
  MEMORY[0x28223BE20](v290);
  v288 = &v259 - v43;
  v308 = sub_254F27F00();
  v303 = *(v308 - 8);
  v44 = *(v303 + 64);
  v45 = MEMORY[0x28223BE20](v308);
  v280 = &v259 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v284 = &v259 - v47;
  v48 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v282 = &v259 - v50;
  v51 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v51 - 8);
  v292 = &v259 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v287 = &v259 - v55;
  v314 = sub_254F27F50();
  v304 = *(v314 - 8);
  v56 = *(v304 + 64);
  v57 = MEMORY[0x28223BE20](v314);
  v268 = &v259 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v281 = &v259 - v59;
  v60 = sub_254EC8BC0(&qword_27F75F318, &unk_254F2C4E0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v316 = &v259 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v286 = &v259 - v64;
  v322 = sub_254F27F80();
  v319 = *(v322 - 8);
  v65 = *(v319 + 64);
  v66 = MEMORY[0x28223BE20](v322);
  v317 = &v259 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v306 = &v259 - v68;
  v310 = sub_254EC8BC0(&qword_27F75F468, &qword_254F2C6E0);
  v69 = *(*(v310 - 8) + 64);
  v70 = MEMORY[0x28223BE20](v310);
  v312 = &v259 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v311 = &v259 - v72;
  v73 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73 - 8);
  v309 = &v259 - v75;
  v262 = sub_254F28910();
  v261 = *(v262 - 8);
  v76 = *(v261 + 64);
  MEMORY[0x28223BE20](v262);
  v305 = &v259 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78 - 8);
  v296 = &v259 - v80;
  v298 = sub_254F28800();
  v297 = *(v298 - 8);
  v81 = *(v297 + 64);
  MEMORY[0x28223BE20](v298);
  v313 = &v259 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_254F289A0();
  v300 = *(v301 - 8);
  v83 = *(v300 + 64);
  MEMORY[0x28223BE20](v301);
  v299 = &v259 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_254EC8BC0(&qword_27F75F3D0, &qword_254F2C658);
  v86 = *(*(v85 - 8) + 64);
  v87 = MEMORY[0x28223BE20](v85 - 8);
  v278 = &v259 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v90 = &v259 - v89;
  v91 = sub_254F27C20();
  v273 = *(v91 - 8);
  v92 = *(v273 + 64);
  MEMORY[0x28223BE20](v91);
  v285 = &v259 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_254F27E80();
  v95 = *(v94 - 8);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  v98 = &v259 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_254F27E90();
  v100 = *(v99 - 8);
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v99);
  v103 = &v259 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = a1;
  sub_254F27EA0();
  v105 = (*(v100 + 88))(v103, v99);
  v106 = *MEMORY[0x277D74678];
  v321 = v95;
  v318 = v94;
  v323 = a1;
  if (v105 == v106)
  {
    (*(v100 + 96))(v103, v99);
    (*(v95 + 32))(v98, v103, v94);
    sub_254F27E20();
    v107 = sub_254EB2F2C(v90, 1, v91);
    v283 = v98;
    if (v107 == 1)
    {
      v108 = v98;
      sub_254EB306C(v90, &qword_27F75F3D0, &qword_254F2C658);
    }

    else
    {
      v122 = v94;
      v123 = v273;
      v124 = v285;
      (*(v273 + 32))(v285, v90, v91);
      v125 = v278;
      (*(v123 + 16))(v278, v124, v91);
      sub_254EB2F04(v125, 0, 1, v91);
      v126 = sub_254F29290();
      sub_254EB2F04(v296, 1, 1, v126);
      v127 = v313;
      sub_254F28920();
      (*(v297 + 104))(v127, *MEMORY[0x277D1D360], v298);
      v128 = sub_254F27F10();
      v129 = v309;
      (*(*(v128 - 8) + 16))(v309, v104, v128);
      sub_254EB2F04(v129, 0, 1, v128);
      sub_254F27D70();
      v130 = v311;
      sub_254F07FF4(v129, v311, &qword_27F75EE98, &qword_254F2B5C0);
      v131 = v310;
      (*(v95 + 16))(v130 + *(v310 + 48), v283, v122);
      sub_254F07FAC(v130, v312, &qword_27F75F468, &qword_254F2C6E0);
      v132 = *(v131 + 48);
      type metadata accessor for UIContextRetriever();
      sub_254F007D8();

      sub_254F01258();
      sub_254EB306C(v130, &qword_27F75F468, &qword_254F2C6E0);
      v133 = v299;
      sub_254F28930();
      v134 = v302;
      sub_254F16BD0();
      v135 = *(*v134 + 16);
      sub_254F16C78(v135);
      (*(v123 + 8))(v285, v91);
      v136 = *v134;
      *(v136 + 16) = v135 + 1;
      v137 = v136 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v135;
      v108 = v283;
      (*(v300 + 32))(v137, v133, v301);
    }

    v116 = v319;
    v117 = v320;
    v138 = v316;
    v139 = v306;
    v140 = v286;
    sub_254F27E50();
    v118 = v322;
    v141 = sub_254EB2F2C(v140, 1, v322);
    v142 = v287;
    if (v141 == 1)
    {
      v143 = &qword_27F75F318;
      v144 = &unk_254F2C4E0;
      v145 = v140;
    }

    else
    {
      (*(v116 + 32))(v139, v140, v118);
      sub_254F27E30();
      v150 = v314;
      if (sub_254EB2F2C(v142, 1, v314) != 1)
      {
        (*(v304 + 32))(v281, v142, v150);
        v168 = sub_254F27F10();
        v169 = v309;
        (*(*(v168 - 8) + 16))(v309, v323, v168);
        sub_254EB2F04(v169, 0, 1, v168);
        sub_254F27D70();
        v170 = v311;
        sub_254F07FF4(v169, v311, &qword_27F75EE98, &qword_254F2B5C0);
        v171 = v310;
        (*(v321 + 16))(v170 + *(v310 + 48), v283, v318);
        sub_254F07FAC(v170, v312, &qword_27F75F468, &qword_254F2C6E0);
        v172 = *(v171 + 48);
        type metadata accessor for UIContextRetriever();
        sub_254F007D8();

        v118 = v322;
        v173 = v305;
        sub_254F01258();
        sub_254EB306C(v170, &qword_27F75F468, &qword_254F2C6E0);
        sub_254F28840();
        v174 = v268;
        (*(v304 + 16))(v268, v281, v314);
        v175 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
        v176 = *(v175 + 48);
        v177 = v282;
        (*(v319 + 16))(v282, v306, v118);
        v178 = v261;
        v179 = v262;
        (*(v261 + 16))(v177 + v176, v173, v262);
        v180 = v175;
        v108 = v283;
        sub_254EB2F04(v177, 0, 1, v180);
        v181 = v177;
        v116 = v319;
        sub_254EFA974(v181, v174, sub_254F07034, MEMORY[0x277D74700], sub_254F06A94);
        (*(v178 + 8))(v173, v179);
        (*(v304 + 8))(v281, v314);
        (*(v116 + 8))(v306, v118);
        goto LABEL_20;
      }

      (*(v116 + 8))(v139, v118);
      v143 = &qword_27F75F2E8;
      v144 = &qword_254F2C430;
      v145 = v142;
    }

    sub_254EB306C(v145, v143, v144);
LABEL_20:
    v182 = v308;
    v183 = v288;
    sub_254F27E60();
    v184 = v108;
    v185 = v291;
    v186 = v290;
    sub_254F27CE0();
    v187 = v185;
    (*(v289 + 8))(v183, v186);
    if (sub_254EB2F2C(v185, 1, v182) == 1)
    {
      v188 = v184;
      v119 = v321;
      (*(v321 + 8))(v188, v318);
      sub_254EB306C(v185, &qword_27F75F458, &qword_254F2C6D0);
      v121 = v324;
    }

    else
    {
      v189 = v184;
      v190 = v303;
      v191 = v284;
      (*(v303 + 32))(v284, v187, v182);
      v192 = sub_254F27EF0();
      v121 = v324;
      if (v192)
      {
        v306 = v192;

        sub_254F27EC0();
        v193 = sub_254F29290();
        sub_254EB2F04(v296, 1, 1, v193);
        v194 = v313;
        sub_254F28960();
        (*(v297 + 104))(v194, *MEMORY[0x277D1D368], v298);
        v195 = sub_254F27F10();
        v196 = v309;
        (*(*(v195 - 8) + 16))(v309, v323, v195);
        sub_254EB2F04(v196, 0, 1, v195);
        sub_254F27D70();
        v197 = v311;
        sub_254F07FF4(v196, v311, &qword_27F75EE98, &qword_254F2B5C0);
        v198 = v310;
        v199 = v321;
        v200 = v189;
        v201 = v318;
        (*(v321 + 16))(v197 + *(v310 + 48), v200, v318);
        sub_254F07FAC(v197, v312, &qword_27F75F468, &qword_254F2C6E0);
        v202 = *(v198 + 48);
        type metadata accessor for UIContextRetriever();
        sub_254F007D8();

        v117 = v320;
        v118 = v322;
        sub_254F01258();
        v203 = v197;
        v119 = v199;
        v138 = v316;
        sub_254EB306C(v203, &qword_27F75F468, &qword_254F2C6E0);
        v204 = v299;
        sub_254F28930();
        v205 = v302;
        sub_254F16BD0();
        v206 = *(*v205 + 16);
        sub_254F16C78(v206);

        (*(v190 + 8))(v284, v308);
        (*(v119 + 8))(v283, v201);
        v207 = *v205;
        *(v207 + 16) = v206 + 1;
        v208 = v207 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v206;
        v116 = v319;
        (*(v300 + 32))(v208, v204, v301);
      }

      else
      {
        (*(v190 + 8))(v191, v182);
        v119 = v321;
        (*(v321 + 8))(v189, v318);
      }
    }

    v115 = v315;
    v120 = v317;
    goto LABEL_26;
  }

  if (v105 == *MEMORY[0x277D74680])
  {
    (*(v100 + 96))(v103, v99);
    v109 = v303;
    v110 = v280;
    v111 = v308;
    (*(v303 + 32))(v280, v103, v308);
    v112 = v274;
    v113 = v324;
    sub_254F27D60();
    v114 = sub_254EB2F2C(v112, 1, v325);
    v115 = v315;
    if (v114 != 1)
    {
      v151 = v275;
      sub_254F07FF4(v112, v275, &qword_27F75EEA8, &qword_254F2B5D0);
      sub_254F27EF0();
      sub_254F27EC0();
      v152 = sub_254F29290();
      sub_254EB2F04(v296, 1, 1, v152);
      sub_254F27EE0();
      v153 = v263;
      sub_254F27ED0();
      sub_254F27BF0();
      (*(v264 + 8))(v153, v265);
      v154 = v313;
      sub_254F28950();
      (*(v297 + 104))(v154, *MEMORY[0x277D1D368], v298);
      v155 = v307;
      sub_254F07FAC(v151, v307, &qword_27F75EEA8, &qword_254F2B5D0);
      v156 = *(v325 + 48);
      v157 = sub_254F27F10();
      v158 = v309;
      (*(*(v157 - 8) + 32))(v309, v155, v157);
      sub_254EB2F04(v158, 0, 1, v157);
      sub_254F27D70();
      v159 = v311;
      sub_254F07FF4(v158, v311, &qword_27F75EE98, &qword_254F2B5C0);
      v160 = v310;
      v161 = v321;
      (*(v321 + 32))(v159 + *(v310 + 48), v155 + v156, v318);
      sub_254F07FAC(v159, v312, &qword_27F75F468, &qword_254F2C6E0);
      v162 = *(v160 + 48);
      type metadata accessor for UIContextRetriever();
      sub_254F007D8();

      v115 = v315;
      sub_254F01258();
      v163 = v159;
      v119 = v161;
      sub_254EB306C(v163, &qword_27F75F468, &qword_254F2C6E0);
      v164 = v299;
      sub_254F28930();
      v165 = v302;
      sub_254F16BD0();
      v166 = *(*v165 + 16);
      sub_254F16C78(v166);
      sub_254EB306C(v275, &qword_27F75EEA8, &qword_254F2B5D0);
      (*(v303 + 8))(v280, v111);
      v167 = *v165;
      *(v167 + 16) = v166 + 1;
      (*(v300 + 32))(v167 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v166, v164, v301);
      v116 = v319;
      v117 = v320;
      v118 = v322;
      v138 = v316;
      v120 = v317;
      v121 = v324;
      goto LABEL_26;
    }

    (*(v109 + 8))(v110, v111);
    sub_254EB306C(v112, &qword_27F75EEA0, &qword_254F2B5C8);
    v116 = v319;
    v117 = v320;
    v119 = v321;
    v118 = v322;
    v120 = v317;
    v121 = v113;
    goto LABEL_18;
  }

  v115 = v315;
  v119 = v321;
  v118 = v322;
  if (v105 != *MEMORY[0x277D74628])
  {
    (*(v100 + 8))(v103, v99);
    v121 = v324;
    v116 = v319;
    v117 = v320;
    v120 = v317;
LABEL_18:
    v138 = v316;
    goto LABEL_26;
  }

  (*(v100 + 96))(v103, v99);
  v146 = v271;
  v147 = v270;
  v148 = v272;
  (*(v271 + 32))(v270, v103, v272);
  v149 = v260;
  v121 = v324;
  sub_254F27D60();
  if (sub_254EB2F2C(v149, 1, v325) == 1)
  {
    (*(v146 + 8))(v147, v148);
    sub_254EB306C(v149, &qword_27F75EEA0, &qword_254F2B5C8);
  }

  else
  {
    v243 = v266;
    sub_254F07FF4(v149, v266, &qword_27F75EEA8, &qword_254F2B5D0);
    sub_254F27C90();
    v244 = sub_254F29290();
    sub_254EB2F04(v296, 1, 1, v244);
    v245 = v313;
    sub_254F28920();
    (*(v297 + 104))(v245, *MEMORY[0x277D1D360], v298);
    v246 = v307;
    sub_254F07FAC(v243, v307, &qword_27F75EEA8, &qword_254F2B5D0);
    v247 = *(v325 + 48);
    v248 = sub_254F27F10();
    v249 = v309;
    (*(*(v248 - 8) + 32))(v309, v246, v248);
    sub_254EB2F04(v249, 0, 1, v248);
    sub_254F27D70();
    v250 = v311;
    sub_254F07FF4(v249, v311, &qword_27F75EE98, &qword_254F2B5C0);
    v251 = v310;
    (*(v321 + 32))(v250 + *(v310 + 48), v246 + v247, v318);
    sub_254F07FAC(v250, v312, &qword_27F75F468, &qword_254F2C6E0);
    v252 = v115;
    v253 = *(v251 + 48);
    type metadata accessor for UIContextRetriever();
    sub_254F007D8();

    v115 = v252;
    sub_254F01258();
    v254 = v250;
    v119 = v321;
    v118 = v322;
    sub_254EB306C(v254, &qword_27F75F468, &qword_254F2C6E0);
    v255 = v299;
    sub_254F28930();
    v256 = v302;
    sub_254F16BD0();
    v257 = *(*v256 + 16);
    sub_254F16C78(v257);
    sub_254EB306C(v266, &qword_27F75EEA8, &qword_254F2B5D0);
    (*(v271 + 8))(v270, v272);
    v258 = *v256;
    *(v258 + 16) = v257 + 1;
    (*(v300 + 32))(v258 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v257, v255, v301);
  }

  v116 = v319;
  v117 = v320;
  v138 = v316;
  v120 = v317;
LABEL_26:
  sub_254F27CD0();
  if (sub_254EB2F2C(v138, 1, v118) == 1)
  {
    v209 = &qword_27F75F318;
    v210 = &unk_254F2C4E0;
    v211 = v138;
LABEL_30:
    sub_254EB306C(v211, v209, v210);
    goto LABEL_32;
  }

  (*(v116 + 32))(v120, v138, v118);
  sub_254F27D60();
  if (sub_254EB2F2C(v115, 1, v325) == 1)
  {
    (*(v116 + 8))(v120, v118);
    v209 = &qword_27F75EEA0;
    v210 = &qword_254F2B5C8;
    v211 = v115;
    goto LABEL_30;
  }

  v212 = v293;
  sub_254F07FF4(v115, v293, &qword_27F75EEA8, &qword_254F2B5D0);
  sub_254F27F70();
  v319 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  v316 = *(v319 + 48);
  v213 = *(v116 + 16);
  v214 = v116;
  v215 = v282;
  v213(v282, v120, v118);
  v216 = v212;
  v217 = v307;
  sub_254F07FAC(v216, v307, &qword_27F75EEA8, &qword_254F2B5D0);
  v218 = *(v325 + 48);
  v219 = sub_254F27F10();
  v220 = v309;
  (*(*(v219 - 8) + 32))(v309, v217, v219);
  sub_254EB2F04(v220, 0, 1, v219);
  sub_254F27D70();
  v221 = v220;
  v222 = v311;
  sub_254F07FF4(v221, v311, &qword_27F75EE98, &qword_254F2B5C0);
  v223 = v310;
  (*(v119 + 32))(v222 + *(v310 + 48), v217 + v218, v318);
  sub_254F07FAC(v222, v312, &qword_27F75F468, &qword_254F2C6E0);
  v224 = *(v223 + 48);
  type metadata accessor for UIContextRetriever();
  sub_254F007D8();

  v225 = v324;
  v119 = v321;
  sub_254F01258();
  v117 = v320;
  sub_254EB306C(v222, &qword_27F75F468, &qword_254F2C6E0);
  sub_254EB2F04(v215, 0, 1, v319);
  sub_254EFA974(v215, v294, sub_254F06E50, MEMORY[0x277CC95F0], sub_254F068C8);
  sub_254EB306C(v293, &qword_27F75EEA8, &qword_254F2B5D0);
  (*(v214 + 8))(v317, v322);
  v121 = v225;
LABEL_32:
  type metadata accessor for UIContextRetriever();
  sub_254F27D70();
  sub_254F007D8();
  v227 = v226;

  sub_254F27D60();
  if (sub_254EB2F2C(v117, 1, v325) != 1)
  {
    v231 = v295;
    sub_254F07FF4(v117, v295, &qword_27F75EEA8, &qword_254F2B5D0);
    v232 = v292;
    sub_254EFA210(v227, v292);
    v233 = v314;
    if (sub_254EB2F2C(v232, 1, v314) == 1)
    {
      sub_254EB306C(v232, &qword_27F75F2E8, &qword_254F2C430);
    }

    else
    {
      v234 = sub_254F27F30();
      v236 = v235;
      v237 = (*(v304 + 8))(v232, v233);
      if (v236)
      {
        goto LABEL_38;
      }
    }

    v238 = v307;
    sub_254F07FAC(v231, v307, &qword_27F75EEA8, &qword_254F2B5D0);
    v239 = *(v325 + 48);
    v234 = sub_254F27E40();
    v236 = v240;
    (*(v119 + 8))(v238 + v239, v318);
    v241 = sub_254F27F10();
    (*(*(v241 - 8) + 8))(v238, v241);

    if (!v236)
    {

      goto LABEL_40;
    }

LABEL_38:
    MEMORY[0x28223BE20](v237);
    *(&v259 - 6) = v231;
    *(&v259 - 5) = v227;
    *(&v259 - 4) = v323;
    *(&v259 - 3) = v121;
    *(&v259 - 2) = v279;
    sub_254EF1A04(v234, v236, sub_254F07F9C, (&v259 - 8));

LABEL_40:
    v228 = &qword_27F75EEA8;
    v229 = &qword_254F2B5D0;
    v230 = v231;
    return sub_254EB306C(v230, v228, v229);
  }

  v228 = &qword_27F75EEA0;
  v229 = &qword_254F2B5C8;
  v230 = v117;
  return sub_254EB306C(v230, v228, v229);
}

void sub_254F007D8()
{
  sub_254EC1A1C();
  v1 = v0;
  v2 = sub_254F27E90();
  v3 = sub_254EB2CBC(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_254EB3AB8();
  v8 = v7 - v6;
  v66 = sub_254F27D00();
  v9 = sub_254EB2CBC(v66);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_254EB3AB8();
  v65 = v15 - v14;
  sub_254EB7FC4();
  v16 = sub_254F27F50();
  v17 = sub_254EB2CBC(v16);
  v67 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_254EB3D38();
  v64 = v21;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v22);
  sub_254EB59E4();
  v72 = v23;
  sub_254EB7FC4();
  v24 = sub_254F27F10();
  v25 = sub_254EB2CBC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_254EB3AB8();
  v32 = v31 - v30;
  v33 = *(v1 + 16);
  if (v33)
  {
    v35 = *(v27 + 16);
    v34 = v27 + 16;
    v36 = *(v34 + 64);
    sub_254EB3A30();
    v38 = v1 + v37;
    v70 = *(v34 + 56);
    v71 = v39;
    v69 = *MEMORY[0x277D74630];
    v60 = (v11 + 8);
    v61 = (v11 + 32);
    v68 = (v67 + 32);
    v40 = MEMORY[0x277D84F90];
    v63 = v16;
    v62 = v24;
    do
    {
      v71(v32, v38, v24);
      sub_254F27EA0();
      v41 = sub_254EC38EC();
      if (v42(v41) == v69)
      {
        v43 = sub_254EC38EC();
        v44(v43);
        (*v61)(v65, v8, v66);
        sub_254F27CF0();
        (*v60)(v65, v66);
        v45 = sub_254F080D8();
        v46(v45);
        v47 = *v68;
        (*v68)(v72, v64, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = *(v40 + 16);
          sub_254EB4958();
          sub_254EF0ED8();
          v40 = v58;
        }

        v49 = *(v40 + 16);
        v48 = *(v40 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_254EB5124(v48);
          sub_254EF0ED8();
          v40 = v59;
        }

        *(v40 + 16) = v49 + 1;
        v50 = *(v67 + 80);
        sub_254EB3A30();
        v16 = v63;
        v47(v40 + v51 + *(v52 + 72) * v49, v72, v63);
        v24 = v62;
      }

      else
      {
        v53 = sub_254F080D8();
        v54(v53);
        v55 = sub_254EC38EC();
        v56(v55);
      }

      v38 += v70;
      --v33;
    }

    while (v33);
  }

  sub_254EB4078();
}

uint64_t sub_254F00BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v78 = a5;
  v79 = a7;
  v64[3] = a6;
  v72 = a3;
  v73 = a4;
  v8 = sub_254EC8BC0(&qword_27F75EE98, &qword_254F2B5C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = v64 - v10;
  v70 = sub_254EC8BC0(&qword_27F75EEA8, &qword_254F2B5D0);
  v11 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v69 = v64 - v12;
  v13 = sub_254F28910();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v64 - v18;
  v20 = sub_254F29290();
  v21 = *(*(v20 - 8) + 64);
  result = MEMORY[0x28223BE20](v20);
  v25 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  if (!v26)
  {
    return result;
  }

  v28 = *(v24 + 16);
  v27 = v24 + 16;
  v29 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
  v67 = v20;
  v68 = (v74 + 16);
  v75 = *(v27 + 56);
  v76 = v28;
  v64[1] = v74 + 40;
  v64[2] = v74 + 32;
  v77 = v27;
  v65 = (v27 - 8);
  v66 = (v74 + 8);
  v80 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v76(v25, v29, v20);
    v30 = v69;
    sub_254F07FAC(v72, v69, &qword_27F75EEA8, &qword_254F2B5D0);
    v31 = *(v70 + 48);
    v32 = sub_254F27F10();
    v33 = v71;
    (*(*(v32 - 8) + 32))(v71, v30, v32);
    sub_254EB2F04(v33, 0, 1, v32);

    sub_254F01258();
    v34 = sub_254F27D10();
    if (!*(v34 + 16))
    {
      goto LABEL_11;
    }

    v35 = sub_254F057E4(0x72616D6972507369, 0xE900000000000079);
    if (v36)
    {
      v37 = (*(v34 + 56) + 16 * v35);
      v39 = *v37;
      v38 = v37[1];

      if (v39 == 1702195828 && v38 == 0xE400000000000000)
      {
        goto LABEL_22;
      }

      v41 = sub_254F29B10();

      if (v41)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_11:
    }

    v42 = sub_254F27D10();
    if (!*(v42 + 16) || (v43 = sub_254F057E4(0x7463656C65537369, 0xEA00000000006465), (v44 & 1) == 0))
    {

LABEL_21:
      sub_254F27D30();
      goto LABEL_23;
    }

    v45 = (*(v42 + 56) + 16 * v43);
    v47 = *v45;
    v46 = v45[1];

    if (v47 == 1702195828 && v46 == 0xE400000000000000)
    {
LABEL_22:

      goto LABEL_23;
    }

    v49 = sub_254F29B10();

    if ((v49 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    sub_254F28820();
    (*v68)(v17);
    v50 = v79;
    v51 = *v79;
    swift_isUniquelyReferenced_nonNull_native();
    v81 = *v50;
    v52 = v81;
    *v50 = 0x8000000000000000;
    sub_254F0585C();
    if (__OFADD__(v52[2], (v54 & 1) == 0))
    {
      break;
    }

    v55 = v53;
    v56 = v54;
    sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
    if (sub_254F29A50())
    {
      sub_254F0585C();
      v20 = v67;
      if ((v56 & 1) != (v58 & 1))
      {
        goto LABEL_36;
      }

      v55 = v57;
    }

    else
    {
      v20 = v67;
    }

    v59 = v81;
    if (v56)
    {
      (*(v74 + 40))(v81[7] + *(v74 + 72) * v55, v17, v13);
      v25 = v80;
    }

    else
    {
      v81[(v55 >> 6) + 8] |= 1 << v55;
      v25 = v80;
      v76((v59[6] + v55 * v75), v80, v20);
      (*(v74 + 32))(v59[7] + *(v74 + 72) * v55, v17, v13);
      v60 = v59[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_35;
      }

      v59[2] = v62;
    }

    (*v66)(v19, v13);
    (*v65)(v25, v20);
    v63 = *v79;
    *v79 = v59;

    v29 += v75;
    if (!--v26)
    {
      return result;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

void sub_254F01258()
{
  sub_254EC1A1C();
  v95 = v1;
  v96 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_254EC8BC0(&qword_27F75F318, &unk_254F2C4E0);
  sub_254EB2D90(v6);
  v8 = *(v7 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v9);
  v83 = &v81 - v10;
  v11 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  sub_254EB2D90(v11);
  v13 = *(v12 + 64);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v14);
  v91 = &v81 - v15;
  v16 = sub_254EB80DC();
  v18 = sub_254EC8BC0(v16, v17);
  v19 = sub_254EB2D90(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_254EB3D38();
  v89 = v22;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v23);
  sub_254EB59E4();
  v88 = v24;
  sub_254EB7FC4();
  v25 = sub_254F288E0();
  v26 = sub_254EB2CBC(v25);
  v93 = v27;
  v94 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  sub_254EB3D38();
  v92 = v30;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v31);
  v33 = &v81 - v32;
  v34 = sub_254EC8BC0(&qword_27F75F468, &qword_254F2C6E0);
  v35 = sub_254EB2D80(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_254EB3D38();
  v87 = v38;
  sub_254EB3D2C();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v81 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v81 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v81 - v46;
  sub_254F07FF4(v5, &v81 - v46, &qword_27F75EE98, &qword_254F2B5C0);
  v48 = *(v34 + 48);
  v49 = sub_254F27E80();
  v50 = *(v49 - 8);
  (*(v50 + 32))(&v47[v48], v3, v49);
  sub_254F07FAC(v47, v45, &qword_27F75F468, &qword_254F2C6E0);
  v51 = *(v34 + 48);
  sub_254F27E70();
  v52 = *(v50 + 8);
  v52(&v45[v51], v49);
  v53 = v88;
  v97 = v33;
  sub_254F288C0();
  sub_254EB306C(v45, &qword_27F75EE98, &qword_254F2B5C0);
  sub_254F07FAC(v47, v42, &qword_27F75F468, &qword_254F2C6E0);
  v90 = v34;
  v86 = *(v34 + 48);
  sub_254F07FF4(v42, v53, &qword_27F75EE98, &qword_254F2B5C0);
  v54 = sub_254F27F10();
  v55 = sub_254EB81DC();
  v57 = sub_254EB2F2C(v55, v56, v54);
  v98 = v49;
  if (v57 == 1)
  {
    v58 = sub_254EC1B04();
    (v52)(v58);
    sub_254EB306C(v53, &qword_27F75EE98, &qword_254F2B5C0);
    v59 = 0uLL;
    v60 = 0uLL;
  }

  else
  {
    sub_254F27CB0();
    v85 = v61;
    v81 = v62;
    v84 = v63;
    v82 = v64;
    (*(*(v54 - 8) + 8))(v53, v54);
    *&v65 = v85;
    *(&v65 + 1) = v81;
    v85 = v65;
    *&v65 = v84;
    *(&v65 + 1) = v82;
    v84 = v65;
    v66 = sub_254EC1B04();
    (v52)(v66);
    v60 = v84;
    v59 = v85;
  }

  v99 = v59;
  v100 = v60;
  v101 = v57 == 1;
  sub_254F28890();
  v88 = v47;
  v67 = v87;
  sub_254F07FAC(v47, v87, &qword_27F75F468, &qword_254F2C6E0);
  v69 = v89;
  v68 = v90;
  v70 = *(v90 + 48);
  sub_254F07FF4(v67, v89, &qword_27F75EE98, &qword_254F2B5C0);
  if (sub_254EB2F2C(v69, 1, v54) == 1)
  {
    (qword_254F2B5C0)(v67 + v70, v98);
    sub_254EB306C(v69, &qword_27F75EE98, &qword_254F2B5C0);
  }

  else
  {
    sub_254F27D20();
    (*(*(v54 - 8) + 8))(v69, v54);
    (qword_254F2B5C0)(v67 + v70, v98);
  }

  v71 = v97;
  sub_254F288A0();
  v72 = v88;
  sub_254F07FAC(v88, v45, &qword_27F75F468, &qword_254F2C6E0);
  v73 = *(v68 + 48);
  sub_254F27E30();
  v74 = &v45[v73];
  v75 = v98;
  (qword_254F2B5C0)(v74, v98);
  sub_254F28880();
  sub_254EB306C(v45, &qword_27F75EE98, &qword_254F2B5C0);
  sub_254F07FAC(v72, v45, &qword_27F75F468, &qword_254F2C6E0);
  v76 = *(v68 + 48);
  v77 = sub_254F27E70();
  (qword_254F2B5C0)(&v45[v76], v75);
  sub_254EB306C(v45, &qword_27F75EE98, &qword_254F2B5C0);
  if (v77)
  {
    sub_254F07FAC(v72, v45, &qword_27F75F468, &qword_254F2C6E0);
    v78 = *(v68 + 48);
    sub_254F27E50();
    (qword_254F2B5C0)(&v45[v78], v98);
    sub_254F288B0();
    sub_254EB306C(v45, &qword_27F75EE98, &qword_254F2B5C0);
  }

  v79 = v93;
  v80 = v94;
  (*(v93 + 16))(v92, v71, v94);
  sub_254F288F0();
  sub_254F28860();
  (*(v79 + 8))(v71, v80);
  sub_254EB306C(v72, &qword_27F75F468, &qword_254F2C6E0);
  sub_254EB4078();
}

uint64_t sub_254F01998(uint64_t a1, uint64_t a2)
{
  v212 = a2;
  v185 = sub_254EC8BC0(&qword_27F75F420, &qword_254F2C6A8);
  v3 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v200 = &v163 - v4;
  v5 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v181 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v171 = &v163 - v9;
  v192 = sub_254F29290();
  v10 = *(v192 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v192);
  v184 = &v163 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v179 = &v163 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v170 = &v163 - v17;
  MEMORY[0x28223BE20](v16);
  v166 = &v163 - v18;
  v177 = sub_254F288E0();
  v213 = *(v177 - 8);
  v19 = *(v213 + 64);
  MEMORY[0x28223BE20](v177);
  v176 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_254EC8BC0(&qword_27F75F428, &qword_254F2C6B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v197 = &v163 - v23;
  v207 = sub_254F27980();
  v24 = *(v207 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v207);
  v190 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_254F28910();
  v27 = *(v215 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v215);
  v180 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v196 = &v163 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v167 = &v163 - v34;
  MEMORY[0x28223BE20](v33);
  v209 = &v163 - v35;
  v36 = sub_254F27F80();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v198 = &v163 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v199 = &v163 - v41;
  v214 = sub_254EC8BC0(&qword_27F75F430, &qword_254F2C6B8);
  v206 = *(v214 - 8);
  v42 = *(v206 + 64);
  v43 = MEMORY[0x28223BE20](v214);
  v45 = &v163 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v205 = &v163 - v47;
  MEMORY[0x28223BE20](v46);
  v208 = &v163 - v48;
  v189 = sub_254EC8BC0(&qword_27F75F438, &qword_254F2C6C0);
  v49 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v51 = &v163 - v50;
  v52 = a1 + 64;
  v53 = 1 << *(a1 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(a1 + 64);
  v195 = ((v53 + 63) >> 6);
  v203 = (v37 + 32);
  v204 = (v37 + 16);
  v210 = (v27 + 32);
  v211 = (v27 + 16);
  v193 = v24;
  v188 = (v24 + 8);
  v201 = (v37 + 8);
  v202 = (v27 + 8);
  v175 = (v213 + 8);
  v174 = (v10 + 32);
  v178 = (v10 + 16);
  v173 = v27;
  v168 = v27 + 40;
  v169 = v10;
  v172 = (v10 + 8);
  v194 = a1;
  v56 = v36;

  v57 = 0;
  v191 = MEMORY[0x277D84F98];
  v213 = v56;
  v183 = v45;
  v186 = v52;
  v187 = v51;
  while (v55)
  {
LABEL_9:
    v59 = __clz(__rbit64(v55)) | (v57 << 6);
    v60 = v194;
    v61 = *(v194 + 6);
    v62 = sub_254F27F50();
    (*(*(v62 - 8) + 16))(v51, v61 + *(*(v62 - 8) + 72) * v59, v62);
    v63 = *(v206 + 72);
    v64 = *(v60 + 7) + v63 * v59;
    v65 = &v51[*(v189 + 48)];
    sub_254F07FAC(v64, v65, &qword_27F75F430, &qword_254F2C6B8);
    v66 = v213;
    v67 = v214;
    v68 = *(v214 + 48);
    v69 = v208;
    (*v204)(v208, v65, v213);
    v70 = v69 + *(v67 + 48);
    v71 = v65 + v68;
    v72 = v215;
    v182 = *v211;
    (v182)(v70, v71, v215);
    v73 = v69;
    v74 = v205;
    sub_254F07FAC(v73, v205, &qword_27F75F430, &qword_254F2C6B8);
    v75 = *(v67 + 48);
    v76 = v199;
    (*v203)(v199, v74, v66);
    v77 = *v210;
    (*v210)(v209, v74 + v75, v72);
    v78 = v190;
    sub_254F27F70();
    v79 = v212;
    if (*(v212 + 16) && (sub_254F05AD4(), (v81 & 1) != 0))
    {
      sub_254F07FAC(*(v79 + 56) + v80 * v63, v197, &qword_27F75F430, &qword_254F2C6B8);
      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v83 = v209;
    v51 = v187;
    v52 = v186;
    v84 = v197;
    v85 = v214;
    sub_254EB2F04(v197, v82, 1, v214);
    (*v188)(v78, v207);
    LODWORD(v85) = sub_254EB2F2C(v84, 1, v85);
    sub_254EB306C(v84, &qword_27F75F428, &qword_254F2C6B0);
    v86 = v85 == 1;
    v87 = v213;
    if (!v86)
    {
      (*v202)(v83, v215);
      (*v201)(v76, v87);
      sub_254EB306C(v208, &qword_27F75F430, &qword_254F2C6B8);
      v56 = v87;
      goto LABEL_24;
    }

    v88 = v213;
    v89 = v176;
    sub_254F28900();
    v90 = sub_254F288D0();
    (*v175)(v89, v177);
    if ((v90 & 1) == 0)
    {
      (*v202)(v83, v215);
      v99 = *v201;
      v100 = v199;
      goto LABEL_21;
    }

    v91 = v199;
    v92 = sub_254F27F60();
    v93 = v171;
    if (!v92)
    {
      (*v202)(v83, v215);
      v99 = *v201;
      v100 = v91;
LABEL_21:
      v56 = v88;
      v99(v100, v88);
LABEL_22:
      v96 = v208;
      v97 = &qword_27F75F430;
      v98 = &qword_254F2C6B8;
      goto LABEL_23;
    }

    v165 = v77;
    v94 = v92;
    sub_254F052EC(v92, v171);
    v95 = v192;
    if (sub_254EB2F2C(v93, 1, v192) != 1)
    {
      v164 = v94;
      v101 = v166;
      (*v174)(v166, v93, v95);
      v102 = *v178;
      (*v178)(v170, v101, v95);
      (v182)(v167, v83, v215);
      v103 = v191;
      swift_isUniquelyReferenced_nonNull_native();
      v216 = v103;
      sub_254F0585C();
      if (__OFADD__(v103[2], (v105 & 1) == 0))
      {
        goto LABEL_64;
      }

      v106 = v104;
      v107 = v105;
      sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
      if (sub_254F29A50())
      {
        sub_254F0585C();
        v110 = v199;
        v111 = v165;
        if ((v107 & 1) != (v109 & 1))
        {
          goto LABEL_66;
        }

        v106 = v108;
      }

      else
      {
        v110 = v199;
        v111 = v165;
      }

      v112 = v216;
      v191 = v216;
      if (v107)
      {
        v113 = v215;
        (*(v173 + 40))(v216[7] + *(v173 + 72) * v106, v167, v215);
      }

      else
      {
        v216[(v106 >> 6) + 8] |= 1 << v106;
        v102((v112[6] + *(v169 + 72) * v106), v170, v192);
        v111(v112[7] + *(v173 + 72) * v106, v167, v215);
        v114 = v112[2];
        v115 = __OFADD__(v114, 1);
        v116 = v114 + 1;
        if (v115)
        {
          goto LABEL_65;
        }

        v112[2] = v116;
        v113 = v215;
      }

      v56 = v213;
      v117 = *v172;
      v118 = v192;
      (*v172)(v170, v192);

      v117(v166, v118);
      (*v202)(v209, v113);
      (*v201)(v110, v56);
      goto LABEL_22;
    }

    (*v202)(v83, v215);
    v56 = v88;
    (*v201)(v199, v88);
    sub_254EB306C(v208, &qword_27F75F430, &qword_254F2C6B8);
    v96 = v93;
    v97 = &qword_27F75EE50;
    v98 = &unk_254F2C4F0;
LABEL_23:
    sub_254EB306C(v96, v97, v98);
LABEL_24:
    v55 &= v55 - 1;
    sub_254EB306C(v51, &qword_27F75F438, &qword_254F2C6C0);
  }

  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v58 >= v195)
    {
      break;
    }

    v55 = *(v52 + 8 * v58);
    ++v57;
    if (v55)
    {
      v57 = v58;
      goto LABEL_9;
    }
  }

  v119 = (v212 + 64);
  v120 = 1 << *(v212 + 32);
  v121 = -1;
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  v122 = v121 & *(v212 + 64);
  v123 = (v120 + 63) >> 6;
  v208 = v193 + 16;

  v124 = 0;
  v125 = v215;
  v126 = v183;
  v199 = v119;
  v197 = v123;
  while (v122)
  {
    v127 = v56;
LABEL_43:
    v129 = __clz(__rbit64(v122)) | (v124 << 6);
    v130 = v212;
    v131 = v200;
    (*(v193 + 16))(v200, *(v212 + 48) + *(v193 + 72) * v129, v207);
    v132 = *(v130 + 56) + *(v206 + 72) * v129;
    v133 = v131 + *(v185 + 48);
    sub_254F07FAC(v132, v133, &qword_27F75F430, &qword_254F2C6B8);
    v134 = v214;
    v135 = *(v214 + 48);
    (*v204)(v126, v133, v127);
    v136 = v126 + *(v134 + 48);
    v209 = *v211;
    (v209)(v136, v133 + v135, v125);
    v137 = v205;
    sub_254F07FAC(v126, v205, &qword_27F75F430, &qword_254F2C6B8);
    v138 = *(v134 + 48);
    v139 = v198;
    (*v203)(v198, v137, v127);
    v140 = v137 + v138;
    v141 = v139;
    v142 = v196;
    v195 = *v210;
    v195(v196, v140, v125);
    v143 = sub_254F27F60();
    if (v143)
    {
      v144 = v143;
      v145 = v181;
      sub_254F052EC(v143, v181);
      v146 = v192;
      if (sub_254EB2F2C(v145, 1, v192) == 1)
      {

        v125 = v215;
        (*v202)(v142, v215);
        v56 = v213;
        (*v201)(v198, v213);
        v126 = v183;
        sub_254EB306C(v183, &qword_27F75F430, &qword_254F2C6B8);
        sub_254EB306C(v145, &qword_27F75EE50, &unk_254F2C4F0);
      }

      else
      {
        v147 = v179;
        (*v174)(v179, v145, v146);
        v194 = *v178;
        v194(v184, v147, v146);
        (v209)(v180, v142, v215);
        v148 = v191;
        swift_isUniquelyReferenced_nonNull_native();
        v216 = v148;
        sub_254F0585C();
        if (__OFADD__(v148[2], (v150 & 1) == 0))
        {
          goto LABEL_62;
        }

        v151 = v149;
        v152 = v150;
        sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
        if (sub_254F29A50())
        {
          sub_254F0585C();
          v56 = v213;
          if ((v152 & 1) != (v154 & 1))
          {
            goto LABEL_66;
          }

          v151 = v153;
        }

        else
        {
          v56 = v213;
        }

        v155 = v216;
        v191 = v216;
        if (v152)
        {
          v156 = v215;
          (*(v173 + 40))(v216[7] + *(v173 + 72) * v151, v180, v215);
          v157 = v192;
        }

        else
        {
          v216[(v151 >> 6) + 8] |= 1 << v151;
          v157 = v192;
          v194((v155[6] + *(v169 + 72) * v151), v184, v192);
          v195((v155[7] + *(v173 + 72) * v151), v180, v215);
          v158 = v155[2];
          v115 = __OFADD__(v158, 1);
          v159 = v158 + 1;
          if (v115)
          {
            goto LABEL_63;
          }

          v155[2] = v159;
          v156 = v215;
        }

        v160 = *v172;
        (*v172)(v184, v157);

        v160(v179, v157);
        (*v202)(v196, v156);
        (*v201)(v198, v56);
        v161 = v183;
        sub_254EB306C(v183, &qword_27F75F430, &qword_254F2C6B8);
        v125 = v156;
        v126 = v161;
      }
    }

    else
    {
      (*v202)(v142, v125);
      (*v201)(v141, v127);
      sub_254EB306C(v126, &qword_27F75F430, &qword_254F2C6B8);
      v56 = v127;
    }

    v119 = v199;
    v123 = v197;
    v122 &= v122 - 1;
    sub_254EB306C(v200, &qword_27F75F420, &qword_254F2C6A8);
  }

  while (1)
  {
    v128 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      break;
    }

    if (v128 >= v123)
    {

      return v191;
    }

    v122 = *&v119[8 * v128];
    ++v124;
    if (v122)
    {
      v127 = v56;
      v124 = v128;
      goto LABEL_43;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_254F29B50();
  __break(1u);
  return result;
}

void *sub_254F02DE8(int64_t a1)
{
  v145 = sub_254EC8BC0(&qword_27F75F3E0, &qword_254F2C668);
  v2 = *(*(v145 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v145);
  v134 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v141 = &v134 - v6;
  MEMORY[0x28223BE20](v5);
  v135 = &v134 - v7;
  v171 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v163 = *(v171 - 8);
  v8 = *(v163 + 64);
  v9 = MEMORY[0x28223BE20](v171);
  v168 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v155 = &v134 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v170 = &v134 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v154 = &v134 - v16;
  MEMORY[0x28223BE20](v15);
  v156 = &v134 - v17;
  v150 = sub_254F288E0();
  v18 = *(v150 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v150);
  v158 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_254F28910();
  v21 = *(v165 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v165);
  v169 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v167 = &v134 - v25;
  v172 = sub_254F29290();
  v26 = *(v172 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v172);
  v159 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_254EC8BC0(&qword_27F75F3C0, &qword_254F2C648);
  v29 = *(*(v139 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v139);
  v151 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v138 = &v134 - v33;
  MEMORY[0x28223BE20](v32);
  v147 = &v134 - v34;
  v35 = a1 + 64;
  v36 = 1 << *(a1 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(a1 + 64);
  v39 = (v36 + 63) >> 6;
  v153 = v26 + 16;
  v157 = v21 + 16;
  v161 = (v26 + 32);
  v162 = v21;
  v166 = (v21 + 32);
  v164 = (v21 + 8);
  v148 = v18 + 16;
  v149 = v18;
  v146 = (v18 + 8);
  v152 = v26;
  v160 = (v26 + 8);
  v140 = a1;

  v40 = 0;
  v41 = MEMORY[0x277D84F98];
  v137 = a1 + 64;
  v136 = v39;
  if (v38)
  {
    while (1)
    {
      v144 = v41;
LABEL_9:
      v43 = __clz(__rbit64(v38)) | (v40 << 6);
      v44 = v140;
      v45 = v152;
      v46 = *(v140 + 48) + *(v152 + 72) * v43;
      v143 = *(v152 + 16);
      v47 = v147;
      (v143)(v147, v46, v172);
      v48 = v162;
      v49 = *(v44 + 56) + *(v162 + 72) * v43;
      v50 = v139;
      v51 = *(v139 + 48);
      v142 = *(v162 + 16);
      v52 = v165;
      v142(v47 + v51, v49, v165);
      v53 = v138;
      sub_254F07FAC(v47, v138, &qword_27F75F3C0, &qword_254F2C648);
      v54 = *(v50 + 48);
      (*(v45 + 32))(v159, v53, v172);
      (*(v48 + 32))(v167, v53 + v54, v52);
      v55 = v151;
      sub_254F07FAC(v47, v151, &qword_27F75F3C0, &qword_254F2C648);
      v56 = *(v50 + 48);
      sub_254F28900();
      v57 = *(v48 + 8);
      v57(v55 + v56, v52);
      v58 = *(v171 + 48);
      v59 = v156;
      (v143)(v156, v159, v172);
      v142(v59 + v58, v167, v52);
      v60 = v144;
      swift_isUniquelyReferenced_nonNull_native();
      v174 = v60;
      sub_254F0590C();
      if (__OFADD__(*(v60 + 16), (v62 & 1) == 0))
      {
        goto LABEL_61;
      }

      v63 = v61;
      v64 = v62;
      sub_254EC8BC0(&qword_27F75F3E8, &qword_254F2C670);
      v65 = sub_254F29A50();
      v41 = v174;
      if (v65)
      {
        sub_254F0590C();
        if ((v64 & 1) != (v67 & 1))
        {
          goto LABEL_63;
        }

        v63 = v66;
      }

      if ((v64 & 1) == 0)
      {
        *(v41 + 8 * (v63 >> 6) + 64) |= 1 << v63;
        (*(v149 + 16))(*(v41 + 48) + *(v149 + 72) * v63, v158, v150);
        *(*(v41 + 56) + 8 * v63) = MEMORY[0x277D84F90];
        v68 = *(v41 + 16);
        v69 = __OFADD__(v68, 1);
        v70 = v68 + 1;
        if (v69)
        {
          goto LABEL_62;
        }

        *(v41 + 16) = v70;
      }

      v71 = *(v41 + 56);
      v72 = *(v71 + 8 * v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v71 + 8 * v63) = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v78 = *(v72 + 16);
        sub_254EF01B4();
        v72 = v79;
        *(v71 + 8 * v63) = v79;
      }

      v74 = *(v72 + 16);
      if (v74 >= *(v72 + 24) >> 1)
      {
        sub_254EF01B4();
        *(v71 + 8 * v63) = v80;
      }

      v38 &= v38 - 1;
      (*v146)(v158, v150);
      v57(v167, v165);
      v75 = *v160;
      v76 = v172;
      (*v160)(v159, v172);
      sub_254EB306C(v147, &qword_27F75F3C0, &qword_254F2C648);
      v77 = *(v71 + 8 * v63);
      *(v77 + 16) = v74 + 1;
      sub_254F07FF4(v156, v77 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v74, &qword_27F75ED80, &qword_254F2AF68);
      v75(v151, v76);
      v35 = v137;
      v39 = v136;
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_58;
    }

    if (v42 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v144 = v41;
      v40 = v42;
      goto LABEL_9;
    }
  }

  v174 = v41;
  v81 = 1 << *(v41 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v41 + 64);
  v84 = (v81 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v85 = 0;
  v86 = v135;
  if (v83)
  {
    while (1)
    {
      v87 = v85;
LABEL_30:
      v88 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v89 = v88 | (v87 << 6);
      (*(v149 + 16))(v86, *(v41 + 48) + *(v149 + 72) * v89, v150);
      v90 = *(*(v41 + 56) + 8 * v89);
      *(v86 + *(v145 + 48)) = v90;

      sub_254F04C4C(v86, v90, &v174);
      sub_254EB306C(v86, &qword_27F75F3E0, &qword_254F2C668);
      if (!v83)
      {
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
LABEL_26:
    v87 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      goto LABEL_59;
    }

    if (v87 >= v84)
    {
      break;
    }

    v83 = *(v41 + 64 + 8 * v87);
    ++v85;
    if (v83)
    {
      v85 = v87;
      goto LABEL_30;
    }
  }

  v91 = (v174 + 64);
  v92 = 1 << *(v174 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v174 + 64);
  v95 = (v92 + 63) >> 6;
  v151 = (v162 + 40);
  v143 = v174;

  v96 = 0;
  v97 = MEMORY[0x277D84F98];
  v98 = v155;
  v142 = v91;
  v140 = v95;
  if (v94)
  {
LABEL_39:
    while (1)
    {
      v147 = v94;
      v144 = v96;
      v100 = __clz(__rbit64(v94)) | (v96 << 6);
      v101 = v143;
      v102 = v149;
      v103 = v141;
      v104 = v150;
      (*(v149 + 16))(v141, *(v143 + 48) + *(v149 + 72) * v100, v150);
      v105 = *(*(v101 + 56) + 8 * v100);
      v106 = v145;
      *(v103 + *(v145 + 48)) = v105;
      v107 = v103;
      v108 = v134;
      sub_254F07FAC(v107, v134, &qword_27F75F3E0, &qword_254F2C668);
      v109 = *(v108 + *(v106 + 48));
      v110 = *(v102 + 8);

      v110(v108, v104);
      v159 = *(v109 + 16);
      if (v159)
      {
        break;
      }

LABEL_52:
      v94 = (v147 - 1) & v147;

      sub_254EB306C(v141, &qword_27F75F3E0, &qword_254F2C668);
      v91 = v142;
      v95 = v140;
      v96 = v144;
      if (!v94)
      {
        goto LABEL_35;
      }
    }

    v111 = 0;
    v112 = *(v171 + 48);
    v157 = v109 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
    v158 = v112;
    v156 = v109;
    while (v111 < *(v109 + 16))
    {
      v113 = *(v163 + 72);
      v167 = v111;
      v114 = v154;
      sub_254F07FAC(v157 + v113 * v111, v154, &qword_27F75ED80, &qword_254F2AF68);
      v116 = v170;
      v115 = v171;
      v117 = *(v171 + 48);
      (*v161)(v170, v114, v172);
      v118 = *v166;
      v119 = &v158[v114];
      v120 = v165;
      (*v166)(v116 + v117, v119, v165);
      sub_254F07FAC(v116, v98, &qword_27F75ED80, &qword_254F2AF68);
      v121 = v168;
      sub_254F07FAC(v116, v168, &qword_27F75ED80, &qword_254F2AF68);
      v118(v169, (v121 + *(v115 + 48)), v120);
      swift_isUniquelyReferenced_nonNull_native();
      v173 = v97;
      sub_254F0585C();
      if (__OFADD__(v97[2], (v123 & 1) == 0))
      {
        goto LABEL_56;
      }

      v124 = v122;
      v125 = v123;
      sub_254EC8BC0(&qword_27F75F3F0, &qword_254F2C678);
      if (sub_254F29A50())
      {
        v98 = v155;
        sub_254F0585C();
        if ((v125 & 1) != (v127 & 1))
        {
          goto LABEL_63;
        }

        v124 = v126;
      }

      else
      {
        v98 = v155;
      }

      v97 = v173;
      if (v125)
      {
        (*(v162 + 40))(v173[7] + *(v162 + 72) * v124, v169, v120);
        sub_254EB306C(v170, &qword_27F75ED80, &qword_254F2AF68);
      }

      else
      {
        v173[(v124 >> 6) + 8] |= 1 << v124;
        (*(v152 + 16))(v97[6] + *(v152 + 72) * v124, v98, v172);
        v118(v97[7] + *(v162 + 72) * v124, v169, v120);
        sub_254EB306C(v170, &qword_27F75ED80, &qword_254F2AF68);
        v128 = v97[2];
        v69 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v69)
        {
          goto LABEL_57;
        }

        v97[2] = v129;
      }

      v111 = v167 + 1;
      v130 = v172;
      v131 = *(v171 + 48);
      v132 = *v160;
      (*v160)(v98, v172);
      v132(v168, v130);
      (*v164)(v98 + v131, v120);
      v109 = v156;
      if (v159 == v111)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    while (1)
    {
LABEL_63:
      sub_254F29B50();
      __break(1u);
    }
  }

  while (1)
  {
LABEL_35:
    v99 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      goto LABEL_60;
    }

    if (v99 >= v95)
    {
      break;
    }

    v94 = *(v91 + v99);
    ++v96;
    if (v94)
    {
      v96 = v99;
      goto LABEL_39;
    }
  }

  return v97;
}

void sub_254F03D80(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v148 = a4;
  v143 = a2;
  v153 = a5;
  v7 = sub_254F291E0();
  v151 = *(v7 - 8);
  v152 = v7;
  v8 = *(v151 + 64);
  MEMORY[0x28223BE20](v7);
  v150 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_254EC8BC0(&qword_27F75F3D0, &qword_254F2C658);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v126 - v12;
  v13 = sub_254F28910();
  v141 = *(v13 - 8);
  v142 = v13;
  v14 = *(v141 + 64);
  MEMORY[0x28223BE20](v13);
  v140 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_254EC8BC0(&qword_27F75EE50, &unk_254F2C4F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v137 = &v126 - v18;
  v19 = sub_254EC8BC0(&qword_27F75F3D8, &qword_254F2C660);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v134 = &v126 - v21;
  v136 = sub_254F28800();
  v135 = *(v136 - 8);
  v22 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v138 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_254EC8BC0(&qword_27F75EDF8, &unk_254F2B560);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v155 = &v126 - v26;
  v154 = sub_254F286E0();
  v146 = *(v154 - 8);
  v27 = *(v146 + 64);
  MEMORY[0x28223BE20](v154);
  v145 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_254F28DA0();
  v149 = *(v147 - 8);
  v29 = *(v149 + 64);
  v30 = MEMORY[0x28223BE20](v147);
  v144 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v126 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v126 - v35;
  v37 = sub_254F29320();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v41 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_254F29330();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  v46 = &v126 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a1;
  sub_254F29280();
  v47 = (*(v43 + 88))(v46, v42);
  if (v47 == *MEMORY[0x277D72D28])
  {
    (*(v43 + 96))(v46, v42);
    v48 = *(*v46 + 32);
    v49 = *(*v46 + 40);

LABEL_5:

    goto LABEL_7;
  }

  if (v47 == *MEMORY[0x277D72D18])
  {
    (*(v43 + 96))(v46, v42);
    v50 = *v46;
    v51 = swift_projectBox();
    (*(v38 + 16))(v41, v51, v37);
    v52 = sub_254F29310();
    v53 = v41;
    v49 = v54;
    v55 = v37;
    v48 = v52;
    (*(v38 + 8))(v53, v55);
    goto LABEL_5;
  }

  (*(v43 + 8))(v46, v42);
  v48 = 0;
  v49 = 0xE000000000000000;
LABEL_7:
  v56 = sub_254F0CB54(v48, v49, a3);
  if (!v56)
  {
    goto LABEL_46;
  }

  v57 = v56;
  v58 = sub_254F07A70(v56);
  if (!v58)
  {

    goto LABEL_46;
  }

  v59 = v58;
  v131 = [v57 transferableContentTypes];
  if (!v131)
  {

    goto LABEL_46;
  }

  v126 = v48;
  v128 = v49;
  v129 = v57;
  sub_254F28DB0();
  v60 = sub_254F28D90();
  v61 = v149 + 8;
  v62 = *(v149 + 8);
  v63 = v147;
  v62(v36, v147);
  v64 = *(v60 + 16);

  v149 = v61;
  v127 = v62;
  if (!v64)
  {

    goto LABEL_26;
  }

  sub_254F28DB0();
  v65 = sub_254F28D90();
  v62(v34, v63);
  v66 = sub_254EEFD18(v59);
  if (!v66)
  {

    v69 = MEMORY[0x277D84F90];
LABEL_25:
    v79 = sub_254F0CB58(v69);
    v80 = sub_254F09C5C(v79, v65);

    v81 = *(v80 + 16);

    if (v81)
    {
LABEL_26:
      v82 = [v131 exportableTypes];
      sub_254EB48D8(0, &unk_2814260E0, 0x277D237C8);
      v83 = sub_254F29560();

      v84 = sub_254EC5594(v83);
      v85 = 0;
      v132 = MEMORY[0x277D84F90];
      v130 = (v146 + 32);
      while (v84 != v85)
      {
        if ((v83 & 0xC000000000000001) != 0)
        {
          v86 = MEMORY[0x259C2E0D0](v85, v83);
        }

        else
        {
          if (v85 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v86 = *(v83 + 8 * v85 + 32);
        }

        v87 = v86;
        v88 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v89 = [v86 contentType];
        sub_254F29450();

        v90 = v155;
        sub_254F286F0();

        if (sub_254EB2F2C(v90, 1, v154) == 1)
        {
          sub_254EB306C(v90, &qword_27F75EDF8, &unk_254F2B560);
          ++v85;
        }

        else
        {
          v91 = *v130;
          (*v130)(v145, v90, v154);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = *(v132 + 16);
            sub_254EF0E10();
            v132 = v95;
          }

          v92 = *(v132 + 16);
          if (v92 >= *(v132 + 24) >> 1)
          {
            sub_254EF0E10();
            v132 = v96;
          }

          v93 = v132;
          *(v132 + 16) = v92 + 1;
          v91((v93 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v92), v145, v154);
          v85 = v88;
        }
      }

      sub_254F0CE70();
      v98 = v97;

      v99 = v144;
      v100 = sub_254F28DB0();
      v101 = MEMORY[0x259C2D4E0](v100);
      v102 = v147;
      v103 = v127;
      v127(v99, v147);
      v104 = sub_254F09BDC(v101, v98);

      v105 = *(v104 + 16);

      if (v105)
      {

        v106 = sub_254F27EB0();
        sub_254EB2F04(v134, 1, 1, v106);
        v107 = sub_254F29290();
        v108 = v137;
        (*(*(v107 - 8) + 16))(v137, v139, v107);
        sub_254EB2F04(v108, 0, 1, v107);
        v109 = v138;
        sub_254F28960();
        v110 = MEMORY[0x277D1D368];
      }

      else
      {
        sub_254F28DB0();
        v111 = sub_254F28D80();
        v103(v99, v102);
        v112 = sub_254F09BDC(v111, v98);

        v113 = *(v112 + 16);

        if (!v113)
        {
          goto LABEL_45;
        }

        v114 = sub_254F27C20();
        sub_254EB2F04(v133, 1, 1, v114);
        v115 = sub_254F29290();
        v116 = v137;
        (*(*(v115 - 8) + 16))(v137, v139, v115);
        sub_254EB2F04(v116, 0, 1, v115);
        v109 = v138;
        sub_254F28920();
        v110 = MEMORY[0x277D1D360];
      }

      (*(v135 + 104))(v109, *v110, v136);
      (*(v141 + 16))(v140, v143, v142);
      v117 = v153;
      sub_254F28930();

      v118 = 0;
      goto LABEL_50;
    }

LABEL_45:

    v49 = v128;
    v48 = v126;
LABEL_46:
    v119 = v150;
    sub_254F284E0();

    v120 = sub_254F291D0();
    v121 = sub_254F296E0();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v156 = v123;
      *v122 = 136380675;
      v124 = sub_254EC2D74(v48, v49, &v156);

      *(v122 + 4) = v124;
      _os_log_impl(&dword_254EAE000, v120, v121, "%{private}s did not match filtering criteria.", v122, 0xCu);
      sub_254EB2BBC(v123);
      MEMORY[0x259C2EB80](v123, -1, -1);
      MEMORY[0x259C2EB80](v122, -1, -1);
    }

    else
    {
    }

    (*(v151 + 8))(v119, v152);
    v118 = 1;
    v117 = v153;
LABEL_50:
    v125 = sub_254F289A0();
    sub_254EB2F04(v117, v118, 1, v125);
    return;
  }

  v67 = v66;
  v132 = v65;
  v156 = MEMORY[0x277D84F90];
  sub_254ECA804(0, v66 & ~(v66 >> 63), 0);
  if ((v67 & 0x8000000000000000) == 0)
  {
    v68 = 0;
    v69 = v156;
    do
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x259C2E0D0](v68, v59);
      }

      else
      {
        v70 = *(v59 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = [v70 name];
      v73 = sub_254F29450();
      v75 = v74;

      v156 = v69;
      v77 = *(v69 + 16);
      v76 = *(v69 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_254ECA804(v76 > 1, v77 + 1, 1);
        v69 = v156;
      }

      ++v68;
      *(v69 + 16) = v77 + 1;
      v78 = v69 + 16 * v77;
      *(v78 + 32) = v73;
      *(v78 + 40) = v75;
    }

    while (v67 != v68);

    v65 = v132;
    goto LABEL_25;
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_254F04C4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v59 = a1;
  v60 = a3;
  v68 = sub_254F288E0();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254EC8BC0(&qword_27F75F3F8, &qword_254F2C680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v57 - v9;
  v76 = sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  v71 = *(v76 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](v76);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v66 = &v57 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v75 = &v57 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v58 = &v57 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = 0;
  v70 = a2;
  v74 = *(a2 + 16);
  v64 = (v4 + 8);
  v63 = MEMORY[0x277D84F90];
  v69 = &v57 - v22;
  v65 = v17;
  while (v74 != v24)
  {
    v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v25 = v24;
    v72 = *(v71 + 72);
    sub_254F07FAC(v70 + v73 + v72 * v24, v23, &qword_27F75ED80, &qword_254F2AF68);
    v26 = v75;
    sub_254F07FAC(v23, v75, &qword_27F75ED80, &qword_254F2AF68);
    v27 = *(v76 + 48);
    v28 = sub_254F28810();
    v29 = sub_254F28910();
    v30 = *(*(v29 - 8) + 8);
    v30(v26 + v27, v29);
    if (v28)
    {
      v41 = sub_254F29290();
      (*(*(v41 - 8) + 8))(v75, v41);
      goto LABEL_10;
    }

    sub_254F07FAC(v23, v17, &qword_27F75ED80, &qword_254F2AF68);
    v31 = *(v76 + 48);
    v32 = sub_254F28830();
    v30(&v17[v31], v29);
    if (v32)
    {
      v33 = v66;
      sub_254F07FAC(v23, v66, &qword_27F75ED80, &qword_254F2AF68);
      v34 = *(v76 + 48);
      v35 = v67;
      sub_254F28900();
      v30(v33 + v34, v29);
      v36 = sub_254F288D0();
      (*v64)(v35, v68);
      v37 = sub_254F29290();
      v38 = v33;
      v17 = v65;
      (*(*(v37 - 8) + 8))(v38, v37);
    }

    else
    {
      v36 = 0;
    }

    v39 = sub_254F29290();
    v40 = *(*(v39 - 8) + 8);
    v40(v17, v39);
    v40(v75, v39);
    if (v36)
    {
LABEL_10:
      v23 = v69;
      sub_254F07FF4(v69, v62, &qword_27F75ED80, &qword_254F2AF68);
      v42 = v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254ECA8F4(0, *(v42 + 16) + 1, 1);
        v42 = v77;
      }

      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_254ECA8F4(v44 > 1, v45 + 1, 1);
        v42 = v77;
      }

      v24 = v25 + 1;
      *(v42 + 16) = v45 + 1;
      v63 = v42;
      sub_254F07FF4(v62, v42 + v73 + v45 * v72, &qword_27F75ED80, &qword_254F2AF68);
    }

    else
    {
      v23 = v69;
      sub_254EB306C(v69, &qword_27F75ED80, &qword_254F2AF68);
      v24 = v25 + 1;
    }
  }

  v46 = v61;
  sub_254EFA2B8(v63, v61);

  if (sub_254EB2F2C(v46, 1, v76) == 1)
  {
    v47 = &qword_27F75F3F8;
    v48 = &qword_254F2C680;
    v49 = v46;
  }

  else
  {
    v50 = v58;
    sub_254F07FF4(v46, v58, &qword_27F75ED80, &qword_254F2AF68);
    sub_254EC8BC0(&qword_27F75ED78, &qword_254F2AF60);
    v51 = *(v71 + 72);
    v52 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_254F2AE00;
    sub_254F07FAC(v50, v53 + v52, &qword_27F75ED80, &qword_254F2AF68);
    v54 = v60;
    v55 = *v60;
    swift_isUniquelyReferenced_nonNull_native();
    v77 = *v54;
    sub_254F07218(v53, v59);
    *v54 = v77;
    v49 = v50;
    v47 = &qword_27F75ED80;
    v48 = &qword_254F2AF68;
  }

  return sub_254EB306C(v49, v47, v48);
}

uint64_t sub_254F052EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_254F291E0();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_254F288E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254EC8BC0(&qword_27F75F2E8, &qword_254F2C430);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v18 = sub_254F28850();
  sub_254EFA210(v18, v17);

  v19 = sub_254F27F50();
  if (sub_254EB2F2C(v17, 1, v19) == 1)
  {
    sub_254EB306C(v17, &qword_27F75F2E8, &qword_254F2C430);
  }

  else
  {
    sub_254F27F30();
    v21 = v20;
    (*(*(v19 - 8) + 8))(v17, v19);
    if (v21)
    {
      goto LABEL_7;
    }
  }

  sub_254F28900();
  sub_254F28870();
  (*(v7 + 8))(v10, v6);
  if (sub_254EB2F2C(v15, 1, v19) != 1)
  {
    sub_254F27F30();
    v23 = v22;
    (*(*(v19 - 8) + 8))(v15, v19);

    if (!v23)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_254EFB450();
  }

  sub_254EB306C(v15, &qword_27F75F2E8, &qword_254F2C430);

LABEL_8:
  sub_254F284E0();
  v25 = v39;
  v26 = sub_254F291D0();
  v27 = sub_254F296E0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_254EC2D74(0xD000000000000028, 0x8000000254F2E3C0, &v41);
    *(v28 + 12) = 2080;
    v30 = [v25 description];
    v31 = sub_254F29450();
    v33 = v32;

    v34 = sub_254EC2D74(v31, v33, &v41);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_254EAE000, v26, v27, "%s unable to get bundleId for %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C2EB80](v29, -1, -1);
    MEMORY[0x259C2EB80](v28, -1, -1);
  }

  (*(v37 + 8))(v5, v38);
  v35 = sub_254F29290();
  return sub_254EB2F04(v40, 1, 1, v35);
}