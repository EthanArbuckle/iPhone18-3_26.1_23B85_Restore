void sub_25A8EF114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF11CLL);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_25A8EF168()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) == 1)
  {
    if (qword_27FA043E0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  if ((sub_25A956420(v3) - 1) < 8u)
  {
    v4 = sub_25A961E68();
    if (v4 <= 0xFF)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v5 = mlx_array_dtype(v0[2]);
  if (sub_25A956420(v5) == 1)
  {
    LOBYTE(v12[0]) = 0;
    mlx_array_item_uint8(v12, v0[2]);
    v4 = LOBYTE(v12[0]);
  }

  else
  {
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v6 = v12[0];
    v7 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v7) == 1)
    {
    }

    else
    {
      v12[0] = mlx_array_new();
      mlx_astype(v12, v0[2], 1, *(v6 + 16));

      v9 = v12[0];
      v8 = swift_allocObject();
      *(v8 + 16) = v9;
    }

    v4 = sub_25A8EF168(v8);
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_25A8EF39C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF3A4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EF3F0()
{
  v12[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (qword_27FA043E0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  v4 = sub_25A956420(v3);
  if (v4 <= 0xC && ((1 << v4) & 0x1600) != 0)
  {
    result = sub_25A9621C8();
  }

  else
  {
    v7 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v7) == 10)
    {
      LODWORD(v12[0]) = 0;
      result = mlx_array_item_float32(v12, v0[2]);
    }

    else
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v8 = v12[0];
      v9 = mlx_array_dtype(v0[2]);
      if (sub_25A956420(v9) == 10)
      {
      }

      else
      {
        v12[0] = mlx_array_new();
        mlx_astype(v12, v0[2], 10, *(v8 + 16));

        v11 = v12[0];
        v10 = swift_allocObject();
        *(v10 + 16) = v11;
      }

      sub_25A8EF3F0(v10);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EF630(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF638);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8EF684()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  swift_beginAccess();
  if (mlx_array_size(v0[2]) != 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (qword_27FA043E0 != -1)
  {
LABEL_16:
    swift_once();
  }

  v2 = qword_27FA0FD28;
  [qword_27FA0FD28 lock];
  mlx_array_eval(v0[2]);
  [v2 unlock];
  v3 = mlx_array_dtype(v0[2]);
  v4 = sub_25A956420(v3);
  if (v4 <= 0xC && ((1 << v4) & 0x1600) != 0)
  {
    result = sub_25A9621C8();
    __asm { FCVT            H0, S0 }
  }

  else
  {
    v12 = mlx_array_dtype(v0[2]);
    if (sub_25A956420(v12) == 9)
    {
      LOWORD(v17[0]) = 0;
      result = mlx_array_item_float16(v17, v0[2]);
    }

    else
    {
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      sub_25A998C58();
      v13 = v17[0];
      v14 = mlx_array_dtype(v0[2]);
      if (sub_25A956420(v14) == 9)
      {
      }

      else
      {
        v17[0] = mlx_array_new();
        mlx_astype(v17, v0[2], 9, *(v13 + 16));

        v16 = v17[0];
        v15 = swift_allocObject();
        *(v15 + 16) = v16;
      }

      sub_25A8EF684(v15);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A8EF8CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8EF8D4);
  }

  _Unwind_Resume(a1);
}

int64_t sub_25A8EF920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_25A8EF9D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    if (!*a1 || (*(a1 + 8) - 0x1000000000000000) >> 61 == 7)
    {
      sub_25A9727FC(v6, v25, *a1);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFBB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    if (!*a1 || (*(a1 + 8) - 0x2000000000000000) >> 62 == 3)
    {
      sub_25A9727FC(v6, v25, *a1);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFD94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    if (!*a1 || *(a1 + 8) + 0x4000000000000000 >= 0)
    {
      sub_25A9727FC(v6, v25, *a1);
      result = mlx_array_size(*(a3 + 16));
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8EFF6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = mlx_array_data_uint8(*(a3 + 16));
  v7 = sub_25A9616CC();
  v8 = sub_25A961A18();
  v9 = sub_25A8ECDF0(v7, v8);

  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = mlx_array_size(*(a3 + 16));
    goto LABEL_14;
  }

  v11 = *(v9 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (v10 < 5)
    {
      v13 = 1;
      goto LABEL_9;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v14 = vdupq_n_s64(v11);
    v15 = (v9 + 56);
    v16 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v14;
    do
    {
      v14 = vbslq_s8(vcgtq_s64(v14, v15[-1]), v14, v15[-1]);
      v17 = vbslq_s8(vcgtq_s64(v17, *v15), v17, *v15);
      v15 += 2;
      v16 -= 4;
    }

    while (v16);
    v18 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
    v19 = vextq_s8(v18, v18, 8uLL).u64[0];
    v11 = vbsl_s8(vcgtd_s64(v18.i64[0], v19), *v18.i8, v19);
    if (v12 != (v12 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_9:
      v20 = v10 - v13;
      v21 = (v9 + 8 * v13 + 32);
      do
      {
        v23 = *v21++;
        v22 = v23;
        if (v11 <= v23)
        {
          v11 = v22;
        }

        --v20;
      }

      while (v20);
    }
  }

LABEL_14:
  result = mlx_array_itemsize(*(a3 + 16));
  if ((v11 * result) >> 64 == (v11 * result) >> 63)
  {
    if (v6)
    {
      v25 = v6 + v11 * result;
    }

    else
    {
      v25 = 0;
    }

    v26 = *(a1 + 8) + *a1;
    if (*a1)
    {
      v27 = *(a1 + 8) + *a1;
    }

    sub_25A9727FC(v6, v25, *a1);
    result = mlx_array_size(*(a3 + 16));
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8F012C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_25A87817C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_25A8F01C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
LABEL_158:
    v112 = a2;
    v113 = sub_25A998848();
    a2 = v112;
    v5 = v113;
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      goto LABEL_10;
    }
  }

  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 32);
    v8 = 1;
    do
    {
      v9 = *v7++;
      v10 = v8 * v9;
      if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
      {
        __break(1u);
        goto LABEL_158;
      }

      v8 = v10;
      --v6;
    }

    while (v6);
    if (v10 == v5)
    {
      goto LABEL_10;
    }

    goto LABEL_160;
  }

  if (v5 != 1)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_10:
  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        if (v5)
        {
          v122 = MEMORY[0x277D84F90];
          sub_25A937720(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          v73 = 0;
          v74 = v122;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v75 = MEMORY[0x25F8509C0](v73, a1);
            }

            else
            {
              v75 = *(a1 + 8 * v73 + 32);
            }

            v76 = v75;
            v77 = [v75 unsignedCharValue];

            v79 = *(v122 + 16);
            v78 = *(v122 + 24);
            if (v79 >= v78 >> 1)
            {
              sub_25A937720((v78 > 1), v79 + 1, 1);
            }

            ++v73;
            *(v122 + 16) = v79 + 1;
            *(v122 + v79 + 32) = v77;
          }

          while (v5 != v73);
        }

        else
        {

          v74 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939934(v74, a3);
      }

      else
      {
        if (v5)
        {
          v117 = MEMORY[0x277D84F90];
          sub_25A937820(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_165:
            __break(1u);
            goto LABEL_166;
          }

          v38 = 0;
          v39 = v117;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v40 = MEMORY[0x25F8509C0](v38, a1);
            }

            else
            {
              v40 = *(a1 + 8 * v38 + 32);
            }

            v41 = v40;
            v42 = [v40 BOOLValue];

            v44 = *(v117 + 16);
            v43 = *(v117 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_25A937820((v43 > 1), v44 + 1, 1);
            }

            ++v38;
            *(v117 + 16) = v44 + 1;
            *(v117 + v44 + 32) = v42;
          }

          while (v5 != v38);
        }

        else
        {

          v39 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939154(v39, a3);
      }
    }

    else
    {
      if (a2 == 2)
      {

        if (v5)
        {
          v118 = MEMORY[0x277D84F90];
          sub_25A9376F0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v45 = 0;
          v46 = v118;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x25F8509C0](v45, a1);
            }

            else
            {
              v47 = *(a1 + 8 * v45 + 32);
            }

            v48 = v47;
            v49 = [v47 unsignedShortValue];

            v51 = *(v118 + 16);
            v50 = *(v118 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_25A9376F0((v50 > 1), v51 + 1, 1);
            }

            ++v45;
            *(v118 + 16) = v51 + 1;
            *(v118 + 2 * v51 + 32) = v49;
          }

          while (v5 != v45);
        }

        else
        {

          v46 = MEMORY[0x277D84F90];
        }

        v95 = *(v46 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25A9F8D90;
        *(inited + 32) = v95;
        v97 = Array<A>.asInt32.getter(inited);

        v98 = mlx_array_new_data(v46 + 32, (v97 + 32), 1, 2);
LABEL_149:
        v109 = v98;

        type metadata accessor for MLXArray();
        result = swift_allocObject();
        *(result + 16) = v109;
        return result;
      }

      if (a2 != 3)
      {
        if (a2 == 4)
        {

          if (v5)
          {
            v121 = MEMORY[0x277D84F90];
            sub_25A937690(0, v5 & ~(v5 >> 63), 0);
            if (v5 < 0)
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v66 = 0;
            v67 = v121;
            do
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v68 = MEMORY[0x25F8509C0](v66, a1);
              }

              else
              {
                v68 = *(a1 + 8 * v66 + 32);
              }

              v69 = v68;
              v70 = [v68 unsignedLongLongValue];

              v72 = *(v121 + 16);
              v71 = *(v121 + 24);
              if (v72 >= v71 >> 1)
              {
                sub_25A937690((v71 > 1), v72 + 1, 1);
              }

              ++v66;
              *(v121 + 16) = v72 + 1;
              *(v121 + 8 * v72 + 32) = v70;
            }

            while (v5 != v66);
          }

          else
          {

            v67 = MEMORY[0x277D84F90];
          }

          v106 = *(v67 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
          v107 = swift_initStackObject();
          *(v107 + 16) = xmmword_25A9F8D90;
          *(v107 + 32) = v106;
          v108 = Array<A>.asInt32.getter(v107);

          v98 = mlx_array_new_data(v67 + 32, (v108 + 32), 1, 4);
          goto LABEL_149;
        }

        goto LABEL_172;
      }

      if (v5)
      {
        v115 = MEMORY[0x277D84F90];
        sub_25A9376C0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        v18 = 0;
        v19 = v115;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x25F8509C0](v18, a1);
          }

          else
          {
            v20 = *(a1 + 8 * v18 + 32);
          }

          v21 = v20;
          v22 = [v20 unsignedIntValue];

          v24 = *(v115 + 16);
          v23 = *(v115 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_25A9376C0((v23 > 1), v24 + 1, 1);
          }

          ++v18;
          *(v115 + 16) = v24 + 1;
          *(v115 + 4 * v24 + 32) = v22;
        }

        while (v5 != v18);
      }

      else
      {

        v19 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A939B74(v19, a3);
    }

    goto LABEL_156;
  }

  if (a2 > 7u)
  {
    if (a2 != 8)
    {
      if (a2 == 9)
      {

        if (v5)
        {
          v116 = MEMORY[0x277D84F90];
          sub_25A937800(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v25 = 0;
          v26 = v116;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v27 = MEMORY[0x25F8509C0](v25, a1);
            }

            else
            {
              v27 = *(a1 + 8 * v25 + 32);
            }

            v28 = v27;
            [v27 floatValue];
            _S8 = v29;

            v32 = *(v116 + 16);
            v31 = *(v116 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_25A937800((v31 > 1), v32 + 1, 1);
            }

            ++v25;
            __asm { FCVT            H0, S8 }

            *(v116 + 16) = v32 + 1;
            *(v116 + 2 * v32 + 32) = _H0;
          }

          while (v5 != v25);
        }

        else
        {

          v26 = MEMORY[0x277D84F90];
        }

        v103 = *(v26 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
        v104 = swift_initStackObject();
        *(v104 + 16) = xmmword_25A9F8D90;
        *(v104 + 32) = v103;
        v105 = Array<A>.asInt32.getter(v104);

        v98 = mlx_array_new_data(v26 + 32, (v105 + 32), 1, 9);
        goto LABEL_149;
      }

      if (a2 == 10)
      {
        if (v5)
        {
          v124 = MEMORY[0x277D84F90];
          sub_25A9377E0(0, v5 & ~(v5 >> 63), 0);
          if (v5 < 0)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          v87 = 0;
          v88 = v124;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v89 = MEMORY[0x25F8509C0](v87, a1);
            }

            else
            {
              v89 = *(a1 + 8 * v87 + 32);
            }

            v90 = v89;
            [v89 floatValue];
            v92 = v91;

            v94 = *(v124 + 16);
            v93 = *(v124 + 24);
            if (v94 >= v93 >> 1)
            {
              sub_25A9377E0((v93 > 1), v94 + 1, 1);
            }

            ++v87;
            *(v124 + 16) = v94 + 1;
            *(v124 + 4 * v94 + 32) = v92;
          }

          while (v5 != v87);
        }

        else
        {

          v88 = MEMORY[0x277D84F90];
        }

        v99 = sub_25A939394(v88, a3);
        goto LABEL_156;
      }

      goto LABEL_172;
    }

    if (v5)
    {
      v120 = MEMORY[0x277D84F90];
      sub_25A93A534(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v59 = 0;
      v60 = v120;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x25F8509C0](v59, a1);
        }

        else
        {
          v61 = *(a1 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = [v61 longLongValue];

        v65 = *(v120 + 16);
        v64 = *(v120 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_25A93A534(v64 > 1, v65 + 1, 1);
        }

        ++v59;
        *(v120 + 16) = v65 + 1;
        *(v120 + 8 * v65 + 32) = v63;
      }

      while (v5 != v59);
    }

    else
    {

      v60 = MEMORY[0x277D84F90];
    }

    v99 = sub_25A939814(v60, a3);
