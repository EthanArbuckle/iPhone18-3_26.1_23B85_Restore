uint64_t sub_1DF1D69B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[2] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E400, &qword_1DF238330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v24[1] = v24 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E748, &qword_1DF2389B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v24 - v17;
  v24[6] = a3;
  v24[7] = a4;
  v24[8] = a5;
  v24[9] = a6;
  v19 = *(sub_1DF1C1900() + 40);

  v24[4] = v19();
  v24[5] = v20;
  (*(v15 + 16))(v18, a1, v14);
  v21 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v21, v18, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E750, &qword_1DF2389C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E758, &qword_1DF2389C8);
  sub_1DF164BEC(&qword_1ECE0E760, &qword_1ECE0E750, &qword_1DF2389C0);
  sub_1DF164BEC(&qword_1ECE0E768, &qword_1ECE0E758, &qword_1DF2389C8);
  sub_1DF22A930();
}

uint64_t sub_1DF1D6E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E720, &qword_1DF2389A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  v16 = *(sub_1DF1C1BCC() + 40);

  v22[4] = v16();
  v22[5] = v17;
  v18 = *(v12 + 16);
  v22[1] = a1;
  v18(v15, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E728, &qword_1DF2389A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E730, &qword_1DF2389B0);
  sub_1DF164BEC(&qword_1ECE0E738, &qword_1ECE0E728, &qword_1DF2389A8);
  sub_1DF164BEC(&qword_1ECE0E740, &qword_1ECE0E730, &qword_1DF2389B0);
  sub_1DF22A930();
}

uint64_t sub_1DF1D7224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6E8, &qword_1DF238978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = *(a3 + 16);
  v20 = *a3;
  v21 = v10;
  v22 = *(a3 + 32);
  v11 = *(sub_1DF1C20F0() + 40);
  sub_1DF1F128C(a3, v17);
  v18 = v11();
  v19 = v12;
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6F0, &qword_1DF238980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6F8, &qword_1DF238988);
  sub_1DF164BEC(&qword_1ECE0E700, &qword_1ECE0E6F0, &qword_1DF238980);
  sub_1DF164BEC(&qword_1ECE0E708, &qword_1ECE0E6F8, &qword_1DF238988);
  sub_1DF22A930();
}

uint64_t sub_1DF1D7614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6B0, &qword_1DF238958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = *(a3 + 32);
  v11 = *(a3 + 48);
  v12 = *a3;
  v24 = *(a3 + 16);
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 64);
  v23 = v12;
  v13 = *(sub_1DF1C23EC() + 40);
  sub_1DF1B88E4(a3, v20);
  *&v22 = v13();
  *(&v22 + 1) = v14;
  v15 = *(v6 + 16);
  v19[1] = a1;
  v15(v9, a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6B8, &qword_1DF238960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E6C0, &qword_1DF238968);
  sub_1DF164BEC(&qword_1ECE0E6C8, &qword_1ECE0E6B8, &qword_1DF238960);
  sub_1DF164BEC(&qword_1ECE0E6D0, &qword_1ECE0E6C0, &qword_1DF238968);
  sub_1DF22A930();
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  sub_1DF16184C(v20, &qword_1ECE0E6B8, &qword_1DF238960);
}

uint64_t sub_1DF1D7A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E678, &qword_1DF238930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E680, &qword_1DF238938);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (v22 - v13);
  sub_1DF1F1BE4(a3, v22 + *(v12 + 36) - v13, type metadata accessor for ListIndexDictionaryRequest);
  v15 = type metadata accessor for ListIndexDictionaryRequest(0);
  v16 = sub_1DF1F2214(&qword_1ECE0DD40, 255, type metadata accessor for ListIndexDictionaryRequest);
  *v14 = (*(v16 + 40))(v15, v16);
  v14[1] = v17;
  v18 = *(v6 + 16);
  v22[0] = a1;
  v18(v9, a1, v5);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  (*(v6 + 32))(v20 + v19, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E688, &qword_1DF238940);
  sub_1DF164BEC(&qword_1ECE0E690, &qword_1ECE0E680, &qword_1DF238938);
  sub_1DF164BEC(&qword_1ECE0E698, &qword_1ECE0E688, &qword_1DF238940);
  sub_1DF22A930();
  sub_1DF16184C(v14, &qword_1ECE0E680, &qword_1DF238938);
}

uint64_t sub_1DF1D7EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E640, &qword_1DF238908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = *(a3 + 16);
  v20 = *a3;
  v21 = v10;
  v22 = *(a3 + 32);
  v11 = *(sub_1DF1C2C6C() + 40);
  sub_1DF1F0E60(a3, v17);
  v18 = v11();
  v19 = v12;
  (*(v6 + 16))(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E648, &qword_1DF238910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E650, &qword_1DF238918);
  sub_1DF164BEC(&qword_1ECE0E658, &qword_1ECE0E648, &qword_1DF238910);
  sub_1DF164BEC(&qword_1ECE0E660, &qword_1ECE0E650, &qword_1DF238918);
  sub_1DF22A930();
}

uint64_t sub_1DF1D829C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E608, &qword_1DF2388E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  v16 = *(sub_1DF1C26E8() + 40);

  v22[4] = v16();
  v22[5] = v17;
  v18 = *(v12 + 16);
  v22[1] = a1;
  v18(v15, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E610, &qword_1DF2388E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E618, &qword_1DF2388F0);
  sub_1DF164BEC(&qword_1ECE0E620, &qword_1ECE0E610, &qword_1DF2388E8);
  sub_1DF164BEC(&qword_1ECE0E628, &qword_1ECE0E618, &qword_1DF2388F0);
  sub_1DF22A930();
}

uint64_t sub_1DF1D8698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[2] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5D8, &qword_1DF2388C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = *(a3 + 32);
  v11 = *(a3 + 48);
  v12 = *a3;
  v24 = *(a3 + 16);
  v25 = v10;
  v26 = v11;
  v27 = *(a3 + 64);
  v23 = v12;
  v13 = *(sub_1DF1C2F68() + 40);
  sub_1DF1BB220(a3, v20);
  *&v22 = v13();
  *(&v22 + 1) = v14;
  v15 = *(v6 + 16);
  v19[1] = a1;
  v15(v9, a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5E0, &qword_1DF2388C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5E8, &qword_1DF2388D0);
  sub_1DF164BEC(&qword_1ECE0E5F0, &qword_1ECE0E5E0, &qword_1DF2388C8);
  sub_1DF164BEC(&qword_1ECE0E5F8, &qword_1ECE0E5E8, &qword_1DF2388D0);
  sub_1DF22A930();
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  sub_1DF16184C(v20, &qword_1ECE0E5E0, &qword_1DF2388C8);
}

uint64_t sub_1DF1D8AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5A0, &qword_1DF238898);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  v16 = *(sub_1DF1C3264() + 40);

  v22[4] = v16();
  v22[5] = v17;
  v18 = *(v12 + 16);
  v22[1] = a1;
  v18(v15, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5A8, &qword_1DF2388A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E5B0, &qword_1DF2388A8);
  sub_1DF164BEC(&qword_1ECE0E5B8, &qword_1ECE0E5A8, &qword_1DF2388A0);
  sub_1DF164BEC(&qword_1ECE0E5C0, &qword_1ECE0E5B0, &qword_1DF2388A8);
  sub_1DF22A930();
}

uint64_t sub_1DF1D8EE8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E560, &qword_1DF238870);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v16 = a3;
  v10 = sub_1DF1F0BCC();
  v15[1] = (*(v10 + 40))(&type metadata for GetInfoDictionaryRequest, v10);
  v15[2] = v11;
  (*(v6 + 16))(v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E570, &qword_1DF238878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E578, &qword_1DF238880);
  sub_1DF164BEC(&qword_1ECE0E580, &qword_1ECE0E570, &qword_1DF238878);
  sub_1DF164BEC(&qword_1ECE0E588, &qword_1ECE0E578, &qword_1DF238880);
  sub_1DF22A930();
}

uint64_t sub_1DF1D9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E528, &qword_1DF238848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v17[4] = a3;
  v17[5] = a4;
  v12 = *(sub_1DF1C3B3C() + 40);

  v17[2] = v12();
  v17[3] = v13;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E530, &qword_1DF238850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E538, &qword_1DF238858);
  sub_1DF164BEC(&qword_1ECE0E540, &qword_1ECE0E530, &qword_1DF238850);
  sub_1DF164BEC(&qword_1ECE0E548, &qword_1ECE0E538, &qword_1DF238858);
  sub_1DF22A930();
}

uint64_t sub_1DF1D965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4E8, &qword_1DF238818);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v17[4] = a3;
  v17[5] = a4;
  v12 = *(sub_1DF1C3EB4() + 40);

  v17[2] = v12();
  v17[3] = v13;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4F0, &qword_1DF238820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4F8, &qword_1DF238828);
  sub_1DF164BEC(&qword_1ECE0E500, &qword_1ECE0E4F0, &qword_1DF238820);
  sub_1DF164BEC(&qword_1ECE0E508, &qword_1ECE0E4F8, &qword_1DF238828);
  sub_1DF22A930();
}

uint64_t sub_1DF1D9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4B8, &qword_1DF2387F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  v22[6] = a3;
  v22[7] = a4;
  v22[8] = a5;
  v22[9] = a6;
  v16 = *(sub_1DF1C422C() + 40);

  v22[4] = v16();
  v22[5] = v17;
  v18 = *(v12 + 16);
  v22[1] = a1;
  v18(v15, a1, v11);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + v19, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4C0, &qword_1DF238800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4C8, &qword_1DF238808);
  sub_1DF164BEC(&qword_1ECE0E4D0, &qword_1ECE0E4C0, &qword_1DF238800);
  sub_1DF164BEC(&qword_1ECE0E4D8, &qword_1ECE0E4C8, &qword_1DF238808);
  sub_1DF22A930();
}

uint64_t sub_1DF1D9E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E468, &qword_1DF2387A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v15[4] = a3;
  v10 = *(sub_1DF1F0870() + 40);

  v15[2] = v10();
  v15[3] = v11;
  (*(v6 + 16))(v9, a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E478, &qword_1DF2387A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E480, &qword_1DF2387B0);
  sub_1DF164BEC(&qword_1ECE0E488, &qword_1ECE0E478, &qword_1DF2387A8);
  sub_1DF164BEC(&qword_1ECE0E490, &qword_1ECE0E480, &qword_1DF2387B0);
  sub_1DF22A930();
}

uint64_t sub_1DF1DA1D8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v2;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0EA80, &qword_1DF238BC0);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }

  else
  {
    v11 = 256;
    if ((*(a1 + 17) & 1) == 0)
    {
      v11 = 0;
    }

    v13 = v11 & 0xFFFFFFFFFFFFFFFELL | *(a1 + 16) & 1;
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA68, &qword_1DF238BA8);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DA3C8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v2;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0EA58, &qword_1DF238B98);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }

  else
  {
    v12 = *(a1 + 16) & 1;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA28, &qword_1DF238B80);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DA58C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  if (a4)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = a1;
    v14 = sub_1DF22A8A0();
    v15 = sub_1DF22B110();
    sub_1DF1F1EA4(a1, a2, a3, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DF15A000, v14, v15, "Failed at parsing XPC response: %@", v16, 0xCu);
      sub_1DF16184C(v17, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return sub_1DF22AFA0();
}

void sub_1DF1DA73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E958, &qword_1DF238B08);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E978, &qword_1DF238B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E990, &qword_1DF238B28);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v25 - v12);
  sub_1DF17A6A8(a1, &v25 - v12, &qword_1ECE0E990, &qword_1DF238B28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF22A8C0();
    __swift_project_value_buffer(v15, qword_1ED8E92C0);
    v16 = v14;
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B110();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DF15A000, v17, v18, "Failed at parsing XPC response: %@", v19, 0xCu);
      sub_1DF16184C(v20, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v20, -1, -1);
      MEMORY[0x1E12D0B40](v19, -1, -1);
    }

    TaskResponse = type metadata accessor for GetTaskResponse(0);
    (*(*(TaskResponse - 8) + 56))(v5, 1, 1, TaskResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E960, &qword_1DF238B10);
    sub_1DF22AFA0();
  }

  else
  {
    sub_1DF17A710(v13, v9, &qword_1ECE0E978, &qword_1DF238B20);
    sub_1DF1F1BE4(&v9[*(v6 + 36)], v5, type metadata accessor for GetTaskResponse);
    v24 = type metadata accessor for GetTaskResponse(0);
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E960, &qword_1DF238B10);
    sub_1DF22AFA0();
    sub_1DF16184C(v9, &qword_1ECE0E978, &qword_1DF238B20);
  }
}

uint64_t sub_1DF1DAAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if ((a3 & 0x10000) != 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF22A8C0();
    __swift_project_value_buffer(v11, qword_1ED8E92C0);
    v12 = a1;
    v13 = sub_1DF22A8A0();
    v14 = sub_1DF22B110();
    sub_1DF1F1920(a1, a2, a3, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1DF15A000, v13, v14, "Failed at parsing XPC response: %@", v15, 0xCu);
      sub_1DF16184C(v16, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v16, -1, -1);
      MEMORY[0x1E12D0B40](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  }

  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DACC0(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100) != 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF22A8C0();
    __swift_project_value_buffer(v6, qword_1ED8E92C0);
    v7 = a1;
    v8 = sub_1DF22A8A0();
    v9 = sub_1DF22B110();
    sub_1DF1F1920(a1, a2, a3, 1);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1DF15A000, v8, v9, "Failed at parsing XPC response: %@", v10, 0xCu);
      sub_1DF16184C(v11, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v11, -1, -1);
      MEMORY[0x1E12D0B40](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E8B8, &qword_1DF238AB0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E8B8, &qword_1DF238AB0);
  }

  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DAE84(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 80))
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v1;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0E850, &qword_1DF238A60);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }

    *v15 = xmmword_1DF2381E0;
    memset(&v15[16], 0, 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E820, &qword_1DF238A48);
  }

  else
  {
    *v15 = *a1;
    *&v15[24] = *(a1 + 24);
    *&v15[40] = *(a1 + 40);
    *&v15[56] = *(a1 + 56);
    *&v15[65] = *(a1 + 65);
    *&v15[8] = *(a1 + 8);
    v11 = *(a1 + 32);
    v14[4] = *(a1 + 16);
    v14[5] = v11;
    v12 = *(a1 + 64);
    v14[6] = *(a1 + 48);
    v14[7] = v12;
    sub_1DF1F1778(&v15[16], v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E820, &qword_1DF238A48);
  }

  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DB0A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v2;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0E7D8, &qword_1DF238A18);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E7B0, &qword_1DF238A00);
  return sub_1DF22AFA0();
}

void sub_1DF1DB260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E400, &qword_1DF238330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E758, &qword_1DF2389C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E770, &qword_1DF2389D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v25 - v12);
  sub_1DF17A6A8(a1, &v25 - v12, &qword_1ECE0E770, &qword_1DF2389D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF22A8C0();
    __swift_project_value_buffer(v15, qword_1ED8E92C0);
    v16 = v14;
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B110();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DF15A000, v17, v18, "Failed at parsing XPC response: %@", v19, 0xCu);
      sub_1DF16184C(v20, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v20, -1, -1);
      MEMORY[0x1E12D0B40](v19, -1, -1);
    }

    KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
    (*(*(KeyExpirationResponse - 8) + 56))(v5, 1, 1, KeyExpirationResponse);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E748, &qword_1DF2389B8);
    sub_1DF22AFA0();
  }

  else
  {
    sub_1DF17A710(v13, v9, &qword_1ECE0E758, &qword_1DF2389C8);
    sub_1DF1F1BE4(&v9[*(v6 + 36)], v5, type metadata accessor for GetKeyExpirationResponse);
    v24 = type metadata accessor for GetKeyExpirationResponse(0);
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E748, &qword_1DF2389B8);
    sub_1DF22AFA0();
    sub_1DF16184C(v9, &qword_1ECE0E758, &qword_1DF2389C8);
  }
}

