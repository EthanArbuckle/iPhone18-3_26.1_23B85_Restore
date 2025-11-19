void sub_25A8ADD30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8ADD38);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8ADE94(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v5 = sub_25A8DF268(&v15);
  result = sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    v7 = sub_25A8DF5A8(a1, 1936029793, 0xE400000000000000);
    if (v7)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v8 = v15;
      v14 = mlx_array_new();
      swift_beginAccess();
      v9 = *(v5 + 16);
      v10 = Array<A>.asInt32.getter(v7);
      v11 = *(v7 + 2);

      mlx_transpose_axes(&v14, v9, v10 + 32, v11, *(v8 + 16));
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v12 = v15;
    v14 = mlx_array_new();
    swift_beginAccess();
    mlx_transpose(&v14, *(v5 + 16), *(v12 + 16));
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AE0E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE0E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE104(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v3 & 1) == 0))
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_9;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_9;
  }

  v4 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {
LABEL_9:
    sub_25A878194(&v18, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_10;
  }

  v5 = v20;
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v7 = sub_25A92FDB0(v6);

  if (v7)
  {
    sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if ((v8 & 1) == 0)
    {
      v11 = *(v7 + 16);
      if (v11)
      {
        v17[0] = MEMORY[0x277D84F90];
        sub_25A998748();
        v12 = v7 + 32;
        do
        {
          sub_25A872F24(v12, &v18);
          v13 = *(&v19 + 1);
          v14 = v20;
          __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
          (*(v14 + 8))(13, v13, v14);
          __swift_destroy_boxed_opaque_existential_0Tm(&v18);
          sub_25A998718();
          v15 = *(v17[0] + 16);
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
          v12 += 40;
          --v11;
        }

        while (v11);

        v16 = v17[0];
      }

      else
      {

        v16 = MEMORY[0x277D84F90];
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A954AD8(v16);
    }
  }

LABEL_10:
  sub_25A874F54();
  swift_allocError();
  *v9 = 85;
  return swift_willThrow();
}

uint64_t sub_25A8AE3F8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(7959137, 0xE300000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v9);
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  sub_25A8DF268(&v9);
  result = sub_25A878194(&v9, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    sub_25A8DF850(a1, 0xD000000000000013, 0x800000025AA68320);
    if ((v6 & 1) == 0)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      mlx_vector_array_new();
    }

    if (sub_25A8DF5A8(a1, 0xD000000000000013, 0x800000025AA68320))
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      mlx_vector_array_new();
    }

    sub_25A874F54();
    swift_allocError();
    *v8 = 86;
    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AE750(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE758);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE784(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_subtract(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AE9AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AE9B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AE9C0(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_exp(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AEB4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AEB54);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AEB60(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_log(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AECEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AECF4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AED00(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_sqrt(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AEE8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AEE94);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AEEA0(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v21);
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v5 = sub_25A8DF268(&v21);
  result = sub_25A878194(&v21, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v8 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v7, &v21), swift_dynamicCast()))
    {
      v9 = v20;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      v12 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v12)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v18 = v21;
        v20 = mlx_array_new();
        swift_beginAccess();
        mlx_mean(&v20, *(v5 + 16), v9, *(v18 + 16));
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_15:
        sub_25A998C58();
        v13 = v21;
        v20 = mlx_array_new();
        swift_beginAccess();
        v14 = *(v5 + 16);
        v15 = Array<A>.asInt32.getter(v12);
        v16 = *(v12 + 16);

        mlx_mean_axes(&v20, v14, v15 + 32, v16, v9, *(v13 + 16));
      }
    }

    else
    {
      v12 = v10;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = v21;
      v20 = mlx_array_new();
      swift_beginAccess();
      if (v12 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v12 <= 0x7FFFFFFF)
      {
        mlx_mean_axis(&v20, *(v5 + 16), v12, v9, *(v17 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_15;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AF21C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF224);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF250@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = sub_25A8DF268(&v26);
  result = sub_25A878194(&v26, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v26), swift_dynamicCast()))
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v26;
        v25 = mlx_array_new();
        swift_beginAccess();
        mlx_prod(&v25, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v26;
      v25 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_prod_axis(&v25, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v26;
    v25 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_prod_axes(&v25, v16, v17 + 32, v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v25;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AF5CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF5D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = sub_25A8DF268(&v26);
  result = sub_25A878194(&v26, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v26), swift_dynamicCast()))
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v26;
        v25 = mlx_array_new();
        swift_beginAccess();
        mlx_min(&v25, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v26;
      v25 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_min_axis(&v25, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v26;
    v25 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_min_axes(&v25, v16, v17 + 32, v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v25;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AF97C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AF984);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AF9B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v7 = sub_25A8DF268(&v26);
  result = sub_25A878194(&v26, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    if (*(a1 + 16) && (v9 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v26), swift_dynamicCast()))
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = v26;
        v25 = mlx_array_new();
        swift_beginAccess();
        mlx_max(&v25, *(v7 + 16), v11, *(v20 + 16));
        goto LABEL_24;
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v14 = v12;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v19 = v26;
      v25 = mlx_array_new();
      swift_beginAccess();
      if (v14 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v14 <= 0x7FFFFFFF)
      {
        mlx_max_axis(&v25, *(v7 + 16), v14, v11, *(v19 + 16));
        goto LABEL_24;
      }

      __break(1u);
    }

    swift_once();
LABEL_15:
    sub_25A998C58();
    v15 = v26;
    v25 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    v17 = Array<A>.asInt32.getter(v14);
    v18 = *(v14 + 16);

    mlx_max_axes(&v25, v16, v17 + 32, v18, v11, *(v15 + 16));

LABEL_24:

    v21 = v25;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8AFD2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8AFD34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8AFD60(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v5 = sub_25A8DF268(&v18);
  result = sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v8 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v7, &v18), swift_dynamicCast()))
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000))
      {

        sub_25A874F54();
        swift_allocError();
        *v12 = 87;
        swift_willThrow();

        goto LABEL_22;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v15 = v18;
        v17 = mlx_array_new();
        swift_beginAccess();
        mlx_argmin(&v17, *(v5 + 16), v9, *(v15 + 16));
      }
    }

    else
    {
      v13 = v10;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v14 = v18;
      v17 = mlx_array_new();
      swift_beginAccess();
      if (v13 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v13 <= 0x7FFFFFFF)
      {
        mlx_argmin_axis(&v17, *(v5 + 16), v13, v9, *(v14 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B0068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0070);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B008C(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v18);
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v5 = sub_25A8DF268(&v18);
  result = sub_25A878194(&v18, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000), (v8 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v7, &v18), swift_dynamicCast()))
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000))
      {

        sub_25A874F54();
        swift_allocError();
        *v12 = 88;
        swift_willThrow();

        goto LABEL_22;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v15 = v18;
        v17 = mlx_array_new();
        swift_beginAccess();
        mlx_argmax(&v17, *(v5 + 16), v9, *(v15 + 16));
      }
    }

    else
    {
      v13 = v10;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v14 = v18;
      v17 = mlx_array_new();
      swift_beginAccess();
      if (v13 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v13 <= 0x7FFFFFFF)
      {
        mlx_argmax_axis(&v17, *(v5 + 16), v13, v9, *(v14 + 16));
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_22:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B0408(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0410);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0434(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    v7 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v8)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v9 = v14;
      v13 = mlx_array_new();
      swift_beginAccess();
      mlx_sort(&v13, *(v5 + 16), *(v9 + 16));
    }

    v10 = v7;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v11 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      mlx_sort_axis(&v13, *(v5 + 16), v10, *(v11 + 16));
    }

    __break(1u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B0674(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B067CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0698(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_matmul(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B08C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B08C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B08D4(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v5 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (!*(a1 + 16))
    {
      v22 = 0;
      goto LABEL_17;
    }

    v7 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000);
    if ((v8 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v7, &v24), swift_dynamicCast()))
    {
      v22 = v23;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    v9 = sub_25A8F3600(1718576228, 0xE400000000000000);
    if (v10)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v9, &v24);
      sub_25A873A9C();
      if (swift_dynamicCast())
      {
        v11 = [v23 integerValue];

        goto LABEL_18;
      }
    }

LABEL_17:
    v11 = 0;
LABEL_18:
    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v15 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        v16 = *(v5 + 16);
        v17 = Array<A>.asInt32.getter(v14);
        v18 = *(v14 + 16);

        if (v11 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v11 <= 0x7FFFFFFF)
        {
          mlx_std_axes(&v23, v16, v17 + 32, v18, v22, v11, *(v15 + 16));
        }

        __break(1u);
LABEL_42:
        swift_once();
LABEL_32:
        sub_25A998C58();
        v20 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        if (v11 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v11 <= 0x7FFFFFFF)
        {
          mlx_std(&v23, *(v5 + 16), v22, v11, *(v20 + 16));
        }

        __break(1u);
      }

LABEL_39:
      swift_once();
      goto LABEL_21;
    }

    v14 = v12;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v19 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    if (v14 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        mlx_std_axis(&v23, *(v5 + 16), v14, v22, v11, *(v19 + 16));
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B0D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B0D48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B0D7C(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v24);
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v5 = sub_25A8DF268(&v24);
  result = sub_25A878194(&v24, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (!*(a1 + 16))
    {
      v22 = 0;
      goto LABEL_17;
    }

    v7 = sub_25A8F3600(0x736D69647065656BLL, 0xE800000000000000);
    if ((v8 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v7, &v24), swift_dynamicCast()))
    {
      v22 = v23;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
      if (!*(a1 + 16))
      {
        goto LABEL_17;
      }
    }

    v9 = sub_25A8F3600(1718576228, 0xE400000000000000);
    if (v10)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v9, &v24);
      sub_25A873A9C();
      if (swift_dynamicCast())
      {
        v11 = [v23 integerValue];

        goto LABEL_18;
      }
    }

LABEL_17:
    v11 = 0;
LABEL_18:
    v12 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v13)
    {
      v14 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v14)
      {
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      }

      if (qword_27FA043D8 == -1)
      {
LABEL_21:
        sub_25A998C58();
        v15 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        v16 = *(v5 + 16);
        v17 = Array<A>.asInt32.getter(v14);
        v18 = *(v14 + 16);

        if (v11 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v11 <= 0x7FFFFFFF)
        {
          mlx_var_axes(&v23, v16, v17 + 32, v18, v22, v11, *(v15 + 16));
        }

        __break(1u);
LABEL_42:
        swift_once();
LABEL_32:
        sub_25A998C58();
        v20 = v24;
        v23 = mlx_array_new();
        swift_beginAccess();
        if (v11 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v11 <= 0x7FFFFFFF)
        {
          mlx_var(&v23, *(v5 + 16), v22, v11, *(v20 + 16));
        }

        __break(1u);
      }