LABEL_156:
    v111 = v99;

    return v111;
  }

  switch(a2)
  {
    case 5u:
      if (v5)
      {
        v119 = MEMORY[0x277D84F90];
        sub_25A9377B0(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v52 = 0;
        v53 = v119;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x25F8509C0](v52, a1);
          }

          else
          {
            v54 = *(a1 + 8 * v52 + 32);
          }

          v55 = v54;
          v56 = [v54 charValue];

          v58 = *(v119 + 16);
          v57 = *(v119 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_25A9377B0((v57 > 1), v58 + 1, 1);
          }

          ++v52;
          *(v119 + 16) = v58 + 1;
          *(v119 + v58 + 32) = v56;
        }

        while (v5 != v52);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A9394B4(v53, a3);
      goto LABEL_156;
    case 6u:

      if (v5)
      {
        v114 = MEMORY[0x277D84F90];
        sub_25A937780(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v11 = 0;
        v12 = v114;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x25F8509C0](v11, a1);
          }

          else
          {
            v13 = *(a1 + 8 * v11 + 32);
          }

          v14 = v13;
          v15 = [v13 shortValue];

          v17 = *(v114 + 16);
          v16 = *(v114 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_25A937780((v16 > 1), v17 + 1, 1);
          }

          ++v11;
          *(v114 + 16) = v17 + 1;
          *(v114 + 2 * v17 + 32) = v15;
        }

        while (v5 != v11);
      }

      else
      {

        v12 = MEMORY[0x277D84F90];
      }

      v100 = *(v12 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v101 = swift_initStackObject();
      *(v101 + 16) = xmmword_25A9F8D90;
      *(v101 + 32) = v100;
      v102 = Array<A>.asInt32.getter(v101);

      v98 = mlx_array_new_data(v12 + 32, (v102 + 32), 1, 6);
      goto LABEL_149;
    case 7u:
      if (v5)
      {
        v123 = MEMORY[0x277D84F90];
        sub_25A93A530(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        v80 = 0;
        v81 = v123;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v82 = MEMORY[0x25F8509C0](v80, a1);
          }

          else
          {
            v82 = *(a1 + 8 * v80 + 32);
          }

          v83 = v82;
          v84 = [v82 intValue];

          v86 = *(v123 + 16);
          v85 = *(v123 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_25A93A530(v85 > 1, v86 + 1, 1);
          }

          ++v80;
          *(v123 + 16) = v86 + 1;
          *(v123 + 4 * v86 + 32) = v84;
        }

        while (v5 != v80);
      }

      else
      {

        v81 = MEMORY[0x277D84F90];
      }

      v99 = sub_25A9396F4(v81, a3);
      goto LABEL_156;
  }

LABEL_172:
  sub_25A9985F8();
  MEMORY[0x25F850290](0xD000000000000013, 0x800000025AA68D80);
  sub_25A9987C8();
  result = sub_25A998818();
  __break(1u);
  return result;
}

void *sub_25A8F0FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_25A87500C(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    sub_25A878194(&v19, &qword_27FA04728, &unk_25A9FD740);
    sub_25A87500C(v4, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
    if (!swift_dynamicCast())
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_25A878194(&v19, &qword_27FA04808, &qword_25A9FDC40);
      sub_25A874F54();
      swift_allocError();
      *v14 = 37;
      swift_willThrow();
      return v4;
    }

    sub_25A87817C(&v19, v23);
    v11 = v24;
    v12 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = (*(v12 + 8))(13, v11, v12);
    goto LABEL_7;
  }

  sub_25A87817C(&v19, v23);
  v5 = v24;
  v6 = v25;
  v4 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *(&v20 + 1) = v8;
  *&v19 = v7;

  v9 = static MorpheusUtils.getShape(_:)(&v19);
  if (!v2)
  {
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    *(&v20 + 1) = v8;
    *&v19 = v7;

    v16 = static MorpheusUtils.flattenNumericArray(_:)(&v19);
    __swift_destroy_boxed_opaque_existential_0Tm(&v19);
    if (a2 == 13)
    {
      *(&v20 + 1) = v8;
      *&v19 = v7;
      static MorpheusUtils.getType(of:)(&v19, v22);
      __swift_destroy_boxed_opaque_existential_0Tm(&v19);
      v17 = v22[0];
      v18 = v16;
    }

    else
    {

      v18 = v16;
      v17 = a2;
    }

    v13 = sub_25A8F01C4(v18, v17, v10);
LABEL_7:
    v4 = v13;
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    return v4;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v19);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v4;
}

uint64_t sub_25A8F12B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25A91CC94(&unk_286C0D6F8);
  swift_arrayDestroy();
  v5 = sub_25A9198A8(a1, a2, v4);

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_25A91BA34();
    swift_beginAccess();
    v8 = *(v7 + 16);

    if (*(v8 + 16))
    {
      sub_25A8F3600(a1, a2);
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_25A8F139C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x5F6C6F6F62 && a2 == 0xE500000000000000;
  if (v3 || (sub_25A9989E8() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0x323374616F6C66 && a2 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 10;
  }

  if (a1 == 947154537 && a2 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x3631746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 7;
  }

  if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 8;
  }

  if (a1 == 0x38746E6975 && a2 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x3631746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
  {
    return 4;
  }

  sub_25A9985F8();

  MEMORY[0x25F850290](a1, a2);
  result = sub_25A998818();
  __break(1u);
  return result;
}

uint64_t sub_25A8F1714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  if (result)
  {
    v8 = sub_25A998158();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9[1] = v7;
  v10 = 0;
  v9[0] = v8 + 32;
  result = a4(v9, &v10, a2);
  if (v4)
  {
    if (v10 <= v7)
    {
      *(v8 + 16) = v10;

      return v8;
    }

    goto LABEL_12;
  }

  if (v10 <= v7)
  {
    *(v8 + 16) = v10;
    return v8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25A8F17DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A8F1884()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25A8F192C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25A8F19D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, char *, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v18[3] = *MEMORY[0x277D85DE8];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v18, 0, 14);
      swift_bridgeObjectRetain_n();
      v10 = v18;
      goto LABEL_9;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v9)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      v10 = v18 + BYTE6(a2);
LABEL_9:
      v14 = a4(v18, v10, a3);
      goto LABEL_10;
    }

    v11 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_bridgeObjectRetain_n();
  v14 = sub_25A8F1BB0(v11, v12, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a5);
LABEL_10:
  v15 = v14;
  sub_25A8F1C54(a1, a2);
  swift_bridgeObjectRelease_n();
  type metadata accessor for MLXArray();
  result = swift_allocObject();
  *(result + 16) = v15;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25A8F1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = sub_25A997A08();
  v10 = result;
  if (result)
  {
    result = sub_25A997A38();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 += a1 - result;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_25A997A28();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + v10;
  if (v10)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a5(v10, v16, a4);
}

uint64_t sub_25A8F1C54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_25A8F1D38()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F1DE8()
{
  *v0;
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8F1E84()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F1F30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8F2860();
  *a2 = result;
  return result;
}