uint64_t sub_1DF1DB618(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if ((a3 & 0x10000) != 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF22A8C0();
    __swift_project_value_buffer(v11, qword_1ED8E92C0);
    v12 = a1;
    v13 = sub_1DF22A8A0();
    v14 = sub_1DF22B110();
    sub_1DF1F1920(a1, a2, a3, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1DF15A000, v13, v14, "Failed at parsing XPC response: %@", v15, 0xCu);
      sub_1DF16184C(v16, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v16, -1, -1);
      MEMORY[0x1E12D0B40](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  }

  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DB7D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (*(a1 + 40))
  {
    v11 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = v11;
    v14 = sub_1DF22A8A0();
    v15 = sub_1DF22B110();
    sub_1DF16184C(a1, a3, a4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DF15A000, v14, v15, "Failed at parsing XPC response: %@", v16, 0xCu);
      sub_1DF16184C(v17, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }
  }

  else
  {
    v21 = *(a1 + 16);
    sub_1DF1B7FDC(*(a1 + 24), *(a1 + 32));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DB9A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (*(a1 + 33))
  {
    v11 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = v11;
    v14 = sub_1DF22A8A0();
    v15 = sub_1DF22B110();
    sub_1DF16184C(a1, a3, a4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DF15A000, v14, v15, "Failed at parsing XPC response: %@", v16, 0xCu);
      sub_1DF16184C(v17, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32) & 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DBB7C(uint64_t a1)
{
  if (*(a1 + 89))
  {
    v2 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v2;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0E590, &qword_1DF238888);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    *v15 = *(a1 + 64);
    *&v15[9] = *(a1 + 73);
    v12 = *(a1 + 16);
    v13 = *(a1 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E560, &qword_1DF238870);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DBD50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (*(a1 + 40))
  {
    v11 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v12 = sub_1DF22A8C0();
    __swift_project_value_buffer(v12, qword_1ED8E92C0);
    v13 = v11;
    v14 = sub_1DF22A8A0();
    v15 = sub_1DF22B110();
    sub_1DF16184C(a1, a3, a4);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v11;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1DF15A000, v14, v15, "Failed at parsing XPC response: %@", v16, 0xCu);
      sub_1DF16184C(v17, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DBF20(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v3 = sub_1DF22A8C0();
    __swift_project_value_buffer(v3, qword_1ED8E92C0);
    v4 = v2;
    v5 = sub_1DF22A8A0();
    v6 = sub_1DF22B110();
    sub_1DF16184C(a1, &qword_1ECE0E498, &qword_1DF2387B8);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DF15A000, v5, v6, "Failed at parsing XPC response: %@", v7, 0xCu);
      sub_1DF16184C(v8, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v8, -1, -1);
      MEMORY[0x1E12D0B40](v7, -1, -1);
    }
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = *(a1 + 32);
    sub_1DF1BD190(*(a1 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E468, &qword_1DF2387A0);
  return sub_1DF22AFA0();
}

uint64_t sub_1DF1DC0E8(uint64_t a1, uint64_t a2)
{
  v3[11] = v2;
  v3[12] = a2;
  v3[10] = a1;
  v4 = swift_task_alloc();
  v3[13] = v4;
  *v4 = v3;
  v4[1] = sub_1DF1DC18C;

  return sub_1DF1CBF54((v3 + 2), 1, (v3 + 7));
}

uint64_t sub_1DF1DC18C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1DF1DC2DC;
  }

  else
  {
    v5 = sub_1DF1DC2A0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DC2A0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 17);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 1) = v2;
  *(v1 + 8) = v3;
  *(v1 + 24) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DC2DC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  *v1 = *(v0 + 56);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DC308(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = v2;
  *(v3 + 136) = a2;
  v4 = *(a1 + 1);
  *(v3 + 16) = *a1;
  *(v3 + 17) = v4;
  *(v3 + 24) = *(a1 + 8);
  *(v3 + 40) = *(a1 + 24);
  v5 = swift_task_alloc();
  *(v3 + 144) = v5;
  *v5 = v3;
  v5[1] = sub_1DF1DC3CC;

  return sub_1DF1CC3C0(v3 + 56, v3 + 16, v3 + 80);
}

uint64_t sub_1DF1DC3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;

  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1DF1DC598;
  }

  else
  {
    v5 = sub_1DF1DC4E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DC4E0()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 136);
    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = 1;
    *(v0 + 104) = v2;
    *(v0 + 112) = v1;
    *(v0 + 120) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 8);
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 8);
  }

  return v4(v5);
}

uint64_t sub_1DF1DC598()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  *(v1 + 16) = v2;
  return (*(v0 + 8))(0);
}

unint64_t sub_1DF1DC5C8()
{
  result = qword_1ECE0E3F8;
  if (!qword_1ECE0E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E3F8);
  }

  return result;
}

uint64_t sub_1DF1DC61C(char a1, uint64_t a2)
{
  v3[6] = v2;
  v3[7] = a2;
  v5 = swift_task_alloc();
  v3[8] = v5;
  *v5 = v3;
  v5[1] = sub_1DF1DC6C0;

  return sub_1DF1CC810((v3 + 5), a1, (v3 + 2));
}

uint64_t sub_1DF1DC6C0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;

  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1DF1F22D4;
  }

  else
  {
    v5 = sub_1DF1F22E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DC7D4(char a1, uint64_t a2)
{
  v3[5] = v2;
  v3[6] = a2;
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_1DF1DC878;

  return sub_1DF1CCB40(v3 + 33, a1, (v3 + 2));
}

uint64_t sub_1DF1DC878()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1DF1F22D8;
  }

  else
  {
    v5 = sub_1DF1F22EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DC98C(uint64_t a1)
{
  v2[6] = v1;
  v2[7] = a1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1DF1DC6C0;

  return sub_1DF1CCE70((v2 + 5), 0, 1, (v2 + 2));
}

uint64_t sub_1DF1DCA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[5] = a1;
  v8 = *(*(type metadata accessor for GetTaskResponse(0) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v5[8] = v9;
  v10 = swift_task_alloc();
  v5[9] = v10;
  *v10 = v5;
  v10[1] = sub_1DF1DCB18;

  return sub_1DF1CD298(v9, a2, a3, (v5 + 2));
}

uint64_t sub_1DF1DCB18()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;

  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1DF1DCCB0;
  }

  else
  {
    v5 = sub_1DF1DCC2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DCC2C()
{
  sub_1DF17A710(v0[8], v0[5], &qword_1ECE0D5A0, &unk_1DF238290);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DF1DCCB0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF1DCD24(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[10] = a2;
  v3[8] = a1;
  v4 = *(*(type metadata accessor for AddTaskRequest(0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1DCDB8, v2, 0);
}

uint64_t sub_1DF1DCDB8()
{
  sub_1DF1F1BE4(v0[8], v0[11], type metadata accessor for TaskDefinition);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1DF1DCE78;
  v2 = v0[11];
  v3 = v0[9];

  return sub_1DF1CD820(v0 + 33, v2, (v0 + 2));
}

uint64_t sub_1DF1DCE78()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v8 = *v1;

  sub_1DF1EA628(v4, type metadata accessor for AddTaskRequest);
  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1DF1DD1BC;
  }

  else
  {
    v6 = sub_1DF1DCFC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1DCFC4()
{
  v1 = *(v0 + 34);
  if (v1 <= 3)
  {
    v4 = 0x4E64696C61766E69;
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000011;
    if (v1 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001DF23D270;
    }

    if (*(v0 + 34))
    {
      v4 = 0xD000000000000017;
      v7 = 0x80000001DF23D230;
    }

    else
    {
      v7 = 0xEB00000000656D61;
    }

    if (*(v0 + 34) <= 1u)
    {
      v3 = v4;
    }

    else
    {
      v3 = v6;
    }

    if (*(v0 + 34) <= 1u)
    {
      v2 = v7;
    }

    else
    {
      v2 = v5;
    }

    goto LABEL_21;
  }

  if (*(v0 + 34) <= 5u)
  {
    v3 = 0xD000000000000019;
    if (v1 == 4)
    {
      v2 = 0x80000001DF23D290;
    }

    else
    {
      v3 = 0xD000000000000010;
      v2 = 0x80000001DF23D2B0;
    }

    goto LABEL_21;
  }

  if (v1 == 6)
  {
    v2 = 0xEE0065746144646ELL;
    v3 = 0x4564696C61766E69;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    v2 = 0xED00006570795453;
    v3 = 0x4F64696C61766E69;
LABEL_21:
    v8 = *(v0 + 80);
    *v8 = v3;
    *(v8 + 8) = v2;
    *(v8 + 16) = 1;
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    *(v0 + 56) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v9 = *(v0 + 88);

    v10 = *(v0 + 8);
    v11 = 0;
    goto LABEL_22;
  }

  v13 = *(v0 + 33);
  v14 = *(v0 + 88);

  v10 = *(v0 + 8);
  v11 = v13;
LABEL_22:

  return v10(v11);
}

uint64_t sub_1DF1DD1BC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1DF1DD238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = v3;
  v4[9] = a3;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1DD2EC;

  return sub_1DF1CDC28(v4 + 33, a1, a2, (v4 + 2));
}

uint64_t sub_1DF1DD2EC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;

  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1DF1DD5E4;
  }

  else
  {
    v5 = sub_1DF1DD400;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DD400()
{
  v1 = *(v0 + 34);
  if (v1 <= 3)
  {
    v4 = 0x4E64696C61766E69;
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000011;
    if (v1 != 2)
    {
      v6 = 0xD000000000000012;
      v5 = 0x80000001DF23D270;
    }

    if (*(v0 + 34))
    {
      v4 = 0xD000000000000017;
      v7 = 0x80000001DF23D230;
    }

    else
    {
      v7 = 0xEB00000000656D61;
    }

    if (*(v0 + 34) <= 1u)
    {
      v3 = v4;
    }

    else
    {
      v3 = v6;
    }

    if (*(v0 + 34) <= 1u)
    {
      v2 = v7;
    }

    else
    {
      v2 = v5;
    }

    goto LABEL_21;
  }

  if (*(v0 + 34) <= 5u)
  {
    v3 = 0xD000000000000019;
    if (v1 == 4)
    {
      v2 = 0x80000001DF23D290;
    }

    else
    {
      v3 = 0xD000000000000010;
      v2 = 0x80000001DF23D2B0;
    }

    goto LABEL_21;
  }

  if (v1 == 6)
  {
    v2 = 0xEE0065746144646ELL;
    v3 = 0x4564696C61766E69;
    goto LABEL_21;
  }

  if (v1 == 7)
  {
    v2 = 0xED00006570795453;
    v3 = 0x4F64696C61766E69;
LABEL_21:
    v8 = *(v0 + 72);
    *v8 = v3;
    *(v8 + 8) = v2;
    *(v8 + 16) = 1;
    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    *(v0 + 56) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v9 = *(v0 + 8);
    v10 = 0;
    goto LABEL_22;
  }

  v10 = *(v0 + 33);
  v9 = *(v0 + 8);
LABEL_22:

  return v9(v10);
}

uint64_t sub_1DF1DD5E4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))(0);
}

uint64_t sub_1DF1DD614(char a1, uint64_t a2)
{
  v3[5] = v2;
  v3[6] = a2;
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_1DF1DD6B8;

  return sub_1DF1CE038(v3 + 33, a1, (v3 + 2));
}

uint64_t sub_1DF1DD6B8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;

  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1DF1DD7E8;
  }

  else
  {
    v5 = sub_1DF1DD7CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DD7E8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))(0);
}

uint64_t sub_1DF1DD818(uint64_t a1)
{
  v2[6] = v1;
  v2[7] = a1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1DF1DD8B8;

  return sub_1DF1CE43C((v2 + 5), 1, (v2 + 2));
}

uint64_t sub_1DF1DD8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;

  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1DF1DD9E8;
  }

  else
  {
    v5 = sub_1DF1DD9CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DD9E8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDA14(uint64_t a1)
{
  v2[6] = v1;
  v2[7] = a1;
  v3 = swift_task_alloc();
  v2[8] = v3;
  *v3 = v2;
  v3[1] = sub_1DF1DC6C0;

  return sub_1DF1CE85C((v2 + 5), 0, 0, (v2 + 2));
}

uint64_t sub_1DF1DDAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = v4;
  v5[15] = a4;
  v5[13] = a1;
  v8 = swift_task_alloc();
  v5[16] = v8;
  *v8 = v5;
  v8[1] = sub_1DF1DDB70;

  return sub_1DF1CEA60((v5 + 2), a2, a3, (v5 + 10));
}

uint64_t sub_1DF1DDB70()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_1DF1DDCC8;
  }

  else
  {
    v6 = sub_1DF1DDC9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1DDC9C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v1[2] = *(v0 + 48);
  v1[3] = v4;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDCC8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  *v1 = *(v0 + 80);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1DDCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 168) = v4;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  *(v5 + 184) = *a3;
  *(v5 + 51) = *(a3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DF1DDD28, v4, 0);
}

uint64_t sub_1DF1DDD28()
{
  v1 = *(v0 + 51);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  *(v0 + 208) = v1;
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = *(v0 + 184);
  *(v0 + 48) = v1;

  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1DF1DDDFC;
  v5 = *(v0 + 168);

  return sub_1DF1CEF00(v0 + 49, v0 + 16, v0 + 56);
}

uint64_t sub_1DF1DDDFC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 168);
    sub_1DF1DE1B0(*(v2 + 56), *(v2 + 64), *(v2 + 72));
    sub_1DF1DE1EC(v2 + 16);
    v5 = sub_1DF1DE114;
  }

  else
  {
    v4 = *(v2 + 168);
    sub_1DF1DE1EC(v2 + 16);
    v5 = sub_1DF1DDF30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1DDF30()
{
  v1 = *(v0 + 50);
  if (v1 <= 2)
  {
    v5 = 0xEE00747365757165;
    v6 = 0x5264696C61766E69;
    v4 = 0xD000000000000012;
    if (v1 != 1)
    {
      v6 = 0x696C756465686373;
      v5 = 0xEF726F727245676ELL;
    }

    if (*(v0 + 50))
    {
      v4 = v6;
      v3 = v5;
    }

    else
    {
      v3 = 0x80000001DF23D6C0;
    }

    goto LABEL_13;
  }

  if (*(v0 + 50) <= 4u)
  {
    v2 = v1 == 3;
    v3 = 0xEB0000000064696CLL;
    v4 = 0x6E6E75526B736174;
    if (v2)
    {
      v4 = 0x61766E496B736174;
    }

    else
    {
      v3 = 0xEB00000000676E69;
    }

    goto LABEL_13;
  }

  if (v1 == 5)
  {
    v4 = 0x646E65506B736174;
    v3 = 0xEB00000000676E69;
LABEL_13:
    v7 = *(v0 + 176);
    *v7 = v4;
    *(v7 + 8) = v3;
    v8 = 1;
    *(v7 + 16) = 1;
    *(v0 + 128) = v4;
    v9 = 144;
    v10 = 136;
LABEL_14:
    *(v0 + v10) = v3;
    *(v0 + v9) = v8;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);
    v12 = 0;
    goto LABEL_15;
  }

  if (*(v0 + 49))
  {
    v3 = 0;
    v14 = *(v0 + 176);
    *v14 = xmmword_1DF2381D0;
    v8 = 4;
    *(v14 + 16) = 4;
    *(v0 + 104) = 2;
    v9 = 120;
    v10 = 112;
    goto LABEL_14;
  }

  v11 = *(v0 + 8);
  v12 = 1;
LABEL_15:

  return v11(v12);
}

uint64_t sub_1DF1DE114()
{
  v1 = *(v0 + 176);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 80) = xmmword_1DF238200;
  *(v0 + 96) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

void sub_1DF1DE1B0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

uint64_t sub_1DF1DE240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[14] = a3;
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1DE2F4;

  return sub_1DF1CF31C((v4 + 11), a1, a2, (v4 + 2));
}