LABEL_39:
      swift_once();
      goto LABEL_21;
    }

    v14 = v12;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v19 = v24;
    v23 = mlx_array_new();
    swift_beginAccess();
    if (v14 > 0x7FFFFFFF)
    {
      __break(1u);
    }

    else if (v11 >= 0xFFFFFFFF80000000 && v14 >= 0xFFFFFFFF80000000)
    {
      if (v11 <= 0x7FFFFFFF)
      {
        mlx_var_axis(&v23, *(v5 + 16), v14, v22, v11, *(v19 + 16));
      }

      goto LABEL_38;
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B11E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B11F0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1224(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v5 = sub_25A8DF268(&v15);
  result = sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v15);
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v9 = sub_25A8DF268(&v15);
    sub_25A878194(&v15, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v15;
    swift_beginAccess();
    v11 = mlx_array_dtype(*(v5 + 16));
    sub_25A956420(v11);
    v14 = mlx_array_new();
    v12 = *(v5 + 16);
    swift_beginAccess();
    mlx_floor_divide(&v14, v12, *(v9 + 16), *(v10 + 16));
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B1458(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1460);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1474(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v5 = sub_25A8DF268(&v23);
  result = sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }

    v9 = sub_25A8DF268(&v23);
    sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16))
    {
      v10 = sub_25A8F3600(1819243634, 0xE400000000000000);
      if (v11)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v10, &v23);
        sub_25A873A9C();
        if (swift_dynamicCast())
        {
          [v21 doubleValue];
        }
      }
    }

    if (*(a1 + 16))
    {
      v12 = sub_25A8F3600(1819243617, 0xE400000000000000);
      if (v13)
      {
        sub_25A87500C(*(a1 + 56) + 32 * v12, &v23);
        sub_25A873A9C();
        if (swift_dynamicCast())
        {
          [v21 doubleValue];
        }
      }
    }

    if (*(a1 + 16) && (v14 = sub_25A8F3600(0x616E5F6C61757165, 0xE90000000000006ELL), (v15 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v14, &v23), swift_dynamicCast()))
    {
      v16 = v21;
    }

    else
    {
      v16 = 0;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v17 = v23;
    swift_beginAccess();
    v18 = mlx_array_dtype(*(v5 + 16));
    sub_25A956420(v18);
    v22 = mlx_array_new();
    v19 = *(v5 + 16);
    swift_beginAccess();
    mlx_allclose(&v22, v19, *(v9 + 16), v16, *(v17 + 16));
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B1844(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B184CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1870(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_abs(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B19FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1A04);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1A10(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v5 = sub_25A8DF268(&v19);
  result = sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v9 = sub_25A8DF268(&v19);
    sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
    if (*(a1 + 16) && (v10 = sub_25A8F3600(0x616E5F6C61757165, 0xE90000000000006ELL), (v11 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v10, &v19), swift_dynamicCast()))
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v13 = v19;
    swift_beginAccess();
    v14 = mlx_array_dtype(*(v5 + 16));
    sub_25A956420(v14);
    v18 = mlx_array_new();
    v15 = *(v5 + 16);
    swift_beginAccess();
    mlx_array_equal(&v18, v15, *(v9 + 16), v12, *(v13 + 16));
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B1CCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1CD4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1CE8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(121, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_greater(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B1F10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B1F18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B1F24(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(121, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_greater_equal(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B214C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2154);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2160(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(121, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_less(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B2388(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2390);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B239C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(121, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_less_equal(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B25C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B25CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B25D8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(121, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_not_equal(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B2800(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2808);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2814(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_isnan(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B29F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2A00);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2A14(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(0x7961727261, 0xE500000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v5 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    v7 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v13;
    v12 = mlx_array_new();
    swift_beginAccess();
    if (v9 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v9 <= 0x7FFFFFFF)
    {
      mlx_cummax(&v12, *(v5 + 16), v9, 0, 1, *(v10 + 16));
    }

    __break(1u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B2BF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2BF8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2C04(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_maximum(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B2E2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B2E34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B2E40(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_minimum(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3068(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3070);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B307C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_negative(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3208(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3210);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B321C(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v5 = sub_25A8DF268(&v17);
  result = sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x73656369646E69, 0xE700000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v9 = sub_25A8DF268(&v17);
    sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A963A0C(v5, v9, v17);
    }

    v12 = v10;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v13 = v17;
    v16 = mlx_array_new();
    swift_beginAccess();
    v14 = *(v5 + 16);
    swift_beginAccess();
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v12 <= 0x7FFFFFFF)
    {
      mlx_take_axis(&v16, v14, *(v9 + 16), v12, *(v13 + 16));
    }

    __break(1u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3514(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B351CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3528(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(97, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v5 = sub_25A8DF268(&v17);
  result = sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(0x73656369646E69, 0xE700000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v17);
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v9 = sub_25A8DF268(&v17);
    sub_25A878194(&v17, &qword_27FA04458, &unk_25A9F7FB0);
    v10 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v11)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A954D50(v5, v9, v17);
    }

    v12 = v10;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v13 = v17;
    v16 = mlx_array_new();
    swift_beginAccess();
    v14 = *(v5 + 16);
    swift_beginAccess();
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v12 <= 0x7FFFFFFF)
    {
      mlx_take_along_axis(&v16, v14, *(v9 + 16), v12, *(v13 + 16));
    }

    __break(1u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3828);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v7 = sub_25A8DF268(&v23);
  result = sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v11)
      {
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v17 = v23;
        v22 = mlx_array_new();
        swift_beginAccess();
        mlx_squeeze(&v22, *(v7 + 16), *(v17 + 16));
      }

      if (qword_27FA043D8 == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = v9;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v16 = v23;
      v22 = mlx_array_new();
      swift_beginAccess();
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v11 <= 0x7FFFFFFF)
      {
        mlx_squeeze_axis(&v22, *(v7 + 16), v11, *(v16 + 16));
      }

      __break(1u);
    }

    swift_once();
LABEL_10:
    sub_25A998C58();
    v12 = v23;
    v22 = mlx_array_new();
    swift_beginAccess();
    v13 = *(v7 + 16);
    v14 = Array<A>.asInt32.getter(v11);
    v15 = *(v11 + 16);

    mlx_squeeze_axes(&v22, v13, v14 + 32, v15, *(v12 + 16));

    v18 = v22;
    v19 = type metadata accessor for MLXArray();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    a2[3] = v19;

    *a2 = v20;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3B34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3B3CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v23);
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v7 = sub_25A8DF268(&v23);
  result = sub_25A878194(&v23, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 0x73746165706572, 0xE700000000000000);
    if (v10)
    {
      sub_25A874F54();
      swift_allocError();
      *v11 = 93;
      swift_willThrow();

      goto LABEL_23;
    }

    v12 = v9;
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v15 = v23;
      v22 = mlx_array_new();
      swift_beginAccess();
      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          mlx_repeat(&v22, *(v7 + 16), v12, *(v15 + 16));
LABEL_22:

          v18 = v22;
          v19 = type metadata accessor for MLXArray();
          v20 = swift_allocObject();
          *(v20 + 16) = v18;
          a2[3] = v19;

          *a2 = v20;
          goto LABEL_23;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else
    {
      v16 = v13;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = v23;
      v22 = mlx_array_new();
      swift_beginAccess();
      if (v12 <= 0x7FFFFFFF)
      {
        if (v12 >= 0xFFFFFFFF80000000 && v16 >= 0xFFFFFFFF80000000)
        {
          if (v16 <= 0x7FFFFFFF)
          {
            mlx_repeat_axis(&v22, *(v7 + 16), v12, v16, *(v17 + 16));
            goto LABEL_22;
          }

LABEL_28:
          __break(1u);
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B3E48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B3E50);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B3E6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(0x6C61765F6C6C6966, 0xEA00000000006575);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v16);
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v5 = sub_25A8DF268(&v16);
  result = sub_25A878194(&v16, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    v7 = sub_25A8DF850(a1, 0x6570616873, 0xE500000000000000);
    if ((v8 & 1) == 0)
    {
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v12;
      v14 = qword_27FA043D8;

      if (v14 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A8DF108(inited, v5, v16);
    }

    v9 = sub_25A8DF5A8(a1, 0x6570616873, 0xE500000000000000);
    if (v9)
    {
      v10 = v9;
      v11 = qword_27FA043D8;

      if (v11 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      sub_25A8DF108(v10, v5, v16);
    }

    sub_25A874F54();
    swift_allocError();
    *v15 = 94;
    swift_willThrow();
  }

  return result;
}

uint64_t sub_25A8B40E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(0x6C61765F6C6C6966, 0xEA00000000006575);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v5 = sub_25A8DF268(&v11);
  result = sub_25A878194(&v11, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(97, 0xE100000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_25A8DF268(&v11);
    sub_25A878194(&v11, &qword_27FA04458, &unk_25A9F7FB0);
    v9 = sub_25A9616CC();
    v10 = qword_27FA043D8;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    sub_25A8DF108(v9, v5, v11);
  }

  return result;
}

uint64_t sub_25A8B42C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v36);
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v7 = sub_25A8DF268(&v36);
  result = sub_25A878194(&v36, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    goto LABEL_29;
  }

  if (*(a1 + 16) && (v9 = sub_25A8F3600(0x6E696D5F61, 0xE500000000000000), (v10 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v9, &v36);
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v11 = sub_25A8DF268(&v36);
  sub_25A878194(&v36, &qword_27FA04458, &unk_25A9F7FB0);
  if (*(a1 + 16) && (v12 = sub_25A8F3600(0x78616D5F61, 0xE500000000000000), (v13 & 1) != 0))
  {
    sub_25A87500C(*(a1 + 56) + 32 * v12, &v36);
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v20 = sub_25A8DF268(&v36);
  sub_25A878194(&v36, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v11)
  {
    if (!v20)
    {
      sub_25A874F54();
      swift_allocError();
      *v32 = 95;
      swift_willThrow();

      goto LABEL_29;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v27 = v36;
    v34[0] = mlx_array_new();
    v28 = mlx_array_new();
    swift_beginAccess();
    v29 = *(v7 + 16);
    swift_beginAccess();
    mlx_clip(v34, v29, v28, *(v20 + 16), *(v27 + 16));
    v30 = v34[0];
    v31 = type metadata accessor for MLXArray();
    v19 = swift_allocObject();
    *(v19 + 16) = v30;
    mlx_array_free(v28);

    a2[3] = v31;
    goto LABEL_18;
  }

  if (!v20)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v14 = v36;
    v34[0] = mlx_array_new();
    v15 = mlx_array_new();
    swift_beginAccess();
    v16 = *(v7 + 16);
    swift_beginAccess();
    mlx_clip(v34, v16, *(v11 + 16), v15, *(v14 + 16));
    v17 = v34[0];
    v18 = type metadata accessor for MLXArray();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    mlx_array_free(v15);

    a2[3] = v18;
LABEL_18:

    *a2 = v19;
    goto LABEL_29;
  }

  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v21 = v36;
  v35 = mlx_array_new();
  swift_beginAccess();
  v22 = *(v7 + 16);
  swift_beginAccess();
  v23 = *(v11 + 16);
  swift_beginAccess();
  mlx_clip(&v35, v22, v23, *(v20 + 16), *(v21 + 16));

  v24 = v35;
  v25 = type metadata accessor for MLXArray();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  a2[3] = v25;

  *a2 = v26;
LABEL_29:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B47C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B47CCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4818(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_ceil(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B49A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B49ACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B49B8(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_floor(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B4B44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4B4CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4B58(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v5 = sub_25A8DF268(&v13);
  result = sub_25A878194(&v13, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    v7 = sub_25A8DF850(a1, 0x736C616D69636564, 0xE800000000000000);
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v13;
    v12 = mlx_array_new();
    swift_beginAccess();
    if (v9 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v9 <= 0x7FFFFFFF)
    {
      mlx_round(&v12, *(v5 + 16), v9, *(v10 + 16));
    }

    __break(1u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B4D2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4D34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v20);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v7 = sub_25A8DF268(&v20);
  result = sub_25A878194(&v20, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF5A8(a1, 0x6570616873, 0xE500000000000000);
    if (v9)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v10 = v20;
      v19 = mlx_array_new();
      swift_beginAccess();
      v11 = *(v7 + 16);
      v12 = Array<A>.asInt32.getter(v9);
      v13 = *(v9 + 2);

      mlx_broadcast_to(&v19, v11, v12 + 32, v13, *(v10 + 16));

      v14 = v19;
      v15 = type metadata accessor for MLXArray();
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      a2[3] = v15;

      *a2 = v16;
    }

    else
    {
      sub_25A874F54();
      swift_allocError();
      *v17 = 96;
      swift_willThrow();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B4F5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B4F64);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B4F70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(120, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v7 = sub_25A8DF268(&v27);
  result = sub_25A878194(&v27, &qword_27FA04458, &unk_25A9F7FB0);
  if (v2)
  {
    goto LABEL_25;
  }

  if (*(a1 + 16) && (v9 = sub_25A8F3600(7233902, 0xE300000000000000), (v10 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v9, &v27), sub_25A873A9C(), (swift_dynamicCast() & 1) != 0))
  {
    [v26 floatValue];

    if (!*(a1 + 16))
    {
      goto LABEL_17;
    }
  }

  else if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v11 = sub_25A8F3600(0x666E69736F70, 0xE600000000000000);
  if ((v12 & 1) == 0 || (sub_25A87500C(*(a1 + 56) + 32 * v11, &v27), sub_25A873A9C(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_17:
    v15 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_18;
    }

LABEL_21:
    v20 = 0;
    goto LABEL_22;
  }

  [v26 floatValue];
  v14 = v13;

  v15 = v14 | 0x100000000;
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

LABEL_18:
  v16 = sub_25A8F3600(0x666E6967656ELL, 0xE600000000000000);
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v16, &v27);
  sub_25A873A9C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  [v26 floatValue];
  v19 = v18;

  v20 = v19 | 0x100000000;
LABEL_22:
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v21 = v27;
  v26 = mlx_array_new();
  swift_beginAccess();
  mlx_nan_to_num(&v26, *(v7 + 16), v15, v20, *(v21 + 16));

  v22 = v26;
  v23 = type metadata accessor for MLXArray();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  a2[3] = v23;

  *a2 = v24;
LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B52AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B52B4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B52D8(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) && (v3 = sub_25A8F3600(0x6570797464, 0xE500000000000000), (v4 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v3, &v48), (swift_dynamicCast() & 1) != 0))
  {
    v5 = *(&v51[0] + 1);
    v6 = *&v51[0];
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x3436746E69;
    if (!*(a1 + 16))
    {
LABEL_12:

      sub_25A874F54();
      swift_allocError();
      *v14 = 97;
      result = swift_willThrow();
      goto LABEL_23;
    }
  }

  v7 = sub_25A8F3600(7827308, 0xE300000000000000);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v7, &v48);
  sub_25A872D74(&v48, v51);
  v9 = sub_25A8F139C(v6, v5);

  v10 = sub_25A8F0FA0(v51, v9);
  if (!v1)
  {
    v11 = v10;
    if (*(a1 + 16) && (v12 = sub_25A8F3600(1751607656, 0xE400000000000000), (v13 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v12, &v48);
    }

    else
    {
      v49 = 0u;
      v48 = 0u;
    }

    v45 = sub_25A8DF268(&v48);
    sub_25A878194(&v48, &qword_27FA04458, &unk_25A9F7FB0);
    v16 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
    if (v17)
    {
      v18 = sub_25A8DF5A8(a1, 1702521203, 0xE400000000000000);
      if (v18)
      {
        v50 = 0;
        v49 = 0u;
        v48 = 0u;
        v19 = qword_27FA043D8;

        if (v19 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v20 = sub_25A955E70(&v48);
        v47 = mlx_array_new();
        swift_beginAccess();
        v43 = v11[2];
        swift_beginAccess();
        v21 = *(v45 + 16);
        v22 = Array<A>.asInt32.getter(v18);
        v23 = *(v18 + 2);

        v24 = mlx_array_dtype(v11[2]);
        v25 = dword_25A9F95BC[sub_25A956420(v24)];
        swift_beginAccess();
        mlx_random_randint(&v47, v43, v21, v22 + 32, v23, v25, *(v20 + 16), *(v46 + 16));
      }

      v50 = 0;
      v49 = 0u;
      v48 = 0u;
      v36 = qword_27FA043D8;

      if (v36 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v37 = sub_25A9616CC();
      v38 = sub_25A955E70(&v48);
      v47 = mlx_array_new();
      swift_beginAccess();
      v44 = v11[2];
      swift_beginAccess();
      v39 = *(v45 + 16);
      v40 = Array<A>.asInt32.getter(v37);
      v41 = *(v37 + 16);

      v42 = mlx_array_dtype(v11[2]);
      LODWORD(v37) = dword_25A9F95BC[sub_25A956420(v42)];
      swift_beginAccess();
      mlx_random_randint(&v47, v44, v39, v40 + 32, v41, v37, *(v38 + 16), *(v46 + 16));
    }

    v26 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25A9F8D90;
    *(inited + 32) = v26;
    v50 = 0;
    v49 = 0u;
    v48 = 0u;
    v28 = qword_27FA043D8;

    if (v28 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v29 = sub_25A955E70(&v48);
    v47 = mlx_array_new();
    swift_beginAccess();
    v30 = v11[2];
    swift_beginAccess();
    v31 = *(v45 + 16);
    v32 = Array<A>.asInt32.getter(inited);

    v33 = mlx_array_dtype(v11[2]);
    v34 = dword_25A9F95BC[sub_25A956420(v33)];
    swift_beginAccess();
    mlx_random_randint(&v47, v30, v31, v32 + 32, 1uLL, v34, *(v29 + 16), *(v46 + 16));
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v51);
LABEL_23:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B59DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B59E4);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B5A28(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
  if (v3)
  {
    v4 = sub_25A8DF5A8(a1, 1702521203, 0xE400000000000000);
    if (v4)
    {
      v5 = v4;
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v6 = sub_25A8BA638(0.0, 1.0);
      v8 = v7;
      v9 = sub_25A955E70(&v34);
      v33 = mlx_array_new();
      swift_beginAccess();
      v10 = *(v6 + 16);
      swift_beginAccess();
      v11 = *(v8 + 16);
      v12 = Array<A>.asInt32.getter(v5);
      v13 = *(v5 + 16);

      swift_beginAccess();
      mlx_random_uniform(&v33, v10, v11, v12 + 32, v13, 10, *(v9 + 16), *(v32 + 16));
    }

    v36 = 0;
    v35 = 0u;
    v34 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v23 = sub_25A8BA638(0.0, 1.0);
    v25 = v24;
    v26 = sub_25A9616CC();
    v27 = sub_25A955E70(&v34);
    v33 = mlx_array_new();
    swift_beginAccess();
    v28 = *(v23 + 16);
    swift_beginAccess();
    v29 = *(v25 + 16);
    v30 = Array<A>.asInt32.getter(v26);
    v31 = *(v26 + 16);

    swift_beginAccess();
    mlx_random_uniform(&v33, v28, v29, v30 + 32, v31, 10, *(v27 + 16), *(v32 + 16));
  }

  v14 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25A9F8D90;
  *(inited + 32) = v14;
  v36 = 0;
  v35 = 0u;
  v34 = 0u;
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v16 = sub_25A8BA638(0.0, 1.0);
  v18 = v17;
  v19 = sub_25A955E70(&v34);
  v33 = mlx_array_new();
  swift_beginAccess();
  v20 = *(v16 + 16);
  swift_beginAccess();
  v21 = *(v18 + 16);
  v22 = Array<A>.asInt32.getter(inited);
  swift_setDeallocating();
  swift_beginAccess();
  mlx_random_uniform(&v33, v20, v21, v22 + 32, 1uLL, 10, *(v19 + 16), *(v32 + 16));
}

void sub_25A8B5EE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B5EF0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B5F1C(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(1936550244, 0xE400000000000000), (v3 & 1) == 0))
  {
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_17;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_17;
  }

  v4 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
LABEL_17:
    sub_25A878194(&v43, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_18;
  }

  v5 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  if (!*(v6 + 16))
  {

    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v17 = v42[0];
    v18 = sub_25A8BA638(0.0, 1.0);
    v20 = v19;
    v21 = sub_25A9616CC();
    v22 = sub_25A955E70(&v43);
    v41 = mlx_array_new();
    swift_beginAccess();
    v38 = *(v18 + 16);
    swift_beginAccess();
    v23 = *(v20 + 16);
    v24 = Array<A>.asInt32.getter(v21);
    v25 = *(v21 + 16);

    swift_beginAccess();
    mlx_random_uniform(&v41, v38, v23, v24 + 32, v25, 10, *(v22 + 16), *(v17 + 16));
  }

  v7 = sub_25A92F774(v6);

  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_25A998848();
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_9:
        *&v43 = MEMORY[0x277D84F90];
        sub_25A937570(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
        }

        v9 = v43;
        if ((v7 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v8; ++i)
          {
            v11 = [MEMORY[0x25F8509C0](i v7)];
            swift_unknownObjectRelease();
            *&v43 = v9;
            v13 = *(v9 + 16);
            v12 = *(v9 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_25A937570((v12 > 1), v13 + 1, 1);
              v9 = v43;
            }

            *(v9 + 16) = v13 + 1;
            *(v9 + 8 * v13 + 32) = v11;
          }
        }

        else
        {
          v26 = (v7 + 32);
          do
          {
            v27 = [*v26 integerValue];
            *&v43 = v9;
            v29 = *(v9 + 16);
            v28 = *(v9 + 24);
            if (v29 >= v28 >> 1)
            {
              v39 = v27;
              sub_25A937570((v28 > 1), v29 + 1, 1);
              v9 = v43;
              v27 = v39;
            }

            *(v9 + 16) = v29 + 1;
            *(v9 + 8 * v29 + 32) = v27;
            ++v26;
            --v8;
          }

          while (v8);
        }

LABEL_30:
        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v30 = v42[0];
        v31 = sub_25A8BA638(0.0, 1.0);
        v33 = v32;
        v34 = sub_25A955E70(&v43);
        v41 = mlx_array_new();
        swift_beginAccess();
        v40 = *(v31 + 16);
        swift_beginAccess();
        v35 = *(v33 + 16);
        v36 = Array<A>.asInt32.getter(v9);
        v37 = *(v9 + 16);

        swift_beginAccess();
        mlx_random_uniform(&v41, v40, v35, v36 + 32, v37, 10, *(v34 + 16), *(v30 + 16));
      }
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_18:
  sub_25A874F54();
  swift_allocError();
  *v14 = 99;
  result = swift_willThrow();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B6518(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B6520);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B654C(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(1936550244, 0xE400000000000000), (v3 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_17;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_17;
  }

  v4 = *(&v32 + 1);
  if (!*(&v32 + 1))
  {
LABEL_17:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_18;
  }

  v5 = v33;
  __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
  v6 = (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
  if (!*(v6 + 16))
  {

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v17 = v30[0];
    v18 = sub_25A955E70(&v31);
    v29 = mlx_array_new();
    v19 = Array<A>.asInt32.getter(MEMORY[0x277D84F90]);
    swift_beginAccess();
    mlx_random_normal(&v29, v19 + 32, 0, 10, *(v18 + 16), *(v17 + 16));
  }

  v7 = sub_25A92F774(v6);

  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_25A998848();
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_9:
        *&v31 = MEMORY[0x277D84F90];
        sub_25A937570(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
        }

        v9 = v31;
        if ((v7 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v8; ++i)
          {
            v11 = [MEMORY[0x25F8509C0](i v7)];
            swift_unknownObjectRelease();
            *&v31 = v9;
            v13 = *(v9 + 16);
            v12 = *(v9 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_25A937570((v12 > 1), v13 + 1, 1);
              v9 = v31;
            }

            *(v9 + 16) = v13 + 1;
            *(v9 + 8 * v13 + 32) = v11;
          }
        }

        else
        {
          v20 = (v7 + 32);
          do
          {
            v21 = [*v20 integerValue];
            *&v31 = v9;
            v23 = *(v9 + 16);
            v22 = *(v9 + 24);
            if (v23 >= v22 >> 1)
            {
              v28 = v21;
              sub_25A937570((v22 > 1), v23 + 1, 1);
              v9 = v31;
              v21 = v28;
            }

            *(v9 + 16) = v23 + 1;
            *(v9 + 8 * v23 + 32) = v21;
            ++v20;
            --v8;
          }

          while (v8);
        }

LABEL_30:
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        v24 = v30[0];
        v25 = sub_25A955E70(&v31);
        v29 = mlx_array_new();
        v26 = Array<A>.asInt32.getter(v9);
        v27 = *(v9 + 16);

        swift_beginAccess();
        mlx_random_normal(&v29, v26 + 32, v27, 10, *(v25 + 16), *(v24 + 16));
      }
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

LABEL_18:
  sub_25A874F54();
  swift_allocError();
  *v14 = 98;
  result = swift_willThrow();
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B6A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B6A90);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B6ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = sub_25A8DF850(a1, 97, 0xE100000000000000);
  if (v7)
  {
    if (*(a1 + 16) && (v8 = sub_25A8F3600(97, 0xE100000000000000), (v9 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v8, &v70);
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
    }

    v13 = sub_25A8DF268(&v70);
    result = sub_25A878194(&v70, &qword_27FA04458, &unk_25A9F7FB0);
    if (v2)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v10 = v6;
    if (v6 < 1)
    {
      sub_25A874F54();
      swift_allocError();
      *v26 = 110;
      result = swift_willThrow();
      goto LABEL_46;
    }

    v11 = sub_25A9373B8(v6, 0);
    if (sub_25A959040(&v70, (v11 + 4), v10, 0, v10) != v10)
    {
      __break(1u);
      swift_once();
      sub_25A998C58();
      sub_25A963A0C(v10, v3, v70);
    }

    v12 = sub_25A930380(v11);

    v13 = sub_25A955844(v12, 0);
  }

  swift_beginAccess();
  if (mlx_array_ndim(*(v13 + 16)) != 1 || mlx_array_size(*(v13 + 16)) < 1)
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v21 = sub_25A997BD8();
    __swift_project_value_buffer(v21, qword_27FA0FCE8);
    v22 = sub_25A997BB8();
    v23 = sub_25A9983A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_25A232000, v22, v23, "Only support 1-D array for np.random.choice", v24, 2u);
      MEMORY[0x25F852800](v24, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v25 = 110;
    swift_willThrow();
    goto LABEL_24;
  }

  v15 = sub_25A8DF850(a1, 1702521203, 0xE400000000000000);
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  v64 = v17;
  if (!*(a1 + 16))
  {
    v20 = 1;
LABEL_31:
    v70 = 0u;
    v71 = 0u;
    goto LABEL_32;
  }

  v18 = sub_25A8F3600(0x6563616C706572, 0xE700000000000000);
  if ((v19 & 1) != 0 && (sub_25A87500C(*(a1 + 56) + 32 * v18, &v70), swift_dynamicCast()))
  {
    v20 = v68;
  }

  else
  {
    v20 = 1;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v27 = sub_25A8F3600(112, 0xE100000000000000);
  if ((v28 & 1) == 0)
  {
    goto LABEL_31;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v27, &v70);
LABEL_32:
  v66 = sub_25A8DF268(&v70);
  if (!v2)
  {
    sub_25A878194(&v70, &qword_27FA04458, &unk_25A9F7FB0);

    v30 = sub_25A9616CC();
    v31 = sub_25A9616CC();
    v32 = sub_25A930B64(v30, v31);

    if (v32)
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v33 = v70;
      *&v70 = mlx_array_new();
      swift_beginAccess();
      mlx_min(&v70, *(v66 + 16), 0, *(v33 + 16));

      v34 = v70;
      type metadata accessor for MLXArray();
      inited = swift_initStackObject();
      *(inited + 16) = v34;
      sub_25A8B7CE4(inited, 0);
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v41 = sub_25A997BD8();
    __swift_project_value_buffer(v41, qword_27FA0FCE8);

    v42 = sub_25A997BB8();
    v43 = sub_25A9983A8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v70 = v65;
      *v44 = 136315394;
      sub_25A9616CC();
      v45 = MEMORY[0x25F850440]();
      v47 = v46;

      v48 = sub_25A98CC90(v45, v47, &v70);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      sub_25A9616CC();
      v49 = MEMORY[0x25F850440]();
      v51 = v50;

      v52 = sub_25A98CC90(v49, v51, &v70);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_25A232000, v42, v43, "Sample weights p has different shape %s than the input array %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v65, -1, -1);
      MEMORY[0x25F852800](v44, -1, -1);
    }

    goto LABEL_59;
  }

  sub_25A878194(&v70, &qword_27FA04458, &unk_25A9F7FB0);
  if (v20)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v29 = v70;
    v67[0] = mlx_array_new();
    mlx_ones_like(v67, *(v13 + 16), *(v29 + 16));
  }

  if (mlx_array_size(*(v13 + 16)) < v64)
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v36 = sub_25A997BD8();
    __swift_project_value_buffer(v36, qword_27FA0FCE8);

    v37 = sub_25A997BB8();
    v38 = sub_25A9983A8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134218240;
      *(v39 + 4) = v64;
      *(v39 + 12) = 2048;
      *(v39 + 14) = mlx_array_size(*(v13 + 16));

      _os_log_impl(&dword_25A232000, v37, v38, "Sample size %ld larger than population size %ld when replace=False", v39, 0x16u);
      MEMORY[0x25F852800](v39, -1, -1);
    }

    else
    {
    }

LABEL_59:
    sub_25A874F54();
    swift_allocError();
    *v61 = 110;
    swift_willThrow();

LABEL_24:

    goto LABEL_46;
  }

  if (v64 != mlx_array_size(*(v13 + 16)))
  {
    v53 = sub_25A9616CC();
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v54 = sub_25A8BA7E0(0.0, 1.0);
    v63 = v55;
    v56 = v54;
    v57 = sub_25A955E70(&v70);
    v69 = mlx_array_new();
    swift_beginAccess();
    v62 = *(v56 + 16);
    swift_beginAccess();
    v58 = *(v63 + 16);
    v59 = Array<A>.asInt32.getter(v53);
    v60 = *(v53 + 16);

    swift_beginAccess();
    mlx_random_uniform(&v69, v62, v58, v59 + 32, v60, 10, *(v57 + 16), *(v68 + 16));
  }

  a2[3] = type metadata accessor for MLXArray();

  *a2 = v13;
LABEL_46:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B7C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7C18);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B7CE4(uint64_t a1, uint64_t a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v4 = mlx_array_dtype(*(a1 + 16));
  v5 = sub_25A956420(v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 7;
  }

  v7 = sub_25A8BFCB4(a2, v6);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v10[0] = mlx_array_new();
  v8 = *(a1 + 16);
  swift_beginAccess();
  mlx_greater_equal(v10, v8, *(v7 + 16), *(v9 + 16));
}

void sub_25A8B7E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7E28);
  }

  _Unwind_Resume(a1);
}

void sub_25A8B7E3C(uint64_t *a1, double a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  swift_beginAccess();
  v5 = mlx_array_dtype(a1[2]);
  v6 = sub_25A956420(v5);
  if (((v6 - 9) & 0xFC) != 0)
  {
    v6 = 10;
  }

  v7 = sub_25A8BE5C4(v6, a2);
  if (qword_27FA043D8 != -1)
  {
    swift_once();
  }

  sub_25A998C58();
  v9[0] = mlx_array_new();
  swift_beginAccess();
  mlx_divide(v9, *(v7 + 16), a1[2], *(v8 + 16));
}

void sub_25A8B7FA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B7FACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B7FC0(uint64_t a1)
{
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v3 & 1) == 0))
  {
    v37 = 0u;
    v38 = 0u;
    v39 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    goto LABEL_11;
  }

  if (!*(&v38 + 1))
  {
LABEL_11:
    sub_25A878194(&v37, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  sub_25A87817C(&v37, v40);
  v4 = v41;
  v5 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = sub_25A92FDB0(v6);

  if (v7)
  {
    v8 = *(v7 + 16);
    if (v8)
    {
      v36[0] = MEMORY[0x277D84F90];
      sub_25A998748();
      v9 = v7 + 32;
      do
      {
        sub_25A872F24(v9, &v37);
        v10 = *(&v38 + 1);
        v11 = v39;
        __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
        (*(v11 + 8))(13, v10, v11);
        __swift_destroy_boxed_opaque_existential_0Tm(&v37);
        sub_25A998718();
        v12 = *(v36[0] + 16);
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v9 += 40;
        --v8;
      }

      while (v8);

      v13 = v36[0];
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    if (v13 >> 62)
    {
      v20 = sub_25A998848();
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v36[0] = MEMORY[0x277D84F90];
      sub_25A937570(0, v20 & ~(v20 >> 63), 0);
      if (v20 < 0)
      {
        __break(1u);
        goto LABEL_43;
      }

      v21 = v36[0];
      if ((v13 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v20; ++i)
        {
          v23 = MEMORY[0x25F8509C0](i, v13);
          swift_beginAccess();
          v24 = mlx_array_ndim(*(v23 + 16));
          swift_unknownObjectRelease();
          v36[0] = v21;
          v26 = *(v21 + 16);
          v25 = *(v21 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_25A937570((v25 > 1), v26 + 1, 1);
            v21 = v36[0];
          }

          *(v21 + 16) = v26 + 1;
          *(v21 + 8 * v26 + 32) = v24;
        }
      }

      else
      {
        v27 = (v13 + 32);
        do
        {
          v28 = *v27;
          swift_beginAccess();
          v29 = mlx_array_ndim(*(v28 + 16));
          v36[0] = v21;
          v31 = *(v21 + 16);
          v30 = *(v21 + 24);
          if (v31 >= v30 >> 1)
          {
            v32 = v29;
            sub_25A937570((v30 > 1), v31 + 1, 1);
            v29 = v32;
            v21 = v36[0];
          }

          *(v21 + 16) = v31 + 1;
          *(v21 + 8 * v31 + 32) = v29;
          ++v27;
          --v20;
        }

        while (v20);
      }
    }

    v33 = *(v21 + 16);
    v34 = 32;
    do
    {
      if (!v33)
      {

        if (qword_27FA043D8 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_43;
      }

      v35 = *(v21 + v34);
      v34 += 8;
      --v33;
    }

    while (v35 == 1);

    if (qword_27FA043D8 == -1)
    {
LABEL_40:
      sub_25A998C58();
      sub_25A954860(v13);
    }

LABEL_43:
    swift_once();
    goto LABEL_40;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
LABEL_12:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v15 = sub_25A997BB8();
  v16 = sub_25A9983A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_25A232000, v15, v16, "Invalid arg arrays for concatenate", v17, 2u);
    MEMORY[0x25F852800](v17, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v18 = 105;
  return swift_willThrow();
}

uint64_t sub_25A8B8544(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(120, 0xE100000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v10);
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v5 = sub_25A8DF268(&v10);
  result = sub_25A878194(&v10, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v7 = v10;
    v9 = mlx_array_new();
    swift_beginAccess();
    mlx_logical_not(&v9, *(v5 + 16), *(v7 + 16));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B86D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B86D8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B86E4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v3 = sub_25A8F3600(12664, 0xE200000000000000);
    if (v4)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v3, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v5 = sub_25A8DF268(&v14);
  result = sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v1)
  {
    if (*(a1 + 16) && (v7 = sub_25A8F3600(12920, 0xE200000000000000), (v8 & 1) != 0))
    {
      sub_25A87500C(*(a1 + 56) + 32 * v7, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = sub_25A8DF268(&v14);
    sub_25A878194(&v14, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v10 = v14;
    v13 = mlx_array_new();
    swift_beginAccess();
    v11 = *(v5 + 16);
    swift_beginAccess();
    mlx_logical_and(&v13, v11, *(v9 + 16), *(v10 + 16));
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B890C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B8914);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B8920@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(97, 0xE100000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v7 = sub_25A8DF268(&v27);
  result = sub_25A878194(&v27, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v10)
    {
      v11 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v11)
      {
        sub_25A874F54();
        swift_allocError();
        *v25 = 103;
        swift_willThrow();

        goto LABEL_16;
      }

      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v12 = v27;
      v26 = mlx_array_new();
      swift_beginAccess();
      v13 = *(v7 + 16);
      v14 = Array<A>.asInt32.getter(v11);
      v15 = *(v11 + 2);

      mlx_expand_dims_axes(&v26, v13, v14 + 32, v15, *(v12 + 16));
    }

    else
    {
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v16;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v18 = v27;
      v26 = mlx_array_new();
      swift_beginAccess();
      v19 = *(v7 + 16);
      v20 = Array<A>.asInt32.getter(inited);
      swift_setDeallocating();
      mlx_expand_dims_axes(&v26, v19, v20 + 32, 1uLL, *(v18 + 16));
    }

    v21 = v26;
    v22 = type metadata accessor for MLXArray();
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    a2[3] = v22;

    *a2 = v23;
  }

LABEL_16:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B8C18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B8C20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B8C3C(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v2 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v3 & 1) == 0))
  {
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_11;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v2, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_11;
  }

  if (!*(&v32 + 1))
  {
LABEL_11:
    sub_25A878194(&v31, &qword_27FA04728, &unk_25A9FD740);
    goto LABEL_12;
  }

  sub_25A87817C(&v31, v34);
  v4 = v35;
  v5 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = sub_25A92FDB0(v6);

  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v30[0] = MEMORY[0x277D84F90];
      sub_25A998748();
      v10 = v7 + 32;
      do
      {
        sub_25A872F24(v10, &v31);
        v11 = *(&v32 + 1);
        v12 = v33;
        __swift_project_boxed_opaque_existential_1(&v31, *(&v32 + 1));
        (*(v12 + 8))(13, v11, v12);
        __swift_destroy_boxed_opaque_existential_0Tm(&v31);
        sub_25A998718();
        v13 = *(v30[0] + 16);
        sub_25A998758();
        sub_25A998768();
        sub_25A998728();
        v10 += 40;
        --v8;
      }

      while (v8);

      v14 = v30[0];
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
    }

    if (v14 >> 62)
    {
      v22 = sub_25A998848();
      if (v22)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
LABEL_22:
        v30[0] = v9;
        sub_25A998748();
        if (v22 < 0)
        {
          __break(1u);
        }

        for (i = 0; i != v22; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x25F8509C0](i, v14);
          }

          else
          {
            v24 = *(v14 + 8 * i + 32);
          }

          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          v25 = v29;
          v29 = mlx_array_new();
          swift_beginAccess();
          mlx_atleast_2d(&v29, *(v24 + 16), *(v25 + 16));

          v26 = v29;
          type metadata accessor for MLXArray();
          *(swift_allocObject() + 16) = v26;
          sub_25A998718();
          v27 = *(v30[0] + 16);
          sub_25A998758();
          sub_25A998768();
          sub_25A998728();
        }

        v28 = v30[0];
LABEL_33:
        if (qword_27FA043D8 != -1)
        {
          swift_once();
        }

        sub_25A998C58();
        sub_25A954860(v28);
      }
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
LABEL_12:
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v15 = sub_25A997BD8();
  __swift_project_value_buffer(v15, qword_27FA0FCE8);
  v16 = sub_25A997BB8();
  v17 = sub_25A9983A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_25A232000, v16, v17, "Invalid arg arrays for concatenate", v18, 2u);
    MEMORY[0x25F852800](v18, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v19 = 104;
  result = swift_willThrow();
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B9174(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B917CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9188@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
LABEL_12:
    sub_25A878194(&v34, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v16 = sub_25A997BD8();
      __swift_project_value_buffer(v16, qword_27FA0FCE8);
      v17 = sub_25A997BB8();
      v18 = sub_25A9983A8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25A232000, v17, v18, "Invalid arg arrays for atleast_2d", v19, 2u);
        MEMORY[0x25F852800](v19, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v20 = 106;
      result = swift_willThrow();
      goto LABEL_16;
    }

LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v35 + 1))
  {
    goto LABEL_12;
  }

  v31 = a2;
  sub_25A87817C(&v34, v37);
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v34);
      sub_25A87500C(&v34, v33);
      sub_25A8DF268(v33);
      if (v2)
      {

        sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v34);

        goto LABEL_43;
      }

      sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      sub_25A998718();
      v14 = *(v32 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v15 = v32;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:
  if (v15 >> 62)
  {
    v23 = sub_25A998848();
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_34:

    goto LABEL_35;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_21:
  v33[0] = v11;
  v11 = v33;
  sub_25A998748();
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x25F8509C0](i, v15);
    }

    else
    {
      v25 = *(v15 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v26 = v32;
    v32 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_2d(&v32, *(v25 + 16), *(v26 + 16));

    v27 = v32;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v27;
    sub_25A998718();
    v28 = *(v33[0] + 16);
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v33[0];
LABEL_35:
  v29 = v31;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_37;
    }

LABEL_41:
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_42;
  }

  v29 = v31;
  if (sub_25A998848() != 1)
  {
    goto LABEL_41;
  }

LABEL_37:
  v29[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v29 = v31;
    goto LABEL_42;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v30 = *(v11 + 32);

  v11 = v30;
LABEL_42:
  *v29 = v11;
LABEL_43:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B973C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B9744);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9750@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
LABEL_12:
    sub_25A878194(&v34, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v16 = sub_25A997BD8();
      __swift_project_value_buffer(v16, qword_27FA0FCE8);
      v17 = sub_25A997BB8();
      v18 = sub_25A9983A8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25A232000, v17, v18, "Invalid arg arrays for atleast_1d", v19, 2u);
        MEMORY[0x25F852800](v19, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v20 = 106;
      result = swift_willThrow();
      goto LABEL_16;
    }

LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v35 + 1))
  {
    goto LABEL_12;
  }

  v31 = a2;
  sub_25A87817C(&v34, v37);
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v34);
      sub_25A87500C(&v34, v33);
      sub_25A8DF268(v33);
      if (v2)
      {

        sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v34);

        goto LABEL_43;
      }

      sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      sub_25A998718();
      v14 = *(v32 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v15 = v32;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:
  if (v15 >> 62)
  {
    v23 = sub_25A998848();
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_34:

    goto LABEL_35;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_21:
  v33[0] = v11;
  v11 = v33;
  sub_25A998748();
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x25F8509C0](i, v15);
    }

    else
    {
      v25 = *(v15 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v26 = v32;
    v32 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_1d(&v32, *(v25 + 16), *(v26 + 16));

    v27 = v32;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v27;
    sub_25A998718();
    v28 = *(v33[0] + 16);
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v33[0];
LABEL_35:
  v29 = v31;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_37;
    }

LABEL_41:
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_42;
  }

  v29 = v31;
  if (sub_25A998848() != 1)
  {
    goto LABEL_41;
  }

LABEL_37:
  v29[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v29 = v31;
    goto LABEL_42;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v30 = *(v11 + 32);

  v11 = v30;
LABEL_42:
  *v29 = v11;
LABEL_43:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8B9D04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8B9D0CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8B9D18@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 16) || (v5 = sub_25A8F3600(0x737961727261, 0xE600000000000000), (v6 & 1) == 0))
  {
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_12;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v5, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
LABEL_12:
    sub_25A878194(&v34, &qword_27FA04728, &unk_25A9FD740);
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v16 = sub_25A997BD8();
      __swift_project_value_buffer(v16, qword_27FA0FCE8);
      v17 = sub_25A997BB8();
      v18 = sub_25A9983A8();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25A232000, v17, v18, "Invalid arg arrays for atleast_3d", v19, 2u);
        MEMORY[0x25F852800](v19, -1, -1);
      }

      sub_25A874F54();
      swift_allocError();
      *v20 = 106;
      result = swift_willThrow();
      goto LABEL_16;
    }

LABEL_32:
    swift_once();
    goto LABEL_13;
  }

  if (!*(&v35 + 1))
  {
    goto LABEL_12;
  }

  v31 = a2;
  sub_25A87817C(&v34, v37);
  v7 = v38;
  v8 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  v9 = (*(v8 + 8))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];
    sub_25A998748();
    v12 = 0;
    v13 = v9 + 32;
    while (v12 < *(v9 + 16))
    {
      sub_25A87500C(v13, &v34);
      sub_25A87500C(&v34, v33);
      sub_25A8DF268(v33);
      if (v2)
      {

        sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v34);

        goto LABEL_43;
      }

      sub_25A878194(v33, &qword_27FA04458, &unk_25A9F7FB0);
      __swift_destroy_boxed_opaque_existential_0Tm(&v34);
      sub_25A998718();
      v14 = *(v32 + 16);
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      ++v12;
      v13 += 32;
      if (v10 == v12)
      {

        v15 = v32;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_19:
  if (v15 >> 62)
  {
    v23 = sub_25A998848();
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_34:

    goto LABEL_35;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_21:
  v33[0] = v11;
  v11 = v33;
  sub_25A998748();
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x25F8509C0](i, v15);
    }

    else
    {
      v25 = *(v15 + 8 * i + 32);
    }

    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v26 = v32;
    v32 = mlx_array_new();
    swift_beginAccess();
    mlx_atleast_3d(&v32, *(v25 + 16), *(v26 + 16));

    v27 = v32;
    type metadata accessor for MLXArray();
    *(swift_allocObject() + 16) = v27;
    sub_25A998718();
    v28 = *(v33[0] + 16);
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
  }

  v11 = v33[0];
LABEL_35:
  v29 = v31;
  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_37;
    }

LABEL_41:
    v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04928, &qword_25A9F9578);
    goto LABEL_42;
  }

  v29 = v31;
  if (sub_25A998848() != 1)
  {
    goto LABEL_41;
  }

LABEL_37:
  v29[3] = type metadata accessor for MLXArray();
  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_45:
    v11 = MEMORY[0x25F8509C0](0, v11);

    v29 = v31;
    goto LABEL_42;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
  }

  v30 = *(v11 + 32);

  v11 = v30;
LABEL_42:
  *v29 = v11;
LABEL_43:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v37);
LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8BA2CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BA2D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BA2E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v5 = sub_25A8F3600(7500385, 0xE300000000000000);
    if (v6)
    {
      sub_25A87500C(*(a1 + 56) + 32 * v5, &v20);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v7 = sub_25A8DF268(&v20);
  result = sub_25A878194(&v20, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v2)
  {
    v9 = sub_25A8DF850(a1, 0x7466696873, 0xE500000000000000);
    if (v10)
    {
LABEL_8:
      sub_25A874F54();
      swift_allocError();
      *v11 = 107;
      swift_willThrow();
    }

    v12 = v9;
    v13 = sub_25A8DF850(a1, 1936291937, 0xE400000000000000);
    if (v14)
    {
      v15 = sub_25A8DF5A8(a1, 1936291937, 0xE400000000000000);
      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = v15;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = sub_25A954E94(v7, v12, v16, v20);
    }

    else
    {
      v18 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25A9F8D90;
      *(inited + 32) = v18;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v17 = sub_25A954E94(v7, v12, inited, v20);

      swift_setDeallocating();
    }

    a2[3] = type metadata accessor for MLXArray();

    *a2 = v17;
  }

  return result;
}

uint64_t sub_25A8BA558(double a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (fabs(a1) >= 3.40282347e38)
  {
    *v6 = a1;
    v2 = mlx_array_new_data(v6, (MEMORY[0x277D84F90] + 32), 0, 11);
  }

  else
  {
    v1 = a1;
    *v6 = v1;
    v2 = mlx_array_new_data(v6, (MEMORY[0x277D84F90] + 32), 0, 10);
  }

  v3 = v2;
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v3;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8BA624(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BA62CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BA638(float a1, float a2)
{
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v4 = v17;
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_beginAccess();
      v10 = mlx_array_dtype(*(v17 + 16));
      LODWORD(v11) = sub_25A956420(v10);
      if (((v11 - 9) & 0xFC) != 0)
      {
        v11 = 10;
      }

      else
      {
        v11 = v11;
      }

      v12.n128_f32[0] = a2;
      sub_25A8BF14C(v11, v12);
    }
  }

  else
  {
    v5 = swift_dynamicCast();
    if (v5)
    {
      swift_beginAccess();
      v7 = mlx_array_dtype(*(v17 + 16));
      LODWORD(v8) = sub_25A956420(v7);
      if (((v8 - 9) & 0xFC) != 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = v8;
      }

      v9.n128_f32[0] = a1;
      return sub_25A8BF14C(v8, v9);
    }

    else
    {
      v6.n128_f32[0] = a1;
      v13 = mlx_array_new_float(v5, v6);
      v4 = swift_allocObject();
      *(v4 + 16) = v13;
      v14.n128_f32[0] = a2;
      v15 = mlx_array_new_float(v4, v14);
      *(swift_allocObject() + 16) = v15;
    }
  }

  return v4;
}

uint64_t sub_25A8BA7E0(double a1, double a2)
{
  *v18 = a1;
  type metadata accessor for MLXArray();
  if (swift_dynamicCast())
  {
    v4 = v21;
    *v18 = a2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_beginAccess();
      v8 = mlx_array_dtype(*(v21 + 16));
      v9 = sub_25A956420(v8);
      if (((v9 - 9) & 0xFC) != 0)
      {
        v9 = 10;
      }

      sub_25A8BE5C4(v9, a2);
    }
  }

  else
  {
    *v18 = a2;
    v5 = MEMORY[0x277D839F8];
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v6 = mlx_array_dtype(*(v21 + 16));
      v7 = sub_25A956420(v6);
      if (((v7 - 9) & 0xFC) != 0)
      {
        v7 = 10;
      }

      return sub_25A8BE5C4(v7, a1);
    }

    else
    {
      v19 = v5;
      v10 = sub_25A8DFAF8();
      v20 = v10;
      *v18 = a1;
      v11 = __swift_project_boxed_opaque_existential_1(v18, v5);
      v12.n128_u64[0] = *v11;
      v12.n128_f32[0] = *v11;
      v13 = mlx_array_new_float(v11, v12);
      v4 = swift_allocObject();
      *(v4 + 16) = v13;
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v19 = v5;
      v20 = v10;
      *v18 = a2;
      v14 = __swift_project_boxed_opaque_existential_1(v18, v5);
      v15.n128_u64[0] = *v14;
      v15.n128_f32[0] = *v14;
      v16 = mlx_array_new_float(v14, v15);
      *(swift_allocObject() + 16) = v16;
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
    }
  }

  return v4;
}

uint64_t sub_25A8BA9DC(char a1, unsigned __int8 a2)
{
  v205 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    mlx_array_new_BOOL();
  }

  v3 = a1 & 1;
  LOBYTE(v198) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v201 = 0;
    v199 = 0u;
    v200 = 0u;
    sub_25A878194(&v199, &qword_27FA04950, &qword_25A9F9598);
    LOBYTE(v198) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047C0, &qword_25A9FE670);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v201 = 0;
      v199 = 0u;
      v200 = 0u;
      sub_25A878194(&v199, &qword_27FA047C8, &qword_25A9F8E88);
      v202[0] = 0;
      v202[1] = 0xE000000000000000;
      sub_25A9985F8();
      MEMORY[0x25F850290](0xD000000000000011, 0x800000025AA68C30);
      LOBYTE(v199) = 0;
      sub_25A9987C8();
      MEMORY[0x25F850290](544175136, 0xE400000000000000);
      LOBYTE(v199) = a2;
      sub_25A9987C8();
      result = sub_25A998818();
      goto LABEL_250;
    }

    sub_25A87817C(&v199, v202);
    v8 = v203;
    v9 = v204;
    v10 = __swift_project_boxed_opaque_existential_1(v202, v203);
    v197 = &v195;
    v11 = *(v8 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2 != 1)
        {
          if (a2 != 2)
          {
            if ((sub_25A9984D8() & 1) == 0)
            {
              goto LABEL_87;
            }

            v65 = *(*(v9 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v196 = &v195;
            v67 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            v68 = sub_25A998A78();
            MEMORY[0x28223BE20](v68);
            sub_25A9989C8();
            v69 = *(*(v9 + 32) + 8);
            v70 = sub_25A997D98();
            (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v70)
            {
LABEL_87:
              if (sub_25A9984C8() < 32)
              {
                goto LABEL_157;
              }

              LODWORD(v199) = -1;
              v71 = sub_25A9984D8();
              v72 = sub_25A9984C8();
              v75 = __OFSUB__(v72, 32);
              v73 = v72 == 32;
              v74 = v72 - 32 < 0;
              if (v71)
              {
                if (v72 > 32)
                {
LABEL_128:
                  MEMORY[0x28223BE20](v72);
                  v12 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
                  sub_25A8DFA50();
                  sub_25A9984A8();
                  v99 = *(*(v9 + 32) + 8);
                  v100 = sub_25A997D88();
                  (*(v11 + 8))(v12, v8);
                  if (v100)
                  {
                    __break(1u);
                    goto LABEL_130;
                  }

LABEL_157:
                  v132 = sub_25A9984B8();
                  (*(v11 + 8))(v13, v8);
                  LODWORD(v199) = v132;
                  v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 3);
                  goto LABEL_226;
                }

                v125 = *(*(v9 + 24) + 16);
                v126 = swift_getAssociatedTypeWitness();
                v127 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                MEMORY[0x28223BE20](v126);
                swift_getAssociatedConformanceWitness();
                v128 = sub_25A998A78();
                MEMORY[0x28223BE20](v128);
                sub_25A9989C8();
                v129 = *(*(v9 + 32) + 8);
                v130 = sub_25A997D78();
                (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                if ((v130 & 1) == 0)
                {
                  goto LABEL_157;
                }

LABEL_156:
                sub_25A9984B8();
                goto LABEL_157;
              }

LABEL_127:
              if (!(v74 ^ v75 | v73))
              {
                goto LABEL_128;
              }

              goto LABEL_156;
            }

LABEL_232:
            __break(1u);
LABEL_233:
            __break(1u);
LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
            goto LABEL_237;
          }

          if ((sub_25A9984D8() & 1) == 0)
          {
            goto LABEL_17;
          }

          v14 = *(*(v9 + 24) + 16);
          v15 = swift_getAssociatedTypeWitness();
          v196 = &v195;
          v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v15);
          swift_getAssociatedConformanceWitness();
          v17 = sub_25A998A78();
          MEMORY[0x28223BE20](v17);
          sub_25A9989C8();
          v18 = *(*(v9 + 32) + 8);
          v19 = sub_25A997D98();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v19)
          {
LABEL_17:
            if (sub_25A9984C8() < 16)
            {
              goto LABEL_155;
            }

            LOWORD(v199) = -1;
            v20 = sub_25A9984D8();
            v21 = sub_25A9984C8();
            v24 = __OFSUB__(v21, 16);
            v22 = v21 == 16;
            v23 = v21 - 16 < 0;
            if (v20)
            {
              if (v21 > 16)
              {
LABEL_125:
                MEMORY[0x28223BE20](v21);
                v12 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
                sub_25A8DFAA4();
                sub_25A9984A8();
                v97 = *(*(v9 + 32) + 8);
                v98 = sub_25A997D88();
                v72 = (*(v11 + 8))(v12, v8);
                if (v98)
                {
                  __break(1u);
                  goto LABEL_127;
                }

LABEL_155:
                v131 = sub_25A9984B8();
                (*(v11 + 8))(v13, v8);
                LOWORD(v199) = v131;
                v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 2);
                goto LABEL_226;
              }

              v119 = *(*(v9 + 24) + 16);
              v120 = swift_getAssociatedTypeWitness();
              v121 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v120);
              swift_getAssociatedConformanceWitness();
              v122 = sub_25A998A78();
              MEMORY[0x28223BE20](v122);
              sub_25A9989C8();
              v123 = *(*(v9 + 32) + 8);
              v124 = sub_25A997D78();
              (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
              if ((v124 & 1) == 0)
              {
                goto LABEL_155;
              }

LABEL_154:
              sub_25A9984B8();
              goto LABEL_155;
            }

LABEL_124:
            if (!(v23 ^ v24 | v22))
            {
              goto LABEL_125;
            }

            goto LABEL_154;
          }

LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        if ((sub_25A9984D8() & 1) == 0)
        {
          goto LABEL_68;
        }

        v43 = *(*(v9 + 24) + 16);
        v44 = swift_getAssociatedTypeWitness();
        v196 = &v195;
        v45 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v44);
        swift_getAssociatedConformanceWitness();
        v46 = sub_25A998A78();
        MEMORY[0x28223BE20](v46);
        sub_25A9989C8();
        v47 = *(*(v9 + 32) + 8);
        v48 = sub_25A997D98();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v48)
        {
LABEL_68:
          if (sub_25A9984C8() < 8)
          {
            goto LABEL_147;
          }

          LOBYTE(v199) = -1;
          v49 = sub_25A9984D8();
          v50 = sub_25A9984C8();
          if (v49)
          {
            if (v50 > 8)
            {
LABEL_119:
              MEMORY[0x28223BE20](v50);
              v12 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_25A89522C();
              sub_25A9984A8();
              v93 = *(*(v9 + 32) + 8);
              v94 = sub_25A997D88();
              v59 = (*(v11 + 8))(v12, v8);
              if (v94)
              {
                __break(1u);
                goto LABEL_121;
              }

LABEL_147:
              v117 = sub_25A9984B8();
              (*(v11 + 8))(v13, v8);
              LOBYTE(v199) = v117;
              v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_226;
            }

            v105 = *(*(v9 + 24) + 16);
            v106 = swift_getAssociatedTypeWitness();
            v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v106);
            swift_getAssociatedConformanceWitness();
            v108 = sub_25A998A78();
            MEMORY[0x28223BE20](v108);
            sub_25A9989C8();
            v109 = *(*(v9 + 32) + 8);
            v110 = sub_25A997D78();
            (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if ((v110 & 1) == 0)
            {
              goto LABEL_147;
            }
          }

          else if (v50 > 8)
          {
            goto LABEL_119;
          }

          sub_25A9984B8();
          goto LABEL_147;
        }

        __break(1u);
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      if (a2 == 4)
      {
        if ((sub_25A9984D8() & 1) == 0)
        {
          goto LABEL_79;
        }

        v52 = *(*(v9 + 24) + 16);
        v53 = swift_getAssociatedTypeWitness();
        v196 = &v195;
        v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v53);
        swift_getAssociatedConformanceWitness();
        v55 = sub_25A998A78();
        MEMORY[0x28223BE20](v55);
        sub_25A9989C8();
        v56 = *(*(v9 + 32) + 8);
        v57 = sub_25A997D98();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v57)
        {
LABEL_79:
          if (sub_25A9984C8() < 64)
          {
            goto LABEL_149;
          }

          *&v199 = -1;
          v58 = sub_25A9984D8();
          v59 = sub_25A9984C8();
          v62 = __OFSUB__(v59, 64);
          v60 = v59 == 64;
          v61 = v59 - 64 < 0;
          if (v58)
          {
            if (v59 > 64)
            {
LABEL_122:
              MEMORY[0x28223BE20](v59);
              v12 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_25A8DFF20();
              sub_25A9984A8();
              v95 = *(*(v9 + 32) + 8);
              v96 = sub_25A997D88();
              v21 = (*(v11 + 8))(v12, v8);
              if (v96)
              {
                __break(1u);
                goto LABEL_124;
              }

LABEL_149:
              v118 = sub_25A9984B8();
              (*(v11 + 8))(v13, v8);
              *&v199 = v118;
              v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 4);
              goto LABEL_226;
            }

            v111 = *(*(v9 + 24) + 16);
            v112 = swift_getAssociatedTypeWitness();
            v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v112);
            swift_getAssociatedConformanceWitness();
            v114 = sub_25A998A78();
            MEMORY[0x28223BE20](v114);
            sub_25A9989C8();
            v115 = *(*(v9 + 32) + 8);
            v116 = sub_25A997D78();
            (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if ((v116 & 1) == 0)
            {
              goto LABEL_149;
            }

LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }

LABEL_121:
          if (!(v61 ^ v62 | v60))
          {
            goto LABEL_122;
          }

          goto LABEL_148;
        }

        goto LABEL_230;
      }

      if (a2 == 5)
      {
        if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() < 9)
        {
          goto LABEL_202;
        }

        LOBYTE(v199) = 0x80;
        if (sub_25A9984D8())
        {
          v30 = sub_25A9984C8();
          if (v30 < 8)
          {
LABEL_201:
            sub_25A9984B8();
            goto LABEL_202;
          }
        }

        else
        {
          v103 = sub_25A9984D8();
          v30 = sub_25A9984C8();
          if ((v103 & 1) == 0)
          {
            if (v30 < 8)
            {
              goto LABEL_201;
            }

LABEL_202:
            if (sub_25A9984C8() <= 8 && (sub_25A9984C8() != 8 || (sub_25A9984D8() & 1) != 0))
            {
              goto LABEL_212;
            }

            LOBYTE(v199) = 127;
            v168 = sub_25A9984D8();
            v169 = sub_25A9984C8();
            if (v168)
            {
              if (v169 > 8)
              {
LABEL_205:
                MEMORY[0x28223BE20](v169);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v170 = *(*(v9 + 32) + 8);
                v171 = sub_25A997D88();
                (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
                if (v171)
                {
                  goto LABEL_235;
                }

LABEL_212:
                v172 = sub_25A9984B8();
                (*(v11 + 8))(v13, v8);
                LOBYTE(v199) = v172;
                v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 5);
                goto LABEL_226;
              }
            }

            else if (v169 >= 8)
            {
              goto LABEL_205;
            }

            sub_25A9984B8();
            goto LABEL_212;
          }

          if (v30 <= 8)
          {
            v162 = *(*(v9 + 24) + 16);
            v163 = swift_getAssociatedTypeWitness();
            v196 = &v195;
            v164 = (*(*(v163 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v163);
            swift_getAssociatedConformanceWitness();
            v165 = sub_25A998A78();
            MEMORY[0x28223BE20](v165);
            sub_25A9989C8();
            v166 = *(*(v9 + 32) + 8);
            v167 = sub_25A997D88();
            (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v167)
            {
LABEL_239:
              __break(1u);
              goto LABEL_240;
            }

            goto LABEL_201;
          }
        }

        MEMORY[0x28223BE20](v30);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v137 = *(*(v9 + 32) + 8);
        v138 = sub_25A997D88();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v138)
        {
          goto LABEL_239;
        }

        goto LABEL_202;
      }

      if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() >= 17)
      {
        LOWORD(v199) = 0x8000;
        if (sub_25A9984D8())
        {
          v77 = sub_25A9984C8();
          if (v77 < 16)
          {
LABEL_214:
            sub_25A9984B8();
            goto LABEL_215;
          }

          goto LABEL_164;
        }

        v104 = sub_25A9984D8();
        v77 = sub_25A9984C8();
        if (v104)
        {
          if (v77 <= 16)
          {
            v173 = *(*(v9 + 24) + 16);
            v174 = swift_getAssociatedTypeWitness();
            v196 = &v195;
            v175 = (*(*(v174 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v174);
            swift_getAssociatedConformanceWitness();
            v176 = sub_25A998A78();
            MEMORY[0x28223BE20](v176);
            sub_25A9989C8();
            v177 = *(*(v9 + 32) + 8);
            v178 = sub_25A997D88();
            (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            if (v178)
            {
              goto LABEL_240;
            }

            goto LABEL_214;
          }

LABEL_164:
          MEMORY[0x28223BE20](v77);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v139 = *(*(v9 + 32) + 8);
          v140 = sub_25A997D88();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v140)
          {
LABEL_240:
            __break(1u);
          }

          goto LABEL_215;
        }

        if (v77 < 16)
        {
          goto LABEL_214;
        }
      }

LABEL_215:
      if (sub_25A9984C8() <= 16 && (sub_25A9984C8() != 16 || (sub_25A9984D8() & 1) != 0))
      {
        goto LABEL_225;
      }

      LOWORD(v199) = 0x7FFF;
      v179 = sub_25A9984D8();
      v180 = sub_25A9984C8();
      if (v179)
      {
        if (v180 > 16)
        {
LABEL_218:
          MEMORY[0x28223BE20](v180);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v181 = *(*(v9 + 32) + 8);
          v182 = sub_25A997D88();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v182)
          {
            goto LABEL_236;
          }

LABEL_225:
          v183 = sub_25A9984B8();
          (*(v11 + 8))(v13, v8);
          LOWORD(v199) = v183;
          v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_226;
        }
      }

      else if (v180 >= 16)
      {
        goto LABEL_218;
      }

      sub_25A9984B8();
      goto LABEL_225;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (sub_25A9984C8() < 65)
        {
          v79 = sub_25A9984D8();
          v80 = sub_25A9984B8();
          v63 = (*(v11 + 8))(v13, v8);
          if (v79)
          {
            v64.n128_f32[0] = v80;
          }

          else
          {
            v64.n128_f32[0] = v80;
          }
        }

        else
        {
          sub_25A8DFB4C();
          sub_25A8DFD98();
          sub_25A997C48();
          v63 = (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v64.n128_u32[0] = v199;
        }

        v7 = mlx_array_new_float(v63, v64);
        goto LABEL_226;
      }

      if (a2 == 11)
      {
        if (sub_25A9984C8() < 65)
        {
          v81 = sub_25A9984D8();
          v82 = sub_25A9984B8();
          (*(v11 + 8))(v13, v8);
          if (v81)
          {
            v29 = v82;
          }

          else
          {
            v29 = v82;
          }
        }

        else
        {
          sub_25A8DFB4C();
          sub_25A8DFD98();
          sub_25A997C48();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          v29 = *&v199;
        }

        if (qword_27FA043D8 == -1)
        {
          goto LABEL_112;
        }

LABEL_228:
        swift_once();
LABEL_112:
        v87 = sub_25A998C58();
        v88 = v199;
        v89.n128_f32[0] = v29;
        v90 = mlx_array_new_float(v87, v89);
        *&v199 = mlx_array_new();
        mlx_astype(&v199, v90, 12, *(v88 + 16));
        v91 = v199;
        type metadata accessor for MLXArray();
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        mlx_array_free(v90);

LABEL_227:
        __swift_destroy_boxed_opaque_existential_0Tm(v202);
        result = v92;
        v186 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (sub_25A9984C8() < 65)
      {
        v85 = sub_25A9984D8();
        v86 = sub_25A9984B8();
        (*(v11 + 8))(v13, v8);
        if (v85)
        {
          v78 = v86;
        }

        else
        {
          v78 = v86;
        }
      }

      else
      {
        sub_25A8DFAF8();
        sub_25A8DFD44();
        sub_25A997C48();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        v78 = *&v199;
      }

      v42 = sub_25A8BA558(v78);
LABEL_117:
      v92 = v42;
      goto LABEL_227;
    }

    if (a2 == 7)
    {
      if ((sub_25A9984D8() & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_176;
      }

      LODWORD(v199) = 0x80000000;
      if (sub_25A9984D8())
      {
        v51 = sub_25A9984C8();
        if (v51 >= 32)
        {
          goto LABEL_158;
        }

        goto LABEL_175;
      }

LABEL_130:
      v101 = sub_25A9984D8();
      v51 = sub_25A9984C8();
      if (v101)
      {
        if (v51 > 32)
        {
LABEL_158:
          MEMORY[0x28223BE20](v51);
          sub_25A8DF954();
          sub_25A9984A8();
          v133 = *(*(v9 + 32) + 8);
          v134 = sub_25A997D88();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v134)
          {
            goto LABEL_237;
          }

LABEL_176:
          if (sub_25A9984C8() <= 32 && (sub_25A9984C8() != 32 || (sub_25A9984D8() & 1) != 0))
          {
LABEL_186:
            sub_25A9984B8();
            (*(v11 + 8))(v13, v8);
            mlx_array_new_int();
          }

          LODWORD(v199) = 0x7FFFFFFF;
          v147 = sub_25A9984D8();
          v148 = sub_25A9984C8();
          if (v147)
          {
            if (v148 > 32)
            {
LABEL_179:
              MEMORY[0x28223BE20](v148);
              sub_25A8DF954();
              sub_25A9984A8();
              v149 = *(*(v9 + 32) + 8);
              v150 = sub_25A997D88();
              (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
              if ((v150 & 1) == 0)
              {
                goto LABEL_186;
              }

              goto LABEL_233;
            }
          }

          else if (v148 >= 32)
          {
            goto LABEL_179;
          }

          sub_25A9984B8();
          goto LABEL_186;
        }

        v141 = *(*(v9 + 24) + 16);
        v142 = swift_getAssociatedTypeWitness();
        v196 = &v195;
        v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v142);
        swift_getAssociatedConformanceWitness();
        v144 = sub_25A998A78();
        MEMORY[0x28223BE20](v144);
        sub_25A9989C8();
        v145 = *(*(v9 + 32) + 8);
        v146 = sub_25A997D88();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v146)
        {
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }
      }

      else if (v51 >= 32)
      {
        goto LABEL_176;
      }

LABEL_175:
      sub_25A9984B8();
      goto LABEL_176;
    }

    if (a2 != 8)
    {
      if (sub_25A9984C8() < 65)
      {
        v83 = sub_25A9984D8();
        v84 = sub_25A9984B8();
        (*(v11 + 8))(v13, v8);
        if (v83)
        {
          v76 = v84;
        }

        else
        {
          v76 = v84;
        }
      }

      else
      {
        sub_25A8DFBA0();
        sub_25A8DFDEC();
        sub_25A997C48();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        v76 = *&v199;
      }

      *&v199 = v76;
      v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_226;
    }

    if ((sub_25A9984D8() & 1) != 0 && sub_25A9984C8() >= 65)
    {
      *&v199 = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v25 = sub_25A9984C8();
        if (v25 < 64)
        {
LABEL_188:
          sub_25A9984B8();
          goto LABEL_189;
        }

        goto LABEL_160;
      }

      v102 = sub_25A9984D8();
      v25 = sub_25A9984C8();
      if (v102)
      {
        if (v25 <= 64)
        {
          v151 = *(*(v9 + 24) + 16);
          v152 = swift_getAssociatedTypeWitness();
          v196 = &v195;
          v153 = (*(*(v152 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v152);
          swift_getAssociatedConformanceWitness();
          v154 = sub_25A998A78();
          MEMORY[0x28223BE20](v154);
          sub_25A9989C8();
          v155 = *(*(v9 + 32) + 8);
          v156 = sub_25A997D88();
          (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
          if (v156)
          {
LABEL_238:
            __break(1u);
            goto LABEL_239;
          }

          goto LABEL_188;
        }

LABEL_160:
        MEMORY[0x28223BE20](v25);
        sub_25A8DF900();
        sub_25A9984A8();
        v135 = *(*(v9 + 32) + 8);
        v136 = sub_25A997D88();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v136)
        {
          goto LABEL_238;
        }

        goto LABEL_189;
      }

      if (v25 < 64)
      {
        goto LABEL_188;
      }
    }

LABEL_189:
    if (sub_25A9984C8() <= 64 && (sub_25A9984C8() != 64 || (sub_25A9984D8() & 1) != 0))
    {
      goto LABEL_199;
    }

    *&v199 = 0x7FFFFFFFFFFFFFFFLL;
    v157 = sub_25A9984D8();
    v158 = sub_25A9984C8();
    if (v157)
    {
      if (v158 > 64)
      {
LABEL_192:
        MEMORY[0x28223BE20](v158);
        sub_25A8DF900();
        sub_25A9984A8();
        v159 = *(*(v9 + 32) + 8);
        v160 = sub_25A997D88();
        (*(v11 + 8))(&v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
        if (v160)
        {
          goto LABEL_234;
        }

LABEL_199:
        v161 = sub_25A9984B8();
        (*(v11 + 8))(v13, v8);
        *&v199 = v161;
        v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_226;
      }
    }

    else if (v158 >= 64)
    {
      goto LABEL_192;
    }

    sub_25A9984B8();
    goto LABEL_199;
  }

  sub_25A87817C(&v199, v202);
  v4 = v203;
  v5 = __swift_project_boxed_opaque_existential_1(v202, v203);
  v6 = v5;
  if (a2 <= 6u)
  {
    if (a2 > 3u)
    {
      if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v199) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_226;
        }

        *&v199 = 0;
        *(&v199 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v189 = sub_25A998C68();
        MEMORY[0x25F850290](v189);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else if (a2 == 5)
      {
        sub_25A8DFCF0();
        sub_25A9987F8();
        if ((BYTE1(v199) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_226;
        }

        *&v199 = 0;
        *(&v199 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v192 = sub_25A998C68();
        MEMORY[0x25F850290](v192);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](947154505, 0xE400000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v199) & 1) == 0)
        {
          v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_226;
        }

        *&v199 = 0;
        *(&v199 + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v194 = sub_25A998C68();
        MEMORY[0x25F850290](v194);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    else if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v199) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_226;
      }

      *&v199 = 0;
      *(&v199 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v187 = sub_25A998C68();
      MEMORY[0x25F850290](v187);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 2)
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v199) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 2);
LABEL_226:
        v184 = v7;
        type metadata accessor for MLXArray();
        v92 = swift_allocObject();
        *(v92 + 16) = v184;
        goto LABEL_227;
      }

      *&v199 = 0;
      *(&v199 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v190 = sub_25A998C68();
      MEMORY[0x25F850290](v190);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v199) & 1) == 0)
      {
        v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_226;
      }

      *&v199 = 0;
      *(&v199 + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v193 = sub_25A998C68();
      MEMORY[0x25F850290](v193);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    goto LABEL_250;
  }

  if (a2 > 9u)
  {
    if (a2 == 10)
    {
      v31 = *(*(v4 - 8) + 64);
      MEMORY[0x28223BE20](v5);
      (*(v33 + 16))(&v195 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFB4C();
      v34 = sub_25A997C38();
      v35.n128_u32[0] = v199;
      v7 = mlx_array_new_float(v34, v35);
      goto LABEL_226;
    }

    if (a2 == 11)
    {
      v26 = *(*(v4 - 8) + 64);
      MEMORY[0x28223BE20](v5);
      (*(v28 + 16))(&v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFB4C();
      sub_25A997C38();
      v29 = v198;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_112;
      }

      goto LABEL_228;
    }

    v39 = *(*(v4 - 8) + 64);
    MEMORY[0x28223BE20](v5);
    (*(v41 + 16))(&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
    sub_25A8DFAF8();
    sub_25A997C38();
    v42 = sub_25A8BA558(*&v199);
    goto LABEL_117;
  }

  if (a2 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v199) & 1) == 0)
    {
      mlx_array_new_int();
    }

    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v188 = sub_25A998C68();
    MEMORY[0x25F850290](v188);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

  else
  {
    if (a2 != 8)
    {
      v36 = *(*(v4 - 8) + 64);
      MEMORY[0x28223BE20](v5);
      (*(v38 + 16))(&v195 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v4);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v198) = v199;
      v7 = mlx_array_new_data(&v198, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_226;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v199) & 1) == 0)
    {
      v7 = mlx_array_new_data(&v199, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_226;
    }

    *&v199 = 0;
    *(&v199 + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v191 = sub_25A998C68();
    MEMORY[0x25F850290](v191);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

LABEL_250:
  __break(1u);
  return result;
}

void sub_25A8BE4D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BE4E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BE5C4(unsigned __int8 a1, double a2)
{
  v3 = a1;
  v35[5] = *MEMORY[0x277D85DE8];
  if (a1 == 12)
  {
    *v35 = a2;
    v4 = mlx_array_new_data(v35, (MEMORY[0x277D84F90] + 32), 0, 11);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v4;
LABEL_35:
    v18 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = MEMORY[0x277D839F8];
  v35[3] = MEMORY[0x277D839F8];
  v35[4] = sub_25A8DFAF8();
  *v35 = a2;
  v7 = __swift_project_boxed_opaque_existential_1(v35, v6);
  if (v3 > 5)
  {
    if (v3 > 8)
    {
      if (v3 == 9)
      {
        _D0 = *v7;
        __asm { FCVT            H0, D0 }

        LOWORD(v33) = LOWORD(_D0);
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 9);
      }

      else
      {
        if (v3 != 10)
        {
          v19 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          v20 = sub_25A998C58();
          v21.n128_f32[0] = v19;
          v22 = v33;
          v23 = mlx_array_new_float(v20, v21);
          v33 = mlx_array_new();
          mlx_astype(&v33, v23, 12, *(v22 + 16));
          v24 = v33;
          type metadata accessor for MLXArray();
          v17 = swift_allocObject();
          *(v17 + 16) = v24;
          mlx_array_free(v23);

          goto LABEL_34;
        }

        v8.n128_f64[0] = *v7;
        v8.n128_f32[0] = *v7;
        v9 = mlx_array_new_float(v7, v8);
      }

LABEL_33:
      v16 = v9;
      type metadata accessor for MLXArray();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
LABEL_34:
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      result = v17;
      goto LABEL_35;
    }

    if (v3 == 6)
    {
      sub_25A8DD304(&v33, *v7);
      if ((v33 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v25 = sub_25A998C68();
      MEMORY[0x25F850290](v25);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 7)
    {
      sub_25A8DD4B8(&v33, *v7);
      if ((v33 & 0x100000000) == 0)
      {
        mlx_array_new_int();
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v28 = sub_25A998C68();
      MEMORY[0x25F850290](v28);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD66C(&v33, *v7);
      if ((v34 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v31 = sub_25A998C68();
      MEMORY[0x25F850290](v31);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      sub_25A8DCEA0(&v33, *v7);
      if ((v33 & 0x100000000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 4)
    {
      sub_25A8DD010(&v33, *v7);
      if ((v34 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v29 = sub_25A998C68();
      MEMORY[0x25F850290](v29);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD150(&v33, *v7);
      if ((v33 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v32 = sub_25A998C68();
      MEMORY[0x25F850290](v32);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v3)
    {
      v10 = *v7;
      mlx_array_new_BOOL();
    }

    if (v3 == 1)
    {
      sub_25A8DCBB8(&v33, *v7);
      if ((v33 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DCD2C(&v33, *v7);
      if ((v33 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_33;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v30 = sub_25A998C68();
      MEMORY[0x25F850290](v30);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8BF0C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BF0D0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BF14C(uint64_t a1, __n128 a2)
{
  v2 = a1;
  v34[5] = *MEMORY[0x277D85DE8];
  if (a1 == 10)
  {
    v3 = mlx_array_new_float(a1, a2);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_37:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = MEMORY[0x277D83A90];
  v34[3] = MEMORY[0x277D83A90];
  v6 = a2.n128_u32[0];
  v34[4] = sub_25A8DFB4C();
  LODWORD(v34[0]) = v6;
  v7 = __swift_project_boxed_opaque_existential_1(v34, v5);
  if (v2 > 5)
  {
    if (v2 > 8)
    {
      if (v2 != 9)
      {
        if (v2 == 11)
        {
          v9 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          v10 = sub_25A998C58();
          v11 = v32;
          v12.n128_f32[0] = v9;
          v13 = mlx_array_new_float(v10, v12);
          v32 = mlx_array_new();
          mlx_astype(&v32, v13, 12, *(v11 + 16));
          v14 = v32;
          type metadata accessor for MLXArray();
          v15 = swift_allocObject();
          *(v15 + 16) = v14;
          mlx_array_free(v13);
        }

        else
        {
          v15 = sub_25A8BA558(*v7);
        }

        goto LABEL_36;
      }

      _S0 = *v7;
      __asm { FCVT            H0, S0 }

      LOWORD(v32) = _S0;
      v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 9);
LABEL_35:
      v22 = v8;
      type metadata accessor for MLXArray();
      v15 = swift_allocObject();
      *(v15 + 16) = v22;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      result = v15;
      goto LABEL_37;
    }

    if (v2 == 6)
    {
      sub_25A8DDFB0(&v32, *v7);
      if ((v32 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v24 = sub_25A998C68();
      MEMORY[0x25F850290](v24);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v2 == 7)
    {
      sub_25A8DE164(&v32, *v7);
      if ((v32 & 0x100000000) == 0)
      {
        mlx_array_new_int();
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DE2F4(&v32, *v7);
      if ((v33 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v30 = sub_25A998C68();
      MEMORY[0x25F850290](v30);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v2 > 2)
  {
    if (v2 == 3)
    {
      sub_25A8DDB44(&v32, *v7);
      if ((v32 & 0x100000000) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v25 = sub_25A998C68();
      MEMORY[0x25F850290](v25);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v2 == 4)
    {
      sub_25A8DDC8C(&v32, *v7);
      if ((v33 & 1) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v28 = sub_25A998C68();
      MEMORY[0x25F850290](v28);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DDDFC(&v32, *v7);
      if ((v32 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v31 = sub_25A998C68();
      MEMORY[0x25F850290](v31);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v2)
    {
      v16 = *v7;
      mlx_array_new_BOOL();
    }

    if (v2 == 1)
    {
      sub_25A8DD85C(&v32, *v7);
      if ((v32 & 0x100) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DD9D0(&v32, *v7);
      if ((v32 & 0x10000) == 0)
      {
        v8 = mlx_array_new_data(&v32, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_35;
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_25A9985F8();
      v29 = sub_25A998C68();
      MEMORY[0x25F850290](v29);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8BFC38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8BFC40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8BFCB4(uint64_t a1, unsigned __int8 a2)
{
  v168 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
    v165[0] = a1;
    v3 = mlx_array_new_data(v165, (MEMORY[0x277D84F90] + 32), 0, 8);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_152:
    v153 = *MEMORY[0x277D85DE8];
    return result;
  }

  v162 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    memset(v163, 0, sizeof(v163));
    sub_25A878194(v163, &qword_27FA04950, &qword_25A9F9598);
    v166 = v6;
    v12 = sub_25A895280();
    v167 = v12;
    v165[0] = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v165, v6);
    v161 = &v161;
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v17)
            {
              v74 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v76 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v77 = sub_25A998A78();
              MEMORY[0x28223BE20](v77);
              sub_25A9989C8();
              v78 = *(*(v12 + 32) + 8);
              v79 = sub_25A997D98();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
              if ((v79 & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            LOWORD(v163[0]) = -1;
            v80 = sub_25A9984D8();
            MEMORY[0x28223BE20](v80);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v81 = *(*(v12 + 32) + 8);
            v82 = sub_25A997D88();
            v83 = *(v14 + 8);
            v83(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if ((v82 & 1) == 0)
            {
              v84 = *v16;
              v83(v16, MEMORY[0x277D83B88]);
              LOWORD(v163[0]) = v84;
              v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_150;
            }

            goto LABEL_159;
          }

          if (v17)
          {
            v18 = *(*(v12 + 24) + 16);
            v19 = swift_getAssociatedTypeWitness();
            v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v19);
            swift_getAssociatedConformanceWitness();
            v21 = sub_25A998A78();
            MEMORY[0x28223BE20](v21);
            sub_25A9989C8();
            v22 = *(*(v12 + 32) + 8);
            v23 = sub_25A997D98();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if ((v23 & 1) == 0)
            {
              goto LABEL_161;
            }
          }

          LOBYTE(v163[0]) = -1;
          v24 = sub_25A9984D8();
          MEMORY[0x28223BE20](v24);
          sub_25A89522C();
          sub_25A9984A8();
          v25 = *(*(v12 + 32) + 8);
          v26 = sub_25A997D88();
          v27 = *(v14 + 8);
          v27(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v26 & 1) == 0)
          {
            v28 = *v16;
            v27(v16, MEMORY[0x277D83B88]);
            LOBYTE(v163[0]) = v28;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_150;
          }

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
          goto LABEL_164;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v163[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v60 = sub_25A9984C8();
            if (v60 < 64)
            {
LABEL_132:
              sub_25A9984B8();
              goto LABEL_133;
            }
          }

          else
          {
            v97 = sub_25A9984D8();
            v60 = sub_25A9984C8();
            if ((v97 & 1) == 0)
            {
              if (v60 >= 64)
              {
                goto LABEL_133;
              }

              goto LABEL_132;
            }

            if (v60 <= 64)
            {
              v109 = *(*(v12 + 24) + 16);
              v110 = swift_getAssociatedTypeWitness();
              v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v110);
              swift_getAssociatedConformanceWitness();
              v112 = sub_25A998A78();
              MEMORY[0x28223BE20](v112);
              sub_25A9989C8();
              v113 = *(*(v12 + 32) + 8);
              v114 = sub_25A997D88();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
              if (v114)
              {
LABEL_165:
                __break(1u);
                goto LABEL_166;
              }

              goto LABEL_132;
            }
          }

          MEMORY[0x28223BE20](v60);
          sub_25A9984A8();
          v101 = *(*(v12 + 32) + 8);
          v102 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v102)
          {
            goto LABEL_165;
          }
        }

LABEL_133:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
          v115 = sub_25A9984D8();
          if (v115)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v115);
            sub_25A9984A8();
            v116 = *(*(v12 + 32) + 8);
            v117 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if (v117)
            {
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }
          }
        }

        v118 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D83B88]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v62 = *(*(v12 + 24) + 16);
          v63 = swift_getAssociatedTypeWitness();
          v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v63);
          swift_getAssociatedConformanceWitness();
          v65 = sub_25A998A78();
          MEMORY[0x28223BE20](v65);
          sub_25A9989C8();
          v66 = *(*(v12 + 32) + 8);
          v67 = sub_25A997D98();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v67 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        LODWORD(v163[0]) = -1;
        v68 = sub_25A9984D8();
        MEMORY[0x28223BE20](v68);
        sub_25A8DFA50();
        sub_25A9984A8();
        v69 = *(*(v12 + 32) + 8);
        v70 = sub_25A997D88();
        v71 = *(v14 + 8);
        v71(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if ((v70 & 1) == 0)
        {
          v72 = *v16;
          v71(v16, MEMORY[0x277D83B88]);
          LODWORD(v163[0]) = v72;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_150;
        }

        goto LABEL_157;
      }

      if (a2 == 4)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }

        v34 = *(*(v12 + 24) + 16);
        v35 = swift_getAssociatedTypeWitness();
        v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v35);
        swift_getAssociatedConformanceWitness();
        v37 = sub_25A998A78();
        MEMORY[0x28223BE20](v37);
        sub_25A9989C8();
        v38 = *(*(v12 + 32) + 8);
        v39 = sub_25A997D98();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if (v39)
        {
LABEL_43:
          if (sub_25A9984D8())
          {
            v40 = *(*(v12 + 24) + 16);
            v41 = swift_getAssociatedTypeWitness();
            v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v41);
            swift_getAssociatedConformanceWitness();
            v43 = sub_25A998A78();
            MEMORY[0x28223BE20](v43);
            sub_25A9989C8();
            v44 = *(*(v12 + 32) + 8);
            v45 = sub_25A997D78();
            v46 = *(v14 + 8);
            v46(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
            if (v45)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v46 = *(v14 + 8);
          }

          v96 = *v16;
          v46(v16, MEMORY[0x277D83B88]);
          *&v163[0] = v96;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_150;
        }

        goto LABEL_162;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_148;
      }

      LOBYTE(v163[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v86 = sub_25A9984C8();
        if (v86 < 8)
        {
LABEL_147:
          sub_25A9984B8();
LABEL_148:
          LOBYTE(v163[0]) = 127;
          v147 = sub_25A9984D8();
          MEMORY[0x28223BE20](v147);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v148 = *(*(v12 + 32) + 8);
          v149 = sub_25A997D88();
          v150 = *(v14 + 8);
          v150(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v149 & 1) == 0)
          {
            v151 = *v16;
            v150(v16, MEMORY[0x277D83B88]);
            LOBYTE(v163[0]) = v151;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_150;
          }

          goto LABEL_156;
        }
      }

      else
      {
        v100 = sub_25A9984D8();
        v86 = sub_25A9984C8();
        if ((v100 & 1) == 0)
        {
          if (v86 >= 8)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        }

        if (v86 <= 8)
        {
          v141 = *(*(v12 + 24) + 16);
          v142 = swift_getAssociatedTypeWitness();
          v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v142);
          swift_getAssociatedConformanceWitness();
          v144 = sub_25A998A78();
          MEMORY[0x28223BE20](v144);
          sub_25A9989C8();
          v145 = *(*(v12 + 32) + 8);
          v146 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v146)
          {
            goto LABEL_168;
          }

          goto LABEL_147;
        }
      }

      MEMORY[0x28223BE20](v86);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v107 = *(*(v12 + 32) + 8);
      v108 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      if (v108)
      {
LABEL_168:
        __break(1u);
      }

      goto LABEL_148;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v17)
        {
          v73 = sub_25A9984B8();
        }

        else
        {
          v73 = *v16;
        }

        v88 = (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        v89.n128_f32[0] = v73;
        v11 = mlx_array_new_float(v88, v89);
        goto LABEL_150;
      }

      if (a2 == 11)
      {
        if (v17)
        {
          v33 = sub_25A9984B8();
        }

        else
        {
          v33 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_153:
        swift_once();
LABEL_95:
        v90 = sub_25A998C58();
        v91 = *&v163[0];
        v92.n128_f32[0] = v33;
        v93 = mlx_array_new_float(v90, v92);
        *&v163[0] = mlx_array_new();
        mlx_astype(v163, v93, 12, *(v91 + 16));
        v94 = *&v163[0];
        type metadata accessor for MLXArray();
        v95 = swift_allocObject();
        *(v95 + 16) = v94;
        mlx_array_free(v93);

LABEL_151:
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        result = v95;
        goto LABEL_152;
      }

      if (v17)
      {
        v87 = sub_25A9984B8();
      }

      else
      {
        v87 = *v16;
      }

      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      v59 = sub_25A8BA558(v87);
LABEL_100:
      v95 = v59;
      goto LABEL_151;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        if (v17)
        {
          v85 = sub_25A9984B8();
        }

        else
        {
          v85 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        *v163 = v85;
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_150;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_144;
      }

      LODWORD(v163[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v29 = sub_25A9984C8();
        if (v29 < 32)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LODWORD(v163[0]) = 0x7FFFFFFF;
          v136 = sub_25A9984D8();
          MEMORY[0x28223BE20](v136);
          sub_25A8DF954();
          sub_25A9984A8();
          v137 = *(*(v12 + 32) + 8);
          v138 = sub_25A997D88();
          v139 = *(v14 + 8);
          v139(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if ((v138 & 1) == 0)
          {
            v140 = *v16;
            v139(v16, MEMORY[0x277D83B88]);
            mlx_array_new_int();
          }

LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }
      }

      else
      {
        v99 = sub_25A9984D8();
        v29 = sub_25A9984C8();
        if ((v99 & 1) == 0)
        {
          if (v29 >= 32)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v29 <= 32)
        {
          v130 = *(*(v12 + 24) + 16);
          v131 = swift_getAssociatedTypeWitness();
          v132 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v131);
          swift_getAssociatedConformanceWitness();
          v133 = sub_25A998A78();
          MEMORY[0x28223BE20](v133);
          sub_25A9989C8();
          v134 = *(*(v12 + 32) + 8);
          v135 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v135)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v29);
      sub_25A8DF954();
      sub_25A9984A8();
      v105 = *(*(v12 + 32) + 8);
      v106 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
      if (v106)
      {
        goto LABEL_167;
      }

      goto LABEL_144;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v163[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v61 = sub_25A9984C8();
        if (v61 < 16)
        {
LABEL_139:
          sub_25A9984B8();
          goto LABEL_140;
        }

LABEL_117:
        MEMORY[0x28223BE20](v61);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v103 = *(*(v12 + 32) + 8);
        v104 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
        if (v104)
        {
          goto LABEL_166;
        }

        goto LABEL_140;
      }

      v98 = sub_25A9984D8();
      v61 = sub_25A9984C8();
      if (v98)
      {
        if (v61 <= 16)
        {
          v119 = *(*(v12 + 24) + 16);
          v120 = swift_getAssociatedTypeWitness();
          v121 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v120);
          swift_getAssociatedConformanceWitness();
          v122 = sub_25A998A78();
          MEMORY[0x28223BE20](v122);
          sub_25A9989C8();
          v123 = *(*(v12 + 32) + 8);
          v124 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
          if (v124)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (v61 < 16)
      {
        goto LABEL_139;
      }
    }

LABEL_140:
    LOWORD(v163[0]) = 0x7FFF;
    v125 = sub_25A9984D8();
    MEMORY[0x28223BE20](v125);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v126 = *(*(v12 + 32) + 8);
    v127 = sub_25A997D88();
    v128 = *(v14 + 8);
    v128(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83B88]);
    if ((v127 & 1) == 0)
    {
      v129 = *v16;
      v128(v16, MEMORY[0x277D83B88]);
      LOWORD(v163[0]) = v129;
      v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_155;
  }

  sub_25A87817C(v163, v165);
  v7 = v166;
  v8 = v167;
  v9 = __swift_project_boxed_opaque_existential_1(v165, v166);
  v10 = v9;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v163[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_150;
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v154 = sub_25A998C68();
        MEMORY[0x25F850290](v154);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 7)
        {
          v53 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v55 + 16))(&v161 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v162) = v163[0];
          v11 = mlx_array_new_data(&v162, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_150;
        }

        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v163[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v157 = sub_25A998C68();
        MEMORY[0x25F850290](v157);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_176;
    }

    if (a2 == 10)
    {
      v48 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v50 + 16))(&v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v51 = sub_25A997C38();
      v52.n128_u32[0] = v163[0];
      v11 = mlx_array_new_float(v51, v52);
      goto LABEL_150;
    }

    if (a2 == 11)
    {
      v30 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v32 + 16))(&v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v33 = *&v162;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_153;
    }

    v56 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v58 + 16))(&v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v59 = sub_25A8BA558(*v163);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v155 = sub_25A998C68();
      MEMORY[0x25F850290](v155);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v158 = sub_25A998C68();
      MEMORY[0x25F850290](v158);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v160 = sub_25A998C68();
      MEMORY[0x25F850290](v160);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v47 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_150:
        v152 = v11;
        type metadata accessor for MLXArray();
        v95 = swift_allocObject();
        *(v95 + 16) = v152;
        goto LABEL_151;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v156 = sub_25A998C68();
      MEMORY[0x25F850290](v156);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v159 = sub_25A998C68();
      MEMORY[0x25F850290](v159);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_176:
  __break(1u);
  return result;
}

void sub_25A8C28F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C28FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C29E0(uint64_t a1, unsigned __int8 a2)
{
  v168 = *MEMORY[0x277D85DE8];
  if (a2 == 4)
  {
    v165[0] = a1;
    v3 = mlx_array_new_data(v165, (MEMORY[0x277D84F90] + 32), 0, 4);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_164:
    v153 = *MEMORY[0x277D85DE8];
    return result;
  }

  v162 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D83E88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    memset(v163, 0, sizeof(v163));
    sub_25A878194(v163, &qword_27FA04950, &qword_25A9F9598);
    v166 = v6;
    v12 = sub_25A8DFECC();
    v167 = v12;
    v165[0] = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v165, v6);
    v161 = &v161;
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v17)
            {
              v62 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v64 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v65 = sub_25A998A78();
              MEMORY[0x28223BE20](v65);
              sub_25A9989C8();
              v66 = *(*(v12 + 32) + 8);
              v67 = sub_25A997D98();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
              if ((v67 & 1) == 0)
              {
                goto LABEL_174;
              }
            }

            LOWORD(v163[0]) = -1;
            v68 = sub_25A9984D8();
            MEMORY[0x28223BE20](v68);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v69 = *(*(v12 + 32) + 8);
            v70 = sub_25A997D88();
            v71 = *(v14 + 8);
            v71(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if ((v70 & 1) == 0)
            {
              v72 = *v16;
              v71(v16, MEMORY[0x277D83E88]);
              LOWORD(v163[0]) = v72;
              v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_162;
            }

            goto LABEL_171;
          }

          if (v17)
          {
            v18 = *(*(v12 + 24) + 16);
            v19 = swift_getAssociatedTypeWitness();
            v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v19);
            swift_getAssociatedConformanceWitness();
            v21 = sub_25A998A78();
            MEMORY[0x28223BE20](v21);
            sub_25A9989C8();
            v22 = *(*(v12 + 32) + 8);
            v23 = sub_25A997D98();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if ((v23 & 1) == 0)
            {
              goto LABEL_173;
            }
          }

          LOBYTE(v163[0]) = -1;
          v24 = sub_25A9984D8();
          MEMORY[0x28223BE20](v24);
          sub_25A89522C();
          sub_25A9984A8();
          v25 = *(*(v12 + 32) + 8);
          v26 = sub_25A997D88();
          v27 = *(v14 + 8);
          v27(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v26 & 1) == 0)
          {
            v28 = *v16;
            v27(v16, MEMORY[0x277D83E88]);
            LOBYTE(v163[0]) = v28;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_162;
          }

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
          goto LABEL_175;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v163[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v48 = sub_25A9984C8();
            if (v48 < 64)
            {
LABEL_137:
              sub_25A9984B8();
              goto LABEL_138;
            }
          }

          else
          {
            v84 = sub_25A9984D8();
            v48 = sub_25A9984C8();
            if ((v84 & 1) == 0)
            {
              if (v48 >= 64)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            if (v48 <= 64)
            {
              v99 = *(*(v12 + 24) + 16);
              v100 = swift_getAssociatedTypeWitness();
              v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v100);
              swift_getAssociatedConformanceWitness();
              v102 = sub_25A998A78();
              MEMORY[0x28223BE20](v102);
              sub_25A9989C8();
              v103 = *(*(v12 + 32) + 8);
              v104 = sub_25A997D88();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
              if (v104)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              goto LABEL_137;
            }
          }

          MEMORY[0x28223BE20](v48);
          sub_25A895280();
          sub_25A9984A8();
          v89 = *(*(v12 + 32) + 8);
          v90 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v90)
          {
            goto LABEL_177;
          }
        }

LABEL_138:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
          v105 = sub_25A9984D8();
          if (v105)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v105);
            sub_25A895280();
            sub_25A9984A8();
            v106 = *(*(v12 + 32) + 8);
            v107 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v107)
            {
LABEL_175:
              __break(1u);
              goto LABEL_176;
            }
          }
        }

        v108 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D83E88]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v50 = *(*(v12 + 24) + 16);
          v51 = swift_getAssociatedTypeWitness();
          v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v51);
          swift_getAssociatedConformanceWitness();
          v53 = sub_25A998A78();
          MEMORY[0x28223BE20](v53);
          sub_25A9989C8();
          v54 = *(*(v12 + 32) + 8);
          v55 = sub_25A997D98();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v55 & 1) == 0)
          {
            goto LABEL_172;
          }
        }

        LODWORD(v163[0]) = -1;
        v56 = sub_25A9984D8();
        MEMORY[0x28223BE20](v56);
        sub_25A8DFA50();
        sub_25A9984A8();
        v57 = *(*(v12 + 32) + 8);
        v58 = sub_25A997D88();
        v59 = *(v14 + 8);
        v59(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if ((v58 & 1) == 0)
        {
          v60 = *v16;
          v59(v16, MEMORY[0x277D83E88]);
          LODWORD(v163[0]) = v60;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_162;
        }

        goto LABEL_169;
      }

      if (a2 == 5)
      {
        if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
        {
LABEL_156:
          LOBYTE(v163[0]) = 127;
          v136 = sub_25A9984D8();
          MEMORY[0x28223BE20](v136);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v137 = *(*(v12 + 32) + 8);
          v138 = sub_25A997D88();
          v139 = *(v14 + 8);
          v139(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if ((v138 & 1) == 0)
          {
            v140 = *v16;
            v139(v16, MEMORY[0x277D83E88]);
            LOBYTE(v163[0]) = v140;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_162;
          }

          goto LABEL_167;
        }

        LOBYTE(v163[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v34 = sub_25A9984C8();
          if (v34 < 8)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v87 = sub_25A9984D8();
          v34 = sub_25A9984C8();
          if ((v87 & 1) == 0)
          {
            if (v34 >= 8)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v34 <= 8)
          {
            v130 = *(*(v12 + 24) + 16);
            v131 = swift_getAssociatedTypeWitness();
            v132 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v131);
            swift_getAssociatedConformanceWitness();
            v133 = sub_25A998A78();
            MEMORY[0x28223BE20](v133);
            sub_25A9989C8();
            v134 = *(*(v12 + 32) + 8);
            v135 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v135)
            {
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v34);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v95 = *(*(v12 + 32) + 8);
        v96 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v96)
        {
          goto LABEL_180;
        }

        goto LABEL_156;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 17)
      {
LABEL_160:
        LOWORD(v163[0]) = 0x7FFF;
        v147 = sub_25A9984D8();
        MEMORY[0x28223BE20](v147);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v148 = *(*(v12 + 32) + 8);
        v149 = sub_25A997D88();
        v150 = *(v14 + 8);
        v150(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if ((v149 & 1) == 0)
        {
          v151 = *v16;
          v150(v16, MEMORY[0x277D83E88]);
          LOWORD(v163[0]) = v151;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_162;
        }

        goto LABEL_168;
      }

      LOWORD(v163[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v74 = sub_25A9984C8();
        if (v74 < 16)
        {
LABEL_159:
          sub_25A9984B8();
          goto LABEL_160;
        }
      }

      else
      {
        v88 = sub_25A9984D8();
        v74 = sub_25A9984C8();
        if ((v88 & 1) == 0)
        {
          if (v74 >= 16)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }

        if (v74 <= 16)
        {
          v141 = *(*(v12 + 24) + 16);
          v142 = swift_getAssociatedTypeWitness();
          v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v142);
          swift_getAssociatedConformanceWitness();
          v144 = sub_25A998A78();
          MEMORY[0x28223BE20](v144);
          sub_25A9989C8();
          v145 = *(*(v12 + 32) + 8);
          v146 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v146)
          {
            goto LABEL_181;
          }

          goto LABEL_159;
        }
      }

      MEMORY[0x28223BE20](v74);
      sub_25A8DF9A8();
      sub_25A9984A8();
      v97 = *(*(v12 + 32) + 8);
      v98 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
      if (v98)
      {
LABEL_181:
        __break(1u);
      }

      goto LABEL_160;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v17)
        {
          v61 = sub_25A9984B8();
        }

        else
        {
          v61 = *v16;
        }

        v76 = (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        v77.n128_f32[0] = v61;
        v11 = mlx_array_new_float(v76, v77);
        goto LABEL_162;
      }

      if (a2 == 11)
      {
        if (v17)
        {
          v33 = sub_25A9984B8();
        }

        else
        {
          v33 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_165:
        swift_once();
LABEL_95:
        v78 = sub_25A998C58();
        v79 = *&v163[0];
        v80.n128_f32[0] = v33;
        v81 = mlx_array_new_float(v78, v80);
        *&v163[0] = mlx_array_new();
        mlx_astype(v163, v81, 12, *(v79 + 16));
        v82 = *&v163[0];
        type metadata accessor for MLXArray();
        v83 = swift_allocObject();
        *(v83 + 16) = v82;
        mlx_array_free(v81);

LABEL_163:
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        result = v83;
        goto LABEL_164;
      }

      if (v17)
      {
        v75 = sub_25A9984B8();
      }

      else
      {
        v75 = *v16;
      }

      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
      v47 = sub_25A8BA558(v75);
LABEL_100:
      v83 = v47;
      goto LABEL_163;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v17)
        {
          v73 = sub_25A9984B8();
        }

        else
        {
          v73 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        *v163 = v73;
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_162;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v163[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v29 = sub_25A9984C8();
          if (v29 < 64)
          {
LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }
        }

        else
        {
          v86 = sub_25A9984D8();
          v29 = sub_25A9984C8();
          if ((v86 & 1) == 0)
          {
            if (v29 >= 64)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }

          if (v29 <= 64)
          {
            v120 = *(*(v12 + 24) + 16);
            v121 = swift_getAssociatedTypeWitness();
            v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v121);
            swift_getAssociatedConformanceWitness();
            v123 = sub_25A998A78();
            MEMORY[0x28223BE20](v123);
            sub_25A9989C8();
            v124 = *(*(v12 + 32) + 8);
            v125 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
            if (v125)
            {
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

            goto LABEL_148;
          }
        }

        MEMORY[0x28223BE20](v29);
        sub_25A8DF900();
        sub_25A9984A8();
        v93 = *(*(v12 + 32) + 8);
        v94 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v94)
        {
          goto LABEL_179;
        }
      }