void sub_25A8F1F60(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746567726174;
  v4 = 0xE300000000000000;
  v5 = 7562857;
  if (*v1 != 2)
  {
    v5 = 0x636E7973417369;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1919251561;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_25A8F1FCC()
{
  v1 = 0x746567726174;
  v2 = 7562857;
  if (*v0 != 2)
  {
    v2 = 0x636E7973417369;
  }

  if (*v0)
  {
    v1 = 1919251561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8F2034@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8F2860();
  *a1 = result;
  return result;
}

uint64_t sub_25A8F2068(uint64_t a1)
{
  v2 = sub_25A8F25B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F20A4(uint64_t a1)
{
  v2 = sub_25A8F25B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F212C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04B70, &qword_25A9F9EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8F25B4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Comprehension();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 3;
    v1[10] = sub_25A998928();
    v1[5] = sub_25A90E5DC(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A90E5DC(v9, 1);
    v1[8] = v13;
    v1[9] = sub_25A94B0B8(v9, 2);
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

double sub_25A8F237C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = v1[5];
  v4 = v2[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = v2[4];
  v8 = *(v4 + 48);
  swift_unknownObjectRetain();
  v8(Strong, v7, ObjectType, v4);
  swift_unknownObjectRelease();
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_getObjectType();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = v2[4];
  v14 = *(v10 + 48);
  swift_unknownObjectRetain();
  v14(v12, v13, v11, v10);
  swift_unknownObjectRelease();
  v15 = *(v2[9] + 16);
  if (v15)
  {
    v16 = ( + 40);
    do
    {
      v17 = *(v16 - 1);
      v18 = *v16;
      v19 = swift_getObjectType();
      v20 = swift_unknownObjectWeakLoadStrong();
      v21 = v2[4];
      v22 = *(v18 + 48);
      swift_unknownObjectRetain();
      v22(v20, v21, v19, v18);
      swift_unknownObjectRelease();
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A8F2520()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_deallocClassInstance();
}

unint64_t sub_25A8F25B4()
{
  result = qword_27FA04B78;
  if (!qword_27FA04B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Comprehension.NameCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Comprehension.NameCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8F275C()
{
  result = qword_27FA04B80;
  if (!qword_27FA04B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B80);
  }

  return result;
}

unint64_t sub_25A8F27B4()
{
  result = qword_27FA04B88;
  if (!qword_27FA04B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B88);
  }

  return result;
}

unint64_t sub_25A8F280C()
{
  result = qword_27FA04B90;
  if (!qword_27FA04B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B90);
  }

  return result;
}

uint64_t sub_25A8F2860()
{
  v0 = sub_25A9988C8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8F28AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1718379891, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, &v23), (swift_dynamicCast() & 1) != 0))
  {
    v6 = 1701736270;
    v25 = v20;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_25A9985F8();

    v23 = 0x286563696C73;
    v24 = 0xE600000000000000;
    if (v19)
    {
      v7 = 0xE400000000000000;
      v8 = 1701736270;
    }

    else
    {
      sub_25A8DF954();
      v8 = sub_25A9984E8();
      v7 = v11;
    }

    MEMORY[0x25F850290](v8, v7);

    MEMORY[0x25F850290](8236, 0xE200000000000000);
    if (v22)
    {
      v12 = 0xE400000000000000;
      v13 = 1701736270;
    }

    else
    {
      sub_25A8DF954();
      v13 = sub_25A9984E8();
      v12 = v14;
    }

    MEMORY[0x25F850290](v13, v12);

    MEMORY[0x25F850290](8236, 0xE200000000000000);
    if (v21)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      sub_25A8DF954();
      v6 = sub_25A9984E8();
      v15 = v16;
    }

    MEMORY[0x25F850290](v6, v15);

    result = MEMORY[0x25F850290](41, 0xE100000000000000);
    v17 = v23;
    v18 = v24;
    a2[3] = MEMORY[0x277D837D0];
    *a2 = v17;
    a2[1] = v18;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v9 = -126;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A8F2AFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25A936F00(a1);
  sub_25A8F28AC(v3, a2);
}

uint64_t sub_25A8F2B4C()
{
  v0 = MEMORY[0x277D84F90];
  v1 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for Function();
  v2 = swift_allocObject();
  *(v2 + 32) = v0;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = sub_25A92BDB4(v0);
  *(v2 + 16) = 0x5F5F727065725F5FLL;
  *(v2 + 24) = 0xE800000000000000;
  v3 = *(v2 + 80);
  v6[2] = *(v2 + 64);
  v6[3] = v3;
  v7 = *(v2 + 96);
  v4 = *(v2 + 48);
  v6[0] = *(v2 + 32);
  v6[1] = v4;
  *(v2 + 32) = &unk_286C0AC58;
  *(v2 + 40) = v0;
  *(v2 + 48) = v0;
  *(v2 + 56) = v0;
  *(v2 + 64) = v0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_25A892B80(v6);
  swift_beginAccess();
  *(v2 + 104) = v1;

  *(v2 + 112) = sub_25A8F2AFC;
  *(v2 + 120) = 0;
  return v2;
}

_OWORD *LexicalContext.attribute(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  *&v19 = a1;
  *(&v19 + 1) = a2;

  sub_25A998578();
  swift_beginAccess();
  v9 = *(v8 + 16);
  if (*(v9 + 16))
  {
    v10 = *(v8 + 16);

    v11 = sub_25A8F35BC(v21);
    if (v12)
    {
      sub_25A87500C(*(v9 + 56) + 32 * v11, &v19);

      sub_25A8795A0(v21);

      return sub_25A872D74(&v19, a3);
    }
  }

  else
  {
  }

  sub_25A8795A0(v21);
  v19 = 0u;
  v20 = 0u;
  result = swift_beginAccess();
  v14 = *(v4 + 40);
  if (!*(v14 + 16))
  {
LABEL_11:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    if (!*(&v20 + 1))
    {
      return result;
    }

    return sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  }

  v15 = *(v4 + 40);

  v16 = sub_25A8F3600(a1, a2);
  if ((v17 & 1) == 0)
  {

    goto LABEL_11;
  }

  v18 = *(*(v14 + 56) + 8 * v16);

  result = type metadata accessor for Function();
  *(a3 + 24) = result;
  *a3 = v18;
  if (*(&v20 + 1))
  {
    return sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A8F2E14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_25A96A448(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_25A8795A0(a2);
    *v2 = v7;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A9699B4(a2, v8);
    sub_25A8795A0(a2);
    return sub_25A878194(v8, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A8F2ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_25A96A594(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A969A58(a2, a3, v10);

    return sub_25A878194(v10, &qword_27FA04458, &unk_25A9F7FB0);
  }

  return result;
}

uint64_t sub_25A8F2FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_25A87817C(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_25A8F3A30(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);

    *v3 = v16;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04B98, &qword_25A9FA170);
    sub_25A969AFC(a2, a3, v17);

    return sub_25A878194(v17, &qword_27FA04B98, &qword_25A9FA170);
  }

  return result;
}

uint64_t sub_25A8F3128(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25A872D74(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_25A96A864(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_25A9987E8();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_25A878194(a1, &qword_27FA04BA0, &qword_25A9FA178);
    sub_25A969BA8(a2, v10);
    v8 = sub_25A9987E8();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_25A878194(v10, &qword_27FA04BA0, &qword_25A9FA178);
  }

  return result;
}

Swift::Bool __swiftcall LexicalContext.has(attribute:)(Swift::String attribute)
{
  v2 = v1;
  object = attribute._object;
  countAndFlagsBits = attribute._countAndFlagsBits;
  v5 = *(v1 + 32);
  v14[0] = attribute;

  sub_25A998578();
  swift_beginAccess();
  v6 = *(v5 + 16);
  if (*(v6 + 16))
  {
    v7 = *(v5 + 16);

    v8 = sub_25A8F35BC(v15);
    if (v9)
    {
      sub_25A87500C(*(v6 + 56) + 32 * v8, v14);

      sub_25A8795A0(v15);

      sub_25A878194(v14, &qword_27FA04458, &unk_25A9F7FB0);
      v10 = 1;
      return v10 & 1;
    }
  }

  else
  {
  }

  sub_25A8795A0(v15);
  memset(v14, 0, sizeof(v14));
  sub_25A878194(v14, &qword_27FA04458, &unk_25A9F7FB0);
  swift_beginAccess();
  if (*(*(v2 + 40) + 16))
  {
    v11 = *(v2 + 40);

    sub_25A8F3600(countAndFlagsBits, object);
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t LexicalContext.store(key:obj:)(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a1, v9);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *(v2 + 32);

    sub_25A998578();
    sub_25A87500C(a2, v8);
    sub_25A874FB0(v9, &v7);
    sub_25A8780B8(v8, v6);
    swift_beginAccess();
    sub_25A8F2E14(v6, &v7);
    swift_endAccess();

    sub_25A878194(v8, &qword_27FA04458, &unk_25A9F7FB0);
    return sub_25A8795A0(v9);
  }

  return result;
}

void *LexicalContext.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t LexicalContext.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

unint64_t sub_25A8F35BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25A998558();

  return sub_25A8F3718(a1, v5);
}

unint64_t sub_25A8F3600(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25A998B18();
  sub_25A997D58();
  v6 = sub_25A998B38();

  return sub_25A8F37E0(a1, a2, v6);
}

unint64_t sub_25A8F36B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25A9987E8();
  v5 = sub_25A997D48();

  return sub_25A8F3898(a1, v5);
}

unint64_t sub_25A8F3718(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25A874FB0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F850890](v9, a1);
      sub_25A8795A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25A8F37E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25A9989E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25A8F3898(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_25A9987E8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_25A997DF8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_25A8F3A30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a1, a6);
  v15 = *a5;
  v17 = sub_25A8F3600(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      return sub_25A87817C(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_25A9692A4();
    goto LABEL_7;
  }

  sub_25A9681F8(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_25A8F3600(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = sub_25A998AA8();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_25A8F3C64(v17, a2, a3, v33, v23, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v36);
}

uint64_t sub_25A8F3C64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_25A87817C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_25A8F3D3C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006BLL;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6B636F6C426669;
  if (v3 != 1)
  {
    v5 = 0x636F6C4265736C65;
    v4 = 0xE90000000000006BLL;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE90000000000006ELL;
  }

  v8 = 0x6B636F6C426669;
  if (*a2 == 1)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636F6C4265736C65;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE90000000000006ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8F3E3C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F3EE4()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8F3F78()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F401C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8F4CD8();
  *a2 = result;
  return result;
}

void sub_25A8F404C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6B636F6C426669;
  if (*v1 != 1)
  {
    v3 = 0x636F6C4265736C65;
    v2 = 0xE90000000000006BLL;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_25A8F40B0()
{
  v1 = 0x6B636F6C426669;
  if (*v0 != 1)
  {
    v1 = 0x636F6C4265736C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_25A8F4110@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8F4CD8();
  *a1 = result;
  return result;
}

uint64_t sub_25A8F4138(uint64_t a1)
{
  v2 = sub_25A8F4B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F4174(uint64_t a1)
{
  v2 = sub_25A8F4B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F41FC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04BA8, &unk_25A9FBDD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v1[8] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8F4B6C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = v1[8];

    type metadata accessor for Choice();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E6F4(v9, 0);
    v1[6] = v13;
    v17 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[7] = v16[0];
    v17 = 2;
    sub_25A998938();
    v14 = v1[8];
    v1[8] = v16[0];

    sub_25A872F24(a1, v16);
    v3 = sub_25A8963D8(v16);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8F4498@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[7];
  swift_unknownObjectWeakLoadStrong();
  v13 = v4[4];
  swift_beginAccess();
  *(v12 + 32) = v13;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v14 = v4[8];
  if (v14)
  {
    swift_unknownObjectWeakLoadStrong();
    v15 = v4[4];
    swift_beginAccess();
    *(v14 + 32) = v15;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  v16 = v4[5];
  v17 = v4[6];
  v18 = swift_getObjectType();
  v19 = *(v17 + 64);
  swift_unknownObjectRetain();
  v19(v39, v18, v17);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A911A04(&v40);
    sub_25A872CE0(v39);
    if (*(&v41 + 1))
    {
      sub_25A895470(&v40, v43);
      v21 = v44;
      v22 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      if ((*(v22 + 8))(v21, v22))
      {
        v23 = v4[7];

        sub_25A87A380(1, a1);
      }

      else if (v4[8])
      {
        v36 = v4[8];

        sub_25A87A380(1, &v40);

        v37 = v41;
        *a1 = v40;
        *(a1 + 16) = v37;
        *(a1 + 32) = v42;
      }

      else
      {
        *(a1 + 32) = 0;
        *a1 = 0u;
        *(a1 + 16) = 0u;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v43);
    }

    else
    {
      sub_25A8F4B04(&v40);
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v24 = sub_25A997BD8();
      __swift_project_value_buffer(v24, qword_27FA0FCE8);
      swift_retain_n();
      v25 = sub_25A997BB8();
      v26 = sub_25A9983A8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v43[0] = v28;
        *v27 = 136315394;
        v29 = v4[5];
        v30 = v4[6];
        swift_getObjectType();
        *&v40 = v29;
        v31 = *(v30 + 8);
        v32 = sub_25A998968();
        v34 = sub_25A98CC90(v32, v33, v43);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2048;
        v35 = v4[2];

        *(v27 + 14) = v35;

        _os_log_impl(&dword_25A232000, v25, v26, "Choice> Invalid %s. line %ld", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v28);
        MEMORY[0x25F852800](v28, -1, -1);
        MEMORY[0x25F852800](v27, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v38 = 52;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_25A8F48A4()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];
  swift_getObjectType();
  v4 = *(v3 + 8);
  v5 = sub_25A998968();
  MEMORY[0x25F850290](v5);

  MEMORY[0x25F850290](175841321, 0xE400000000000000);
  v6 = v1[7];

  v7 = sub_25A87A5A4();
  v9 = v8;

  v10 = sub_25A985514(v7, v9);
  v12 = v11;

  MEMORY[0x25F850290](v10, v12);

  MEMORY[0x25F850290](2129162, 0xE300000000000000);
  result = 673212009;
  if (v1[8])
  {

    v14 = sub_25A87A5A4();
    v16 = sub_25A985514(v14, v15);
    v18 = v17;

    MEMORY[0x25F850290](v16, v18);

    MEMORY[0x25F850290](32010, 0xE200000000000000);
    MEMORY[0x25F850290](0xA7B2065736C65, 0xE700000000000000);

    return 673212009;
  }

  return result;
}

uint64_t sub_25A8F4A38()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];
}

uint64_t sub_25A8F4A70()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F4B04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E8, &unk_25A9FBF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A8F4B6C()
{
  result = qword_27FA04BB0;
  if (!qword_27FA04BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BB0);
  }

  return result;
}

unint64_t sub_25A8F4BD4()
{
  result = qword_27FA04BB8;
  if (!qword_27FA04BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BB8);
  }

  return result;
}

unint64_t sub_25A8F4C2C()
{
  result = qword_27FA04BC0;
  if (!qword_27FA04BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BC0);
  }

  return result;
}

unint64_t sub_25A8F4C84()
{
  result = qword_27FA04BC8;
  if (!qword_27FA04BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BC8);
  }

  return result;
}

uint64_t sub_25A8F4CD8()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8F4D24()
{
  v0 = sub_25A998BE8();
  if (qword_27FA043B0 != -1)
  {
    swift_once();
  }

  v1 = sub_25A9987E8();
  v2 = __swift_project_value_buffer(v1, qword_27FA0FCC8);
  if (*(v0 + 16) && (v3 = sub_25A8F36B4(v2), (v4 & 1) != 0))
  {
    sub_25A87500C(*(v0 + 56) + 32 * v3, v8);

    type metadata accessor for ModuleResolver();
    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v6 = 114;
  return swift_willThrow();
}

uint64_t sub_25A8F4E30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1668183398;
  if (v2 != 1)
  {
    v4 = 0x73656C75646F6DLL;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x75646F4D6E69616DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA0000000000656CLL;
  }

  v7 = 0xE400000000000000;
  v8 = 1668183398;
  if (*a2 != 1)
  {
    v8 = 0x73656C75646F6DLL;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x75646F4D6E69616DLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA0000000000656CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8F4F24()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F4FC4()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8F5050()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F50EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8F7C20();
  *a2 = result;
  return result;
}

void sub_25A8F511C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000656CLL;
  v4 = 0xE400000000000000;
  v5 = 1668183398;
  if (v2 != 1)
  {
    v5 = 0x73656C75646F6DLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x75646F4D6E69616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8F5178()
{
  v1 = 1668183398;
  if (*v0 != 1)
  {
    v1 = 0x73656C75646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x75646F4D6E69616DLL;
  }
}

uint64_t sub_25A8F51D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8F7C20();
  *a1 = result;
  return result;
}

uint64_t sub_25A8F51F8(uint64_t a1)
{
  v2 = sub_25A8F8058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F5234(uint64_t a1)
{
  v2 = sub_25A8F8058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MorpheusProgram.emptyProgram()()
{
  v1 = sub_25A997E98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A997E78();
  v6 = sub_25A997E38();
  v8 = v7;
  result = (*(v2 + 8))(v5, v1);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_25A8F7C6C();
    type metadata accessor for MorpheusProgram();
    sub_25A8F80AC(&qword_27FA04BD0, v10, type metadata accessor for MorpheusProgram);
    sub_25A997968();
    sub_25A8F7E3C(v6, v8);

    if (!v0)
    {
      return v11[1];
    }
  }

  return result;
}

uint64_t MorpheusProgram.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  MorpheusProgram.init(from:)(a1);
  return v2;
}

uint64_t MorpheusProgram.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04BD8, &qword_25A9FA2F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_25A8F7E50();
  if (!v2)
  {
    if (qword_27FA043E8 != -1)
    {
      swift_once();
    }

    sub_25A971C6C(qword_27FA0FD30);
  }

  type metadata accessor for MorpheusProgram();
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v1;
}

uint64_t sub_25A8F65B8()
{
  v1 = *(*(v0 + 40) + 56);

  v2 = sub_25A87A5A4();

  return v2;
}

uint64_t sub_25A8F6618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  sub_25A8F6684(a1, a2, v7, v8, a3);
}

uint64_t sub_25A8F6684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v12 = *(v5 + 48);

  sub_25A98F0EC(0x5F5F6E69616D5F5FLL, 0xE800000000000000, v30);

  if (v6)
  {
    return result;
  }

  v14 = v31;
  v15 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(*(v15 + 8) + 8))(v19, a3, a4, v14);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if (swift_dynamicCast())
    {
      if (*(&v22 + 1))
      {
        sub_25A87817C(&v21, &v24);
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_25A878194(v19, &qword_27FA04458, &unk_25A9F7FB0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
  }

  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  LexicalContext.attribute(for:)(a3, a4, v19);

  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v26 = 0;
      v24 = 0u;
      v25 = 0u;
    }

    if (!*(&v22 + 1))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_25A878194(v19, &qword_27FA04458, &unk_25A9F7FB0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    if (!*(&v22 + 1))
    {
      goto LABEL_15;
    }
  }

  sub_25A878194(&v21, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_15:
  if (*(&v25 + 1))
  {
    sub_25A87817C(&v24, v27);
    v16 = v28;
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v17 + 16))(&v24, a1, a2, v16, v17);
    if (static MorpheusUtils.isNil(_:)(&v24))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v24);
      *a5 = 0u;
      a5[1] = 0u;
    }

    else
    {
      sub_25A872D74(&v24, a5);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  else
  {
    sub_25A878194(&v24, &qword_27FA04760, &unk_25A9F9BB0);
    sub_25A874F54();
    swift_allocError();
    *v18 = 8;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v30);
}

unint64_t sub_25A8F69B0()
{
  result = sub_25A892C6C();
  qword_27FA0FCB8 = result;
  return result;
}

uint64_t static MorpheusProgram.registerModule(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FA043A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27FA0FCC0;
  if (*(qword_27FA0FCC0 + 16) && (v7 = sub_25A8F3600(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v9 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15[0] = v9;
  sub_25A8F81B4(a3, sub_25A8F793C, 0, isUniquelyReferenced_nonNull_native, v15);

  v11 = v15[0];
  swift_beginAccess();

  v12 = swift_isUniquelyReferenced_nonNull_native();
  v14 = qword_27FA0FCC0;
  qword_27FA0FCC0 = 0x8000000000000000;
  sub_25A96ABDC(v11, a1, a2, v12);

  qword_27FA0FCC0 = v14;
  return swift_endAccess();
}

uint64_t static MorpheusProgram.registerFunction(name:f:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v51 = a1;
  *(&v51 + 1) = a2;
  *&v47 = 46;
  *(&v47 + 1) = 0xE100000000000000;
  sub_25A8F84C4();
  v4 = sub_25A998468();
  v5 = (v4 + 16);
  v6 = *(v4 + 16);
  v7 = 0;
  v8 =  + 40;
  v9 = MEMORY[0x277D84F90];
LABEL_2:
  v10 = (v8 + 16 * v7);
  while (1)
  {
    if (v6 == v7)
    {

      v16 = *(v9 + 16);

      if (!v16 && *v5)
      {
        v19 = &v5[2 * *v5];
        v3 = *v19;
        v8 = v19[1];
        v20 = qword_27FA043A0;

        if (v20 != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_17;
      }

      sub_25A874F54();
      swift_allocError();
      *v17 = 7;
      return swift_willThrow();
    }

    if (v7 >= *v5)
    {
      break;
    }

    ++v7;
    v11 = *(v10 - 1);
    v3 = *v10;
    v10 += 2;
    v12 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      *&v51 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25A9375A0(0, *(v9 + 16) + 1, 1);
        v9 = v51;
      }

      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25A9375A0((v13 > 1), v14 + 1, 1);
        v9 = v51;
      }

      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v3;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_17:
  v21 = qword_27FA0FCB8;
  v22 = type metadata accessor for LexicalContext();
  v53 = &protocol witness table for LexicalContext;
  v54 = &protocol witness table for LexicalContext;
  v52 = v22;
  *&v51 = v21;
  if (!*v5)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = v22;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_38:
    result = sub_25A8F7A28(v4);
    v4 = result;
    v23 = *(result + 16);
    if (!v23)
    {
      goto LABEL_39;
    }

LABEL_20:
    *&v38 = v3;
    *(&v38 + 1) = v8;
    v24 = v23 - 1;
    v25 = *(v4 + 16 * v24 + 40);
    *(v4 + 16) = v24;

    v42 = *(v4 + 16);
    if (!v42)
    {
LABEL_32:

      v35 = v52;
      v36 = v54;
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      v48 = MEMORY[0x277D837D0];
      v47 = v38;
      *(&v45 + 1) = type metadata accessor for Function();
      *&v44 = a3;
      v37 = v36[1];

      v37(&v47, &v44, v35, v36);
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      __swift_destroy_boxed_opaque_existential_0Tm(&v47);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v51);
    }

    v40 = v6;
    v41 = v4;
    v6 = 0;
    v26 = (v4 + 40);
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_35;
      }

      v28 = *(v26 - 1);
      v27 = *v26;
      v29 = v52;
      v3 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      v5 = *(v3 + 8);

      (v5)(v43, v28, v27, v29, v3);
      if (v43[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C10, &qword_25A9FA308);
        if (swift_dynamicCast())
        {
          if (*(&v45 + 1))
          {

            sub_25A8F8518(&v44, &v47);
            goto LABEL_24;
          }
        }

        else
        {
          v45 = 0u;
          v46 = 0u;
          v44 = 0u;
        }
      }

      else
      {
        sub_25A878194(v43, &qword_27FA04458, &unk_25A9F7FB0);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
      }

      sub_25A878194(&v44, &qword_27FA04C08, &qword_25A9FA300);
      v8 = v40;
      v30 = swift_allocObject();
      v30[2] = 0x6E776F6E6B6E55;
      v30[3] = 0xE700000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
      v31 = swift_allocObject();
      v32 = MEMORY[0x277D84F98];
      *(v31 + 16) = MEMORY[0x277D84F98];
      swift_beginAccess();
      *(v31 + 16) = v32;
      v30[4] = v31;
      v30[5] = v32;
      v30[2] = v28;
      v30[3] = v27;

      v3 = v52;
      v5 = v54;
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      v48 = MEMORY[0x277D837D0];
      *&v47 = v28;
      *(&v47 + 1) = v27;
      *(&v45 + 1) = v40;
      *&v44 = v30;
      v33 = v5[1];

      v34 = v55;
      v33(&v47, &v44, v3, v5);
      if (v34)
      {

        __swift_destroy_boxed_opaque_existential_0Tm(&v44);
        __swift_destroy_boxed_opaque_existential_0Tm(&v47);
        return __swift_destroy_boxed_opaque_existential_0Tm(&v51);
      }

      v55 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v44);
      __swift_destroy_boxed_opaque_existential_0Tm(&v47);
      v49 = &protocol witness table for LexicalContext;
      v50 = &protocol witness table for LexicalContext;
      v48 = v40;
      *&v47 = v30;
LABEL_24:
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
      sub_25A8F8518(&v47, &v51);
      v4 = v41;
      ++v6;
      v26 += 2;
      if (v42 == v6)
      {
        goto LABEL_32;
      }
    }
  }

  v23 = *(v4 + 16);
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t static MorpheusProgram.fromDSL(_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_25A997E98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v16[2] = 10;
  v16[3] = 0xE100000000000000;
  v16[0] = 28252;
  v16[1] = 0xE200000000000000;
  sub_25A8F84C4();
  sub_25A998488();
  sub_25A997E78();
  v10 = sub_25A997E38();
  v12 = v11;

  (*(v6 + 8))(v9, v5);
  if (v12 >> 60 == 15)
  {
    sub_25A874F54();
    swift_allocError();
    *v13 = 34;
    return swift_willThrow();
  }

  else
  {
    sub_25A8F7C6C();
    type metadata accessor for MorpheusProgram();
    sub_25A8F80AC(&qword_27FA04BD0, v15, type metadata accessor for MorpheusProgram);
    sub_25A997968();
    sub_25A8F7E3C(v10, v12);

    if (!v2)
    {
      return v17;
    }
  }

  return result;
}