uint64_t sub_1DF1DE2F4()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;

  v6 = *(v2 + 104);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));
    v7 = sub_1DF1DE5CC;
  }

  else
  {
    v7 = sub_1DF1DE42C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1DE42C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (v1 == 5)
  {
    if (!v2)
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {

    v5 = 0x4764696C61766E69;
    v6 = 0xEA00000000007965;
    v7 = 0x4B64696C61766E69;
    v8 = 0xEC00000065756C61;
    v9 = 0x5664696C61766E69;
    if (v1 != 3)
    {
      v9 = 0xD000000000000011;
      v8 = 0x80000001DF23CF10;
    }

    if (v1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    if (v1)
    {
      v10 = 0xEC00000070756F72;
    }

    else
    {
      v5 = 0xD000000000000010;
      v10 = 0x80000001DF23CED0;
    }

    if (v1 <= 1)
    {
      v11 = v5;
    }

    else
    {
      v11 = v7;
    }

    if (v1 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = *(v0 + 112);
    *v13 = v11;
    *(v13 + 8) = v12;
    *(v13 + 16) = 1;
    *(v0 + 64) = v11;
    *(v0 + 72) = v12;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1DF1DE5CC()
{
  v1 = *(v0 + 112);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1DE664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = v5;
  v6[16] = a5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DE68C, v5, 0);
}

uint64_t sub_1DF1DE68C()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1DF1DE748;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];

  return sub_1DF1CF748(v0 + 33, v8, v6, v7, v4, (v0 + 2));
}

uint64_t sub_1DF1DE748()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = v2[15];
  v7 = v2[14];
  v8 = v2[12];
  if (v0)
  {
    sub_1DF1DE1B0(v3[2], v3[3], *(v3 + 32));

    v9 = sub_1DF1DEA84;
  }

  else
  {

    v9 = sub_1DF1DE8D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, 0);
}

uint64_t sub_1DF1DE8D0()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 128);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 34);
  v10 = 1635017060;
  if (v9)
  {
    v10 = 1953720684;
  }

  if (v9 == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v9 == 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = *(v0 + 8);

  return v13(v11, v12);
}

uint64_t sub_1DF1DEA84()
{
  v1 = *(v0 + 128);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1DEB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = v6;
  v7[17] = a6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E400, &qword_1DF238330) - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  KeyExpirationResponse = type metadata accessor for GetKeyExpirationResponse(0);
  v7[19] = KeyExpirationResponse;
  v10 = *(KeyExpirationResponse - 8);
  v7[20] = v10;
  v11 = *(v10 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1DEC20, v6, 0);
}

uint64_t sub_1DF1DEC20()
{
  v1 = v0[15];
  v2 = v0[13];

  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1DF1DECDC;
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[12];

  return sub_1DF1CFB58(v4, v9, v7, v8, v5, (v0 + 2));
}

uint64_t sub_1DF1DECDC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;

  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[13];
  if (v0)
  {
    sub_1DF1DE1B0(v3[2], v3[3], *(v3 + 32));

    v9 = sub_1DF1DF0EC;
  }

  else
  {

    v9 = sub_1DF1DEE64;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, 0);
}

uint64_t sub_1DF1DEE64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  (*(*(v0 + 160) + 56))(v2, 0, 1, *(v0 + 152));
  sub_1DF1F1A78(v2, v1, type metadata accessor for GetKeyExpirationResponse);
  v3 = *v1;
  if (v3 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v3 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*v1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*v1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v3 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 168);
    v9 = *(v0 + 136);
    *v9 = v6;
    *(v9 + 8) = v7;
    *(v9 + 16) = 1;
    *(v0 + 64) = v6;
    *(v0 + 72) = v7;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF1EA628(v8, type metadata accessor for GetKeyExpirationResponse);
    v10 = *(v0 + 168);
    v11 = *(v0 + 144);

    v12 = *(v0 + 8);

    return v12();
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  sub_1DF17A6A8(v14 + *(v16 + 20), *(v0 + 88), &qword_1ECE0CDC0, &unk_1DF22D7C0);
  v17 = v14 + *(v16 + 24);
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  sub_1DF1EA628(v14, type metadata accessor for GetKeyExpirationResponse);

  v21 = *(v0 + 8);

  return v21(v18, v19, v20);
}

uint64_t sub_1DF1DF0EC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  (*(*(v0 + 160) + 56))(v2, 1, 1, *(v0 + 152));
  sub_1DF16184C(v2, &qword_1ECE0E400, &qword_1DF238330);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF1DF1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[14] = a3;
  v4[11] = a1;
  v4[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DF1F4, v3, 0);
}

uint64_t sub_1DF1DF1F4()
{
  v1 = v0[12];

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1DF1DF2A8;
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];

  return sub_1DF1D00F4(v0 + 33, v5, v3, 0, 0, (v0 + 2));
}

uint64_t sub_1DF1DF2A8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;

  v6 = *(v2 + 104);
  v7 = *(v2 + 96);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 16), *(v3 + 24), *(v3 + 32));

    v8 = sub_1DF1DF58C;
  }

  else
  {

    v8 = sub_1DF1DF41C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, 0);
}

uint64_t sub_1DF1DF41C()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 112);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 34) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1DF58C()
{
  v1 = *(v0 + 112);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1DF628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = v5;
  v6[16] = a5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1DF650, v5, 0);
}

uint64_t sub_1DF1DF650()
{
  v1 = v0[14];
  v2 = v0[12];

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1DF1DF718;
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  return sub_1DF1D00F4(v0 + 33, v7, v5, v6, v1, (v0 + 2));
}

uint64_t sub_1DF1DF718()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 136);
  v5 = *v1;

  v6 = v2[15];
  v7 = v2[14];
  v8 = v2[12];
  if (v0)
  {
    sub_1DF1DE1B0(v3[2], v3[3], *(v3 + 32));

    v9 = sub_1DF1DFA10;
  }

  else
  {

    v9 = sub_1DF1DF8A0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, 0);
}

uint64_t sub_1DF1DF8A0()
{
  v1 = *(v0 + 33);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 33))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 33))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 128);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 64) = v4;
    *(v0 + 72) = v5;
    *(v0 + 80) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 34) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1DFA10()
{
  v1 = *(v0 + 128);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 40) = xmmword_1DF238200;
  *(v0 + 56) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1DFAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 272) = v8;
  *(v9 + 280) = a8;
  *(v9 + 256) = a6;
  *(v9 + 264) = a7;
  *(v9 + 49) = a5;
  *(v9 + 240) = a3;
  *(v9 + 248) = a4;
  *(v9 + 224) = a1;
  *(v9 + 232) = a2;
  v10 = sub_1DF22AB50();
  *(v9 + 288) = v10;
  v11 = *(v10 - 8);
  *(v9 + 296) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 304) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750) - 8) + 64) + 15;
  *(v9 + 312) = swift_task_alloc();
  v14 = sub_1DF22AA80();
  *(v9 + 320) = v14;
  v15 = *(v14 - 8);
  *(v9 + 328) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 336) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1DFC10, v8, 0);
}

uint64_t sub_1DF1DFC10()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 24) = v4;
  *(v0 + 32) = v2;
  *(v0 + 40) = v3;
  *(v0 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 344) = v5;
  *v5 = v0;
  v5[1] = sub_1DF1DFCE8;
  v6 = *(v0 + 272);

  return sub_1DF1D0428(v0 + 56, v0 + 16, v0 + 80);
}

uint64_t sub_1DF1DFCE8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(v2 + 352) = v0;

  v5 = *(v2 + 272);
  if (v0)
  {
    sub_1DF1DE1B0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
    sub_1DF1E06F4(v2 + 16);
    v6 = sub_1DF1E0640;
  }

  else
  {
    sub_1DF1E06F4(v2 + 16);
    v6 = sub_1DF1DFE34;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1DFE34()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 360) = v3;
  *(v0 + 368) = v2;
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (v1)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v1)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 280);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 176) = v6;
    *(v0 + 184) = v7;
    *(v0 + 192) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v9 = *(v0 + 336);
    v10 = *(v0 + 304);
    v11 = *(v0 + 312);

    v12 = *(v0 + 8);

    return v12();
  }

  if (v2 >> 60 == 15 || *(v0 + 264) == 0)
  {
    v15 = *(v0 + 336);
    v17 = *(v0 + 304);
    v16 = *(v0 + 312);

    v18 = *(v0 + 8);

    return v18(v3, v2);
  }

  else
  {
    if (qword_1ECE0C778 != -1)
    {
      swift_once();
    }

    v19 = qword_1ECE0EEF0;
    *(v0 + 376) = qword_1ECE0EEF0;

    return MEMORY[0x1EEE6DFA0](sub_1DF1E00A4, v19, 0);
  }
}

uint64_t sub_1DF1E00A4()
{
  if (qword_1ECE0C780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E0134, v1, 0);
}

uint64_t sub_1DF1E0134()
{
  v1 = *(v0 + 376);
  *(v0 + 384) = qword_1ECE0EEF8;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E015C, v1, 0);
}

uint64_t sub_1DF1E015C()
{
  v1 = v0[48];
  v2 = v0[34];
  CryptoUtils.getClientEncryptionKey(accessGroup:)(v0[32], v0[33], v0[39]);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E01D0, v2, 0);
}

uint64_t sub_1DF1E01D0()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 280);
    sub_1DF16184C(v3, &qword_1ECE0CD50, &unk_1DF22D750);
    *v6 = 0xD00000000000002ALL;
    *(v6 + 8) = 0x80000001DF23DF20;
    *(v6 + 16) = 2;
    *(v0 + 128) = 0xD00000000000002ALL;
    *(v0 + 136) = 0x80000001DF23DF20;
    *(v0 + 144) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v5, v4);
LABEL_10:
    v31 = *(v0 + 336);
    v32 = *(v0 + 304);
    v33 = *(v0 + 312);

    v34 = *(v0 + 8);

    return v34();
  }

  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 352);
  v10 = *(v0 + 304);
  (*(v2 + 32))(*(v0 + 336), v3, v1);
  sub_1DF1B7FDC(v7, v8);
  sub_1DF1EA2C0(v7, v8);
  if (v9)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v15 = sub_1DF22A8C0();
    __swift_project_value_buffer(v15, qword_1ED8E92C0);
    v16 = v9;
    v17 = sub_1DF22A8A0();
    v18 = sub_1DF22B110();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v9;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1DF15A000, v17, v18, "Failed to decrypt data: %@", v19, 0xCu);
      sub_1DF16184C(v20, &qword_1ECE0C7E8, &qword_1DF230550);
      MEMORY[0x1E12D0B40](v20, -1, -1);
      MEMORY[0x1E12D0B40](v19, -1, -1);
    }

    v24 = *(v0 + 360);
    v23 = *(v0 + 368);
    v26 = *(v0 + 328);
    v25 = *(v0 + 336);
    v27 = *(v0 + 320);
    v28 = *(v0 + 280);

    sub_1DF22B300();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x1E12CF820](0xD000000000000018, 0x80000001DF23DF50);
    *(v0 + 216) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D448, &qword_1DF2305D8);
    sub_1DF22B3B0();
    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    *v28 = v29;
    *(v28 + 8) = v30;
    *(v28 + 16) = 2;
    *(v0 + 152) = v29;
    *(v0 + 160) = v30;
    *(v0 + 168) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    sub_1DF18A0A4(v24, v23);
    (*(v26 + 8))(v25, v27);
    goto LABEL_10;
  }

  v11 = *(v0 + 336);
  v12 = *(v0 + 304);
  v13 = sub_1DF22AB00();
  v37 = *(v0 + 328);
  v36 = *(v0 + 336);
  v38 = *(v0 + 320);
  v40 = *(v0 + 296);
  v39 = *(v0 + 304);
  v41 = *(v0 + 288);
  v42 = v13;
  v43 = v14;
  sub_1DF18A0A4(*(v0 + 360), *(v0 + 368));
  (*(v40 + 8))(v39, v41);
  (*(v37 + 8))(v36, v38);
  v44 = *(v0 + 336);
  v45 = *(v0 + 304);
  v46 = *(v0 + 312);

  v47 = *(v0 + 8);

  return v47(v42, v43);
}

uint64_t sub_1DF1E0640()
{
  v1 = *(v0 + 280);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 336);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF1E0748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v8;
  v9[12] = v22;
  v9[9] = v20;
  v9[10] = v21;
  v9[8] = a1;
  v17 = swift_task_alloc();
  v9[13] = v17;
  *v17 = v9;
  v17[1] = sub_1DF1E0840;

  return sub_1DF1DFAAC(a2, a3, a4, a5, a6, a7, a8, (v9 + 2));
}

uint64_t sub_1DF1E0840(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v6 = *(*v3 + 88);
  v9 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v7 = sub_1DF1E0CC4;
  }

  else
  {
    v7 = sub_1DF1E0970;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1E0970()
{
  v32 = v0;
  if (*(v0 + 120) >> 60 == 15)
  {
    v1 = 1;
LABEL_10:
    (*(*(*(v0 + 72) - 8) + 56))(*(v0 + 64), v1, 1);
    v28 = *(v0 + 8);
    goto LABEL_11;
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  sub_1DF1CBEE0();
  sub_1DF22A5D0();
  if (!v2)
  {
    sub_1DF18A0A4(*(v0 + 112), *(v0 + 120));

    v1 = 0;
    goto LABEL_10;
  }

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v2;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 72);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    v16 = sub_1DF22B7B0();
    v18 = sub_1DF160728(v16, v17, &v30);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Failed at decoding from Data to %s: %@", v13, 0x16u);
    sub_1DF16184C(v14, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E12D0B40](v15, -1, -1);
    MEMORY[0x1E12D0B40](v13, -1, -1);
  }

  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  v23 = *(v0 + 96);
  v24 = *(v0 + 72);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1DF22B300();

  v30 = 0xD000000000000020;
  v31 = 0x80000001DF23DF70;
  v25 = sub_1DF22B7B0();
  MEMORY[0x1E12CF820](v25);

  v26 = v30;
  v27 = v31;
  *v23 = v30;
  *(v23 + 8) = v27;
  *(v23 + 16) = 1;
  *(v0 + 40) = v26;
  *(v0 + 48) = v27;
  *(v0 + 56) = 1;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  sub_1DF18A0A4(v22, v21);

  v28 = *(v0 + 8);
LABEL_11:

  return v28();
}

uint64_t sub_1DF1E0CC4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_1DF1E0CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 384) = v8;
  *(v9 + 392) = v23;
  *(v9 + 368) = v21;
  *(v9 + 376) = v22;
  *(v9 + 83) = v20;
  *(v9 + 352) = a7;
  *(v9 + 360) = a8;
  *(v9 + 336) = a5;
  *(v9 + 344) = a6;
  *(v9 + 320) = a3;
  *(v9 + 328) = a4;
  *(v9 + 304) = a1;
  *(v9 + 312) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E408, &qword_1DF238388) - 8) + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  v11 = sub_1DF22AB50();
  *(v9 + 408) = v11;
  v12 = *(v11 - 8);
  *(v9 + 416) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 424) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750) - 8) + 64) + 15;
  *(v9 + 432) = swift_task_alloc();
  v15 = sub_1DF22AA80();
  *(v9 + 440) = v15;
  v16 = *(v15 - 8);
  *(v9 + 448) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 456) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E0EA4, v8, 0);
}

uint64_t sub_1DF1E0EA4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v10 = *(*(v3 + 336) + 16);
    v11 = *(*(v3 + 336) + 24);
    v8 = __OFSUB__(v11, v10);
    v9 = v11 - v10;
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, v4, a3);
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = *(v3 + 336);
  v7 = *(v3 + 340);
  v8 = __OFSUB__(v7, v6);
  LODWORD(v9) = v7 - v6;
  if (v8)
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = v9;
LABEL_7:
  if (v9 >= 0x400000)
  {
    v22 = *(v3 + 392);
    sub_1DF22B300();

    *(v3 + 288) = 0x400000;
    v23 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v23);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    *v22 = 0xD00000000000001DLL;
    *(v22 + 8) = 0x80000001DF23DFA0;
    *(v22 + 16) = 0;
    *(v3 + 88) = 0xD00000000000001DLL;
    *(v3 + 96) = 0x80000001DF23DFA0;
    *(v3 + 104) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v24 = *(v3 + 456);
    v25 = *(v3 + 424);
    v26 = *(v3 + 432);
    v27 = *(v3 + 400);

    v28 = *(v3 + 8);

    return v28(0);
  }