LABEL_149:
      if ((sub_25A9984D8() & 1) == 0)
      {
        *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
        v126 = sub_25A9984D8();
        if (v126)
        {
          sub_25A9984B8();
        }

        else
        {
          MEMORY[0x28223BE20](v126);
          sub_25A8DF900();
          sub_25A9984A8();
          v127 = *(*(v12 + 32) + 8);
          v128 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v128)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }
        }
      }

      v129 = *v16;
      (*(v14 + 8))(v16, MEMORY[0x277D83E88]);
      *&v163[0] = v129;
      v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_162;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v163[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v49 = sub_25A9984C8();
        if (v49 < 32)
        {
LABEL_144:
          sub_25A9984B8();
          goto LABEL_145;
        }

LABEL_118:
        MEMORY[0x28223BE20](v49);
        sub_25A8DF954();
        sub_25A9984A8();
        v91 = *(*(v12 + 32) + 8);
        v92 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
        if (v92)
        {
          goto LABEL_178;
        }

        goto LABEL_145;
      }

      v85 = sub_25A9984D8();
      v49 = sub_25A9984C8();
      if (v85)
      {
        if (v49 <= 32)
        {
          v109 = *(*(v12 + 24) + 16);
          v110 = swift_getAssociatedTypeWitness();
          v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v110);
          swift_getAssociatedConformanceWitness();
          v112 = sub_25A998A78();
          MEMORY[0x28223BE20](v112);
          sub_25A9989C8();
          v113 = *(*(v12 + 32) + 8);
          v114 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
          if (v114)
          {
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          goto LABEL_144;
        }

        goto LABEL_118;
      }

      if (v49 < 32)
      {
        goto LABEL_144;
      }
    }