void *MorpheusProgram.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t MorpheusProgram.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F7400@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for MorpheusProgram();
  v5 = swift_allocObject();
  result = MorpheusProgram.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_25A8F7458()
{
  v1 = *(*(*v0 + 40) + 56);

  v2 = sub_25A87A5A4();

  return v2;
}

_OWORD *sub_25A8F74BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  LexicalContext.attribute(for:)(a1, a2, &v7);

  if (v8)
  {
    return sub_25A872D74(&v7, a3);
  }

  sub_25A878194(&v7, &qword_27FA04458, &unk_25A9F7FB0);

  LexicalContext.attribute(for:)(a1, a2, a3);
}

uint64_t sub_25A8F75A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8F75E0()
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25A8F763C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t sub_25A8F7680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_25A8F7740(uint64_t a1, void *a2)
{
  if (qword_27FA043A0 != -1)
  {
    swift_once();
  }

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  v5 = LexicalContext.has(attribute:)(v4);

  if (v5)
  {
    return 1;
  }

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = LexicalContext.has(attribute:)(v7);

  return v8;
}

uint64_t sub_25A8F7804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C30, &qword_25A9FA520);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_25A9987E8();
  __swift_allocate_value_buffer(v4, qword_27FA0FCC8);
  v5 = __swift_project_value_buffer(v4, qword_27FA0FCC8);
  sub_25A9987D8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8F793C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25A87500C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_25A8F799C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25A998848();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_25A9986A8();
}

uint64_t sub_25A8F7A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FA043A0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v5 = qword_27FA0FCB8;
  v13[3] = MEMORY[0x277D837D0];
  v13[0] = a1;
  v13[1] = a2;
  sub_25A87500C(v13, v12);

  if (swift_dynamicCast())
  {
    v6 = *(v5 + 32);

    sub_25A998578();
    sub_25A87500C(a3, v11);
    sub_25A874FB0(v12, &v10);
    sub_25A8780B8(v11, v9);
    swift_beginAccess();
    sub_25A8F2E14(v9, &v10);
    swift_endAccess();

    sub_25A878194(v11, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v12);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_25A8F7C20()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8F7C6C()
{
  v0 = sub_25A9987E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_25A997998();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_25A997988();
  if (qword_27FA043B0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_27FA0FCC8);
  (*(v1 + 16))(v4, v9, v0);
  v10 = type metadata accessor for ModuleResolver();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v11[2] = sub_25A98EDDC(MEMORY[0x277D84F90]);
  v13 = sub_25A98EDDC(v12);
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = v13;
  v17[3] = v10;
  v17[0] = v11;
  v14 = sub_25A997978();
  sub_25A8F3128(v17, v4);
  v14(v16, 0);
  return v8;
}

uint64_t sub_25A8F7E3C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25A8F1C54(a1, a2);
  }

  return a1;
}

uint64_t sub_25A8F7E50()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = sub_25A997E18();
    v2 = SecTaskCopyValueForEntitlement(v0, v1, 0);

    if (v2)
    {
      swift_unknownObjectRetain();
      if ((swift_dynamicCast() & 1) == 0 || (v10 & 1) == 0)
      {
        sub_25A874F54();
        swift_allocError();
        *v3 = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v5 = sub_25A997BD8();
  __swift_project_value_buffer(v5, qword_27FA0FCE8);
  v6 = sub_25A997BB8();
  v7 = sub_25A9983A8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25A232000, v6, v7, "Morpheus require proper entitlement, please contact PFL team (#help-pfl)", v8, 2u);
    MEMORY[0x25F852800](v8, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v9 = 0;
  return swift_willThrow();
}

unint64_t sub_25A8F8058()
{
  result = qword_27FA04BE0;
  if (!qword_27FA04BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BE0);
  }

  return result;
}

uint64_t sub_25A8F80AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_25A8F80F4()
{
  result = qword_27FA04BF8;
  if (!qword_27FA04BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04BF0, &qword_25A9FA2F8);
    sub_25A8F80AC(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04BF8);
  }

  return result;
}