LABEL_8:
  if (*(v3 + 376))
  {
    if (qword_1ECE0C778 != -1)
    {
      swift_once();
    }

    v4 = qword_1ECE0EEF0;
    *(v3 + 464) = qword_1ECE0EEF0;
    a1 = sub_1DF1E11AC;
    a3 = 0;

    return MEMORY[0x1EEE6DFA0](a1, v4, a3);
  }

  sub_1DF16573C(*(v3 + 336), v4);
  v13 = *(v3 + 328);
  v12 = *(v3 + 336);
  *(v3 + 480) = v12;
  v14 = *(v3 + 360);
  v16 = *(v3 + 312);
  v15 = *(v3 + 320);
  v17 = *(v3 + 304);
  *(v3 + 504) = *(v3 + 83) & 1;
  *(v3 + 16) = v17;
  *(v3 + 24) = v16;
  *(v3 + 32) = v15;
  *(v3 + 40) = v13;
  *(v3 + 48) = v12;
  v18 = *(v3 + 344);
  *(v3 + 488) = *(v3 + 344);
  *(v3 + 56) = v18;
  *(v3 + 72) = v14;
  *(v3 + 80) = *(v3 + 504);
  sub_1DF16573C(v12, v18);

  v19 = swift_task_alloc();
  *(v3 + 496) = v19;
  *v19 = v3;
  v19[1] = sub_1DF1E1864;
  v20 = *(v3 + 384);

  return sub_1DF1D087C(v3 + 81, v3 + 16, v3 + 112);
}

uint64_t sub_1DF1E11AC()
{
  if (qword_1ECE0C780 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E123C, v1, 0);
}

uint64_t sub_1DF1E123C()
{
  v1 = *(v0 + 464);
  *(v0 + 472) = qword_1ECE0EEF8;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E1264, v1, 0);
}

uint64_t sub_1DF1E1264()
{
  v1 = v0[59];
  v2 = v0[48];
  CryptoUtils.getClientEncryptionKey(accessGroup:)(v0[46], v0[47], v0[54]);

  return MEMORY[0x1EEE6DFA0](sub_1DF1E12D8, v2, 0);
}

uint64_t sub_1DF1E12D8()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  v3 = *(v0 + 432);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 392);
    sub_1DF16184C(v3, &qword_1ECE0CD50, &unk_1DF22D750);
    *v4 = 0xD00000000000002ALL;
    *(v4 + 8) = 0x80000001DF23DFC0;
    *(v4 + 16) = 2;
    *(v0 + 184) = 0xD00000000000002ALL;
    *(v0 + 192) = 0x80000001DF23DFC0;
    *(v0 + 200) = 2;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
LABEL_5:
    v20 = *(v0 + 456);
    v21 = *(v0 + 424);
    v22 = *(v0 + 432);
    v23 = *(v0 + 400);

    v24 = *(v0 + 8);

    return v24(0);
  }

  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  (*(v2 + 32))(*(v0 + 456), v3, v1);
  *(v0 + 256) = v8;
  *(v0 + 264) = v7;
  v9 = sub_1DF22AB20();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_1DF1EA5D4();
  sub_1DF22AB10();
  v11 = *(v0 + 416);
  v10 = *(v0 + 424);
  v12 = *(v0 + 408);
  sub_1DF16184C(*(v0 + 400), &qword_1ECE0E408, &qword_1DF238388);
  v13 = sub_1DF22AB30();
  v15 = v14;
  (*(v11 + 8))(v10, v12);
  if (v15 >> 60 == 15)
  {
    v17 = *(v0 + 448);
    v16 = *(v0 + 456);
    v18 = *(v0 + 440);
    v19 = *(v0 + 392);
    *v19 = 0xD000000000000029;
    *(v19 + 8) = 0x80000001DF23E010;
    *(v19 + 16) = 0;
    *(v0 + 232) = 0xD000000000000029;
    *(v0 + 240) = 0x80000001DF23E010;
    *(v0 + 248) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    (*(v17 + 8))(v16, v18);
    goto LABEL_5;
  }

  (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
  *(v0 + 480) = v13;
  *(v0 + 488) = v15;
  v26 = *(v0 + 320);
  v27 = *(v0 + 328);
  v28 = *(v0 + 304);
  v29 = *(v0 + 312);
  v30 = *(v0 + 83) & 1;
  *(v0 + 504) = v30;
  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  *(v0 + 32) = v26;
  *(v0 + 40) = v27;
  *(v0 + 48) = v13;
  *(v0 + 56) = v15;
  *(v0 + 64) = *(v0 + 352);
  *(v0 + 80) = v30;
  sub_1DF16573C(v13, v15);

  v31 = swift_task_alloc();
  *(v0 + 496) = v31;
  *v31 = v0;
  v31[1] = sub_1DF1E1864;
  v32 = *(v0 + 384);

  return sub_1DF1D087C(v0 + 81, v0 + 16, v0 + 112);
}

uint64_t sub_1DF1E1864()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 384);
    sub_1DF1DE1B0(*(v2 + 112), *(v2 + 120), *(v2 + 128));
    sub_1DF1B891C(v2 + 16);
    v5 = sub_1DF1E1B84;
  }

  else
  {
    v4 = *(v2 + 384);
    sub_1DF1B891C(v2 + 16);
    v5 = sub_1DF1E1998;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E1998()
{
  v1 = *(v0 + 81);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 81))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 81))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 480);
    v7 = *(v0 + 488);
    v8 = *(v0 + 392);
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = 1;
    *(v0 + 160) = v4;
    *(v0 + 168) = v5;
    *(v0 + 176) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF1657C8(v6, v7);
    v9 = *(v0 + 456);
    v10 = *(v0 + 424);
    v11 = *(v0 + 432);
    v12 = *(v0 + 400);

    v13 = *(v0 + 8);
    v14 = 0;
    goto LABEL_16;
  }

  v16 = *(v0 + 82);
  v17 = *(v0 + 456);
  v19 = *(v0 + 424);
  v18 = *(v0 + 432);
  v20 = *(v0 + 400);
  sub_1DF1657C8(*(v0 + 480), *(v0 + 488));

  v13 = *(v0 + 8);
  v14 = v16 & 1;
LABEL_16:

  return v13(v14);
}

uint64_t sub_1DF1E1B84()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v3 = *(v0 + 392);
  *v3 = xmmword_1DF238200;
  *(v3 + 16) = 4;
  *(v0 + 136) = xmmword_1DF238200;
  *(v0 + 152) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  sub_1DF1657C8(v1, v2);
  v4 = *(v0 + 456);
  v5 = *(v0 + 424);
  v6 = *(v0 + 432);
  v7 = *(v0 + 400);

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_1DF1E1C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 184) = v8;
  *(v9 + 192) = v14;
  *(v9 + 168) = v12;
  *(v9 + 176) = v13;
  *(v9 + 152) = v11;
  *(v9 + 57) = a8;
  *(v9 + 136) = a6;
  *(v9 + 144) = a7;
  *(v9 + 120) = a4;
  *(v9 + 128) = a5;
  *(v9 + 104) = a2;
  *(v9 + 112) = a3;
  *(v9 + 96) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E1CAC, v8, 0);
}

uint64_t sub_1DF1E1CAC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 128);
  sub_1DF1CBE60();
  v5 = sub_1DF22A610();
  *(v0 + 200) = v5;
  *(v0 + 208) = v6;
  v7 = v5;
  v8 = v6;
  v9 = *(v0 + 57);

  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_1DF1E1FA0;
  v11 = *(v0 + 184);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);
  v17 = *(v0 + 96);
  v16 = *(v0 + 104);
  v21 = *(v0 + 160);
  v20 = *(v0 + 152);

  return sub_1DF1E0CF0(v17, v16, v14, v15, v7, v8, v12, v13);
}

uint64_t sub_1DF1E1FA0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;

  v7 = *(v4 + 184);
  if (v1)
  {
    v8 = sub_1DF1E2134;
  }

  else
  {
    *(v4 + 58) = a1 & 1;
    v8 = sub_1DF1E20CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF1E20CC()
{
  sub_1DF1657C8(*(v0 + 200), *(v0 + 208));
  v1 = *(v0 + 8);
  v2 = *(v0 + 58);

  return v1(v2);
}

uint64_t sub_1DF1E2134()
{
  v24 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1DF1DC5C8();
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = sub_1DF22B670();
    v19 = sub_1DF160728(v17, v18, &v23);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v20 = *(v0 + 192);
  *v20 = 0xD00000000000001FLL;
  *(v20 + 8) = 0x80000001DF23E040;
  *(v20 + 16) = 0;
  *(v0 + 40) = 0xD00000000000001FLL;
  *(v0 + 48) = 0x80000001DF23E040;
  *(v0 + 56) = 0;
  swift_willThrowTypedImpl();

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_1DF1E2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = v6;
  v7[20] = a6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v8 = type metadata accessor for ListIndexDictionaryRequest(0);
  v7[21] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E2414, v6, 0);
}

uint64_t sub_1DF1E2414()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = *(v0[21] + 24);
  v8 = sub_1DF22A800();
  (*(*(v8 - 8) + 16))(&v1[v7], v3, v8);
  *v1 = v6;
  *(v1 + 1) = v4;
  *(v1 + 2) = v5;
  *(v1 + 3) = v2;

  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_1DF1E2538;
  v10 = v0[22];
  v11 = v0[19];

  return sub_1DF1D0C9C((v0 + 2), v10, (v0 + 5));
}

uint64_t sub_1DF1E2538()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;

  v6 = *(v2 + 176);
  v7 = *(v2 + 152);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));
    sub_1DF1EA628(v6, type metadata accessor for ListIndexDictionaryRequest);
    v8 = sub_1DF1E286C;
  }

  else
  {
    sub_1DF1EA628(v6, type metadata accessor for ListIndexDictionaryRequest);
    v8 = sub_1DF1E26C4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF1E26C4()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 160);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 176);

    v8 = *(v0 + 8);

    return v8();
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 176);

  v13 = *(v0 + 8);

  return v13(v10, v11);
}

uint64_t sub_1DF1E286C()
{
  v1 = *(v0 + 160);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 64) = xmmword_1DF238200;
  *(v0 + 80) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DF1E290C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = v6;
  v7[25] = a6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E2938, v6, 0);
}

uint64_t sub_1DF1E2938()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v0[2] = v0[19];
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v2;
  v0[6] = v1;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1E2A0C;
  v6 = v0[24];

  return sub_1DF1D10B8((v0 + 7), (v0 + 2), (v0 + 10));
}

uint64_t sub_1DF1E2A0C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 208);
  v5 = *v1;

  v6 = *(v2 + 192);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 80), *(v3 + 88), *(v3 + 96));
    sub_1DF1EA688(v3 + 16);
    v7 = sub_1DF1E2D00;
  }

  else
  {
    sub_1DF1EA688(v3 + 16);
    v7 = sub_1DF1E2B54;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1E2B54()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*(v0 + 56))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 56))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 200);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 128) = v6;
    *(v0 + 136) = v7;
    *(v0 + 144) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);

  return v11(v12, v13);
}

uint64_t sub_1DF1E2D00()
{
  v1 = *(v0 + 200);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E2D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[30] = v8;
  v9[31] = v11;
  v9[28] = a7;
  v9[29] = a8;
  v9[26] = a5;
  v9[27] = a6;
  v9[24] = a3;
  v9[25] = a4;
  v9[22] = a1;
  v9[23] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E2DD0, v8, 0);
}

uint64_t sub_1DF1E2DD0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v0[2] = v0[23];
  v0[3] = v3;
  v0[4] = v4;
  v0[5] = v2;
  v0[6] = v1;

  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_1DF1E2EA4;
  v6 = v0[30];

  return sub_1DF1D10B8((v0 + 7), (v0 + 2), (v0 + 10));
}

uint64_t sub_1DF1E2EA4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(v2 + 264) = v0;

  v5 = *(v2 + 240);
  if (v0)
  {
    sub_1DF1DE1B0(*(v2 + 80), *(v2 + 88), *(v2 + 96));
    sub_1DF1EA688(v2 + 16);
    v6 = sub_1DF1E3444;
  }

  else
  {
    sub_1DF1EA688(v2 + 16);
    v6 = sub_1DF1E2FF0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DF1E2FF0()
{
  v37 = v0;
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v1 <= 2)
  {
    v4 = 0xEC00000070756F72;
    v5 = 0x4764696C61766E69;
    if (v1 != 1)
    {
      v5 = 0x4B64696C61766E69;
      v4 = 0xEA00000000007965;
    }

    if (*(v0 + 56))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 56))
    {
      v7 = v4;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_14;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_14;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_14:
    *(v0 + 152) = v6;
    *(v0 + 160) = v7;
    *(v0 + 168) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v8 = *(v0 + 248);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
LABEL_15:
    v9 = *(v0 + 8);
    goto LABEL_16;
  }

  if (v2 >> 60 == 15)
  {
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 264);
    v14 = *(v0 + 232);
    v13 = *(v0 + 240);
    v15 = *(v0 + 224);
    v16 = *(v0 + 176);
    sub_1DF1CBEE0();
    sub_1DF22A5D0();
    if (v12)
    {

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v17 = sub_1DF22A8C0();
      __swift_project_value_buffer(v17, qword_1ED8E92C0);
      v18 = v12;
      v19 = sub_1DF22A8A0();
      v20 = sub_1DF22B110();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = *(v0 + 224);
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = v34;
        *v22 = 136315394;
        v24 = sub_1DF22B7B0();
        v26 = sub_1DF160728(v24, v25, &v35);

        *(v22 + 4) = v26;
        *(v22 + 12) = 2112;
        v27 = v12;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 14) = v28;
        *v23 = v28;
        _os_log_impl(&dword_1DF15A000, v19, v20, "Failed at decoding from Data to %s: %@", v22, 0x16u);
        sub_1DF16184C(v23, &qword_1ECE0C7E8, &qword_1DF230550);
        MEMORY[0x1E12D0B40](v23, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x1E12D0B40](v34, -1, -1);
        MEMORY[0x1E12D0B40](v22, -1, -1);
      }

      v29 = *(v0 + 248);
      v30 = *(v0 + 224);
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1DF22B300();

      v35 = 0xD000000000000020;
      v36 = 0x80000001DF23DF70;
      v31 = sub_1DF22B7B0();
      MEMORY[0x1E12CF820](v31);

      v32 = v35;
      v33 = v36;
      *v29 = v35;
      *(v29 + 8) = v33;
      *(v29 + 16) = 1;
      *(v0 + 128) = v32;
      *(v0 + 136) = v33;
      *(v0 + 144) = 1;
      sub_1DF1DC5C8();
      swift_willThrowTypedImpl();
      sub_1DF18A0A4(v3, v2);

      goto LABEL_15;
    }

    sub_1DF18A0A4(v3, v2);

    v11 = 0;
  }

  (*(*(*(v0 + 224) - 8) + 56))(*(v0 + 176), v11, 1);
  v9 = *(v0 + 8);
LABEL_16:

  return v9();
}

uint64_t sub_1DF1E3444()
{
  *(v0 + 104) = xmmword_1DF238200;
  *(v0 + 120) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v1 = *(v0 + 248);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = v5;
  v6[19] = a5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E3514, v5, 0);
}

uint64_t sub_1DF1E3514()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1DF1E35D0;
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];

  return sub_1DF1D12C8((v0 + 2), v8, v6, v7, v4, (v0 + 5));
}

uint64_t sub_1DF1E35D0()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[15];
  if (v0)
  {
    sub_1DF1DE1B0(v3[5], v3[6], *(v3 + 56));

    v9 = sub_1DF1E38E8;
  }

  else
  {

    v9 = sub_1DF1E3758;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, 0);
}

uint64_t sub_1DF1E3758()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 152);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 88) = v4;
    *(v0 + 96) = v5;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 8);

  return v11(v9, v10);
}