LABEL_145:
    LODWORD(v163[0]) = 0x7FFFFFFF;
    v115 = sub_25A9984D8();
    MEMORY[0x28223BE20](v115);
    sub_25A8DF954();
    sub_25A9984A8();
    v116 = *(*(v12 + 32) + 8);
    v117 = sub_25A997D88();
    v118 = *(v14 + 8);
    v118(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D83E88]);
    if ((v117 & 1) == 0)
    {
      v119 = *v16;
      v118(v16, MEMORY[0x277D83E88]);
      mlx_array_new_int();
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_25A87817C(v163, v165);
  v7 = v166;
  v8 = v167;
  v9 = __swift_project_boxed_opaque_existential_1(v165, v166);
  v10 = v9;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v163[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v154 = sub_25A998C68();
        MEMORY[0x25F850290](v154);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v41 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v43 + 16))(&v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v162) = v163[0];
          v11 = mlx_array_new_data(&v162, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_162;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v163[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_162;
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v157 = sub_25A998C68();
        MEMORY[0x25F850290](v157);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_189;
    }

    if (a2 == 10)
    {
      v36 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v38 + 16))(&v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v39 = sub_25A997C38();
      v40.n128_u32[0] = v163[0];
      v11 = mlx_array_new_float(v39, v40);
      goto LABEL_162;
    }

    if (a2 == 11)
    {
      v30 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v32 + 16))(&v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v33 = *&v162;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_165;
    }

    v44 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v46 + 16))(&v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v47 = sub_25A8BA558(*v163);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v155 = sub_25A998C68();
      MEMORY[0x25F850290](v155);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v158 = sub_25A998C68();
      MEMORY[0x25F850290](v158);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v160 = sub_25A998C68();
      MEMORY[0x25F850290](v160);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v35 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_162:
        v152 = v11;
        type metadata accessor for MLXArray();
        v83 = swift_allocObject();
        *(v83 + 16) = v152;
        goto LABEL_163;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v156 = sub_25A998C68();
      MEMORY[0x25F850290](v156);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v159 = sub_25A998C68();
      MEMORY[0x25F850290](v159);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_189:
  __break(1u);
  return result;
}