unint64_t sub_25A8F81B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_25A906F18(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_25A872D74(v46, v44);
  v14 = *a5;
  result = sub_25A8F3600(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_25A967C88(v20, a4 & 1);
    v22 = *a5;
    result = sub_25A8F3600(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25A998AA8();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_25A968F5C();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    sub_25A872D74(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_25A872D74(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_25A906F18(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_25A872D74(v46, v44);
        v33 = *a5;
        result = sub_25A8F3600(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_25A967C88(v37, 1);
          v38 = *a5;
          result = sub_25A8F3600(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          sub_25A872D74(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_25A872D74(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_25A906F18(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_25A874FA8();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25A8F84C4()
{
  result = qword_27FA04C00;
  if (!qword_27FA04C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C00);
  }

  return result;
}

_OWORD *sub_25A8F8518(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_25A8F8618()
{
  result = qword_27FA04C18;
  if (!qword_27FA04C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C18);
  }

  return result;
}

unint64_t sub_25A8F8670()
{
  result = qword_27FA04C20;
  if (!qword_27FA04C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C20);
  }

  return result;
}

unint64_t sub_25A8F86C8()
{
  result = qword_27FA04C28;
  if (!qword_27FA04C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C28);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_25A8F8780(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
}

double sub_25A8F8808@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v2 = sub_25A997BD8();
  __swift_project_value_buffer(v2, qword_27FA0FCE8);
  v3 = sub_25A997BB8();
  v4 = sub_25A998398();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25A232000, v3, v4, "breakpoint() is ignored because no debugger is attached or running in release mode.", v5, 2u);
    MEMORY[0x25F852800](v5, -1, -1);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_25A8F8944(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x677261726176;
    v6 = 0x677261776BLL;
    if (a1 != 8)
    {
      v6 = 0x6F7461726F636564;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x73746C7561666564;
    if (a1 != 5)
    {
      v7 = 2036625250;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F6974636E7566;
    v2 = 0x61796C6E6F736F70;
    v3 = 0x7261796C6E6F776BLL;
    if (a1 != 3)
    {
      v3 = 0x6C7561666544776BLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1936159329;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8F8A88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25A8F8944(*a1);
  v5 = v4;
  if (v3 == sub_25A8F8944(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8F8B10()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A8F8944(v1);
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F8B74()
{
  sub_25A8F8944(*v0);
  sub_25A997D58();
}

uint64_t sub_25A8F8BC8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A8F8944(v1);
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8F8C28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8FA8A0();
  *a2 = result;
  return result;
}

uint64_t sub_25A8F8C58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25A8F8944(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25A8F8CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8FA8A0();
  *a1 = result;
  return result;
}

uint64_t sub_25A8F8CD4(uint64_t a1)
{
  v2 = sub_25A8FA5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8F8D10(uint64_t a1)
{
  v2 = sub_25A8FA5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8F8D98(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C38, "t<\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-1] - v8;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FA5A0();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *(v1 + 88);

    v12 = *(v1 + 104);

    type metadata accessor for FunctionDef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    v23 = 1;
    sub_25A8E11F4();
    sub_25A998938();
    *(v1 + 56) = v22[0];
    v23 = 2;
    v21 = 0;
    sub_25A998938();
    *(v1 + 64) = v22[0];
    v23 = 3;
    sub_25A998938();
    *(v1 + 72) = v22[0];
    LOBYTE(v22[0]) = 7;
    v15 = sub_25A9988F8();
    v16 = *(v1 + 88);
    *(v1 + 80) = v15;
    *(v1 + 88) = v17;

    LOBYTE(v22[0]) = 8;
    v18 = sub_25A9988F8();
    v19 = *(v1 + 104);
    *(v1 + 96) = v18;
    *(v1 + 104) = v20;

    *(v1 + 112) = sub_25A94AFFC(v9, 4);
    *(v1 + 120) = sub_25A94AFFC(v9, 5);
    v23 = 6;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    MEMORY[0x88] = v22[0];
    MEMORY[0x80] = sub_25A94AFFC(v9, 9);
    sub_25A872F24(a1, v22);
    v3 = sub_25A8963D8(v22);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8F9350@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 128);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v58[0] = MEMORY[0x277D84F90];

    sub_25A937550(0, v6, 0);
    v7 = v58[0];
    result = swift_beginAccess();
    v9 = 0;
    v10 = (v5 + 40);
    v49 = v6;
    v51 = v5;
    while (v9 < *(v5 + 16))
    {
      v53 = v9;
      v11 = v7;
      v12 = *(v10 - 1);
      v13 = *v10;
      v68 = v10;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v16 = v4;
      v17 = *(v4 + 32);
      v18 = v3;
      v19 = *(v13 + 48);
      swift_unknownObjectRetain();
      v19(Strong, v17, ObjectType, v13);
      (*(v13 + 64))(v65, ObjectType, v13);
      v3 = v18;
      if (v18)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v65, &v62);
      v7 = v11;
      if (v64)
      {
        sub_25A872CE0(&v62);
        sub_25A872C84(v65, &v62);
        v4 = v16;
        v20 = v53;
        if (v64 == 1)
        {
          v55 = v62;
          v56 = v63;
          sub_25A92DE50(&v55, &v59);
          swift_unknownObjectRelease();
          sub_25A878194(&v55, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v62);
          *(&v60 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v21 = swift_allocObject();
          *&v59 = v21;
          *(v21 + 16) = 0u;
          *(v21 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v65);
      }

      else
      {
        v55 = v62;
        v56 = v63;
        sub_25A92DE50(&v55, &v59);
        swift_unknownObjectRelease();
        sub_25A878194(&v55, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v65);
        v4 = v16;
        v20 = v53;
      }

      v58[0] = v7;
      v23 = *(v7 + 16);
      v22 = *(v7 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_25A937550((v22 > 1), v23 + 1, 1);
        v7 = v58[0];
      }

      v9 = v20 + 1;
      *(v7 + 16) = v23 + 1;
      result = sub_25A872D74(&v59, (v7 + 32 * v23 + 32));
      v10 = v68 + 2;
      v5 = v51;
      if (v49 == v9)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_16:
  v24 = *(v4 + 136);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v25 = *(v4 + 32);
  swift_beginAccess();
  *(v24 + 32) = v25;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v26 = sub_25A8FA160();
  if (v3)
  {
  }

  v27 = v26;
  result = type metadata accessor for PyFunction();
  v66 = result;
  v67 = &protocol witness table for Function;
  v65[0] = v27;
  v50 = *(v7 + 16);
  if (v50)
  {
    v28 = 0;
    v29 = v7 + 32;
    v48 = v7;
    while (v28 < *(v7 + 16))
    {
      sub_25A87500C(v29, &v55);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if (!swift_dynamicCast())
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;

        sub_25A878194(&v59, &qword_27FA04760, &unk_25A9F9BB0);
        sub_25A874F54();
        swift_allocError();
        *v45 = -118;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0Tm(v65);
      }

      v52 = v29;
      sub_25A895470(&v59, &v62);
      v30 = *(&v63 + 1);
      v54 = v64;
      v68 = __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_25A9F8D90;
      v32 = v66;
      v33 = __swift_project_boxed_opaque_existential_1(v65, v66);
      *(v31 + 56) = v32;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v31 + 32));
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_0, v33, v32);
      (*(v54 + 16))(v58, v31, MEMORY[0x277D84F98], v30);

      v7 = v48;
      if (!swift_dynamicCast())
      {
        v57 = 0;
        v55 = 0u;
        v56 = 0u;

        sub_25A878194(&v55, &qword_27FA04760, &unk_25A9F9BB0);
        sub_25A874F54();
        swift_allocError();
        *v46 = -117;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0Tm(&v62);
        return __swift_destroy_boxed_opaque_existential_0Tm(v65);
      }

      ++v28;
      sub_25A895470(&v55, &v59);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      sub_25A895470(&v59, v65);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v62);
      v29 = v52 + 32;
      if (v50 == v28)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    __break(1u);
    return result;
  }

LABEL_24:

  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v4 + 32);
    v36 = swift_getObjectType();
    v37 = v4;
    v38 = v36;
    v40 = *(v37 + 40);
    v39 = *(v37 + 48);
    v41 = v66;
    v42 = __swift_project_boxed_opaque_existential_1(v65, v66);
    *(&v63 + 1) = v41;
    v43 = __swift_allocate_boxed_opaque_existential_0(&v62);
    (*(*(v41 - 8) + 16))(v43, v42, v41);
    v44 = *(v35 + 64);

    v44(v40, v39, &v62, v38, v35);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0Tm(&v62);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return __swift_destroy_boxed_opaque_existential_0Tm(v65);
}

uint64_t sub_25A8F9A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = v1[14];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v55 = MEMORY[0x277D84F90];

    sub_25A937550(0, v4, 0);
    v5 = v55;
    result = swift_beginAccess();
    v7 = 0;
    v8 = (v3 + 40);
    v48 = v4;
    v50 = v3;
    while (v7 < *(v3 + 16))
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = v2[4];
      v14 = *(v10 + 48);
      swift_unknownObjectRetain();
      v14(Strong, v13, ObjectType, v10);
      (*(v10 + 64))(v61, ObjectType, v10);
      if (v53)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v61, &v56);
      if (v58)
      {
        sub_25A872CE0(&v56);
        sub_25A872C84(v61, &v56);
        v2 = v52;
        if (v58 == 1)
        {
          v59 = v56;
          v60 = v57;
          sub_25A92DE50(&v59, &v62);
          swift_unknownObjectRelease();
          sub_25A878194(&v59, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v56);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v15 = swift_allocObject();
          *&v62 = v15;
          *(v15 + 16) = 0u;
          *(v15 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v61);
      }

      else
      {
        v59 = v56;
        v60 = v57;
        sub_25A92DE50(&v59, &v62);
        swift_unknownObjectRelease();
        sub_25A878194(&v59, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v61);
        v2 = v52;
      }

      v17 = *(v55 + 16);
      v16 = *(v55 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_25A937550((v16 > 1), v17 + 1, 1);
      }

      ++v7;
      *(v55 + 16) = v17 + 1;
      result = sub_25A872D74(&v62, (v55 + 32 * v17 + 32));
      v8 += 2;
      v3 = v50;
      if (v48 == v7)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    v46 = v5;
    v18 = v2[15];
    v19 = *(v18 + 16);
    v20 = MEMORY[0x277D84F90];
    if (!v19)
    {
LABEL_31:
      v38 = v2[7];
      v39 = v2[8];
      v40 = v2[9];

      v41 = sub_25A93026C(v46);

      v42 = v2;
      v43 = sub_25A93026C(v20);

      v44 = v42[10];
      v45 = v42[13];
      *a1 = v38;
      *(a1 + 8) = v39;
      *(a1 + 16) = v40;
      *(a1 + 24) = v41;
      *(a1 + 32) = v43;
      *(a1 + 40) = v44;
      *(a1 + 48) = *(v42 + 11);
      *(a1 + 64) = v45;
    }

    v64 = MEMORY[0x277D84F90];

    sub_25A937550(0, v19, 0);
    v20 = v64;
    result = swift_beginAccess();
    v21 = 0;
    v22 = (v18 + 40);
    v23 = v53;
    v49 = v18;
    while (v21 < *(v18 + 16))
    {
      v51 = v21;
      v24 = v19;
      v25 = v20;
      v26 = *(v22 - 1);
      v27 = *v22;
      v54 = v22;
      v28 = swift_getObjectType();
      v29 = swift_unknownObjectWeakLoadStrong();
      v30 = v23;
      v31 = v2[4];
      v32 = *(v27 + 48);
      swift_unknownObjectRetain();
      v32(v29, v31, v28, v27);
      (*(v27 + 64))(v61, v28, v27);
      v23 = v30;
      if (v30)
      {

        swift_unknownObjectRelease();
      }

      sub_25A872C84(v61, &v56);
      v20 = v25;
      if (v58)
      {
        sub_25A872CE0(&v56);
        sub_25A872C84(v61, &v56);
        v2 = v52;
        v33 = v54;
        v19 = v24;
        if (v58 == 1)
        {
          v59 = v56;
          v60 = v57;
          sub_25A92DE50(&v59, &v62);
          swift_unknownObjectRelease();
          sub_25A878194(&v59, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v56);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v35 = swift_allocObject();
          *&v62 = v35;
          *(v35 + 16) = 0u;
          *(v35 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v61);
        v34 = v51;
      }

      else
      {
        v59 = v56;
        v60 = v57;
        sub_25A92DE50(&v59, &v62);
        swift_unknownObjectRelease();
        sub_25A878194(&v59, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v61);
        v19 = v24;
        v34 = v51;
        v2 = v52;
        v33 = v54;
      }

      v64 = v20;
      v37 = *(v20 + 16);
      v36 = *(v20 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_25A937550((v36 > 1), v37 + 1, 1);
        v20 = v64;
      }

      v21 = v34 + 1;
      *(v20 + 16) = v37 + 1;
      result = sub_25A872D74(&v62, (v20 + 32 * v37 + 32));
      v22 = v33 + 2;
      v18 = v49;
      if (v19 == v21)
      {

        goto LABEL_31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A8FA044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 136);
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v2 + 32);
  swift_beginAccess();
  *(v6 + 32) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8 = *(v2 + 136);

  sub_25A87A7AC(a1);
  if (v3)
  {
  }

  sub_25A87A380(1, v10);

  sub_25A896580(v11);
  sub_25A872CE0(v10);
  sub_25A92D814(v11, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v11);
}

uint64_t sub_25A8FA160()
{
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  sub_25A8F9A48(v15);
  if (v1)
  {
  }

  v5 = MEMORY[0x277D84F90];
  v6 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  type metadata accessor for PyFunction();
  v7 = swift_allocObject();
  *(v7 + 32) = v5;
  *(v7 + 40) = v5;
  *(v7 + 48) = v5;
  *(v7 + 56) = v5;
  *(v7 + 64) = v5;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_25A92BDB4(v5);
  *(v7 + 16) = v3;
  *(v7 + 24) = v2;
  v8 = *(v7 + 80);
  v13[2] = *(v7 + 64);
  v13[3] = v8;
  v14 = *(v7 + 96);
  v9 = *(v7 + 48);
  v13[0] = *(v7 + 32);
  v13[1] = v9;
  v10 = v15[1];
  *(v7 + 32) = v15[0];
  *(v7 + 48) = v10;
  v11 = v15[3];
  *(v7 + 64) = v15[2];
  *(v7 + 80) = v11;
  *(v7 + 96) = v16;
  sub_25A892B80(v13);
  swift_beginAccess();
  *(v7 + 104) = v6;

  v12 = swift_allocObject();
  result = v7;
  *(v12 + 16) = sub_25A8FA5F4;
  *(v12 + 24) = v0;
  *(v7 + 112) = sub_25A8F1830;
  *(v7 + 120) = v12;
  return result;
}

_OWORD *sub_25A8FA2D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_25A8FA044(a1, v5);
  if (!v2)
  {
    return sub_25A872D74(v5, a2);
  }

  return result;
}

uint64_t sub_25A8FA31C()
{
  v1 = v0[5];
  v2 = v0[6];

  MEMORY[0x25F850290](v1, v2);

  MEMORY[0x25F850290](3811624, 0xE300000000000000);
  v3 = v0[17];

  v4 = sub_25A87A5A4();
  v6 = v5;

  v7 = sub_25A985514(v4, v6);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  MEMORY[0x25F850290](10, 0xE100000000000000);
  MEMORY[0x25F850290](10, 0xE100000000000000);

  return 543581540;
}

uint64_t sub_25A8FA428()
{
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[17];
}

void *sub_25A8FA498()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[6];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[17];

  return v0;
}

uint64_t sub_25A8FA508()
{
  sub_25A8FA498();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FA560()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A8FA5A0()
{
  result = qword_27FA04C40;
  if (!qword_27FA04C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C40);
  }

  return result;
}

uint64_t sub_25A8FA610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for FunctionDef.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FunctionDef.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25A8FA79C()
{
  result = qword_27FA04C48;
  if (!qword_27FA04C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C48);
  }

  return result;
}

unint64_t sub_25A8FA7F4()
{
  result = qword_27FA04C50;
  if (!qword_27FA04C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C50);
  }

  return result;
}

unint64_t sub_25A8FA84C()
{
  result = qword_27FA04C58;
  if (!qword_27FA04C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C58);
  }

  return result;
}

uint64_t sub_25A8FA8A0()
{
  v0 = sub_25A9988C8();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8FA8EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7894115;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7894115;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25A9989E8();
  }

  return v9 & 1;
}

uint64_t sub_25A8FA980()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FA9F0()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8FAA4C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FAAB8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

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

void sub_25A8FAB18(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 7894115;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8FAB44()
{
  if (*v0)
  {
    result = 7894115;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_25A8FAB6C@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

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

uint64_t sub_25A8FABD0(uint64_t a1)
{
  v2 = sub_25A8FB3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FAC0C(uint64_t a1)
{
  v2 = sub_25A8FB3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FAC94(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C60, "<;\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FB3FC();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Name();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v12;
    v15 = 1;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 56) = v14[0];
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A8FAECC(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      v6 = *(v1 + 40);
      v7 = *(v1 + 48);
      v8 = *(v4 + 40);

      v9 = v8(v6, v7, ObjectType, v4);

      *(a1 + 24) = &type metadata for Store;
      v10 = swift_allocObject();
      *a1 = v10;
      v10[5] = type metadata accessor for LexicalContext();
      v10[6] = &protocol witness table for LexicalContext;
      v10[2] = v9;
      v12 = *(v1 + 40);
      v11 = *(v1 + 48);
      v10[10] = MEMORY[0x277D837D0];

      swift_unknownObjectRelease();
      v10[7] = v12;
      v10[8] = v11;
LABEL_8:
      *(a1 + 32) = 0;
      return;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v18 = sub_25A997BD8();
    __swift_project_value_buffer(v18, qword_27FA0FCE8);

    v19 = sub_25A997BB8();
    v20 = sub_25A9983A8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v2[2];

      _os_log_impl(&dword_25A232000, v19, v20, "Name> ParentBlock not found. line %ld", v21, 0xCu);
      MEMORY[0x25F852800](v21, -1, -1);
    }

    else
    {
    }

    v30 = 21;
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v1 + 32);
      v14 = swift_getObjectType();
      v15 = *(v1 + 40);
      v16 = *(v1 + 48);
      v17 = *(v13 + 48);

      v17(&v32, v15, v16, v14, v13);
      swift_unknownObjectRelease();

      if (*(&v33 + 1))
      {
        sub_25A872D74(&v32, v34);
        sub_25A872D74(v34, a1);
        goto LABEL_8;
      }
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
    }

    sub_25A872D84(&v32);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v22 = sub_25A997BD8();
    __swift_project_value_buffer(v22, qword_27FA0FCE8);

    v23 = sub_25A997BB8();
    v24 = sub_25A9983A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v34[0] = v26;
      *v25 = 136315394;
      v27 = v2[5];
      v28 = v2[6];

      v29 = sub_25A98CC90(v27, v28, v34);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2048;
      *(v25 + 14) = v2[2];

      _os_log_impl(&dword_25A232000, v23, v24, "Name> Id %s not found. line %ld", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x25F852800](v26, -1, -1);
      MEMORY[0x25F852800](v25, -1, -1);
    }

    else
    {
    }

    v30 = 20;
  }

  sub_25A874F54();
  swift_allocError();
  *v31 = v30;
  swift_willThrow();
}

uint64_t sub_25A8FB320()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_25A8FB358()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FB3BC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A8FB3FC()
{
  result = qword_27FA04C68;
  if (!qword_27FA04C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C68);
  }

  return result;
}

unint64_t sub_25A8FB464()
{
  result = qword_27FA04C70;
  if (!qword_27FA04C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C70);
  }

  return result;
}

unint64_t sub_25A8FB4BC()
{
  result = qword_27FA04C78;
  if (!qword_27FA04C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C78);
  }

  return result;
}

unint64_t sub_25A8FB514()
{
  result = qword_27FA04C80;
  if (!qword_27FA04C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C80);
  }

  return result;
}

uint64_t sub_25A8FB568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x65756C6176;
  if (v2 != 1)
  {
    v4 = 7894115;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1920234593;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65756C6176;
  if (*a2 != 1)
  {
    v8 = 7894115;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1920234593;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FB64C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FB6DC()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8FB758()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FB7E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8FC6D8();
  *a2 = result;
  return result;
}

void sub_25A8FB814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65756C6176;
  if (v2 != 1)
  {
    v5 = 7894115;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1920234593;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FB860()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 7894115;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1920234593;
  }
}

uint64_t sub_25A8FB8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8FC6D8();
  *a1 = result;
  return result;
}

uint64_t sub_25A8FB8D0(uint64_t a1)
{
  v2 = sub_25A8FC56C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FB90C(uint64_t a1)
{
  v2 = sub_25A8FC56C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FB994(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04C90, &unk_25A9FA8B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FC56C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Attribute();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15[0]) = 0;
    *(v1 + 40) = sub_25A9988F8();
    *(v1 + 48) = v12;
    *(v1 + 56) = sub_25A910D68(v9, 1);
    *(v1 + 64) = v13;
    v16 = 2;
    sub_25A872ED0();
    sub_25A998938();
    *(v1 + 72) = v15[0];
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FBC10@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 56);
  v7 = *(v4 + 64);
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = *(v4 + 32);
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  result = swift_unknownObjectRelease();
  if (*(v4 + 72))
  {
    if (*(v4 + 72) != 1)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v13 = *(v4 + 56);
    v14 = *(v4 + 64);
    v15 = swift_getObjectType();
    v16 = *(v14 + 64);
    swift_unknownObjectRetain();
    v16(v77, v15, v14);
    result = swift_unknownObjectRelease();
    if (v3)
    {
      return result;
    }

    sub_25A911910(&v78);
    sub_25A872CE0(v77);
    if (v79)
    {
      sub_25A87817C(&v78, v80);
      *(a1 + 24) = &type metadata for Store;
      v17 = swift_allocObject();
      *a1 = v17;
      sub_25A872F24(v80, (v17 + 2));
      v19 = *(v4 + 40);
      v18 = *(v4 + 48);
      v17[10] = MEMORY[0x277D837D0];
      v17[7] = v19;
      v17[8] = v18;

      result = __swift_destroy_boxed_opaque_existential_0Tm(v80);
      *(a1 + 32) = 0;
      return result;
    }

    sub_25A878194(&v78, &qword_27FA04C88, &unk_25A9FA8A0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v35 = sub_25A997BD8();
    __swift_project_value_buffer(v35, qword_27FA0FCE8);
    swift_retain_n();
    v36 = sub_25A997BB8();
    v37 = sub_25A9983A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v80[0] = v39;
      *v38 = 136315394;
      v40 = *(v4 + 56);
      v41 = *(v4 + 64);
      swift_getObjectType();
      *&v78 = v40;
      v42 = *(v41 + 8);
      v43 = sub_25A998968();
      v45 = sub_25A98CC90(v43, v44, v80);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2048;
      v46 = *(v4 + 16);

      *(v38 + 14) = v46;

      _os_log_impl(&dword_25A232000, v36, v37, "Attribute> %s is not Storable. line %ld", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x25F852800](v39, -1, -1);
      MEMORY[0x25F852800](v38, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    v75 = 13;
    goto LABEL_27;
  }

  v20 = *(v4 + 56);
  v21 = *(v4 + 64);
  v22 = swift_getObjectType();
  v23 = *(v21 + 64);
  swift_unknownObjectRetain();
  v23(v77, v22, v21);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  sub_25A9119DC(&v78);
  sub_25A872CE0(v77);
  if (!v79)
  {
    sub_25A878194(&v78, &qword_27FA045E0, &qword_25A9F8790);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v47 = sub_25A997BD8();
    __swift_project_value_buffer(v47, qword_27FA0FCE8);
    swift_retain_n();
    v48 = sub_25A997BB8();
    v49 = sub_25A9983A8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v80[0] = v51;
      *v50 = 136315394;
      v52 = *(v4 + 56);
      v53 = *(v4 + 64);
      swift_getObjectType();
      *&v78 = v52;
      v54 = *(v53 + 8);
      v55 = sub_25A998968();
      v57 = sub_25A98CC90(v55, v56, v80);

      *(v50 + 4) = v57;
      *(v50 + 12) = 2048;
      v58 = *(v4 + 16);

      *(v50 + 14) = v58;

      _os_log_impl(&dword_25A232000, v48, v49, "Attribute> %s is not Attributable. line %ld", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x25F852800](v51, -1, -1);
      MEMORY[0x25F852800](v50, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    v75 = 10;
LABEL_27:
    *v74 = v75;
    return swift_willThrow();
  }

  sub_25A87817C(&v78, v80);
  v24 = v81;
  v25 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v26 = *(v4 + 40);
  v27 = *(v4 + 48);
  v28 = *(v25 + 16);

  v29 = v28(v26, v27, v24, v25);

  if (v29)
  {
    v30 = v81;
    v31 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v33 = *(v4 + 40);
    v32 = *(v4 + 48);
    v34 = *(v31 + 8);

    v34(v33, v32, v30, v31);

    *(a1 + 32) = 0;
  }

  else
  {
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v59 = sub_25A997BD8();
    __swift_project_value_buffer(v59, qword_27FA0FCE8);
    swift_retain_n();
    v60 = sub_25A997BB8();
    v61 = sub_25A9983A8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v78 = v63;
      *v62 = 136315650;
      v64 = *(v4 + 56);
      v65 = *(v4 + 64);
      swift_getObjectType();
      v77[0] = v64;
      v66 = *(v65 + 8);
      v67 = sub_25A998968();
      v69 = sub_25A98CC90(v67, v68, &v78);

      *(v62 + 4) = v69;
      *(v62 + 12) = 2080;
      v71 = *(v4 + 40);
      v70 = *(v4 + 48);

      v72 = sub_25A98CC90(v71, v70, &v78);

      *(v62 + 14) = v72;
      *(v62 + 22) = 2048;
      v73 = *(v4 + 16);

      *(v62 + 24) = v73;

      _os_log_impl(&dword_25A232000, v60, v61, "Attribute> %s does not have attribute %s. line %ld", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v63, -1, -1);
      MEMORY[0x25F852800](v62, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v76 = 11;
    swift_willThrow();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v80);
}

uint64_t sub_25A8FC408()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v1[8];
  swift_getObjectType();
  v4 = *(v3 + 8);
  sub_25A9989B8();
  MEMORY[0x25F850290](46, 0xE100000000000000);
  v6 = v1[5];
  v5 = v1[6];

  MEMORY[0x25F850290](v6, v5);

  return 0;
}

uint64_t sub_25A8FC4A0()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8FC52C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_25A8FC56C()
{
  result = qword_27FA04C98;
  if (!qword_27FA04C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04C98);
  }

  return result;
}

unint64_t sub_25A8FC5D4()
{
  result = qword_27FA04CA0;
  if (!qword_27FA04CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CA0);
  }

  return result;
}

unint64_t sub_25A8FC62C()
{
  result = qword_27FA04CA8;
  if (!qword_27FA04CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CA8);
  }

  return result;
}

unint64_t sub_25A8FC684()
{
  result = qword_27FA04CB0;
  if (!qword_27FA04CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CB0);
  }

  return result;
}