uint64_t sub_1DF1E38E8()
{
  v1 = *(v0 + 152);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 64) = xmmword_1DF238200;
  *(v0 + 80) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E3980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 256) = v8;
  *(v9 + 264) = v12;
  *(v9 + 83) = v11;
  *(v9 + 240) = a7;
  *(v9 + 248) = a8;
  *(v9 + 224) = a5;
  *(v9 + 232) = a6;
  *(v9 + 208) = a3;
  *(v9 + 216) = a4;
  *(v9 + 192) = a1;
  *(v9 + 200) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E39C0, v8, 0);
}

void sub_1DF1E39C0()
{
  v1 = *(v0 + 232);
  v2 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(*(v0 + 224) + 16);
    v8 = *(*(v0 + 224) + 24);
    v5 = __OFSUB__(v8, v7);
    v6 = v8 - v7;
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    return;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(v0 + 224);
  v4 = *(v0 + 228);
  v5 = __OFSUB__(v4, v3);
  LODWORD(v6) = v4 - v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v6;
LABEL_7:
  if (v6 > 0x400000)
  {
    v9 = *(v0 + 264);
    sub_1DF22B300();

    *(v0 + 184) = 0x400000;
    v10 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v10);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    *v9 = 0xD00000000000001DLL;
    *(v9 + 8) = 0x80000001DF23DFA0;
    *(v9 + 16) = 0;
    *(v0 + 160) = 0xD00000000000001DLL;
    *(v0 + 168) = 0x80000001DF23DFA0;
    *(v0 + 176) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v11 = *(v0 + 8);

    v11(0);
    return;
  }

LABEL_11:
  v13 = *(v0 + 216);
  v12 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 192);
  v17 = *(v0 + 83) & 1;
  *(v0 + 280) = v17;
  *(v0 + 16) = v16;
  *(v0 + 24) = v14;
  *(v0 + 32) = v15;
  *(v0 + 40) = v13;
  *(v0 + 48) = v12;
  *(v0 + 56) = v1;
  *(v0 + 64) = *(v0 + 240);
  *(v0 + 80) = v17;

  sub_1DF16573C(v12, v1);
  v18 = swift_task_alloc();
  *(v0 + 272) = v18;
  *v18 = v0;
  v18[1] = sub_1DF1E3BFC;
  v19 = *(v0 + 256);

  sub_1DF1D16F0(v0 + 81, v0 + 16, v0 + 88);
}

uint64_t sub_1DF1E3BFC()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 256);
    sub_1DF1DE1B0(*(v2 + 88), *(v2 + 96), *(v2 + 104));
    sub_1DF1BB258(v2 + 16);
    v5 = sub_1DF1E3EA0;
  }

  else
  {
    v4 = *(v2 + 256);
    sub_1DF1BB258(v2 + 16);
    v5 = sub_1DF1E3D30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E3D30()
{
  v1 = *(v0 + 81);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 81))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 81))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 264);
    *v6 = v4;
    *(v6 + 8) = v5;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    *(v0 + 144) = v5;
    *(v0 + 152) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v7 = *(v0 + 8);
    v8 = 0;
    goto LABEL_16;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 82) & 1;
LABEL_16:

  return v7(v8);
}

uint64_t sub_1DF1E3EA0()
{
  v1 = *(v0 + 264);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 112) = xmmword_1DF238200;
  *(v0 + 128) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1E3F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 320) = v8;
  *(v9 + 328) = v13;
  *(v9 + 304) = v11;
  *(v9 + 312) = v12;
  *(v9 + 83) = a8;
  *(v9 + 288) = a6;
  *(v9 + 296) = a7;
  *(v9 + 272) = a4;
  *(v9 + 280) = a5;
  *(v9 + 256) = a2;
  *(v9 + 264) = a3;
  *(v9 + 248) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E3F80, v8, 0);
}

uint64_t sub_1DF1E3F80()
{
  v44 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  sub_1DF1CBE60();
  v5 = sub_1DF22A610();
  v7 = v6;
  *(v0 + 336) = v5;
  *(v0 + 344) = v6;

  v23 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_17;
    }

    v26 = *(v5 + 16);
    v25 = *(v5 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (!v27)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (!v23)
  {
    goto LABEL_17;
  }

  LODWORD(v24) = HIDWORD(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_21;
  }

  v24 = v24;
LABEL_15:
  if (v24 > 0x400000)
  {
    sub_1DF22B300();

    v42 = 0xD00000000000001DLL;
    v43 = 0x80000001DF23DFA0;
    *(v0 + 240) = 0x400000;
    v28 = sub_1DF22B600();
    MEMORY[0x1E12CF820](v28);

    MEMORY[0x1E12CF820](0x2E736574796220, 0xE700000000000000);
    v29 = v42;
    v30 = v43;
    *(v0 + 208) = v42;
    *(v0 + 216) = v30;
    *(v0 + 224) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v32 = *(v0 + 336);
    v31 = *(v0 + 344);
    v33 = swift_allocError();
    *v34 = v29;
    *(v34 + 8) = v30;
    *(v34 + 16) = 0;
    sub_1DF1657C8(v32, v31);
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v9 = sub_1DF22A8C0();
    __swift_project_value_buffer(v9, qword_1ED8E92C0);
    v10 = v33;
    v11 = sub_1DF22A8A0();
    v12 = sub_1DF22B110();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v16 = *(v0 + 88);
      v15 = *(v0 + 96);
      v17 = *(v0 + 104);
      v18 = sub_1DF22B670();
      v20 = sub_1DF160728(v18, v19, &v42);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_1DF15A000, v11, v12, "Error encoding value to Data: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12D0B40](v14, -1, -1);
      MEMORY[0x1E12D0B40](v13, -1, -1);
    }

    v21 = *(v0 + 328);
    *v21 = 0xD00000000000001FLL;
    *(v21 + 8) = 0x80000001DF23E040;
    *(v21 + 16) = 0;
    *(v0 + 112) = 0xD00000000000001FLL;
    *(v0 + 120) = 0x80000001DF23E040;
    *(v0 + 128) = 0;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();

    v22 = *(v0 + 8);

    return v22(0);
  }

LABEL_17:
  v35 = *(v0 + 264);
  v36 = *(v0 + 272);
  v38 = *(v0 + 248);
  v37 = *(v0 + 256);
  v39 = *(v0 + 83) & 1;
  *(v0 + 360) = v39;
  *(v0 + 16) = v38;
  *(v0 + 24) = v37;
  *(v0 + 32) = v35;
  *(v0 + 40) = v36;
  *(v0 + 48) = v5;
  *(v0 + 56) = v7;
  *(v0 + 64) = *(v0 + 288);
  *(v0 + 80) = v39;

  sub_1DF16573C(v5, v7);
  v40 = swift_task_alloc();
  *(v0 + 352) = v40;
  *v40 = v0;
  v40[1] = sub_1DF1E43BC;
  v41 = *(v0 + 320);

  return sub_1DF1D16F0(v0 + 81, v0 + 16, v0 + 136);
}

uint64_t sub_1DF1E43BC()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 320);
    sub_1DF1DE1B0(*(v2 + 136), *(v2 + 144), *(v2 + 152));
    sub_1DF1BB258(v2 + 16);
    v5 = sub_1DF1E4818;
  }

  else
  {
    v4 = *(v2 + 320);
    sub_1DF1BB258(v2 + 16);
    v5 = sub_1DF1E44F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E44F0()
{
  v26 = v0;
  v1 = *(v0 + 81);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xEC00000065756C61;
      v3 = 0x5664696C61766E69;
    }

    else
    {
      if (v1 != 4)
      {
        v24 = *(v0 + 82);
        sub_1DF1657C8(*(v0 + 336), *(v0 + 344));
        v21 = *(v0 + 8);
        v22 = v24 & 1;
        goto LABEL_16;
      }

      v2 = 0x80000001DF23CF10;
      v3 = 0xD000000000000011;
    }
  }

  else if (*(v0 + 81))
  {
    if (v1 == 1)
    {
      v2 = 0xEC00000070756F72;
      v3 = 0x4764696C61766E69;
    }

    else
    {
      v2 = 0xEA00000000007965;
      v3 = 0x4B64696C61766E69;
    }
  }

  else
  {
    v2 = 0x80000001DF23CED0;
    v3 = 0xD000000000000010;
  }

  *(v0 + 184) = v3;
  *(v0 + 192) = v2;
  *(v0 + 200) = 1;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = 1;
  sub_1DF1657C8(v5, v4);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = sub_1DF22B670();
    v19 = sub_1DF160728(v17, v18, &v25);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v20 = *(v0 + 328);
  *v20 = 0xD00000000000001FLL;
  *(v20 + 8) = 0x80000001DF23E040;
  *(v20 + 16) = 0;
  *(v0 + 112) = 0xD00000000000001FLL;
  *(v0 + 120) = 0x80000001DF23E040;
  *(v0 + 128) = 0;
  swift_willThrowTypedImpl();

  v21 = *(v0 + 8);
  v22 = 0;
LABEL_16:

  return v21(v22);
}

uint64_t sub_1DF1E4818()
{
  v21 = v0;
  *(v0 + 160) = xmmword_1DF238200;
  *(v0 + 176) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = swift_allocError();
  *v4 = xmmword_1DF238200;
  *(v4 + 16) = 4;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v5 = sub_1DF22A8C0();
  __swift_project_value_buffer(v5, qword_1ED8E92C0);
  v6 = v3;
  v7 = sub_1DF22A8A0();
  v8 = sub_1DF22B110();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = sub_1DF22B670();
    v16 = sub_1DF160728(v14, v15, &v20);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1DF15A000, v7, v8, "Error encoding value to Data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1E12D0B40](v10, -1, -1);
    MEMORY[0x1E12D0B40](v9, -1, -1);
  }

  v17 = *(v0 + 328);
  *v17 = 0xD00000000000001FLL;
  *(v17 + 8) = 0x80000001DF23E040;
  *(v17 + 16) = 0;
  *(v0 + 112) = 0xD00000000000001FLL;
  *(v0 + 120) = 0x80000001DF23E040;
  *(v0 + 128) = 0;
  swift_willThrowTypedImpl();

  v18 = *(v0 + 8);

  return v18(0);
}

uint64_t sub_1DF1E4A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = v5;
  v6[19] = a5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E4AB0, v5, 0);
}

uint64_t sub_1DF1E4AB0()
{
  v1 = v0[17];
  v2 = v0[15];

  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1DF1E4B6C;
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];

  return sub_1DF1D1A34((v0 + 2), v8, v6, v7, v4, (v0 + 5));
}

uint64_t sub_1DF1E4B6C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = v2[18];
  v7 = v2[17];
  v8 = v2[15];
  if (v0)
  {
    sub_1DF1DE1B0(v3[5], v3[6], *(v3 + 56));

    v9 = sub_1DF1E38E8;
  }

  else
  {

    v9 = sub_1DF1E4CF4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, 0);
}

uint64_t sub_1DF1E4CF4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (v1 <= 2)
  {
    v4 = 0x4764696C61766E69;
    v5 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v5 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x4B64696C61766E69;
    }

    if (*(v0 + 16))
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (*(v0 + 16))
    {
      v7 = v5;
    }

    else
    {
      v7 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v7 = 0xEC00000065756C61;
    v6 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v7 = 0x80000001DF23CF10;
    v6 = 0xD000000000000011;
LABEL_15:
    v8 = *(v0 + 152);
    *v8 = v6;
    *(v8 + 8) = v7;
    *(v8 + 16) = 1;
    *(v0 + 88) = v6;
    *(v0 + 96) = v7;
    *(v0 + 104) = 1;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    sub_1DF18A0A4(v3, v2);
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v0 + 8);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);

  return v11(v12, v13);
}

uint64_t sub_1DF1E4EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = v7;
  v8[12] = v16;
  v8[9] = a6;
  v8[10] = a7;
  v8[8] = a1;
  v13 = swift_task_alloc();
  v8[13] = v13;
  *v13 = v8;
  v13[1] = sub_1DF1E4F74;

  return sub_1DF1E4A88(a2, a3, a4, a5, (v8 + 2));
}

uint64_t sub_1DF1E4F74(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v6 = *(*v3 + 88);
  v9 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v7 = sub_1DF1F22B0;
  }

  else
  {
    v7 = sub_1DF1E0970;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1E50A4(char a1, uint64_t a2)
{
  v3[49] = v2;
  v3[50] = a2;
  v5 = swift_task_alloc();
  v3[51] = v5;
  *v5 = v3;
  v5[1] = sub_1DF1E5148;

  return sub_1DF1D1E80((v3 + 27), a1, (v3 + 37));
}

uint64_t sub_1DF1E5148()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 392);
    sub_1DF1DE1B0(*(v2 + 296), *(v2 + 304), *(v2 + 312));
    v5 = sub_1DF1E55D8;
    v6 = v4;
  }

  else
  {
    v6 = *(v2 + 392);
    v5 = sub_1DF1E5270;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1DF1E5270()
{
  v1 = *(v0 + 216);
  if (v1 <= 2)
  {
    v2 = 0x4764696C61766E69;
    v3 = 0xEA00000000007965;
    if (v1 == 1)
    {
      v3 = 0xEC00000070756F72;
    }

    else
    {
      v2 = 0x4B64696C61766E69;
    }

    if (*(v0 + 216))
    {
      v4 = v2;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (*(v0 + 216))
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x80000001DF23CED0;
    }

    goto LABEL_15;
  }

  if (v1 == 3)
  {
    v5 = 0xEC00000065756C61;
    v4 = 0x5664696C61766E69;
    goto LABEL_15;
  }

  if (v1 == 4)
  {
    v5 = 0x80000001DF23CF10;
    v4 = 0xD000000000000011;
LABEL_15:
    v6 = *(v0 + 400);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 368) = v4;
    v8 = 384;
    v9 = 376;
LABEL_16:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v10 = *(v0 + 8);

    return v10();
  }

  if (*(v0 + 288))
  {
    v5 = 0;
    v12 = *(v0 + 400);
    *v12 = xmmword_1DF2381D0;
    v7 = 4;
    *(v12 + 16) = 4;
    *(v0 + 344) = 2;
    v8 = 360;
    v9 = 352;
    goto LABEL_16;
  }

  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 256);
  v17 = *(v0 + 264);
  v19 = *(v0 + 272);
  v23 = *(v0 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E418, &qword_1DF238418);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF238210;
  *(inited + 32) = 0x657A695378616DLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v13;
  *(inited + 56) = 0x746E756F4378616DLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v14;
  strcpy((inited + 80), "maxExpiration");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1DF22B750();
  strcpy((inited + 104), "currentCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v18;
  *(inited + 128) = 0x53746E6572727563;
  *(inited + 136) = 0xEB00000000657A69;
  *(inited + 144) = v17;
  *(inited + 152) = 0x657A69537379656BLL;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = v19;
  *(inited + 176) = 0x69537365756C6176;
  *(inited + 184) = 0xEA0000000000657ALL;
  *(inited + 192) = v23;
  v21 = sub_1DF18FC1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E420, &qword_1DF238420);
  swift_arrayDestroy();
  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_1DF1E55D8()
{
  v1 = *(v0 + 400);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 320) = xmmword_1DF238200;
  *(v0 + 336) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E566C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = v3;
  v4[23] = a3;
  v4[20] = a1;
  v4[21] = a2;
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1E5724;

  return sub_1DF1D22CC((v4 + 2), a1, a2, (v4 + 8));
}

uint64_t sub_1DF1E5724()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;

  v6 = *(v2 + 176);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 64), *(v3 + 72), *(v3 + 80));
    v7 = sub_1DF1F22AC;
  }

  else
  {
    v7 = sub_1DF1E585C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1E585C()
{
  v28 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 != 3)
  {

    v4 = *&aInvalidtinvali[8 * v1];
    v5 = *&aInvalidtinvali[8 * v1 + 24];
    v6 = *(v0 + 184);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    v8 = 152;
    v9 = 144;
LABEL_9:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v16 = *(v0 + 8);
    v17 = 0;
    goto LABEL_10;
  }

  v3 = *(v0 + 17);
  if (v3 == 2)
  {

LABEL_8:
    v5 = 0;
    v15 = *(v0 + 184);
    *v15 = xmmword_1DF2381D0;
    v7 = 4;
    *(v15 + 16) = 4;
    *(v0 + 112) = 2;
    v8 = 128;
    v9 = 120;
    goto LABEL_9;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  if (v3)
  {
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = *(v0 + 160);
    v13 = *(v11 + 168);
    *(v11 + 160) = *(v0 + 24);
    *(v11 + 168) = v2;

    swift_beginAccess();

    v14 = sub_1DF1EA9A8(&v27, v12, v10);
    swift_endAccess();
  }

  else
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 168);
    v20 = sub_1DF22A8C0();
    __swift_project_value_buffer(v20, qword_1ED8E92C0);

    v21 = sub_1DF22A8A0();
    v22 = sub_1DF22B110();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 160);
      v23 = *(v0 + 168);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1DF160728(v24, v23, &v27);
      _os_log_impl(&dword_1DF15A000, v21, v22, "Failed to register publisher for topic '%s'", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E12D0B40](v26, -1, -1);
      MEMORY[0x1E12D0B40](v25, -1, -1);
    }

    v14 = 0;
  }

  v16 = *(v0 + 8);
  v17 = v14 & 1;
LABEL_10:

  return v16(v17);
}

uint64_t sub_1DF1E5B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[33] = v5;
  v6[34] = a5;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E5B50, v5, 0);
}

uint64_t sub_1DF1E5B50()
{
  v1 = *(v0 + 256) >> 62;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v6 = *(*(v0 + 248) + 16);
      v7 = *(*(v0 + 248) + 24);
      v4 = __OFSUB__(v7, v6);
      v5 = v7 - v6;
      if (!v4)
      {
LABEL_7:
        if (v5 < 0x400000)
        {
          goto LABEL_8;
        }

        if (qword_1ED8E7530 == -1)
        {
LABEL_18:
          v31 = sub_1DF22A8C0();
          __swift_project_value_buffer(v31, qword_1ED8E92C0);
          v32 = sub_1DF22A8A0();
          v33 = sub_1DF22B110();
          if (!os_log_type_enabled(v32, v33))
          {
            goto LABEL_31;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          v35 = "Failed to publish message, data size exceeds maximum allowed size.";
          goto LABEL_24;
        }

LABEL_37:
        swift_once();
        goto LABEL_18;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else if (v1)
  {
    v2 = *(v0 + 248);
    v3 = *(v0 + 252);
    v4 = __OFSUB__(v3, v2);
    LODWORD(v5) = v3 - v2;
    if (!v4)
    {
      v5 = v5;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_8:
  v8 = *(v0 + 264);
  if (*(v8 + 168))
  {
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    swift_beginAccess();
    v11 = *(v8 + 176);

    LOBYTE(v10) = sub_1DF1E6954(v9, v10, v11);

    if (v10)
    {
      v12 = *(v0 + 264);
      if (sub_1DF1CB304())
      {
        v13 = *(v0 + 264);
        v14 = v13[21];
        if (v14)
        {
          v15 = v13[20];
          v17 = *(v0 + 232);
          v16 = *(v0 + 240);
          swift_beginAccess();
          v18 = v13[22];

          LOBYTE(v16) = sub_1DF1E6954(v17, v16, v18);

          if (v16)
          {
            v20 = *(v0 + 248);
            v19 = *(v0 + 256);
            v46 = v15;
            v21 = *(v0 + 240);
            v47 = *(v0 + 232);
            v45 = mach_absolute_time();
            v22 = *(sub_1DF1C35C8() + 40);

            sub_1DF16573C(v20, v19);

            sub_1DF16573C(v20, v19);
            *(v0 + 16) = v22();
            *(v0 + 24) = v23;
            *(v0 + 32) = v45;
            *(v0 + 40) = v46;
            *(v0 + 48) = v14;
            *(v0 + 56) = v47;
            *(v0 + 64) = v21;
            *(v0 + 72) = v20;
            v24 = *(v0 + 16);
            *(v0 + 104) = *(v0 + 32);
            v25 = *(v0 + 64);
            *(v0 + 120) = *(v0 + 48);
            *(v0 + 136) = v25;
            *(v0 + 80) = v19;
            *(v0 + 152) = *(v0 + 80);
            *(v0 + 88) = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E428, &unk_1DF238440);
            sub_1DF164BEC(&qword_1ECE0E430, &qword_1ECE0E428, &unk_1DF238440);
            sub_1DF22A940();
            v42 = *(v0 + 248);
            v41 = *(v0 + 256);
            v43 = *(v0 + 240);

            sub_1DF1657C8(v42, v41);

            sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);
            v44 = 1;
LABEL_32:
            v40 = *(v0 + 8);

            return v40(v44);
          }
        }

        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v37 = sub_1DF22A8C0();
        __swift_project_value_buffer(v37, qword_1ED8E92C0);
        v32 = sub_1DF22A8A0();
        v38 = sub_1DF22B100();
        if (os_log_type_enabled(v32, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1DF15A000, v32, v38, "Failed to publish message, no publisherId or topic registered.", v39, 2u);
          MEMORY[0x1E12D0B40](v39, -1, -1);
        }

LABEL_31:

        v44 = 0;
        goto LABEL_32;
      }

      if (qword_1ED8E7530 != -1)
      {
        swift_once();
      }

      v36 = sub_1DF22A8C0();
      __swift_project_value_buffer(v36, qword_1ED8E92C0);
      v32 = sub_1DF22A8A0();
      v33 = sub_1DF22B110();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_31;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Failed to publish message, connection is closed.";
LABEL_24:
      _os_log_impl(&dword_1DF15A000, v32, v33, v35, v34, 2u);
      MEMORY[0x1E12D0B40](v34, -1, -1);
      goto LABEL_31;
    }
  }

  v26 = swift_task_alloc();
  *(v0 + 280) = v26;
  *v26 = v0;
  v26[1] = sub_1DF1E6280;
  v27 = *(v0 + 264);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);

  return sub_1DF1E566C(v29, v28, v0 + 208);
}

uint64_t sub_1DF1E6280()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  v4 = *(v2 + 264);
  if (v0)
  {
    v5 = sub_1DF1E6924;
  }

  else
  {
    v5 = sub_1DF1E6398;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1DF1E6398()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  if (!sub_1DF1CB304())
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v28 = sub_1DF22A8C0();
    __swift_project_value_buffer(v28, qword_1ED8E92C0);
    v18 = sub_1DF22A8A0();
    v29 = sub_1DF22B110();
    if (os_log_type_enabled(v18, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DF15A000, v18, v29, "Failed to publish message, connection is closed.", v30, 2u);
      MEMORY[0x1E12D0B40](v30, -1, -1);
    }

    goto LABEL_19;
  }

  v3 = *(v0 + 264);
  v4 = v3[21];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v3[20];
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  swift_beginAccess();
  v8 = v3[22];

  LOBYTE(v6) = sub_1DF1E6954(v7, v6, v8);

  if ((v6 & 1) == 0)
  {

LABEL_14:
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v31 = sub_1DF22A8C0();
    __swift_project_value_buffer(v31, qword_1ED8E92C0);
    v18 = sub_1DF22A8A0();
    v32 = sub_1DF22B100();
    if (os_log_type_enabled(v18, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DF15A000, v18, v32, "Failed to publish message, no publisherId or topic registered.", v33, 2u);
      MEMORY[0x1E12D0B40](v33, -1, -1);
    }

    goto LABEL_19;
  }

  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v41 = v5;
  v11 = *(v0 + 240);
  v42 = *(v0 + 232);
  v40 = mach_absolute_time();
  v12 = *(sub_1DF1C35C8() + 40);

  sub_1DF16573C(v10, v9);

  sub_1DF16573C(v10, v9);
  *(v0 + 16) = v12();
  *(v0 + 24) = v13;
  *(v0 + 32) = v40;
  *(v0 + 40) = v41;
  *(v0 + 48) = v4;
  *(v0 + 56) = v42;
  *(v0 + 64) = v11;
  *(v0 + 72) = v10;
  v14 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v15 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v15;
  *(v0 + 80) = v9;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E428, &unk_1DF238440);
  sub_1DF164BEC(&qword_1ECE0E430, &qword_1ECE0E428, &unk_1DF238440);
  sub_1DF22A940();
  if (v1)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF22A8C0();
    __swift_project_value_buffer(v16, qword_1ED8E92C0);
    v17 = v1;
    v18 = sub_1DF22A8A0();
    v19 = sub_1DF22B110();

    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 248);
    v21 = *(v0 + 256);
    v23 = *(v0 + 240);
    if (!v20)
    {

      sub_1DF1657C8(v22, v21);
      sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);

      goto LABEL_20;
    }

    v24 = swift_slowAlloc();
    v43 = v21;
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v1;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_1DF15A000, v18, v19, "Failed to publish message: %@", v24, 0xCu);
    sub_1DF16184C(v25, &qword_1ECE0C7E8, &qword_1DF230550);
    MEMORY[0x1E12D0B40](v25, -1, -1);
    MEMORY[0x1E12D0B40](v24, -1, -1);

    sub_1DF1657C8(v22, v43);
    sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);

LABEL_19:
LABEL_20:
    v34 = 0;
    goto LABEL_21;
  }

  v38 = *(v0 + 248);
  v37 = *(v0 + 256);
  v39 = *(v0 + 240);

  sub_1DF1657C8(v38, v37);

  sub_1DF16184C(v0 + 16, &qword_1ECE0E428, &unk_1DF238440);
  v34 = 1;
LABEL_21:
  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_1DF1E6924()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  *v1 = *(v0 + 208);
  *(v1 + 16) = v2;
  return (*(v0 + 8))(0);
}

uint64_t sub_1DF1E6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v7 = sub_1DF22B6F0();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DF22B620() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DF1E6A4C(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = *(a2 + 40), sub_1DF22B6C0(), v5 = a1, sub_1DF228924(), v6 = sub_1DF22B6F0(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v37 = ~v7;
    v9 = 0xEC00000064657669;
    v10 = 0xEB00000000646574;
    v11 = v5;
    v36 = v5;
    while (1)
    {
      v12 = *(*(a2 + 48) + v8);
      if (v12 <= 4)
      {
        v15 = 0xD00000000000001ALL;
        if (v12 == 3)
        {
          v16 = 0x80000001DF23D000;
        }

        else
        {
          v16 = 0x80000001DF23D020;
        }

        if (v12 == 2)
        {
          v16 = 0x80000001DF23CFE0;
        }

        else
        {
          v15 = 0xD000000000000014;
        }

        if (*(*(a2 + 48) + v8))
        {
          v17 = 0x656365526B736154;
        }

        else
        {
          v17 = 0x616572436B736154;
        }

        if (*(*(a2 + 48) + v8))
        {
          v18 = v9;
        }

        else
        {
          v18 = v10;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v13 = v17;
        }

        else
        {
          v13 = v15;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v14 = v18;
        }

        else
        {
          v14 = v16;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v12 == 8)
        {
          v14 = 0xE800000000000000;
          v13 = 0x6465727265666544;
        }

        else if (v12 == 9)
        {
          v13 = 0x6574656C706D6F43;
          v14 = 0xE900000000000064;
        }

        else
        {
          v14 = 0xE600000000000000;
          v13 = 0x64656C696146;
        }
      }

      else if (v12 == 5)
      {
        v13 = 0xD00000000000001BLL;
        v14 = 0x80000001DF23D040;
      }

      else if (v12 == 6)
      {
        v13 = 0x7261745320746F4ELL;
        v14 = v10;
      }

      else
      {
        v14 = 0xE700000000000000;
        v13 = 0x676E696E6E7552;
      }

      v19 = v11;
      v20 = 0x6574656C706D6F43;
      if (v11 != 9)
      {
        v20 = 0x64656C696146;
      }

      v21 = 0xE900000000000064;
      if (v11 != 9)
      {
        v21 = 0xE600000000000000;
      }

      if (v11 == 8)
      {
        v20 = 0x6465727265666544;
        v21 = 0xE800000000000000;
      }

      v22 = 0xD00000000000001BLL;
      v23 = 0x7261745320746F4ELL;
      if (v11 != 6)
      {
        v23 = 0x676E696E6E7552;
      }

      v24 = 0xE700000000000000;
      if (v19 == 6)
      {
        v24 = v10;
      }

      if (v19 != 5)
      {
        v22 = v23;
      }

      v25 = 0x80000001DF23D040;
      if (v19 != 5)
      {
        v25 = v24;
      }

      if (v19 <= 7)
      {
        v20 = v22;
        v21 = v25;
      }

      v26 = 0xD00000000000001ALL;
      if (v19 == 3)
      {
        v27 = 0x80000001DF23D000;
      }

      else
      {
        v27 = 0x80000001DF23D020;
      }

      if (v19 == 2)
      {
        v27 = 0x80000001DF23CFE0;
      }

      else
      {
        v26 = 0xD000000000000014;
      }

      if (v19)
      {
        v28 = 0x656365526B736154;
      }

      else
      {
        v28 = 0x616572436B736154;
      }

      if (v19)
      {
        v29 = v9;
      }

      else
      {
        v29 = v10;
      }

      if (v19 <= 1)
      {
        v26 = v28;
        v27 = v29;
      }

      v30 = v19 <= 4 ? v26 : v20;
      v31 = v19 <= 4 ? v27 : v21;
      if (v13 == v30 && v14 == v31)
      {
        break;
      }

      v32 = v10;
      v33 = v9;
      v34 = sub_1DF22B620();

      if ((v34 & 1) == 0)
      {
        v8 = (v8 + 1) & v37;
        v11 = v36;
        v9 = v33;
        v10 = v32;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v34 & 1;
    }

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_1DF1E6DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[17] = v7;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a6;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E6E24, v7, 0);
}

uint64_t sub_1DF1E6E24()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_1DF1CBE60();
  v5 = sub_1DF22A610();
  v7 = v6;
  v0[19] = v5;
  v0[20] = v6;

  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1DF1E70E8;
  v9 = v0[17];
  v11 = v0[12];
  v10 = v0[13];

  return sub_1DF1E5B28(v11, v10, v5, v7, (v0 + 8));
}

uint64_t sub_1DF1E70E8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  v7 = *(v4 + 136);
  if (v1)
  {
    v8 = sub_1DF1E727C;
  }

  else
  {
    *(v4 + 57) = a1 & 1;
    v8 = sub_1DF1E7214;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF1E7214()
{
  sub_1DF1657C8(*(v0 + 152), *(v0 + 160));
  v1 = *(v0 + 8);
  v2 = *(v0 + 57);

  return v1(v2);
}

uint64_t sub_1DF1E727C()
{
  v24 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1DF1DC5C8();
  v6 = swift_allocError();
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 16) = v5;
  sub_1DF1657C8(v2, v1);
  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v8 = sub_1DF22A8C0();
  __swift_project_value_buffer(v8, qword_1ED8E92C0);
  v9 = v6;
  v10 = sub_1DF22A8A0();
  v11 = sub_1DF22B110();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = sub_1DF22B670();
    v19 = sub_1DF160728(v17, v18, &v23);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1DF15A000, v10, v11, "Error encoding value to Data: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1E12D0B40](v13, -1, -1);
    MEMORY[0x1E12D0B40](v12, -1, -1);
  }

  v20 = *(v0 + 144);
  *v20 = 0xD00000000000001FLL;
  *(v20 + 8) = 0x80000001DF23E040;
  *(v20 + 16) = 0;
  *(v0 + 40) = 0xD00000000000001FLL;
  *(v0 + 48) = 0x80000001DF23E040;
  *(v0 + 56) = 0;
  swift_willThrowTypedImpl();

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_1DF1E74BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = v3;
  v4[23] = a3;
  v4[20] = a1;
  v4[21] = a2;
  v7 = swift_task_alloc();
  v4[24] = v7;
  *v7 = v4;
  v7[1] = sub_1DF1E7574;

  return sub_1DF1D2714((v4 + 2), a1, a2, (v4 + 8));
}