uint64_t sub_25A8FC6D8()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8FC724(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746567726174;
  if (v2 != 1)
  {
    v4 = 2036625250;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65636E6575716573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567726174;
  if (*a2 != 1)
  {
    v8 = 2036625250;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65636E6575716573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FC810()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FC8A8()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8FC92C()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FC9C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8FDE78();
  *a2 = result;
  return result;
}

void sub_25A8FC9F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746567726174;
  if (v2 != 1)
  {
    v5 = 2036625250;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E6575716573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FCA44()
{
  v1 = 0x746567726174;
  if (*v0 != 1)
  {
    v1 = 2036625250;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6575716573;
  }
}

uint64_t sub_25A8FCA94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8FDE78();
  *a1 = result;
  return result;
}

uint64_t sub_25A8FCABC(uint64_t a1)
{
  v2 = sub_25A8FDD0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FCAF8(uint64_t a1)
{
  v2 = sub_25A8FDD0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FCB80(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CD0, &unk_25A9FBDC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FDD0C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Each();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E62C(v9, 0);
    v1[6] = v12;
    v1[7] = sub_25A90E62C(v9, 1);
    v1[8] = v13;
    v16 = 2;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[9] = v15[0];
    sub_25A872F24(a1, v15);
    v3 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FCDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[7];
  v13 = v4[8];
  v14 = swift_getObjectType();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v4[4];
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);
  swift_unknownObjectRelease();
  v18 = v4[9];
  swift_unknownObjectWeakLoadStrong();
  v19 = v4[4];
  swift_beginAccess();
  *(v18 + 32) = v19;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v20 = v4[5];
  v21 = v4[6];
  v22 = swift_getObjectType();
  v23 = *(v21 + 64);
  swift_unknownObjectRetain();
  v23(&v76, v22, v21);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A9119F0(&v81);
  sub_25A872CE0(&v76);
  if (!*(&v82 + 1))
  {
    sub_25A878194(&v81, &qword_27FA04CB8, &unk_25A9FDC50);
    v32 = v4[5];
    v33 = v4[6];
    v34 = swift_getObjectType();
    v35 = *(v33 + 64);
    swift_unknownObjectRetain();
    v35(&v81, v34, v33);
    swift_unknownObjectRelease();
    sub_25A896580(&v76);
    sub_25A872CE0(&v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v83 = 0;
      v81 = 0u;
      v82 = 0u;
      sub_25A878194(&v81, &qword_27FA04750, "jN\a");
      v27 = 0;
      goto LABEL_6;
    }

    sub_25A87817C(&v81, &v84);
    v36 = *(&v85 + 1);
    v37 = v86;
    __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
    (v37[1])(v73, v36, v37);
    v38 = v74;
    v39 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    (*(*(v39 + 8) + 8))(v79, 0x5F5F726574695F5FLL, 0xE800000000000000, v38);
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
      if ((swift_dynamicCast() & 1) == 0)
      {
        v78 = 0;
        v76 = 0u;
        v77 = 0u;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      if (*(&v77 + 1))
      {
        sub_25A87817C(&v76, &v81);
        v40 = *(&v82 + 1);
        v41 = v83;
        __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_25A9F8D90;
        v43 = *(&v85 + 1);
        v44 = __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
        *(v42 + 56) = v43;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v42 + 32));
        (*(*(v43 - 8) + 16))(boxed_opaque_existential_0, v44, v43);
        v46 = sub_25A92BDB4(MEMORY[0x277D84F90]);
        (*(v41 + 16))(&v76, v42, v46, v40, v41);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC0, &qword_25A9FAA38);
        if (swift_dynamicCast())
        {
          v27 = v73[0];
          __swift_destroy_boxed_opaque_existential_0Tm(&v81);
          goto LABEL_5;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v81);
LABEL_32:
        __swift_destroy_boxed_opaque_existential_0Tm(&v84);
        v27 = 0;
        goto LABEL_6;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      sub_25A878194(v79, &qword_27FA04458, &unk_25A9F7FB0);
      v76 = 0u;
      v77 = 0u;
      v78 = 0;
    }

    sub_25A878194(&v76, &qword_27FA04760, &unk_25A9F9BB0);
    goto LABEL_32;
  }

  sub_25A87817C(&v81, &v84);
  v25 = *(&v85 + 1);
  v26 = v86;
  __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
  v27 = (v26[2])(v25, v26);
LABEL_5:
  __swift_destroy_boxed_opaque_existential_0Tm(&v84);
LABEL_6:
  v28 = v4[7];
  v29 = v4[8];
  v30 = swift_getObjectType();
  v31 = *(v29 + 64);
  swift_unknownObjectRetain();
  v31(&v84, v30, v29);
  swift_unknownObjectRelease();
  sub_25A896580(&v76);
  sub_25A872CE0(&v84);
  if (v27)
  {
    sub_25A9988A8();
    if (!v74)
    {
LABEL_26:
      __swift_destroy_boxed_opaque_existential_0Tm(&v76);

      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v87 = v27;
    while (1)
    {
      v47 = a1;
      sub_25A872D74(v73, v79);
      v48 = type metadata accessor for LexicalContext();
      v49 = swift_allocObject();
      v49[2] = 0x6E776F6E6B6E55;
      v49[3] = 0xE700000000000000;
      v50 = MEMORY[0x277D84F90];
      v51 = sub_25A98E540(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
      v52 = swift_allocObject();
      *(v52 + 16) = MEMORY[0x277D84F98];
      swift_beginAccess();
      *(v52 + 16) = v51;
      v49[4] = v52;
      v49[5] = sub_25A98E67C(v50);
      *(&v85 + 1) = v48;
      v86 = &protocol witness table for LexicalContext;
      *&v84 = v49;

      sub_25A932654(v79, &v76, &v84);
      __swift_destroy_boxed_opaque_existential_0Tm(&v84);
      v53 = v4[9];
      v54 = v49[4];
      swift_beginAccess();
      v55 = *(v54 + 16);

      v57 = sub_25A936C50(v56);

      v58 = sub_25A8FD864(v57);

      sub_25A87A7AC(v58);

      sub_25A87A380(1, &v84);

      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      LOBYTE(v83) = v86;
      v81 = v84;
      v82 = v85;
      if (v86 == 2)
      {
        a1 = v47;
        if (v81 == 1 && !(v82 | *(&v82 + 1) | *(&v81 + 1)))
        {
          goto LABEL_26;
        }
      }

      else
      {
        a1 = v47;
        if (v86 == 1)
        {
          __swift_destroy_boxed_opaque_existential_0Tm(&v76);

          v72 = v82;
          *v47 = v81;
          *(v47 + 16) = v72;
          *(v47 + 32) = 1;
          return result;
        }
      }

      sub_25A872CE0(&v81);
      sub_25A9988A8();
      if (!v74)
      {
        goto LABEL_26;
      }
    }
  }

  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v59 = sub_25A997BD8();
  __swift_project_value_buffer(v59, qword_27FA0FCE8);
  swift_retain_n();
  v60 = sub_25A997BB8();
  v61 = sub_25A9983A8();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v84 = v63;
    *v62 = 136315394;
    v64 = v4[5];
    v65 = v4[6];
    swift_getObjectType();
    *&v81 = v64;
    v66 = *(v65 + 8);
    v67 = sub_25A998968();
    v69 = sub_25A98CC90(v67, v68, &v84);

    *(v62 + 4) = v69;
    *(v62 + 12) = 2048;
    v70 = v4[2];

    *(v62 + 14) = v70;

    _os_log_impl(&dword_25A232000, v60, v61, "Each> %s did not return iterator. line %ld", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v63);
    MEMORY[0x25F852800](v63, -1, -1);
    MEMORY[0x25F852800](v62, -1, -1);
  }

  else
  {
  }

  sub_25A874F54();
  swift_allocError();
  *v71 = 40;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(&v76);
}

unint64_t sub_25A8FD864(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v2 = sub_25A998888();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        sub_25A874FB0(*(a1 + 48) + 40 * v15, v29);
        sub_25A87500C(*(a1 + 56) + 32 * v15, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[2] = v29[0];
        v26[3] = v29[1];
        swift_dynamicCast();
        sub_25A872D74((v27 + 8), v23);
        sub_25A872D74(v23, v25);
        sub_25A872D74(v25, v26);
        sub_25A872D74(v26, &v24);
        result = sub_25A8F3600(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_25A872D74(&v24, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          result = sub_25A872D74(&v24, (v2[7] + 32 * result));
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_25A8FDAF4()
{
  v1 = v0;
  sub_25A9985F8();

  v2 = v0[7];
  v3 = v1[8];
  swift_getObjectType();
  v4 = *(v3 + 8);
  v5 = sub_25A998968();
  MEMORY[0x25F850290](v5);

  MEMORY[0x25F850290](544106784, 0xE400000000000000);
  v6 = v1[5];
  v7 = v1[6];
  swift_getObjectType();
  v8 = *(v7 + 8);
  v9 = sub_25A998968();
  MEMORY[0x25F850290](v9);

  MEMORY[0x25F850290](686880, 0xE300000000000000);
  v10 = v1[9];

  v11 = sub_25A87A5A4();
  v13 = v12;

  v14 = sub_25A985514(v11, v13);
  v16 = v15;

  MEMORY[0x25F850290](v14, v16);

  MEMORY[0x25F850290](32010, 0xE200000000000000);
  return 544370534;
}

uint64_t sub_25A8FDC40()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];
}

uint64_t sub_25A8FDC78()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_deallocClassInstance();
}

unint64_t sub_25A8FDD0C()
{
  result = qword_27FA04CD8;
  if (!qword_27FA04CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CD8);
  }

  return result;
}

unint64_t sub_25A8FDD74()
{
  result = qword_27FA04CE0;
  if (!qword_27FA04CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CE0);
  }

  return result;
}

unint64_t sub_25A8FDDCC()
{
  result = qword_27FA04CE8;
  if (!qword_27FA04CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CE8);
  }

  return result;
}