uint64_t sub_1DF1E7574()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 192);
  v5 = *v1;

  v6 = *(v2 + 176);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 64), *(v3 + 72), *(v3 + 80));
    v7 = sub_1DF1E7AE0;
  }

  else
  {
    v7 = sub_1DF1E76AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1E76AC()
{
  v36 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1 != 3)
  {

    v4 = *&aInvalidtinvali[8 * v1];
    v5 = *&aInvalidtinvali[8 * v1 + 24];
    v6 = *(v0 + 184);
    *v6 = v4;
    *(v6 + 8) = v5;
    v7 = 1;
    *(v6 + 16) = 1;
    *(v0 + 136) = v4;
    v8 = 152;
    v9 = 144;
LABEL_12:
    *(v0 + v9) = v5;
    *(v0 + v8) = v7;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v27 = *(v0 + 8);
    v28 = 0;
    goto LABEL_13;
  }

  v3 = *(v0 + 17);
  if (v3 == 2)
  {

LABEL_11:
    v5 = 0;
    v26 = *(v0 + 184);
    *v26 = xmmword_1DF2381D0;
    v7 = 4;
    *(v26 + 16) = 4;
    *(v0 + 112) = 2;
    v8 = 128;
    v9 = 120;
    goto LABEL_12;
  }

  if (!v2)
  {
    goto LABEL_11;
  }

  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  if ((v3 & 1) == 0)
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 168);
    v31 = sub_1DF22A8C0();
    __swift_project_value_buffer(v31, qword_1ED8E92C0);

    v18 = sub_1DF22A8A0();
    v19 = sub_1DF22B110();

    if (os_log_type_enabled(v18, v19))
    {
      v33 = *(v0 + 160);
      v32 = *(v0 + 168);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v35 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1DF160728(v33, v32, &v35);
      *(v22 + 12) = 2080;
      v34 = sub_1DF160728(v10, v11, &v35);

      *(v22 + 14) = v34;
      v25 = "Already subscribed to %s with id: %s";
      goto LABEL_20;
    }

LABEL_21:

    goto LABEL_22;
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v13 + 192);
  *(v13 + 184) = v10;
  *(v13 + 192) = v2;

  swift_beginAccess();

  sub_1DF1EA9A8(&v35, v14, v12);
  swift_endAccess();

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 168);
  v17 = sub_1DF22A8C0();
  __swift_project_value_buffer(v17, qword_1ED8E92C0);

  v18 = sub_1DF22A8A0();
  v19 = sub_1DF22B0F0();

  if (!os_log_type_enabled(v18, v19))
  {
    goto LABEL_21;
  }

  v21 = *(v0 + 160);
  v20 = *(v0 + 168);
  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  v35 = v23;
  *v22 = 136315394;
  *(v22 + 4) = sub_1DF160728(v21, v20, &v35);
  *(v22 + 12) = 2080;
  v24 = sub_1DF160728(v10, v11, &v35);

  *(v22 + 14) = v24;
  v25 = "Subscribed to %s with id: %s";
LABEL_20:
  _os_log_impl(&dword_1DF15A000, v18, v19, v25, v22, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x1E12D0B40](v23, -1, -1);
  MEMORY[0x1E12D0B40](v22, -1, -1);

LABEL_22:
  v27 = *(v0 + 8);
  v28 = v3 & 1;
LABEL_13:

  return v27(v28);
}

uint64_t sub_1DF1E7AE0()
{
  v1 = *(v0 + 184);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 88) = xmmword_1DF238200;
  *(v0 + 104) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_1DF1E7B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = v3;
  v4[27] = a3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = sub_1DF22A9E0();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v8 = sub_1DF22AA00();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v10 = *(v9 + 64) + 15;
  v4[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF1E7C9C, v3, 0);
}

uint64_t sub_1DF1E7C9C()
{
  v22 = v0;
  v1 = v0[26];
  v2 = *(v1 + 184);
  v0[34] = v2;
  v3 = *(v1 + 192);
  v0[35] = v3;
  if (v3)
  {
    v4 = v0[25];
    swift_bridgeObjectRetain_n();

    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_1DF1E7EFC;
    v6 = v0[25];
    v7 = v0[26];
    v8 = v0[24];

    return sub_1DF1D2A44(v0 + 105, v8, v6, v2, v3, (v0 + 11));
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v10 = v0[25];
    v11 = sub_1DF22A8C0();
    __swift_project_value_buffer(v11, qword_1ED8E92C0);

    v12 = sub_1DF22A8A0();
    v13 = sub_1DF22B110();

    if (os_log_type_enabled(v12, v13))
    {
      v15 = v0[24];
      v14 = v0[25];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v21 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1DF160728(v15, v14, &v21);
      _os_log_impl(&dword_1DF15A000, v12, v13, "Unsubscribing from %s but no subscription found", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E12D0B40](v17, -1, -1);
      MEMORY[0x1E12D0B40](v16, -1, -1);
    }

    v18 = v0[33];
    v19 = v0[30];

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_1DF1E7EFC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 288);
  v5 = *v1;

  v6 = v2[35];
  v7 = v2[26];
  v8 = v2[25];
  if (v0)
  {
    sub_1DF1DE1B0(v3[11], v3[12], *(v3 + 104));
    swift_bridgeObjectRelease_n();

    v9 = sub_1DF1E872C;
  }

  else
  {

    v9 = sub_1DF1E8088;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, 0);
}

uint64_t sub_1DF1E8088()
{
  v61 = v0;
  v1 = *(v0 + 105);
  if (v1 != 3)
  {
    v9 = *(v0 + 280);

    v10 = *&aInvalidtinvali[8 * v1];
    v5 = *&aInvalidtinvali[8 * v1 + 24];
    v11 = *(v0 + 216);
    *v11 = v10;
    *(v11 + 8) = v5;
    v6 = 1;
    *(v11 + 16) = 1;
    *(v0 + 160) = v10;
    v7 = 176;
    v8 = 168;
    goto LABEL_5;
  }

  v2 = *(v0 + 106);
  if (v2 == 2)
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 216);

    v5 = 0;
    *v4 = xmmword_1DF2381D0;
    v6 = 4;
    *(v4 + 16) = 4;
    *(v0 + 136) = 2;
    v7 = 152;
    v8 = 144;
LABEL_5:
    *(v0 + v8) = v5;
    *(v0 + v7) = v6;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v12 = *(v0 + 264);
    v13 = *(v0 + 240);

    v14 = *(v0 + 8);
    v15 = 0;
    goto LABEL_19;
  }

  if (v2)
  {
    v59 = *(v0 + 106);
    v16 = *(v0 + 264);
    v17 = *(v0 + 240);
    v57 = *(v0 + 256);
    v58 = *(v0 + 248);
    v18 = *(v0 + 224);
    v56 = *(v0 + 232);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v21 = *(v0 + 192);
    swift_beginAccess();
    sub_1DF1ECC90(v21, v20);
    swift_endAccess();

    v55 = *(v19 + 128);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = v21;
    v23[4] = v20;
    *(v0 + 48) = sub_1DF1ECFB0;
    *(v0 + 56) = v23;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DF1E87DC;
    *(v0 + 40) = &block_descriptor_1;
    v24 = _Block_copy((v0 + 16));

    sub_1DF22A9F0();
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
    sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470);
    sub_1DF22B220();
    MEMORY[0x1E12CFC00](0, v16, v17, v24);
    _Block_release(v24);
    (*(v56 + 8))(v17, v18);
    (*(v57 + 8))(v16, v58);
    v25 = *(v0 + 56);

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 280);
    v27 = *(v0 + 200);
    v28 = sub_1DF22A8C0();
    __swift_project_value_buffer(v28, qword_1ED8E92C0);

    v29 = sub_1DF22A8A0();
    v30 = sub_1DF22B0F0();

    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 280);
    if (v31)
    {
      v33 = *(v0 + 272);
      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v60 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1DF160728(v35, v34, &v60);
      *(v36 + 12) = 2080;
      v38 = sub_1DF160728(v33, v32, &v60);

      *(v36 + 14) = v38;
      _os_log_impl(&dword_1DF15A000, v29, v30, "Unsubscribed from %s with id: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v37, -1, -1);
      MEMORY[0x1E12D0B40](v36, -1, -1);
    }

    else
    {
    }

    LOBYTE(v2) = v59;
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 280);
    v40 = *(v0 + 200);
    v41 = sub_1DF22A8C0();
    __swift_project_value_buffer(v41, qword_1ED8E92C0);

    v42 = sub_1DF22A8A0();
    v43 = sub_1DF22B110();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 280);
    if (v44)
    {
      v46 = *(v0 + 272);
      v48 = *(v0 + 192);
      v47 = *(v0 + 200);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_1DF160728(v48, v47, &v60);
      *(v49 + 12) = 2080;
      v51 = sub_1DF160728(v46, v45, &v60);

      *(v49 + 14) = v51;
      _os_log_impl(&dword_1DF15A000, v42, v43, "Failed to unsubscribe to %s with id: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D0B40](v50, -1, -1);
      MEMORY[0x1E12D0B40](v49, -1, -1);
    }

    else
    {
    }
  }

  v52 = *(v0 + 264);
  v53 = *(v0 + 240);

  v14 = *(v0 + 8);
  v15 = v2 & 1;
LABEL_19:

  return v14(v15);
}

uint64_t sub_1DF1E872C()
{
  v1 = *(v0 + 216);
  *v1 = xmmword_1DF238200;
  *(v1 + 16) = 4;
  *(v0 + 112) = xmmword_1DF238200;
  *(v0 + 128) = 4;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);

  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_1DF1E87DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1DF1E8820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = v5;
  v6[13] = a5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E450, &unk_1DF238480);
  v6[14] = v9;
  v10 = *(v9 - 8);
  v6[15] = v10;
  v11 = *(v10 + 64) + 15;
  v6[16] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[17] = v12;
  *v12 = v6;
  v12[1] = sub_1DF1E893C;

  return sub_1DF1E74BC(a2, a3, (v6 + 2));
}

uint64_t sub_1DF1E893C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;

  v7 = *(v4 + 96);
  if (v1)
  {
    v8 = sub_1DF1E8CC8;
  }

  else
  {
    *(v4 + 33) = a1 & 1;
    v8 = sub_1DF1E8A68;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DF1E8A68()
{
  v19 = v0;
  if (*(v0 + 33))
  {
    v1 = *(v0 + 96);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 64);
    (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 88), *(v0 + 112));
    v5 = swift_task_alloc();
    v5[2] = v1;
    v5[3] = v3;
    v5[4] = v2;
    sub_1DF22B000();

    v6 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 80);
    v8 = sub_1DF22A8C0();
    __swift_project_value_buffer(v8, qword_1ED8E92C0);

    v9 = sub_1DF22A8A0();
    v10 = sub_1DF22B110();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 72);
      v11 = *(v0 + 80);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DF160728(v12, v11, &v18);
      _os_log_impl(&dword_1DF15A000, v9, v10, "Already subscribed to %s, async stream cannot be created.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12D0B40](v14, -1, -1);
      MEMORY[0x1E12D0B40](v13, -1, -1);
    }

    v15 = *(v0 + 104);
    *v15 = xmmword_1DF238220;
    *(v15 + 16) = 4;
    *(v0 + 40) = xmmword_1DF238220;
    *(v0 + 56) = 4;
    sub_1DF1DC5C8();
    swift_willThrowTypedImpl();
    v16 = *(v0 + 128);

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1DF1E8CC8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v2;
  v3 = *(v0 + 128);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DF1E8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v28 = a3;
  v30 = a1;
  v32 = sub_1DF22A9E0();
  v34 = *(v32 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DF22AA00();
  v31 = *(v33 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v27 - v16;
  v29 = a2;
  v27 = *(a2 + 128);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = a3;
  *(v20 + 4) = v35;
  (*(v14 + 32))(&v20[v19], v17, v13);
  aBlock[4] = sub_1DF1F08EC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF1E87DC;
  aBlock[3] = &block_descriptor_154;
  v21 = _Block_copy(aBlock);

  sub_1DF22A9F0();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
  sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470);
  v22 = v32;
  sub_1DF22B220();
  MEMORY[0x1E12CFC00](0, v12, v9, v21);
  _Block_release(v21);
  (*(v34 + 8))(v9, v22);
  (*(v31 + 8))(v12, v33);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v28;
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v35;

  return sub_1DF22AFD0();
}

uint64_t sub_1DF1E91BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v13 = *(v12 - 8);
    (*(v13 + 16))(v10, a4, v12);
    (*(v13 + 56))(v10, 0, 1, v12);
    swift_beginAccess();

    sub_1DF167800(v10, a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DF1E9350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - v9;
  v11 = sub_1DF22A9E0();
  v41 = *(v11 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DF22AA00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(Strong + 128);
    v38 = v11;
    v39 = v21;

    v22 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v23 = swift_allocObject();
    v37 = v22;
    v23[2] = v22;
    v23[3] = a3;
    v23[4] = a4;
    aBlock[4] = sub_1DF1F22F0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DF1E87DC;
    aBlock[3] = &block_descriptor_165;
    v24 = _Block_copy(aBlock);
    v40 = a3;
    v36 = v24;

    sub_1DF22A9F0();
    v42 = MEMORY[0x1E69E7CC0];
    v34 = sub_1DF1F2214(&qword_1ECE0E438, 255, MEMORY[0x1E69E7F60]);
    v35 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E440, &unk_1DF238470);
    v25 = v41;
    v26 = v19;
    sub_1DF164BEC(&qword_1ECE0E448, &qword_1ECE0E440, &unk_1DF238470);
    v27 = v38;
    sub_1DF22B220();
    v28 = v36;
    v29 = v39;
    MEMORY[0x1E12CFC00](0, v26, v14, v36);
    v30 = v28;
    a3 = v40;
    _Block_release(v30);

    (*(v25 + 8))(v14, v27);
    (*(v16 + 8))(v26, v35);
  }

  v31 = sub_1DF22AFC0();
  (*(*(v31 - 8) + 56))(v10, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = a2;
  v32[5] = a3;
  v32[6] = a4;

  sub_1DF1E9C74(0, 0, v10, &unk_1DF2387D8, v32);
}

uint64_t sub_1DF1E97D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v11[-v7];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_1DF17582C(a2, a3, v8);
    sub_1DF16184C(v8, &qword_1ECE0CD48, &qword_1DF2387E0);
    swift_endAccess();
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    return sub_1DF16184C(v8, &qword_1ECE0CD48, &qword_1DF2387E0);
  }
}

uint64_t sub_1DF1E9940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DF1E9964, 0, 0);
}

uint64_t sub_1DF1E9964()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1DF1E9A58;
    v5 = v0[9];
    v4 = v0[10];

    return sub_1DF1E7B7C(v5, v4, (v0 + 5));
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DF1E9A58()
{
  v2 = *(*v1 + 96);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1DF1E9BCC;
  }

  else
  {
    v3 = sub_1DF1E9B68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF1E9B68()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF1E9BCC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1DF1DC5C8();
  swift_allocError();
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1DF1E9C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A0, &qword_1DF23A430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1DF17A6A8(a3, v24 - v10, &qword_1ECE0E4A0, &qword_1DF23A430);
  v12 = sub_1DF22AFC0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1DF16184C(v11, &qword_1ECE0E4A0, &qword_1DF23A430);
  }

  else
  {
    sub_1DF22AFB0();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1DF22AF90();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1DF22ACF0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DF16184C(a3, &qword_1ECE0E4A0, &qword_1DF23A430);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1DF1E9F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = v3;
  v4[19] = a3;
  v4[17] = a1;
  v6 = swift_task_alloc();
  v4[20] = v6;
  *v6 = v4;
  v6[1] = sub_1DF1E9FC8;

  return sub_1DF1D2C4C((v4 + 2), a2, (v4 + 5));
}

uint64_t sub_1DF1E9FC8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 160);
  v5 = *v1;

  v6 = *(v2 + 144);
  if (v0)
  {
    sub_1DF1DE1B0(*(v3 + 40), *(v3 + 48), *(v3 + 56));
    v7 = sub_1DF1E38E8;
  }

  else
  {
    v7 = sub_1DF1EA100;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1DF1EA100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (v1 == 3)
  {
    if (v2)
    {
      v4 = *(v0 + 136);
      *v4 = v2;
      v4[1] = v3;
      v5 = *(v0 + 8);
      goto LABEL_7;
    }

    v7 = 0;
    v12 = *(v0 + 152);
    *v12 = xmmword_1DF2381D0;
    v9 = 4;
    *(v12 + 16) = 4;
    *(v0 + 88) = 2;
    v10 = 104;
    v11 = 96;
  }

  else
  {
    sub_1DF1BD204(v2);
    v6 = *&aInvalidtinvali[8 * v1];
    v7 = *&aInvalidtinvali[8 * v1 + 24];
    v8 = *(v0 + 152);
    *v8 = v6;
    *(v8 + 8) = v7;
    v9 = 1;
    *(v8 + 16) = 1;
    *(v0 + 112) = v6;
    v10 = 128;
    v11 = 120;
  }

  *(v0 + v11) = v7;
  *(v0 + v10) = v9;
  sub_1DF1DC5C8();
  swift_willThrowTypedImpl();
  v5 = *(v0 + 8);
LABEL_7:

  return v5();
}

uint64_t MLHostClient.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 144);

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  v8 = *(v0 + 208);

  v9 = *(v0 + 216);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MLHostClient.__deallocating_deinit()
{
  MLHostClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF1EA2C0(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x1E6969080];
      v30[4] = MEMORY[0x1E6969078];
      v30[0] = a1;
      v30[1] = a2;
      v10 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x1E6969080]);
      v11 = *v10;
      v12 = v10[1];
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 != 2)
        {
          memset(v28, 0, 14);
          v15 = v28;
          v14 = v28;
          goto LABEL_33;
        }

        v16 = *(v11 + 16);
        v17 = *(v11 + 24);
        v18 = sub_1DF22A570();
        if (v18)
        {
          v19 = sub_1DF22A5A0();
          v11 = v16 - v19;
          if (__OFSUB__(v16, v19))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 += v11;
        }

        v5 = __OFSUB__(v17, v16);
        v20 = v17 - v16;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v13)
      {
        v28[0] = *v10;
        LOWORD(v28[1]) = v12;
        BYTE2(v28[1]) = BYTE2(v12);
        BYTE3(v28[1]) = BYTE3(v12);
        BYTE4(v28[1]) = BYTE4(v12);
        BYTE5(v28[1]) = BYTE5(v12);
        v14 = v28 + BYTE6(v12);
        v15 = v28;
LABEL_33:
        sub_1DF1EA6DC(v15, v14, &v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        result = sub_1DF22AB40();
        goto LABEL_34;
      }

      v21 = v11;
      v22 = v11 >> 32;
      v20 = v22 - v21;
      if (v22 >= v21)
      {
        v18 = sub_1DF22A570();
        if (!v18)
        {
LABEL_25:
          v24 = sub_1DF22A590();
          if (v24 >= v20)
          {
            v25 = v20;
          }

          else
          {
            v25 = v24;
          }

          v26 = (v25 + v18);
          if (v18)
          {
            v14 = v26;
          }

          else
          {
            v14 = 0;
          }

          v15 = v18;
          goto LABEL_33;
        }

        v23 = sub_1DF22A5A0();
        if (!__OFSUB__(v21, v23))
        {
          v18 += v21 - v23;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_1DF1657C8(a1, a2);
  v7 = sub_1DF22AA10();
  sub_1DF1F2214(&qword_1ECE0E6D8, 255, MEMORY[0x1E6966370]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E6966368], v7);
  result = swift_willThrow();
LABEL_34:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1DF1EA5D4()
{
  result = qword_1ECE0E410;
  if (!qword_1ECE0E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0E410);
  }

  return result;
}

uint64_t sub_1DF1EA628(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_1DF1EA6DC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DF1F109C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DF1F1154(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DF1F11D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1DF1EA770(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1DF22B270();

    if (v9)
    {

      sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1DF22B260();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1DF1EAF50(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1DF1EB140(v22 + 1);
    }

    v20 = v8;
    sub_1DF1EAECC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
  v11 = *(v6 + 40);
  v12 = sub_1DF22B170();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1DF1EB9A4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1DF22B180();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_1DF1EA9A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v9 = sub_1DF22B6F0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1DF22B620() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1DF1EBB14(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DF1EAAF8(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1DF22B6C0();
  sub_1DF228924();
  v6 = sub_1DF22B6F0();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v33 = ~v7;
    while (1)
    {
      v9 = *(*(v4 + 48) + v8);
      v35 = v8;
      if (v9 <= 4)
      {
        v12 = 0xD00000000000001ALL;
        if (v9 == 3)
        {
          v13 = 0x80000001DF23D000;
        }

        else
        {
          v13 = 0x80000001DF23D020;
        }

        if (v9 == 2)
        {
          v13 = 0x80000001DF23CFE0;
        }

        else
        {
          v12 = 0xD000000000000014;
        }

        if (*(*(v4 + 48) + v8))
        {
          v14 = 0x656365526B736154;
        }

        else
        {
          v14 = 0x616572436B736154;
        }

        if (*(*(v4 + 48) + v8))
        {
          v15 = 0xEC00000064657669;
        }

        else
        {
          v15 = 0xEB00000000646574;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v10 = v14;
        }

        else
        {
          v10 = v12;
        }

        if (*(*(v4 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }
      }

      else if (*(*(v4 + 48) + v8) > 7u)
      {
        if (v9 == 8)
        {
          v11 = 0xE800000000000000;
          v10 = 0x6465727265666544;
        }

        else if (v9 == 9)
        {
          v10 = 0x6574656C706D6F43;
          v11 = 0xE900000000000064;
        }

        else
        {
          v11 = 0xE600000000000000;
          v10 = 0x64656C696146;
        }
      }

      else if (v9 == 5)
      {
        v10 = 0xD00000000000001BLL;
        v11 = 0x80000001DF23D040;
      }

      else if (v9 == 6)
      {
        v10 = 0x7261745320746F4ELL;
        v11 = 0xEB00000000646574;
      }

      else
      {
        v11 = 0xE700000000000000;
        v10 = 0x676E696E6E7552;
      }

      v16 = 0x6574656C706D6F43;
      if (a2 != 9)
      {
        v16 = 0x64656C696146;
      }

      v17 = 0xE900000000000064;
      if (a2 != 9)
      {
        v17 = 0xE600000000000000;
      }

      if (a2 == 8)
      {
        v16 = 0x6465727265666544;
        v17 = 0xE800000000000000;
      }

      v18 = 0xD00000000000001BLL;
      v19 = 0x7261745320746F4ELL;
      if (a2 != 6)
      {
        v19 = 0x676E696E6E7552;
      }

      v20 = 0xE700000000000000;
      if (a2 == 6)
      {
        v20 = 0xEB00000000646574;
      }

      if (a2 != 5)
      {
        v18 = v19;
      }

      v21 = 0x80000001DF23D040;
      if (a2 != 5)
      {
        v21 = v20;
      }

      if (a2 <= 7u)
      {
        v16 = v18;
        v17 = v21;
      }

      v22 = 0xD00000000000001ALL;
      if (a2 == 3)
      {
        v23 = 0x80000001DF23D000;
      }

      else
      {
        v23 = 0x80000001DF23D020;
      }

      if (a2 == 2)
      {
        v23 = 0x80000001DF23CFE0;
      }

      else
      {
        v22 = 0xD000000000000014;
      }

      if (a2)
      {
        v24 = 0x656365526B736154;
      }

      else
      {
        v24 = 0x616572436B736154;
      }

      if (a2)
      {
        v25 = 0xEC00000064657669;
      }

      else
      {
        v25 = 0xEB00000000646574;
      }

      if (a2 <= 1u)
      {
        v22 = v24;
        v23 = v25;
      }

      v26 = a2 <= 4u ? v22 : v16;
      v27 = a2 <= 4u ? v23 : v17;
      if (v10 == v26 && v11 == v27)
      {
        break;
      }

      v34 = sub_1DF22B620();

      if (v34)
      {
        goto LABEL_76;
      }

      v8 = (v35 + 1) & v33;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_76:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_74:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v31;
    sub_1DF1EBC94(a2, v8, isUniquelyReferenced_nonNull_native);
    *v31 = v36;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_1DF1EAECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DF22B170();
  v5 = -1 << *(a2 + 32);
  result = sub_1DF22B240();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DF1EAF50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
    v2 = sub_1DF22B2D0();
    v16 = v2;
    sub_1DF22B250();
    if (sub_1DF22B280())
    {
      sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1DF1EB140(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1DF22B170();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1DF22B280());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DF1EB140(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1DF22B170();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DF1EB368(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1DF1EB5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();

      result = sub_1DF22B6F0();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_1DF1EB9A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1DF1EB140(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1DF1EC0AC();
      goto LABEL_12;
    }

    sub_1DF1EC498(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1DF22B170();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1DF1F225C(0, &qword_1ECE0D2E0, 0x1E698E4B0);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1DF22B180();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1DF22B650();
  __break(1u);
}

uint64_t sub_1DF1EBB14(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DF1EB368(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DF1EC1FC();
      goto LABEL_16;
    }

    sub_1DF1EC6AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  result = sub_1DF22B6F0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DF22B620();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DF22B650();
  __break(1u);
  return result;
}

uint64_t sub_1DF1EBC94(uint64_t result, unint64_t a2, char a3)
{
  v39 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a3)
  {
    sub_1DF1EB5C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1DF1EC358();
      goto LABEL_80;
    }

    sub_1DF1EC8E4(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DF22B6C0();
  sub_1DF228924();
  result = sub_1DF22B6F0();
  v37 = v7 + 56;
  v38 = v7;
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v36 = ~v9;
    v10 = 0xEC00000064657669;
    do
    {
      v11 = *(*(v38 + 48) + a2);
      if (v11 <= 4)
      {
        v14 = 0xD00000000000001ALL;
        if (v11 == 3)
        {
          v15 = 0x80000001DF23D000;
        }

        else
        {
          v15 = 0x80000001DF23D020;
        }

        if (v11 == 2)
        {
          v15 = 0x80000001DF23CFE0;
        }

        else
        {
          v14 = 0xD000000000000014;
        }

        if (*(*(v38 + 48) + a2))
        {
          v16 = 0x656365526B736154;
        }

        else
        {
          v16 = 0x616572436B736154;
        }

        if (*(*(v38 + 48) + a2))
        {
          v17 = v10;
        }

        else
        {
          v17 = 0xEB00000000646574;
        }

        if (*(*(v38 + 48) + a2) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }

        if (*(*(v38 + 48) + a2) <= 1u)
        {
          v13 = v17;
        }

        else
        {
          v13 = v15;
        }
      }

      else if (*(*(v38 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v13 = 0xE800000000000000;
          v12 = 0x6465727265666544;
        }

        else if (v11 == 9)
        {
          v12 = 0x6574656C706D6F43;
          v13 = 0xE900000000000064;
        }

        else
        {
          v13 = 0xE600000000000000;
          v12 = 0x64656C696146;
        }
      }

      else if (v11 == 5)
      {
        v12 = 0xD00000000000001BLL;
        v13 = 0x80000001DF23D040;
      }

      else if (v11 == 6)
      {
        v12 = 0x7261745320746F4ELL;
        v13 = 0xEB00000000646574;
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x676E696E6E7552;
      }

      v18 = 0x6574656C706D6F43;
      if (v39 != 9)
      {
        v18 = 0x64656C696146;
      }

      v19 = 0xE900000000000064;
      if (v39 != 9)
      {
        v19 = 0xE600000000000000;
      }

      if (v39 == 8)
      {
        v18 = 0x6465727265666544;
        v19 = 0xE800000000000000;
      }

      v20 = 0xD00000000000001BLL;
      v21 = 0x7261745320746F4ELL;
      if (v39 != 6)
      {
        v21 = 0x676E696E6E7552;
      }

      v22 = 0xE700000000000000;
      if (v39 == 6)
      {
        v22 = 0xEB00000000646574;
      }

      if (v39 != 5)
      {
        v20 = v21;
      }

      v23 = 0x80000001DF23D040;
      if (v39 != 5)
      {
        v23 = v22;
      }

      if (v39 <= 7u)
      {
        v18 = v20;
        v19 = v23;
      }

      v24 = 0xD00000000000001ALL;
      if (v39 == 3)
      {
        v25 = 0x80000001DF23D000;
      }

      else
      {
        v25 = 0x80000001DF23D020;
      }

      if (v39 == 2)
      {
        v25 = 0x80000001DF23CFE0;
      }

      else
      {
        v24 = 0xD000000000000014;
      }

      if (v39)
      {
        v26 = 0x656365526B736154;
      }

      else
      {
        v26 = 0x616572436B736154;
      }

      v27 = v10;
      if (!v39)
      {
        v10 = 0xEB00000000646574;
      }

      if (v39 <= 1u)
      {
        v24 = v26;
        v25 = v10;
      }

      v28 = v39 <= 4u ? v24 : v18;
      v29 = v39 <= 4u ? v25 : v19;
      if (v12 == v28 && v13 == v29)
      {
        goto LABEL_83;
      }

      v30 = sub_1DF22B620();

      if (v30)
      {
        goto LABEL_84;
      }

      a2 = (a2 + 1) & v36;
      v10 = v27;
    }

    while (((*(v37 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_80:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + a2) = v39;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (!v33)
  {
    *(v31 + 16) = v34;
    return result;
  }

  __break(1u);
LABEL_83:

LABEL_84:
  result = sub_1DF22B650();
  __break(1u);
  return result;
}

id sub_1DF1EC0AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF1EC1FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF1EC358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  v2 = *v0;
  v3 = sub_1DF22B2B0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DF1EC498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EA90, &unk_1DF238BD0);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1DF22B170();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DF1EC6AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E4A8, &qword_1DF2387E8);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1DF22B6C0();

      sub_1DF22AD20();
      result = sub_1DF22B6F0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DF1EC8E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0E458, &qword_1DF238790);
  result = sub_1DF22B2C0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_1DF22B6C0();
      sub_1DF22AD20();

      result = sub_1DF22B6F0();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DF1ECC90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v7 = sub_1DF22B6F0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DF22B620() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DF1EC1FC();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DF1ECDCC(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1DF1ECDCC(unint64_t result)
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

    v9 = sub_1DF22B230();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DF22B6C0();

        sub_1DF22AD20();
        v15 = sub_1DF22B6F0();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
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

unint64_t sub_1DF1ECF90(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_20LighthouseBackground17MLHostClientErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1DF1ED010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF1ED058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DF1ED09C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t _s20LighthouseBackground12MLHostClientC9getConfigAA0cF0VyYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 392);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22C0;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC9setConfig6configSbAA0cF0V_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 400);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC22getNotificationsConfig14registeredOnlySDySSSaySSGGSb_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 408);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC18resetNotifications6reloadS2b_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC8getTasksSayAA0C4TaskVGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v4 = *(*v1 + 424);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF1F22B8;

  return v8(a1);
}

uint64_t _s20LighthouseBackground12MLHostClientC7getTaskyAA0cF0VSgSSYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 432);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1DF1F22C0;

  return v14(a1, a2, a3, a4);
}

uint64_t _s20LighthouseBackground12MLHostClientC7addTask14taskDefinitionSbAA0fH0V_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 440);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC10removeTaskySbSSYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 448);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DF1F22B8;

  return v12(a1, a2, a3);
}

uint64_t _s20LighthouseBackground12MLHostClientC10resetTasks6reloadS2b_tYaAA0cD5ErrorOYKFTj(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 456);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DF1F22B8;

  return v10(a1, a2);
}

uint64_t _s20LighthouseBackground12MLHostClientC10cleanTasksSaySSGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v4 = *(*v1 + 464);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF1EDD00;

  return v8(a1);
}

uint64_t sub_1DF1EDD00(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t _s20LighthouseBackground12MLHostClientC13getExtensionsSayAA15ExtensionRecordVGyYaAA0cD5ErrorOYKFTj(uint64_t a1)
{
  v4 = *(*v1 + 472);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF1F22B8;

  return v8(a1);
}