unint64_t sub_25A8FDE24()
{
  result = qword_27FA04CF0;
  if (!qword_27FA04CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04CF0);
  }

  return result;
}

uint64_t sub_25A8FDE78()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8FDEC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2036625250;
  if (v2 != 1)
  {
    v5 = 0x65736C65726FLL;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1953719668;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2036625250;
  if (*a2 != 1)
  {
    v8 = 0x65736C65726FLL;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953719668;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FDFA4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FE034()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8FE0B0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FE13C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A8FEBB4();
  *a2 = result;
  return result;
}

void sub_25A8FE16C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2036625250;
  if (v2 != 1)
  {
    v5 = 0x65736C65726FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953719668;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FE1B8()
{
  v1 = 2036625250;
  if (*v0 != 1)
  {
    v1 = 0x65736C65726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953719668;
  }
}

uint64_t sub_25A8FE200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A8FEBB4();
  *a1 = result;
  return result;
}

uint64_t sub_25A8FE228(uint64_t a1)
{
  v2 = sub_25A8FEA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FE264(uint64_t a1)
{
  v2 = sub_25A8FEA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FE2EC(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CF8, "\\7\a");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v1[8] = 0;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FEA48();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = v1[8];

    type metadata accessor for While();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E6CC(v9, 0);
    v1[6] = v13;
    v17 = 1;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[7] = v16[0];
    v17 = 2;
    sub_25A998938();
    v14 = v1[8];
    v1[8] = v16[0];

    sub_25A872F24(a1, v16);
    v3 = sub_25A8963D8(v16);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FE588@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[8];
  if (v12)
  {
    swift_unknownObjectWeakLoadStrong();
    v13 = v4[4];
    swift_beginAccess();
    *(v12 + 32) = v13;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  v14 = v4[7];
  swift_unknownObjectWeakLoadStrong();
  v15 = v4[4];
  swift_beginAccess();
  *(v14 + 32) = v15;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v16 = v4[5];
  v17 = v4[6];
  v18 = swift_getObjectType();
  v19 = *(v17 + 64);
  swift_unknownObjectRetain();
  v19(v34, v18, v17);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    v21 = sub_25A911AC4();
    result = sub_25A872CE0(v34);
    if (v21 != 2 && (v21 & 1) != 0)
    {
      while (1)
      {
        v22 = v4[7];

        sub_25A87A380(1, v34);

        sub_25A872C84(v34, &v31);
        if (v33 == 2)
        {
          if (v31 == 1 && !(v32 | *(&v32 + 1) | *(&v31 + 1)))
          {
            result = sub_25A872CE0(v34);
            *a1 = 0u;
            *(a1 + 16) = 0u;
            *(a1 + 32) = 0;
            return result;
          }
        }

        else if (v33 == 1)
        {
          result = sub_25A872CE0(v34);
          v28 = v32;
          *a1 = v31;
          *(a1 + 16) = v28;
          *(a1 + 32) = 1;
          return result;
        }

        sub_25A872CE0(&v31);
        v23 = v4[5];
        v24 = v4[6];
        v25 = swift_getObjectType();
        v26 = *(v24 + 64);
        swift_unknownObjectRetain();
        v26(&v31, v25, v24);
        sub_25A872CE0(v34);
        swift_unknownObjectRelease();
        sub_25A872C84(&v31, v29);
        if (!v30)
        {
          break;
        }

        sub_25A872CE0(v29);
        v30 = v33;
        v29[0] = v31;
        v29[1] = v32;
        if (v33 == 1)
        {
          goto LABEL_19;
        }

        result = sub_25A872CE0(v29);
LABEL_8:
        LOBYTE(v29[0]) = 2;
LABEL_9:
        if ((v29[0] & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_25A872CE0(&v31);
LABEL_19:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      result = swift_dynamicCast();
      if (result)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_21:
    if (v4[8])
    {
      v27 = v4[8];

      sub_25A87A380(1, v34);
      sub_25A872CE0(v34);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A8FE930()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v1 + 48);
  swift_getObjectType();
  v4 = *(v3 + 8);
  v5 = sub_25A998968();
  MEMORY[0x25F850290](v5);

  MEMORY[0x25F850290](686880, 0xE300000000000000);
  v6 = *(v1 + 56);

  v7 = sub_25A87A5A4();
  v9 = v8;

  v10 = sub_25A985514(v7, v9);
  v12 = v11;

  MEMORY[0x25F850290](v10, v12);

  MEMORY[0x25F850290](32010, 0xE200000000000000);
  return 0x20656C696877;
}

unint64_t sub_25A8FEA48()
{
  result = qword_27FA04D00;
  if (!qword_27FA04D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D00);
  }

  return result;
}

unint64_t sub_25A8FEAB0()
{
  result = qword_27FA04D08;
  if (!qword_27FA04D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D08);
  }

  return result;
}

unint64_t sub_25A8FEB08()
{
  result = qword_27FA04D10;
  if (!qword_27FA04D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D10);
  }

  return result;
}

unint64_t sub_25A8FEB60()
{
  result = qword_27FA04D18;
  if (!qword_27FA04D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D18);
  }

  return result;
}

uint64_t sub_25A8FEBB4()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A8FEC00()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8FEC5C()
{
  sub_25A998B18();
  sub_25A997D58();
  return sub_25A998B38();
}

uint64_t sub_25A8FECA4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25A8FED1C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25A9988C8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25A8FED74(uint64_t a1)
{
  v2 = sub_25A8FF380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FEDB0(uint64_t a1)
{
  v2 = sub_25A8FF380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FEE38(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D20, &unk_25A9FAD30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8FF380();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Raise();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 40) = sub_25A90E67C(v9);
    *(v3 + 48) = v13;
    sub_25A872F24(a1, v15);
    v11 = sub_25A8963D8(v15);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v11;
}

uint64_t sub_25A8FEFF4()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[5];
  v5 = v3[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v3[4];
  v9 = *(v5 + 48);
  swift_unknownObjectRetain();
  v9(Strong, v8, ObjectType, v5);
  swift_unknownObjectRelease();
  v10 = v3[5];
  v11 = v3[6];
  v12 = swift_getObjectType();
  v13 = *(v11 + 64);
  swift_unknownObjectRetain();
  v13(v21, v12, v11);
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    sub_25A896580(v22);
    sub_25A872CE0(v21);
    sub_25A87500C(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
    if (!swift_dynamicCast())
    {
      if (static MorpheusUtils.isNil(_:)(v22))
      {
        sub_25A874F54();
        swift_allocError();
        v16 = 22;
      }

      else
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v17 = sub_25A997BD8();
        __swift_project_value_buffer(v17, qword_27FA0FCE8);

        v18 = sub_25A997BB8();
        v19 = sub_25A9983A8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 134217984;
          *(v20 + 4) = v3[2];

          _os_log_impl(&dword_25A232000, v18, v19, "Raise> Invalid exc. lino %ld", v20, 0xCu);
          MEMORY[0x25F852800](v20, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        v16 = 23;
      }

      *v15 = v16;
    }

    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0Tm(v22);
  }

  return result;
}

uint64_t sub_25A8FF2AC()
{
  v1 = v0;
  MEMORY[0x25F850290](0x206573696172, 0xE600000000000000);
  v3 = *(v0 + 40);
  v2 = *(v1 + 48);
  swift_getObjectType();
  v4 = *(v2 + 8);
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A8FF31C()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8FF380()
{
  result = qword_27FA04D28;
  if (!qword_27FA04D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D28);
  }

  return result;
}

unint64_t sub_25A8FF3E8()
{
  result = qword_27FA04D30;
  if (!qword_27FA04D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D30);
  }

  return result;
}

unint64_t sub_25A8FF440()
{
  result = qword_27FA04D38;
  if (!qword_27FA04D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D38);
  }

  return result;
}

unint64_t sub_25A8FF498()
{
  result = qword_27FA04D40;
  if (!qword_27FA04D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D40);
  }

  return result;
}

uint64_t sub_25A8FF4EC(uint64_t result)
{
  LODWORD(v2) = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 12))
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v1 + 8);
  }

  if ((*(v1 + 4) & 1) == 0 && (v2 & 0x80000000) != 0)
  {
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v5 = __OFADD__(v2, result);
    LODWORD(v2) = v2 + result;
    if (v5)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  if (v3 >= 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v1 + 20);
  }

  if ((v6 & 1) == 0)
  {
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (__OFADD__(v3, result))
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  if (!*(v1 + 4))
  {
LABEL_22:
    if (*(v1 + 20))
    {
      if (v4 < 0)
      {
        return v2;
      }

      if (result < 0xFFFFFFFF80000000)
      {
        goto LABEL_36;
      }

      if (result > 0x7FFFFFFF)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (v4)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_30;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    LODWORD(v2) = 0;
    goto LABEL_22;
  }

  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v2 < 0xFFFFFFFF80000000)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v2 <= 0x7FFFFFFF)
  {
    goto LABEL_22;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t _sSi8MorpheusE5values5Int32VyF_0(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF63C()
{
  result = *v0;
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall UInt.value()()
{
  if (v0 >> 31)
  {
    __break(1u);
  }

  return v0;
}

uint64_t sub_25A8FF674()
{
  result = *v0;
  if (*v0 >> 31)
  {
    __break(1u);
  }

  return result;
}

Swift::Int32 __swiftcall UInt32.value()()
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF694()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25A8FF6A4()
{
  if (*(v0 + 4))
  {
    result = 0x100000000;
  }

  else
  {
    result = *v0;
  }

  if (!*(v0 + 20))
  {
    v2 = v0[4];
  }

  if (!*(v0 + 12))
  {
    v3 = v0[2] | 0x4000000000;
  }

  return result;
}

uint64_t sub_25A8FF6F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1885697139;
  if (v2 != 1)
  {
    v4 = 0x7265707075;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7265776F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1885697139;
  if (*a2 != 1)
  {
    v8 = 0x7265707075;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7265776F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8FF7DC()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FF870()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A8FF8F0()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8FF980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A900694();
  *a2 = result;
  return result;
}

void sub_25A8FF9B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885697139;
  if (v2 != 1)
  {
    v5 = 0x7265707075;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7265776F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8FFA00()
{
  v1 = 1885697139;
  if (*v0 != 1)
  {
    v1 = 0x7265707075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265776F6CLL;
  }
}

uint64_t sub_25A8FFA4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A900694();
  *a1 = result;
  return result;
}

uint64_t sub_25A8FFA74(uint64_t a1)
{
  v2 = sub_25A900528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8FFAB0(uint64_t a1)
{
  v2 = sub_25A900528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8FFB38(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D48, &qword_25A9FAFA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25[-1] - v8;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A900528();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *(v1 + 40);
    swift_unknownObjectRelease();
    v12 = *(v1 + 56);
    swift_unknownObjectRelease();
    v13 = *(v1 + 72);
    swift_unknownObjectRelease();
    type metadata accessor for MorpheusSlice();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = sub_25A90E564(v9, 0);
    v15 = *(v1 + 40);
    *(v1 + 40) = v14;
    *(v1 + 48) = v16;
    swift_unknownObjectRelease();
    v17 = sub_25A90E564(v9, 1);
    v18 = *(v1 + 56);
    *(v1 + 56) = v17;
    *(v1 + 64) = v19;
    swift_unknownObjectRelease();
    v20 = sub_25A90E564(v9, 2);
    v21 = *(v1 + 72);
    *(v1 + 72) = v20;
    *(v1 + 80) = v22;
    swift_unknownObjectRelease();
    sub_25A872F24(a1, v25);
    v3 = sub_25A8963D8(v25);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8FFD98@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  if (v1[5])
  {
    v5 = v1[6];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = v1[4];
    v9 = *(v5 + 48);
    swift_unknownObjectRetain();
    v9(Strong, v8, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (v1[7])
  {
    v10 = v1[8];
    v11 = v1[7];
    v12 = swift_getObjectType();
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    v14 = v1[4];
    v15 = *(v10 + 48);
    swift_unknownObjectRetain();
    v15(v13, v14, v12, v10);
    swift_unknownObjectRelease();
  }

  if (v1[9])
  {
    v16 = v1[10];
    v17 = v1[9];
    v18 = swift_getObjectType();
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    v20 = v1[4];
    v21 = *(v16 + 48);
    swift_unknownObjectRetain();
    v21(v19, v20, v18, v16);
    swift_unknownObjectRelease();
  }

  if (!v1[5])
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    if (!v1[7])
    {
      goto LABEL_10;
    }

LABEL_14:
    v30 = v1[8];
    v31 = swift_getObjectType();
    v32 = *(v30 + 64);
    swift_unknownObjectRetain();
    v32(v45, v31, v30);
    if (v3)
    {
      sub_25A900450(v49);
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_25A911B94(v47);
    sub_25A872CE0(v45);
    if (v1[9])
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v22 = v1[6];
  v23 = v1[5];
  v24 = swift_getObjectType();
  v25 = *(v22 + 64);
  swift_unknownObjectRetain();
  v25(v47, v24, v22);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    return result;
  }

  sub_25A911B94(v49);
  sub_25A872CE0(v47);
  if (v1[7])
  {
    goto LABEL_14;
  }

LABEL_10:
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  if (v1[9])
  {
LABEL_11:
    v27 = v1[10];
    v28 = swift_getObjectType();
    v29 = *(v27 + 64);
    swift_unknownObjectRetain();
    v29(v42, v28, v27);
    swift_unknownObjectRelease();
    if (v3)
    {
      sub_25A900450(v47);
      return sub_25A900450(v49);
    }

    sub_25A911B94(v45);
    sub_25A872CE0(v42);
    goto LABEL_19;
  }

LABEL_17:
  v46 = 0;
  memset(v45, 0, sizeof(v45));
LABEL_19:
  sub_25A9004B8(v49, v42);
  v33 = v43;
  if (v43)
  {
    v34 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v35 = (*(v34 + 8))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    sub_25A900450(v42);
    v35 = 0;
  }

  sub_25A9004B8(v47, v42);
  v36 = v43;
  if (v43)
  {
    v37 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v38 = (*(v37 + 8))(v36, v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    sub_25A900450(v42);
    v38 = 0;
  }

  sub_25A9004B8(v45, v42);
  v39 = v43;
  if (v43)
  {
    v40 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v41 = (*(v40 + 8))(v39, v40);
    sub_25A900450(v45);
    sub_25A900450(v47);
    sub_25A900450(v49);
    result = __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  else
  {
    sub_25A900450(v45);
    sub_25A900450(v47);
    sub_25A900450(v49);
    result = sub_25A900450(v42);
    v41 = 0;
  }

  *(a1 + 24) = &type metadata for SliceStruct;
  *a1 = v35;
  *(a1 + 4) = v33 == 0;
  *(a1 + 8) = v38;
  *(a1 + 12) = v36 == 0;
  *(a1 + 16) = v41;
  *(a1 + 20) = v39 == 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_25A900268()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  return swift_unknownObjectRelease();
}

uint64_t sub_25A9002A0()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

BOOL _s8Morpheus11SliceStructV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 20);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) == *(a2 + 8))
    {
      v4 = *(a2 + 12);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v6 = *(a2 + 20);
    }

    else
    {
      v6 = 1;
    }

    return (v6 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SliceStruct(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SliceStruct(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_25A900450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047B0, &qword_25A9F8E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25A9004B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047B0, &qword_25A9F8E78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25A900528()
{
  result = qword_27FA04D50;
  if (!qword_27FA04D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D50);
  }

  return result;
}

unint64_t sub_25A900590()
{
  result = qword_27FA04D58;
  if (!qword_27FA04D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D58);
  }

  return result;
}

unint64_t sub_25A9005E8()
{
  result = qword_27FA04D60;
  if (!qword_27FA04D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D60);
  }

  return result;
}

unint64_t sub_25A900640()
{
  result = qword_27FA04D68;
  if (!qword_27FA04D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D68);
  }

  return result;
}

uint64_t sub_25A900694()
{
  v0 = sub_25A9988C8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25A9006F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  if (v2 != 1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 28783;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (*a2 != 1)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 28783;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A9007D4()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A900860()
{
  *v0;
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A9008D8()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A900960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25A901C44();
  *a2 = result;
  return result;
}

void sub_25A900990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1952867692;
  if (v2 != 1)
  {
    v5 = 0x7468676972;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 28783;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A9009D8()
{
  v1 = 1952867692;
  if (*v0 != 1)
  {
    v1 = 0x7468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 28783;
  }
}

uint64_t sub_25A900A1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25A901C44();
  *a1 = result;
  return result;
}

uint64_t sub_25A900A44(uint64_t a1)
{
  v2 = sub_25A901AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A900A80(uint64_t a1)
{
  v2 = sub_25A901AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A900B08(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04D70, &unk_25A9FBDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A901AD8();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for BinOp();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    v1[9] = sub_25A9988F8();
    v1[10] = v12;
    v1[5] = sub_25A90E654(v9, 1);
    v1[6] = v13;
    v1[7] = sub_25A90E654(v9, 2);
    v1[8] = v14;
    sub_25A872F24(a1, v16);
    v3 = sub_25A8963D8(v16);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A900D58@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[5];
  v7 = v4[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = v4[4];
  v11 = *(v7 + 48);
  swift_unknownObjectRetain();
  v11(Strong, v10, ObjectType, v7);
  swift_unknownObjectRelease();
  v12 = v4[7];
  v13 = v4[8];
  v14 = swift_getObjectType();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = v4[4];
  v17 = *(v13 + 48);
  swift_unknownObjectRetain();
  v17(v15, v16, v14, v13);
  swift_unknownObjectRelease();
  v18 = v4[5];
  v19 = v4[6];
  v20 = swift_getObjectType();
  v21 = *(v19 + 64);
  swift_unknownObjectRetain();
  v21(v70, v20, v19);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A896580(&v66);
  sub_25A872CE0(v70);
  sub_25A92D814(&v66, v74);
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  v22 = v4[7];
  v23 = v4[8];
  v24 = swift_getObjectType();
  v25 = *(v23 + 64);
  swift_unknownObjectRetain();
  v25(v70, v24, v23);
  swift_unknownObjectRelease();
  sub_25A896580(&v66);
  sub_25A872CE0(v70);
  sub_25A92D814(&v66, v73);
  __swift_destroy_boxed_opaque_existential_0Tm(&v66);
  v28 = v4[9];
  v27 = v4[10];

  v29 = sub_25A901A8C();
  if (v29 > 3)
  {
    if (v29 > 5)
    {
      if (v29 != 6)
      {
        if (qword_27FA043C0 != -1)
        {
          swift_once();
        }

        v33 = sub_25A997BD8();
        __swift_project_value_buffer(v33, qword_27FA0FCE8);

        v34 = sub_25A997BB8();
        v35 = sub_25A9983A8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v70[0] = v37;
          *v36 = 136315394;
          v38 = v4[9];
          v39 = v4[10];

          v40 = sub_25A98CC90(v38, v39, v70);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2048;
          *(v36 + 14) = v4[2];

          _os_log_impl(&dword_25A232000, v34, v35, "BinOp> Invalid binary operator %s: line %ld", v36, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v37);
          MEMORY[0x25F852800](v37, -1, -1);
          MEMORY[0x25F852800](v36, -1, -1);
        }

        else
        {
        }

        sub_25A874F54();
        swift_allocError();
        *v65 = 14;
        goto LABEL_43;
      }

      sub_25A87500C(v74, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04568, &qword_25A9F8718);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v41 = &unk_27FA04570;
      v42 = &unk_25A9F8720;
    }

    else if (v29 == 4)
    {
      sub_25A87500C(v74, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04588, &qword_25A9F8738);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v41 = &unk_27FA04590;
      v42 = &unk_25A9F8740;
    }

    else
    {
      sub_25A87500C(v74, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04578, &qword_25A9F8728);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v41 = &unk_27FA04580;
      v42 = &unk_25A9F8730;
    }

LABEL_36:
    sub_25A878194(&v66, v41, v42);
    sub_25A874F54();
    swift_allocError();
    *v43 = 15;
    swift_willThrow();
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v44 = sub_25A997BD8();
    __swift_project_value_buffer(v44, qword_27FA0FCE8);
    swift_retain_n();
    v45 = sub_25A997BB8();
    v46 = sub_25A9983A8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v70[0] = v48;
      *v47 = 136315906;
      v49 = v4[5];
      v50 = v4[6];
      swift_getObjectType();
      *&v66 = v49;
      v51 = *(v50 + 8);
      v52 = sub_25A998968();
      v54 = sub_25A98CC90(v52, v53, v70);

      *(v47 + 4) = v54;
      *(v47 + 12) = 2080;
      v55 = v4[7];
      v56 = v4[8];
      swift_getObjectType();
      *&v66 = v55;
      v57 = *(v56 + 8);
      v58 = sub_25A998968();
      v60 = sub_25A98CC90(v58, v59, v70);

      *(v47 + 14) = v60;
      *(v47 + 22) = 2080;
      v62 = v4[9];
      v61 = v4[10];

      v63 = sub_25A98CC90(v62, v61, v70);

      *(v47 + 24) = v63;
      *(v47 + 32) = 2048;
      v64 = v4[2];

      *(v47 + 34) = v64;

      _os_log_impl(&dword_25A232000, v45, v46, "BinOp> Left: %s and right: %s are not supported  with op: %s. line %ld", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x25F852800](v48, -1, -1);
      MEMORY[0x25F852800](v47, -1, -1);
    }

    else
    {
    }

LABEL_43:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v32 = v74;
    return __swift_destroy_boxed_opaque_existential_0Tm(v32);
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      sub_25A87500C(v74, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045B8, &qword_25A9F8768);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v41 = &unk_27FA045C0;
      v42 = &unk_25A9F8770;
    }

    else
    {
      sub_25A87500C(v74, v69);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045C8, &qword_25A9F8778);
      if (swift_dynamicCast())
      {
        goto LABEL_24;
      }

      v68 = 0;
      v66 = 0u;
      v67 = 0u;
      v41 = &unk_27FA045D0;
      v42 = &unk_25A9F8780;
    }

    goto LABEL_36;
  }

  if (v29 == 2)
  {
    sub_25A87500C(v74, v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA045A8, &qword_25A9F8758);
    if (swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v41 = &unk_27FA045B0;
    v42 = &unk_25A9F8760;
    goto LABEL_36;
  }

  sub_25A87500C(v74, v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04598, &qword_25A9F8748);
  if (!swift_dynamicCast())
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v41 = &unk_27FA045A0;
    v42 = &unk_25A9F8750;
    goto LABEL_36;
  }

LABEL_24:
  sub_25A87817C(&v66, v70);
  v30 = v71;
  v31 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v31 + 8))(v73, v30, v31);
  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  *(a1 + 32) = 0;
  v32 = v70;
  return __swift_destroy_boxed_opaque_existential_0Tm(v32);
}

uint64_t sub_25A901838()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v1[6];
  swift_getObjectType();
  v4 = *(v3 + 8);
  swift_unknownObjectRetain();
  v18 = sub_25A997EB8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v5 = v1[9];
  v6 = v1[10];

  result = sub_25A901A8C();
  v8 = result;
  if (result <= 3u)
  {
    v9 = 43;
    v10 = 0xA200000000000000;
    v11 = 38851;
    if (result != 2)
    {
      v11 = 47;
      v10 = 0xE100000000000000;
    }

    if (result)
    {
      v9 = 45;
    }

    if (result <= 1u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v11;
    }

    if (v8 <= 1)
    {
      v13 = 0xE100000000000000;
    }

    else
    {
      v13 = v10;
    }

    goto LABEL_21;
  }

  if (result <= 5u)
  {
    if (result == 4)
    {
      v12 = 37;
    }

    else
    {
      v12 = 10794;
    }

    if (v8 == 4)
    {
      v13 = 0xE100000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    goto LABEL_21;
  }

  if (result == 6)
  {
    v13 = 0xE200000000000000;
    v12 = 12079;
LABEL_21:
    MEMORY[0x25F850290](v12, v13);

    MEMORY[0x25F850290](32, 0xE100000000000000);
    v14 = v1[7];
    v15 = v1[8];
    swift_getObjectType();
    v16 = *(v15 + 8);
    swift_unknownObjectRetain();
    v17 = sub_25A997EB8();
    MEMORY[0x25F850290](v17);

    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9019C0()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[10];
}

uint64_t sub_25A9019F8()
{
  sub_25A872F88((v0 + 3));
  v1 = v0[5];

  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t sub_25A901A8C()
{
  v0 = sub_25A9988C8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25A901AD8()
{
  result = qword_27FA04D78;
  if (!qword_27FA04D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D78);
  }

  return result;
}

unint64_t sub_25A901B40()
{
  result = qword_27FA04D80;
  if (!qword_27FA04D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D80);
  }

  return result;
}

unint64_t sub_25A901B98()
{
  result = qword_27FA04D88;
  if (!qword_27FA04D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04D88);
  }

  return result;
}