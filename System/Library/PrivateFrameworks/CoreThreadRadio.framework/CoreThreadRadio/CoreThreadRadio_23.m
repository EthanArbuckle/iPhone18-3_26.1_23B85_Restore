uint64_t mbedtls_rsa_deduce_primes(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, _OWORD *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  i = 0;
  j = 0;
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  memcpy(__dst, &unk_10044AD68, sizeof(__dst));
  if (v13 && v12 && !*v13 && !*v12)
  {
    if (mbedtls_mpi_cmp_int(v16, 0) > 0 && mbedtls_mpi_cmp_int(v14, 1) > 0 && (mbedtls_mpi_cmp_mpi(v14, v16) & 0x80000000) != 0 && mbedtls_mpi_cmp_int(v15, 1) > 0 && (mbedtls_mpi_cmp_mpi(v15, v16) & 0x80000000) != 0)
    {
      mbedtls_mpi_init(v6);
      mbedtls_mpi_init(v7);
      v11 = mbedtls_mpi_mul_mpi(v7, v14, v15);
      if (!v11)
      {
        v11 = mbedtls_mpi_sub_int(v7, v7, 1);
        if (!v11)
        {
          v8 = mbedtls_mpi_lsb(v7);
          if (v8)
          {
            v11 = mbedtls_mpi_shift_r(v7, v8);
            if (!v11)
            {
              for (i = **v16 % 8uLL == 1; i < 0x36uLL; ++i)
              {
                v11 = mbedtls_mpi_lset(v6, __dst[i]);
                if (v11)
                {
                  goto LABEL_38;
                }

                v11 = mbedtls_mpi_gcd(v13, v6, v16);
                if (v11)
                {
                  goto LABEL_38;
                }

                if (!mbedtls_mpi_cmp_int(v13, 1))
                {
                  v11 = mbedtls_mpi_exp_mod(v6, v6, v7, v16, v12);
                  if (v11)
                  {
                    goto LABEL_38;
                  }

                  for (j = 1; j <= v8 && mbedtls_mpi_cmp_int(v6, 1); ++j)
                  {
                    v11 = mbedtls_mpi_add_int(v6, v6, 1);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_gcd(v13, v6, v16);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    if (mbedtls_mpi_cmp_int(v13, 1) == 1 && mbedtls_mpi_cmp_mpi(v13, v16) == -1)
                    {
                      v11 = mbedtls_mpi_div_mpi(v12, 0, v16, v13);
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_sub_int(v6, v6, 1);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_mul_mpi(v6, v6, v6);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_mod_mpi(v6, v6, v16);
                    if (v11)
                    {
                      goto LABEL_38;
                    }
                  }

                  if (mbedtls_mpi_cmp_int(v6, 1))
                  {
                    break;
                  }
                }
              }

              v11 = -4;
            }
          }

          else
          {
            v11 = -4;
          }
        }
      }

LABEL_38:
      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v7);
      return v11;
    }

    else
    {
      return -4;
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_rsa_deduce_private_exponent(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a4 && !mbedtls_mpi_cmp_int(v8, 0))
  {
    if (mbedtls_mpi_cmp_int(v11, 1) > 0 && mbedtls_mpi_cmp_int(v10, 1) > 0 && mbedtls_mpi_cmp_int(v9, 0))
    {
      mbedtls_mpi_init(v6);
      mbedtls_mpi_init(v5);
      v7 = mbedtls_mpi_sub_int(v6, v11, 1);
      if (!v7)
      {
        v7 = mbedtls_mpi_sub_int(v5, v10, 1);
        if (!v7)
        {
          v7 = mbedtls_mpi_gcd(v8, v6, v5);
          if (!v7)
          {
            v7 = mbedtls_mpi_mul_mpi(v6, v6, v5);
            if (!v7)
            {
              v7 = mbedtls_mpi_div_mpi(v6, 0, v6, v8);
              if (!v7)
              {
                v7 = mbedtls_mpi_inv_mod(v8, v9, v6);
              }
            }
          }
        }
      }

      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v5);
      return v7;
    }

    else
    {
      return -4;
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_rsa_deduce_crt(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v7);
  if ((!v11 || (v8 = mbedtls_mpi_sub_int(v7, v14, 1)) == 0 && (v8 = mbedtls_mpi_mod_mpi(v11, v12, v7)) == 0) && (!v10 || (v8 = mbedtls_mpi_sub_int(v7, v13, 1)) == 0 && (v8 = mbedtls_mpi_mod_mpi(v10, v12, v7)) == 0))
  {
    if (v9)
    {
      v8 = mbedtls_mpi_inv_mod(v9, v13, v14);
    }
  }

  mbedtls_mpi_free(v7);
  return v8;
}

uint64_t mbedtls_rsa_validate_params(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v10 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v9);
  mbedtls_mpi_init(v8);
  if (v16 && v15 && v17)
  {
    v10 = mbedtls_mpi_mul_mpi(v9, v16, v15);
    if (v10)
    {
      goto LABEL_35;
    }

    if (mbedtls_mpi_cmp_int(v17, 1) <= 0 || mbedtls_mpi_cmp_mpi(v9, v17))
    {
      v10 = -16896;
      goto LABEL_35;
    }
  }

  if (v17 && v14 && v13 && (mbedtls_mpi_cmp_int(v14, 1) <= 0 || mbedtls_mpi_cmp_int(v13, 1) <= 0 || (mbedtls_mpi_cmp_mpi(v14, v17) & 0x80000000) == 0 || (mbedtls_mpi_cmp_mpi(v13, v17) & 0x80000000) == 0))
  {
    v10 = -16896;
  }

  else if (v16 && v15 && v14 && v13)
  {
    if (mbedtls_mpi_cmp_int(v16, 1) > 0 && mbedtls_mpi_cmp_int(v15, 1) > 0)
    {
      v10 = mbedtls_mpi_mul_mpi(v9, v14, v13);
      if (!v10)
      {
        v10 = mbedtls_mpi_sub_int(v9, v9, 1);
        if (!v10)
        {
          v10 = mbedtls_mpi_sub_int(v8, v16, 1);
          if (!v10)
          {
            v10 = mbedtls_mpi_mod_mpi(v9, v9, v8);
            if (!v10)
            {
              if (mbedtls_mpi_cmp_int(v9, 0))
              {
                v10 = -16896;
              }

              else
              {
                v10 = mbedtls_mpi_mul_mpi(v9, v14, v13);
                if (!v10)
                {
                  v10 = mbedtls_mpi_sub_int(v9, v9, 1);
                  if (!v10)
                  {
                    v10 = mbedtls_mpi_sub_int(v8, v15, 1);
                    if (!v10)
                    {
                      v10 = mbedtls_mpi_mod_mpi(v9, v9, v8);
                      if (!v10)
                      {
                        if (mbedtls_mpi_cmp_int(v9, 0))
                        {
                          v10 = -16896;
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

    else
    {
      v10 = -16896;
    }
  }

LABEL_35:
  mbedtls_mpi_free(v9);
  mbedtls_mpi_free(v8);
  if (v10 && v10 != -16896)
  {
    v10 -= 16896;
  }

  return v10;
}

uint64_t mbedtls_rsa_validate_crt(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v8);
  mbedtls_mpi_init(v7);
  if (v12)
  {
    if (!v15)
    {
      v9 = -16512;
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_sub_int(v8, v15, 1);
    if (v9)
    {
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_sub_mpi(v7, v12, v13);
    if (v9)
    {
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_mod_mpi(v7, v7, v8);
    if (v9)
    {
      goto LABEL_26;
    }

    if (mbedtls_mpi_cmp_int(v7, 0))
    {
      v9 = -16896;
      goto LABEL_26;
    }
  }

  if (!v11)
  {
LABEL_17:
    if (v10)
    {
      if (v15 && v14)
      {
        v9 = mbedtls_mpi_mul_mpi(v8, v10, v14);
        if (!v9)
        {
          v9 = mbedtls_mpi_sub_int(v8, v8, 1);
          if (!v9)
          {
            v9 = mbedtls_mpi_mod_mpi(v8, v8, v15);
            if (!v9)
            {
              if (mbedtls_mpi_cmp_int(v8, 0))
              {
                v9 = -16896;
              }
            }
          }
        }
      }

      else
      {
        v9 = -16512;
      }
    }

    goto LABEL_26;
  }

  if (!v14)
  {
    v9 = -16512;
    goto LABEL_26;
  }

  v9 = mbedtls_mpi_sub_int(v8, v14, 1);
  if (!v9)
  {
    v9 = mbedtls_mpi_sub_mpi(v7, v11, v13);
    if (!v9)
    {
      v9 = mbedtls_mpi_mod_mpi(v7, v7, v8);
      if (!v9)
      {
        if (mbedtls_mpi_cmp_int(v7, 0))
        {
          v9 = -16896;
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }
  }

LABEL_26:
  if (v9 && v9 != -16896 && v9 != -16512)
  {
    v9 -= 16896;
  }

  mbedtls_mpi_free(v8);
  mbedtls_mpi_free(v7);
  return v9;
}

uint64_t mbedtls_pk_ecc_set_group(uint64_t a1, int a2)
{
  v3 = mbedtls_pk_ec_rw(*a1, *(a1 + 8));
  if (!*mbedtls_pk_ec_rw(*a1, *(a1 + 8)) || *mbedtls_pk_ec_rw(*a1, *(a1 + 8)) == a2)
  {
    return mbedtls_ecp_group_load(v3, a2);
  }

  else
  {
    return -15616;
  }
}

uint64_t mbedtls_pk_ec_rw(unsigned int *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  if (mbedtls_pk_get_type(&v3) - 2 > 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t mbedtls_pk_ecc_set_key(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = mbedtls_pk_ec_rw(*a1, *(a1 + 8));
  key = mbedtls_ecp_read_key(*v5, v5, a2, a3);
  if (key)
  {
    return mbedtls_error_add(-15616, key);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_ecc_set_pubkey(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  binary = mbedtls_ecp_point_read_binary(v4, (v4 + 208), a2, a3);
  if (binary)
  {
    return binary;
  }

  else
  {
    return mbedtls_ecp_check_pubkey(v4, (v4 + 208));
  }
}

unint64_t mbedtls_mpi_core_bitlen(uint64_t a1, int a2)
{
  for (i = a2 - 1; (i & 0x80000000) == 0; --i)
  {
    if (*(a1 + 8 * i))
    {
      return 64 - mbedtls_mpi_core_clz(*(a1 + 8 * i)) + (i << 6);
    }
  }

  return 0;
}

unint64_t mbedtls_mpi_core_bigendian_to_host(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    for (i = (result + 8 * (a2 - 1)); v4 <= i; --i)
    {
      v2 = mpi_bigendian_to_host(*v4);
      result = mpi_bigendian_to_host(*i);
      *v4 = result;
      *i = v2;
      ++v4;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_uint_le_mpi(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v8 = mbedtls_ct_uint_ge(*a2, a1);
  mbedtls_ct_compiler_opaque();
  v7 = v3;
  for (i = 1; i < a3; ++i)
  {
    v4 = mbedtls_ct_BOOL(a2[i]);
    v7 = mbedtls_ct_BOOL_or(v7, v4);
  }

  return mbedtls_ct_BOOL_or(v7, v8);
}

uint64_t mbedtls_mpi_core_lt_ct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mbedtls_ct_compiler_opaque();
  v13 = v3;
  mbedtls_ct_compiler_opaque();
  mbedtls_ct_compiler_opaque();
  v11 = v4;
  for (i = a3; i; --i)
  {
    v5 = mbedtls_ct_uint_lt(*(a2 + 8 * (i - 1)), *(a1 + 8 * (i - 1)));
    v12 = mbedtls_ct_BOOL_or(v11, v5);
    v9 = mbedtls_ct_uint_lt(*(a1 + 8 * (i - 1)), *(a2 + 8 * (i - 1)));
    v6 = mbedtls_ct_BOOL_not(v12);
    v7 = mbedtls_ct_BOOL_and(v9, v6);
    v13 = mbedtls_ct_BOOL_or(v13, v7);
    v11 = mbedtls_ct_BOOL_or(v12, v9);
  }

  return v13;
}

uint64_t mbedtls_mpi_core_cond_assign(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = result;
  if (result != a2)
  {
    for (i = 0; i < a3; ++i)
    {
      result = mbedtls_ct_mpi_uint_if (a4, *(a2 + 8 * i), *(v8 + 8 * i));
      *(v8 + 8 * i) = result;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_cond_swap(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = result;
  if (result != a2)
  {
    for (i = 0; i < a3; ++i)
    {
      v4 = *(v9 + 8 * i);
      *(v9 + 8 * i) = mbedtls_ct_mpi_uint_if (a4, *(a2 + 8 * i), v4);
      result = mbedtls_ct_mpi_uint_if (a4, v4, *(a2 + 8 * i));
      *(a2 + 8 * i) = result;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_read_le(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4 / 8 + (a4 % 8 != 0))
  {
    if (a1)
    {
      __memset_chk();
      for (i = 0; i < a4; ++i)
      {
        *(a1 + 8 * (i / 8)) |= *(a3 + i) << (8 * (i % 8));
      }
    }

    return 0;
  }

  else
  {
    return -8;
  }
}

uint64_t mbedtls_mpi_core_read_be(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4 / 8 + (a4 % 8 != 0))
  {
    if (a2)
    {
      __memset_chk();
      if (a4)
      {
        __memcpy_chk();
      }

      mbedtls_mpi_core_bigendian_to_host(a1, a2);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -8;
  }
}

uint64_t mbedtls_mpi_core_write_le(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 8 * a2;
  if (8 * a2 >= a4)
  {
    v7 = a4;
    for (i = a4; i < v8; ++i)
    {
      if ((*(a1 + 8 * (i / 8)) >> (8 * (i % 8))))
      {
        return -8;
      }
    }
  }

  else
  {
    v7 = 8 * a2;
  }

  for (j = 0; j < v7; ++j)
  {
    *(a3 + j) = *(a1 + 8 * (j / 8)) >> (8 * (j % 8));
  }

  if (v8 < a4)
  {
    __memset_chk();
  }

  return 0;
}

uint64_t mbedtls_mpi_core_write_be(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = 8 * a2;
  if (8 * a2 >= a4)
  {
    v8 = a4;
    v7 = a3;
    for (i = a4; i < v9; ++i)
    {
      if ((*(a1 + 8 * (i / 8)) >> (8 * (i % 8))))
      {
        return -8;
      }
    }
  }

  else
  {
    v8 = 8 * a2;
    v7 = a3 + a4 - v9;
    __memset_chk();
  }

  for (j = 0; j < v8; ++j)
  {
    *(v7 + v8 - j - 1) = *(a1 + 8 * (j / 8)) >> (8 * (j % 8));
  }

  return 0;
}

uint64_t mbedtls_mpi_core_shift_r(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = 0;
  v6 = a3 / 0x40;
  v5 = a3 & 0x3F;
  if (__PAIR128__(a3 / 0x40, a3 & 0x3F) > __PAIR128__(a2, 0))
  {
    return __memset_chk();
  }

  if (v6)
  {
    for (i = 0; i < a2 - v6; ++i)
    {
      *(result + 8 * i) = *(result + 8 * (i + v6));
    }

    while (i < a2)
    {
      *(result + 8 * i++) = 0;
    }
  }

  if ((a3 & 0x3F) != 0)
  {
    for (j = a2; j; --j)
    {
      v3 = *(result + 8 * (j - 1)) << (64 - v5);
      *(result + 8 * (j - 1)) >>= v5;
      *(result + 8 * (j - 1)) |= v4;
      v4 = v3;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_shift_l(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = 0;
  v6 = a3 / 0x40;
  v5 = a3 & 0x3F;
  if (a3 / 0x40)
  {
    for (i = a2; i > v6; --i)
    {
      *(result + 8 * (i - 1)) = *(result + 8 * (i - v6 - 1));
    }

    while (i)
    {
      *(result + 8 * --i) = 0;
    }
  }

  if ((a3 & 0x3F) != 0)
  {
    for (j = a3 / 0x40; j < a2; ++j)
    {
      v3 = *(result + 8 * j) >> (64 - v5);
      *(result + 8 * j) <<= v5;
      *(result + 8 * j) |= v4;
      v4 = v3;
    }
  }

  return result;
}

BOOL mbedtls_mpi_core_add(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  for (i = 0; i < a4; ++i)
  {
    v5 = v8 + *(a2 + 8 * i);
    v9 = v5 < *(a2 + 8 * i);
    v6 = v5 + *(a3 + 8 * i);
    v8 = v9 + (v6 < *(a3 + 8 * i));
    *(a1 + 8 * i) = v6;
  }

  return v8;
}

BOOL mbedtls_mpi_core_add_if (uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v10 = 0;
  v9 = mbedtls_ct_BOOL(a4);
  for (i = 0; i < a3; ++i)
  {
    v7 = mbedtls_ct_BOOL_and(v9, *(a2 + 8 * i));
    v5 = v10 + *(a1 + 8 * i);
    v11 = v5 < *(a1 + 8 * i);
    v6 = v5 + v7;
    v10 = v11 + (v6 < v7);
    *(a1 + 8 * i) = v6;
  }

  return v10;
}

unint64_t mbedtls_mpi_core_sub(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  for (i = 0; i < a4; ++i)
  {
    v5 = *(a2 + 8 * i) - v7;
    v7 = (v5 < *(a3 + 8 * i)) + (*(a2 + 8 * i) < v7);
    *(a1 + 8 * i) = v5 - *(a3 + 8 * i);
  }

  return v7;
}

unint64_t mbedtls_mpi_core_mla(unint64_t *a1, unint64_t a2, unint64_t *a3, unint64_t a4, unint64_t a5)
{
  v22 = a4;
  v21 = 0;
  if (a2 < a4)
  {
    v22 = a2;
  }

  v20 = a2 - v22;
  v19 = v22 >> 3;
  v18 = v22 & 7;
  while (v19--)
  {
    v6 = *a3 * a5 + *a1 + v21;
    *a1 = v6;
    v7 = a3[1] * a5 + a1[1] + *(&v6 + 1);
    a1[1] = v7;
    v8 = a3[2] * a5 + a1[2] + *(&v7 + 1);
    a1[2] = v8;
    v9 = a3[3] * a5 + a1[3] + *(&v8 + 1);
    a1[3] = v9;
    v10 = a3[4] * a5 + a1[4] + *(&v9 + 1);
    a1[4] = v10;
    v11 = a3[5] * a5 + a1[5] + *(&v10 + 1);
    a1[5] = v11;
    v12 = a3[6] * a5 + a1[6] + *(&v11 + 1);
    a1[6] = v12;
    v13 = a3[7] * a5 + a1[7] + *(&v12 + 1);
    a1[7] = v13;
    v21 = *(&v13 + 1);
    a1 += 8;
    a3 += 8;
  }

  while (v18--)
  {
    v15 = *a3 * a5 + *a1 + v21;
    *a1 = v15;
    v21 = *(&v15 + 1);
    ++a1;
    ++a3;
  }

  while (v20--)
  {
    *a1 += v21;
    v21 = *a1++ < v21;
  }

  return v21;
}

unint64_t mbedtls_mpi_core_mul(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __memset_chk();
  for (i = 0; i < a5; ++i)
  {
    result = mbedtls_mpi_core_mla((a1 + 8 * i), a3 + 1, a2, a3, *(a4 + 8 * i));
  }

  return result;
}

uint64_t mbedtls_mpi_core_montmul_init(void *a1)
{
  v3 = *a1 + 2 * ((*a1 + 2) & 4);
  for (i = 64; i >= 8; i /= 2u)
  {
    v3 *= 2 - *a1 * v3;
  }

  return -v3;
}

void mbedtls_mpi_core_montmul(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, uint64_t a7, unint64_t *a8)
{
  __memset_chk();
  for (i = 0; i < a6; ++i)
  {
    v11 = (*a8 + *(a2 + 8 * i) * *a3) * a7;
    mbedtls_mpi_core_mla(a8, a6 + 2, a3, a4, *(a2 + 8 * i));
    mbedtls_mpi_core_mla(a8++, a6 + 2, a5, a6, v11);
  }

  v10 = a8[a6];
  v9 = mbedtls_mpi_core_sub(a1, a8, a5, a6);
  v8 = mbedtls_ct_BOOL(v10 ^ v9);
  mbedtls_ct_memcpy_if (v8, a1, a8, 0, 8 * a6);
}

uint64_t mbedtls_mpi_core_get_mont_r2_unsafe(uint64_t *a1, uint64_t a2)
{
  v3 = mbedtls_mpi_lset(a1, 1uLL);
  if (!v3)
  {
    v3 = mbedtls_mpi_shift_l(a1, (2 * *(a2 + 10)) << 6);
    if (!v3)
    {
      v3 = mbedtls_mpi_mod_mpi(a1, a1, a2);
      if (!v3)
      {
        return mbedtls_mpi_shrink(a1, *(a2 + 10));
      }
    }
  }

  return v3;
}

uint64_t mbedtls_mpi_core_fill_random(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t), uint64_t a5)
{
  v7 = a3 / 8 + (a3 % 8 != 0);
  v6 = 8 * v7 - a3;
  if (a2 >= v7)
  {
    __memset_chk();
    __memset_chk();
    v8 = a4(a5, a1 + v6, a3);
    if (!v8)
    {
      mbedtls_mpi_core_bigendian_to_host(a1, v7);
    }

    return v8;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_core_random(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, unint64_t), uint64_t a6)
{
  mbedtls_ct_compiler_opaque();
  mbedtls_ct_compiler_opaque();
  v13 = mbedtls_mpi_core_bitlen(a3, a4);
  v12 = (v13 + 7) / 8;
  if (v12 <= 4)
  {
    v6 = 250;
  }

  else
  {
    v6 = 30;
  }

  v10 = v6;
  do
  {
    v11 = mbedtls_mpi_core_fill_random(a1, a4, v12, a5, a6);
    if (v11)
    {
      break;
    }

    mbedtls_mpi_core_shift_r(a1, a4, 8 * v12 - v13);
    if (!--v10)
    {
      return -14;
    }

    v15 = mbedtls_mpi_core_uint_le_mpi(a2, a1, a4);
    v14 = mbedtls_mpi_core_lt_ct(a1, a3, a4);
    v9 = mbedtls_ct_BOOL_and(v15, v14);
    mbedtls_ct_compiler_opaque();
  }

  while (v9 == v7);
  return v11;
}

void mbedtls_mpi_core_exp_mod(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, void *a8)
{
  window_size = exp_mod_get_window_size();
  v15 = &a8[(1 << window_size) * a4];
  v14 = &v15[a4];
  v13 = mbedtls_mpi_core_montmul_init(a3);
  exp_mod_precompute_window(a2, a3, a4, v13, a7, 1 << window_size, a8, v14);
  __memcpy_chk();
  v12 = a6;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  do
  {
    mbedtls_mpi_core_montmul(a1, a1, a1, a4, a3, a4, v13, v14);
    if (v11)
    {
      --v11;
    }

    else
    {
      --v12;
      v11 = 63;
    }

    ++v10;
    v9 = (2 * v9) | (*(a5 + 8 * v12) >> v11) & 1;
    if (v10 == window_size || !v11 && !v12)
    {
      mbedtls_mpi_core_ct_uint_table_lookup(v15, a8, a4, 1 << window_size);
      mbedtls_mpi_core_montmul(a1, a1, v15, a4, a3, a4, v13, v14);
      v9 = 0;
      v10 = 0;
    }

    v8 = 0;
    if (!v11)
    {
      v8 = v12 == 0;
    }
  }

  while (!v8);
}

void exp_mod_precompute_window(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t a6, void *a7, unint64_t *a8)
{
  __memset_chk();
  *a7 = 1;
  mbedtls_mpi_core_montmul(a7, a7, a5, a3, a2, a3, a4, a8);
  __memcpy_chk();
  v9 = &a7[a3];
  for (i = 2; i < a6; ++i)
  {
    mbedtls_mpi_core_montmul(v9 + 8 * a3, v9, &a7[a3], a3, a2, a3, a4, a8);
    v9 += 8 * a3;
  }
}

uint64_t mbedtls_mpi_core_ct_uint_table_lookup(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = result;
  for (i = 0; i < a4; ++i)
  {
    v4 = mbedtls_ct_uint_eq();
    result = mbedtls_mpi_core_cond_assign(v9, a2, a3, v4);
    a2 += 8 * a3;
  }

  return result;
}

BOOL mbedtls_mpi_core_sub_int(uint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4)
{
  for (i = 0; i < a4; ++i)
  {
    v6 = *(a2 + 8 * i);
    v5 = v6 - a3;
    a3 = v6 - a3 > v6;
    *(a1 + 8 * i) = v5;
  }

  return a3;
}

uint64_t mbedtls_mpi_core_check_zero_ct(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  for (i = 0; i < a2; ++i)
  {
    v4 |= *(a1 + 8 * i);
  }

  return mbedtls_ct_BOOL(v4);
}

void mbedtls_mpi_core_from_mont_rep(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, unint64_t *a6)
{
  v6[6] = a1;
  v6[5] = a2;
  v6[4] = a3;
  v6[3] = a4;
  v6[2] = a5;
  v6[1] = a6;
  v6[0] = 1;
  mbedtls_mpi_core_montmul(a1, a2, v6, 1uLL, a3, a4, a5, a6);
}

uint64_t mbedtls_ct_uint_ne()
{
  mbedtls_ct_compiler_opaque();
  v3 = v0;
  mbedtls_ct_compiler_opaque();
  return mbedtls_ct_BOOL(v3 ^ v1);
}

void *mbedtls_md_info_from_type(int a1)
{
  if (a1 == 9)
  {
    return &mbedtls_sha256_info;
  }

  else
  {
    return 0;
  }
}

void **mbedtls_md_free(void **result)
{
  v2 = result;
  if (result && *result)
  {
    if (result[1])
    {
      if (**result == 9)
      {
        mbedtls_sha256_free(result[1]);
      }

      v1 = v2[1];
      mbedtls_free();
    }

    if (v2[2])
    {
      mbedtls_zeroize_and_free(v2[2], 2 * *(*v2 + 5));
    }

    return mbedtls_platform_zeroize(v2, 0x18uLL);
  }

  return result;
}

uint64_t mbedtls_md_clone(uint64_t a1, uint64_t a2)
{
  if (a1 && *a1 && a2 && *a2 && *a1 == *a2)
  {
    if (**a2 == 9)
    {
      mbedtls_sha256_clone(*(a1 + 8), *(a2 + 8));
      return 0;
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_setup(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = a2;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      if (*a2 == 9)
      {
        *(a1 + 8) = mbedtls_calloc();
        if (*(a1 + 8))
        {
          v3 = *(a1 + 8);
          mbedtls_sha256_init();
          if (!a3)
          {
            return 0;
          }

          v4 = *(a2 + 5);
          if ((*(a1 + 16) = mbedtls_calloc()) != 0)
          {
            return 0;
          }

          else
          {
            mbedtls_md_free(a1);
            return -20864;
          }
        }

        else
        {
          return -20864;
        }
      }

      else
      {
        return -20736;
      }
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_starts(_DWORD **a1)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_starts(a1[1], 0);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_update(*(a1 + 8), a2, a3);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_finish(_DWORD **a1)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_finish(a1[1]);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*a1 == 9)
    {
      return mbedtls_sha256(a2, a3, a4, 0);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_get_size(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_md_get_type(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_md_info_from_string(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &md_names; ; i += 2)
  {
    v2 = 0;
    if (*i)
    {
      v2 = strcmp(*i, a1) != 0;
    }

    if (!v2)
    {
      break;
    }
  }

  return mbedtls_md_info_from_type(*(i + 2));
}

char *mbedtls_md_get_name(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &md_names; ; i += 2)
  {
    v2 = 0;
    if (*(i + 2))
    {
      v2 = *(i + 2) != *a1;
    }

    if (!v2)
    {
      break;
    }
  }

  return *i;
}

uint64_t mbedtls_md_info_from_ctx(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_md_hmac_starts(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v9 = a3;
  if (a1 && *a1 && *(a1 + 16))
  {
    if (a3 > *(*a1 + 5))
    {
      v8 = mbedtls_md_starts(a1);
      if (v8 || (v8 = mbedtls_md_update(a1, a2, v9)) != 0 || (v8 = mbedtls_md_finish(a1)) != 0)
      {
LABEL_22:
        mbedtls_platform_zeroize(v15, 0x20uLL);
        return v8;
      }

      v9 = *(*a1 + 4);
      a2 = v15;
    }

    v7 = *(a1 + 16);
    v6 = v7 + *(*a1 + 5);
    v3 = *(*a1 + 5);
    __memset_chk();
    v4 = *(*a1 + 5);
    __memset_chk();
    for (i = 0; i + 16 <= v9; i += 16)
    {
      *(v7 + i) = veorq_s8(*(v7 + i), *&a2[i]);
    }

    while (i < v9)
    {
      *(v7 + i) ^= a2[i];
      ++i;
    }

    for (j = 0; j + 16 <= v9; j += 16)
    {
      *(v6 + j) = veorq_s8(*(v6 + j), *&a2[j]);
    }

    while (j < v9)
    {
      *(v6 + j) ^= a2[j];
      ++j;
    }

    v8 = mbedtls_md_starts(a1);
    if (!v8)
    {
      v8 = mbedtls_md_update(a1, v7, *(*a1 + 5));
    }

    goto LABEL_22;
  }

  return -20736;
}

uint64_t mbedtls_md_hmac_update(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *a1 && a1[2])
  {
    return mbedtls_md_update(a1, a2, a3);
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac_finish(void *a1)
{
  if (a1 && *a1 && a1[2])
  {
    v2 = a1[2] + *(*a1 + 5);
    v3 = mbedtls_md_finish(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      v4 = mbedtls_md_starts(a1);
      if (v4)
      {
        return v4;
      }

      else
      {
        v5 = mbedtls_md_update(a1, v2, *(*a1 + 5));
        if (v5)
        {
          return v5;
        }

        else
        {
          v6 = mbedtls_md_update(a1, v9, *(*a1 + 4));
          if (v6)
          {
            return v6;
          }

          else
          {
            return mbedtls_md_finish(a1);
          }
        }
      }
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac_reset(uint64_t a1)
{
  if (a1 && *a1 && *(a1 + 16))
  {
    v2 = *(a1 + 16);
    v3 = mbedtls_md_starts(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return mbedtls_md_update(a1, v2, *(*a1 + 5));
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8[3] = a6;
  memset(v8, 0, 24);
  if (a1)
  {
    mbedtls_md_init();
    v7 = mbedtls_md_setup(v8, v13, 1);
    if (!v7)
    {
      v7 = mbedtls_md_hmac_starts(v8, v12, v11);
      if (!v7)
      {
        v7 = mbedtls_md_hmac_update(v8, v10, v9);
        if (!v7)
        {
          v7 = mbedtls_md_hmac_finish(v8);
        }
      }
    }

    mbedtls_md_free(v8);
    return v7;
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_ct_memcmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  v5 = 0;
  while (v8 + 4 <= a3)
  {
    unaligned_volatile_uint32 = mbedtls_get_unaligned_volatile_uint32((a1 + v8));
    v5 |= unaligned_volatile_uint32 ^ mbedtls_get_unaligned_volatile_uint32((a2 + v8));
    v8 += 4;
  }

  while (v8 < a3)
  {
    v5 |= *(a1 + v8) ^ *(a2 + v8);
    ++v8;
  }

  return v5 | HIWORD(v5);
}

void mbedtls_ct_memcpy_if (uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  mbedtls_ct_compiler_opaque();
  v7 = ~v5;
  if (!a4)
  {
    a4 = a2;
  }

  for (i = 0; i + 8 <= a5; i += 8)
  {
    v13 = *(a3 + i) & a1 | *(a4 + i) & v7;
    __memcpy_chk();
  }

  while (i < a5)
  {
    *(a2 + i) = *(a3 + i) & a1 | *(a4 + i) & v7;
    ++i;
  }
}

void mbedtls_ct_memcpy_offset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  while (a4 <= a5)
  {
    v6 = mbedtls_ct_uint_eq();
    mbedtls_ct_memcpy_if (v6, a1, a2 + a4++, 0, a6);
  }
}

uint64_t mbedtls_oid_get_attr_short_name(uint64_t a1, void *a2)
{
  v3 = oid_x520_attr_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[4];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_x520_attr_from_asn1(uint64_t a1)
{
  v3 = &oid_x520_attr_type;
  v2 = &oid_x520_attr_type;
  if (!&oid_x520_attr_type || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_x509_ext_type(uint64_t a1, _DWORD *a2)
{
  v3 = oid_x509_ext_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_x509_ext_from_asn1(uint64_t a1)
{
  v3 = &oid_x509_ext;
  v2 = &oid_x509_ext;
  if (!&oid_x509_ext || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_extended_key_usage(uint64_t a1, void *a2)
{
  v3 = oid_ext_key_usage_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_ext_key_usage_from_asn1(uint64_t a1)
{
  v3 = &oid_ext_key_usage;
  v2 = &oid_ext_key_usage;
  if (!&oid_ext_key_usage || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 4;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_certificate_policies(uint64_t a1, void *a2)
{
  v3 = oid_certificate_policies_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

const void **oid_certificate_policies_from_asn1(uint64_t a1)
{
  v3 = &oid_certificate_policies;
  v2 = &oid_certificate_policies;
  if (!&oid_certificate_policies || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 4;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_sig_alg_desc(uint64_t a1, void *a2)
{
  v3 = oid_sig_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_sig_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_sig_alg;
  v2 = &oid_sig_alg;
  if (!&oid_sig_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_sig_alg(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v4 = oid_sig_alg_from_asn1(a1);
  if (v4)
  {
    *a2 = *(v4 + 8);
    *a3 = *(v4 + 9);
    return 0;
  }

  else
  {
    return -46;
  }
}

uint64_t mbedtls_oid_get_oid_by_sig_alg(int a1, int a2, char **a3, void *a4)
{
  for (i = &oid_sig_alg; *i; i += 5)
  {
    if (*(i + 9) == a1 && *(i + 8) == a2)
    {
      *a3 = *i;
      *a4 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_pk_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_pk_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_pk_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_pk_alg;
  v2 = &oid_pk_alg;
  if (!&oid_pk_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_pk_alg(int a1, char **a2, void *a3)
{
  for (i = &oid_pk_alg; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_ec_grp(uint64_t a1, _DWORD *a2)
{
  v3 = oid_grp_id_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_grp_id_from_asn1(uint64_t a1)
{
  v3 = &oid_ecp_grp;
  v2 = &oid_ecp_grp;
  if (!&oid_ecp_grp || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_ec_grp(int a1, char **a2, void *a3)
{
  for (i = &oid_ecp_grp; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_ec_grp_algid(uint64_t a1, _DWORD *a2)
{
  v3 = oid_grp_id_algid_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

const void **oid_grp_id_algid_from_asn1(uint64_t a1)
{
  v3 = &oid_ecp_grp_algid;
  v2 = &oid_ecp_grp_algid;
  if (!&oid_ecp_grp_algid || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_ec_grp_algid(int a1, void *a2, void *a3)
{
  for (i = &oid_ecp_grp_algid; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_cipher_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_cipher_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_cipher_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_cipher_alg;
  v2 = &oid_cipher_alg;
  if (!&oid_cipher_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_md_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_md_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_md_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_md_alg;
  v2 = &oid_md_alg;
  if (!&oid_md_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_md(int a1, char **a2, void *a3)
{
  for (i = &oid_md_alg; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_md_hmac(uint64_t a1, _DWORD *a2)
{
  v3 = oid_md_hmac_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_md_hmac_from_asn1(uint64_t a1)
{
  v3 = &oid_md_hmac;
  v2 = &oid_md_hmac;
  if (!&oid_md_hmac || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_numeric_string(char *a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = 0;
  if (a2 <= 0x7FFFFFFF)
  {
    if (*(a3 + 8))
    {
      for (i = 0; i < *(a3 + 8); ++i)
      {
        if (v6 > 0x1FFFFFF)
        {
          return -104;
        }

        if (!v6 && *(*(a3 + 16) + i) == 128)
        {
          return -104;
        }

        v6 = (v6 << 7) | *(*(a3 + 16) + i) & 0x7F;
        if ((*(*(a3 + 16) + i) & 0x80) == 0)
        {
          if (v7 == a2)
          {
            if (v6 < 0x50)
            {
              if (v6 < 0x28)
              {
                v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 48, v6);
              }

              else
              {
                v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 49, v6 - 40);
              }
            }

            else
            {
              v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 50, v6 - 80);
            }

            v9 = v3;
          }

          else
          {
            v9 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, ".%u", v6);
          }

          if (v9 < 2 || v9 >= v7)
          {
            return -11;
          }

          v7 -= v9;
          a1 += v9;
          v6 = 0;
        }
      }

      if (v6)
      {
        return -96;
      }

      else
      {
        return (a2 - v7);
      }
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_oid_from_numeric_string(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = -104;
  v20 = a2;
  v19 = &a2[a3];
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  for (i = 0; i < v22; ++i)
  {
    if (v23[i] == 46)
    {
      ++v13;
    }
  }

  if (v13 && v13 <= 0x7F)
  {
    v11 = 5;
    v10 = 5 * v13;
    *(v24 + 16) = mbedtls_calloc();
    if (!*(v24 + 16))
    {
      return -106;
    }

    v9 = *(v24 + 16);
    v8 = *(v24 + 16) + v10;
    v21 = oid_parse_number(&v17, &v20, v19);
    if (!v21)
    {
      if (v17 <= 2)
      {
        if (v20 < v19 && *v20 == 46)
        {
          ++v20;
          v21 = oid_parse_number(&v16, &v20, v19);
          if (!v21)
          {
            if (v17 >= 2 || v16 <= 0x27)
            {
              if (v20 < v19)
              {
                if (*v20 != 46)
                {
                  v21 = -104;
                  goto LABEL_40;
                }

                ++v20;
              }

              if (v16 > -1 - 40 * v17)
              {
                v21 = -104;
              }

              else
              {
                v3 = oid_subidentifier_encode_into(&v9, v8, 40 * v17 + v16);
                v21 = v3;
                if (!v3)
                {
                  while (v20 < v19)
                  {
                    v21 = oid_parse_number(&v18, &v20, v19);
                    if (v21)
                    {
                      goto LABEL_40;
                    }

                    if (v20 < v19)
                    {
                      if (*v20 != 46)
                      {
                        v21 = -104;
                        goto LABEL_40;
                      }

                      ++v20;
                    }

                    v21 = oid_subidentifier_encode_into(&v9, v8, v18);
                    if (v21)
                    {
                      goto LABEL_40;
                    }
                  }

                  v15 = v9 - *(v24 + 16);
                  v14 = mbedtls_calloc();
                  if (v14)
                  {
                    v4 = *(v24 + 16);
                    __memcpy_chk();
                    v5 = *(v24 + 16);
                    mbedtls_free();
                    *(v24 + 16) = v14;
                    *(v24 + 8) = v15;
                    *v24 = 6;
                    return 0;
                  }

                  v21 = -106;
                }
              }
            }

            else
            {
              v21 = -104;
            }
          }
        }

        else
        {
          v21 = -104;
        }
      }

      else
      {
        v21 = -104;
      }
    }

LABEL_40:
    v6 = *(v24 + 16);
    mbedtls_free();
    *(v24 + 16) = 0;
    *(v24 + 8) = 0;
    return v21;
  }

  return -104;
}

uint64_t oid_parse_number(_DWORD *a1, unint64_t *a2, unint64_t a3)
{
  v5 = -104;
  for (*a1 = 0; ; *a1 += *(*a2)++ - 48)
  {
    v4 = 0;
    if (*a2 < a3)
    {
      v4 = 0;
      if (**a2 >= 48)
      {
        v4 = **a2 <= 57;
      }
    }

    if (!v4)
    {
      break;
    }

    v5 = 0;
    if (*a1 > 0x19999999u)
    {
      return -104;
    }

    *a1 *= 10;
  }

  return v5;
}

uint64_t oid_subidentifier_encode_into(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = oid_subidentifier_num_bytes(a3);
  if (a2 - *a1 >= v5)
  {
    *(*a1 + v5 - 1) = a3 & 0x7F;
    v7 = a3 >> 7;
    for (i = 2; i <= v5; ++i)
    {
      *(*a1 + v5 - i) = v7 & 0x7F | 0x80;
      v7 >>= 7;
    }

    *a1 += v5;
    return 0;
  }

  else
  {
    return -11;
  }
}

uint64_t oid_subidentifier_num_bytes(unsigned int a1)
{
  v2 = 0;
  do
  {
    a1 >>= 7;
    ++v2;
  }

  while (a1);
  return v2;
}

uint64_t mbedtls_pem_read_buffer(void *a1, const char *a2, const char *a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a1)
  {
    __s1 = strstr(v21, v23);
    if (__s1)
    {
      v10 = strstr(v21, v22);
      if (v10 && v10 > __s1)
      {
        __s1a = &__s1[strlen(v23)];
        if (*__s1a == 32)
        {
          ++__s1a;
        }

        if (*__s1a == 13)
        {
          ++__s1a;
        }

        if (*__s1a == 10)
        {
          __s1b = __s1a + 1;
          v7 = strlen(v22);
          v9 = &v10[v7];
          if (v10[v7] == 32)
          {
            ++v9;
          }

          if (*v9 == 13)
          {
            ++v9;
          }

          if (*v9 == 10)
          {
            ++v9;
          }

          *v18 = v9 - v21;
          v16 = 0;
          if (v10 - __s1b >= 22 && !memcmp(__s1b, "Proc-Type: 4,ENCRYPTED", 0x16uLL))
          {
            return -5120;
          }

          else if (__s1b < v10)
          {
            v17 = mbedtls_base64_decode(0, 0, &v15, __s1b, v10 - __s1b);
            if (v17 == -44)
            {
              return mbedtls_error_add(-4352, -44);
            }

            else if (v15)
            {
              v14 = mbedtls_calloc();
              if (v14)
              {
                v17 = mbedtls_base64_decode(v14, v15, &v15, __s1b, v10 - __s1b);
                if (v17)
                {
                  mbedtls_zeroize_and_free(v14, v15);
                  return mbedtls_error_add(-4352, v17);
                }

                else if (v16)
                {
                  mbedtls_zeroize_and_free(v14, v15);
                  return -5120;
                }

                else
                {
                  *v24 = v14;
                  v24[1] = v15;
                  return 0;
                }
              }

              else
              {
                return -4480;
              }
            }

            else
            {
              return -5248;
            }
          }

          else
          {
            return -4352;
          }
        }

        else
        {
          return -4224;
        }
      }

      else
      {
        return -4224;
      }
    }

    else
    {
      return -4224;
    }
  }

  else
  {
    return -5248;
  }
}

void *mbedtls_pem_free(uint64_t a1)
{
  if (*a1)
  {
    mbedtls_zeroize_and_free(*a1, *(a1 + 8));
  }

  v1 = *(a1 + 16);
  mbedtls_free();
  return mbedtls_platform_zeroize(a1, 0x18uLL);
}

void *mbedtls_pk_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *mbedtls_pk_free(void *result)
{
  v1 = result;
  if (result)
  {
    if (*result)
    {
      if (*(*result + 80))
      {
        (*(*result + 80))(result[1]);
      }
    }

    return mbedtls_platform_zeroize(v1, 0x10uLL);
  }

  return result;
}

void *mbedtls_pk_info_from_type(int a1)
{
  switch(a1)
  {
    case 1:
      return &mbedtls_rsa_info;
    case 2:
      return &mbedtls_eckey_info;
    case 3:
      return &mbedtls_eckeydh_info;
    case 4:
      return &mbedtls_ecdsa_info;
  }

  return 0;
}

uint64_t mbedtls_pk_setup(void *a1, uint64_t a2)
{
  if (a2 && !*a1)
  {
    if (!*(a2 + 72) || (v2 = (*(a2 + 72))(), (a1[1] = v2) != 0))
    {
      *a1 = a2;
      return 0;
    }

    else
    {
      return -16256;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_can_do(uint64_t a1, unsigned int a2)
{
  if (a1 && *a1)
  {
    return (*(*a1 + 24))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_verify_restartable(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if ((a2 || v9) && !v10)
  {
    return -16000;
  }

  else if (*v12 && !pk_hashlen_helper(v11, &v9))
  {
    if (*(*v12 + 32))
    {
      return (*(*v12 + 32))(v12, v11, v10, v9, a5, a6);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t pk_hashlen_helper(int a1, void *a2)
{
  if (*a2)
  {
    return 0;
  }

  else
  {
    *a2 = mbedtls_md_get_size_from_type(a1);
    if (*a2)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t mbedtls_pk_verify_ext(unsigned int a1, int *a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((a4 || a6) && !a5)
  {
    return -16000;
  }

  else if (*a3)
  {
    if (mbedtls_pk_can_do(a3, a1))
    {
      if (a1 == 6)
      {
        if (mbedtls_pk_get_type(a3) == 1)
        {
          if (a4 || a6 <= 0xFFFFFFFF)
          {
            if (a2)
            {
              if (a8 >= mbedtls_pk_get_len(a3))
              {
                v8 = mbedtls_pk_rsa(*a3, *(a3 + 8));
                v10 = mbedtls_rsa_rsassa_pss_verify_ext(v8, a4, a6, a5, *a2, a2[1], a7);
                if (v10)
                {
                  return v10;
                }

                else if (a8 <= mbedtls_pk_get_len(a3))
                {
                  return 0;
                }

                else
                {
                  return -14592;
                }
              }

              else
              {
                return -17280;
              }
            }

            else
            {
              return -16000;
            }
          }

          else
          {
            return -16000;
          }
        }

        else
        {
          return -14720;
        }
      }

      else if (a2)
      {
        return -16000;
      }

      else
      {
        return mbedtls_pk_verify(a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_get_type(unsigned int **a1)
{
  if (a1 && *a1)
  {
    return **a1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_rsa(unsigned int *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  if (mbedtls_pk_get_type(&v3) == 1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_sign_restartable(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if ((a2 || v15) && !v16)
  {
    return -16000;
  }

  else if (*v18 && !pk_hashlen_helper(v17, &v15))
  {
    if (*(*v18 + 40))
    {
      return (*(*v18 + 40))(v18, v17, v16, v15, a5, a6, a7, a8, a9, a10);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_sign_ext(unsigned int a1, unsigned int **a2, unsigned int a3, uint64_t a4, uint64_t a5, _BYTE *a6, unint64_t a7, void *a8, uint64_t (*a9)(uint64_t, unint64_t, unint64_t), uint64_t a10)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  if (*a2)
  {
    if (mbedtls_pk_can_do(v19, v20))
    {
      if (v20 == 6)
      {
        if (a7 >= mbedtls_pk_get_len(v19))
        {
          if (pk_hashlen_helper(v18, &v16))
          {
            return -16000;
          }

          else
          {
            v12 = mbedtls_pk_rsa(*v19, v19[1]);
            v11 = mbedtls_rsa_rsassa_pss_sign_no_mode_check(v12, a9, a10, v18, v16, v17, a6);
            if (!v11)
            {
              *a8 = *(v12 + 8);
            }

            return v11;
          }
        }

        else
        {
          return -14464;
        }
      }

      else
      {
        return mbedtls_pk_sign(v19, v18, v17, v16, a6, a7, a8, a9, a10);
      }
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    if (*(*a1 + 48))
    {
      return (*(*a1 + 48))(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    if (*(*a1 + 56))
    {
      return (*(*a1 + 56))(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_check_pair(_DWORD **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 && *a2)
  {
    if (a3)
    {
      if (*(*a2 + 64))
      {
        if (**a2 == 5)
        {
          if (**a1 != 1)
          {
            return -16128;
          }
        }

        else if (**a2 != 7 && *a1 != *a2)
        {
          return -16128;
        }

        return (*(*a2 + 64))(a1, a2, a3, a4);
      }

      return -14720;
    }

    else
    {
      return -16000;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_get_bitlen(uint64_t a1)
{
  if (a1 && *a1)
  {
    return (*(*a1 + 16))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_debug(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*(*a1 + 88))
    {
      (*(*a1 + 88))(a1, a2);
      return 0;
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

const char *mbedtls_pk_get_name(uint64_t a1)
{
  if (a1 && *a1)
  {
    return *(*a1 + 8);
  }

  else
  {
    return "invalid PK";
  }
}

BOOL rsa_can_do(int a1)
{
  v2 = 1;
  if (a1 != 1)
  {
    return a1 == 6;
  }

  return v2;
}

uint64_t rsa_verify_wrap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(a1 + 8);
  len = mbedtls_rsa_get_len(v8);
  if (a2 || a4 <= 0xFFFFFFFF)
  {
    if (a6 >= len)
    {
      v9 = mbedtls_rsa_pkcs1_verify(v8, a2, a4, a3, a5);
      if (v9)
      {
        return v9;
      }

      else if (a6 <= len)
      {
        return 0;
      }

      else
      {
        return -14592;
      }
    }

    else
    {
      return -17280;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t rsa_sign_wrap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, _BYTE *a5, unint64_t a6, uint64_t *a7, uint64_t (*a8)(uint64_t, unint64_t, unint64_t), uint64_t a9)
{
  v15 = a4;
  v10 = *(a1 + 8);
  if (a2 || a4 <= 0xFFFFFFFF)
  {
    *a7 = mbedtls_rsa_get_len(v10);
    if (a6 >= *a7)
    {
      return mbedtls_rsa_pkcs1_sign(v10, a8, a9, a2, v15, a3, a5);
    }

    else
    {
      return -14464;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t rsa_decrypt_wrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, unint64_t), uint64_t a8)
{
  v9 = *(a1 + 8);
  if (a3 == mbedtls_rsa_get_len(v9))
  {
    return mbedtls_rsa_pkcs1_decrypt(v9, a7, a8, a5, a2, a4, a6);
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_encrypt_wrap(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, unint64_t a6, uint64_t (*a7)(uint64_t, unint64_t, void), uint64_t a8)
{
  v9 = *(a1 + 8);
  *a5 = mbedtls_rsa_get_len(v9);
  if (*a5 <= a6)
  {
    return mbedtls_rsa_pkcs1_encrypt(v9, a7, a8, a3, a2, a4);
  }

  else
  {
    return -17408;
  }
}

uint64_t rsa_alloc_wrap()
{
  v1 = mbedtls_calloc();
  if (v1)
  {
    mbedtls_rsa_init(v1);
  }

  return v1;
}

uint64_t rsa_debug(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 1;
  *(a2 + 8) = "rsa.N";
  *(a2 + 16) = v2 + 16;
  *(a2 + 24) = 1;
  *(a2 + 32) = "rsa.E";
  *(a2 + 40) = v2 + 32;
  return result;
}

BOOL eckey_can_do(int a1)
{
  v2 = 1;
  if (a1 != 2)
  {
    v2 = 1;
    if (a1 != 3)
    {
      return a1 == 4;
    }
  }

  return v2;
}

uint64_t ecdsa_verify_wrap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  signature = mbedtls_ecdsa_read_signature(*(a1 + 8), a3, a4, a5, a6);
  if (signature == -19456)
  {
    return -14592;
  }

  else
  {
    return signature;
  }
}

uint64_t eckey_alloc_wrap()
{
  v1 = mbedtls_calloc();
  if (v1)
  {
    mbedtls_ecp_keypair_init(v1);
  }

  return v1;
}

uint64_t eckey_debug(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 2;
  *(a2 + 8) = "eckey.Q";
  *(a2 + 16) = v2 + 208;
  return result;
}

BOOL eckeydh_can_do(int a1)
{
  v2 = 1;
  if (a1 != 2)
  {
    return a1 == 3;
  }

  return v2;
}

uint64_t mbedtls_pk_parse_subpubkey(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int **a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  tag = -110;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  v7 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v10, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  else
  {
    v13 = &(*v14)[v10];
    tag = pk_get_pk_alg(v14, v13, &v8, v9, &v7);
    if (tag)
    {
      return tag;
    }

    else
    {
      tag = mbedtls_asn1_get_bitstring_null(v14, v13, &v10);
      if (tag)
      {
        return mbedtls_error_add(-15104, tag);
      }

      else if (&(*v14)[v10] == v13)
      {
        v6 = mbedtls_pk_info_from_type(v8);
        if (v6)
        {
          tag = mbedtls_pk_setup(v12, v6);
          if (tag)
          {
            return tag;
          }

          else
          {
            if (v8 == 1)
            {
              v3 = mbedtls_pk_rsa(*v12, v12[1]);
              tag = mbedtls_rsa_parse_pubkey(v3, *v14, (v13 - *v14));
              if (tag)
              {
                if (tag > -96 || tag < -108)
                {
                  tag = -15104;
                }

                else
                {
                  tag = mbedtls_error_add(-15104, tag);
                }
              }

              else
              {
                v4 = __OFSUB__(v13, *v14);
                *v14 = v13;
              }
            }

            else if (v8 == 3 || v8 == 2)
            {
              tag = pk_use_ecparams(v9, v12);
              if (!tag)
              {
                tag = mbedtls_pk_ecc_set_pubkey(v12, *v14, v13 - *v14);
                v4 = __OFSUB__(v13, *v14);
                *v14 = v13;
              }
            }

            else
            {
              tag = -15488;
            }

            if (!tag && *v14 != v13)
            {
              tag = mbedtls_error_add(-15104, -102);
            }

            if (tag)
            {
              mbedtls_pk_free(v12);
            }

            return tag;
          }
        }

        else
        {
          return -15488;
        }
      }

      else
      {
        return mbedtls_error_add(-15104, -102);
      }
    }
  }
}

uint64_t pk_get_pk_alg(unsigned __int8 **a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  alg = -110;
  memset(v6, 0, sizeof(v6));
  __memset_chk();
  alg = mbedtls_asn1_get_alg(v12, v11, v6, v9);
  if (alg)
  {
    return mbedtls_error_add(-14976, alg);
  }

  else
  {
    alg = mbedtls_oid_get_pk_alg(v6, v10);
    if (alg == -46)
    {
      alg = mbedtls_oid_get_ec_grp_algid(v6, v8);
      if (!alg)
      {
        *v10 = 2;
      }
    }

    if (alg)
    {
      return -15488;
    }

    else if (*v10 == 1 && (*v9 != 5 && *v9 || *(v9 + 1)))
    {
      return -14976;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t pk_use_ecparams(_DWORD *a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v4 = -110;
  v3 = 0;
  if (*a1 != 6)
  {
    v4 = pk_ecc_group_id_from_specified();
    if (v4)
    {
      return v4;
    }

    return mbedtls_pk_ecc_set_group(v5, v3);
  }

  if (!mbedtls_oid_get_ec_grp(v6, &v3))
  {
    return mbedtls_pk_ecc_set_group(v5, v3);
  }

  return -14848;
}

uint64_t mbedtls_pk_parse_key(unsigned int **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, unint64_t), uint64_t a7)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16 = a7;
  v15 = -110;
  v14 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!a3)
  {
    return -15616;
  }

  mbedtls_pem_init();
  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN RSA PRIVATE KEY-----", "-----END RSA PRIVATE KEY-----", v21, v19, v18, &v13);
  }

  switch(v15)
  {
    case 0u:
      v14 = mbedtls_pk_info_from_type(1);
      v15 = mbedtls_pk_setup(v22, v14);
      if (v15 || (v7 = mbedtls_pk_rsa(*v22, v22[1]), (v15 = mbedtls_rsa_parse_key(v7, v10, v11)) != 0))
      {
        mbedtls_pk_free(v22);
      }

LABEL_37:
      mbedtls_pem_free(&v10);
      return v15;
    case 0xFFFFEC80:
      return -15232;
    case 0xFFFFED00:
      return -15360;
  }

  if (v15 != -4224)
  {
    return v15;
  }

  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN EC PRIVATE KEY-----", "-----END EC PRIVATE KEY-----", v21, v19, v18, &v13);
  }

  switch(v15)
  {
    case 0u:
      v14 = mbedtls_pk_info_from_type(2);
      v15 = mbedtls_pk_setup(v22, v14);
      if (v15 || (v15 = pk_parse_key_sec1_der(v22, v10, v11, v17, v16)) != 0)
      {
        mbedtls_pk_free(v22);
      }

      goto LABEL_37;
    case 0xFFFFEC80:
      return -15232;
    case 0xFFFFED00:
      return -15360;
  }

  if (v15 != -4224)
  {
    return v15;
  }

  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN PRIVATE KEY-----", "-----END PRIVATE KEY-----", v21, 0, 0, &v13);
  }

  if (!v15)
  {
    v15 = pk_parse_key_pkcs8_unencrypted_der(v22, v10, v11, v17, v16);
    if (v15)
    {
      mbedtls_pk_free(v22);
    }

    goto LABEL_37;
  }

  if (v15 == -4224)
  {
    v15 = pk_parse_key_pkcs8_unencrypted_der(v22, v21, v20, v17, v16);
    if (v15)
    {
      mbedtls_pk_free(v22);
      mbedtls_pk_init(v22);
      v14 = mbedtls_pk_info_from_type(1);
      if (mbedtls_pk_setup(v22, v14) || (v8 = mbedtls_pk_rsa(*v22, v22[1]), mbedtls_rsa_parse_key(v8, v21, v20)))
      {
        mbedtls_pk_free(v22);
        mbedtls_pk_init(v22);
        v14 = mbedtls_pk_info_from_type(2);
        if (mbedtls_pk_setup(v22, v14) || pk_parse_key_sec1_der(v22, v21, v20, v17, v16))
        {
          mbedtls_pk_free(v22);
          return -15616;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return v15;
  }
}

uint64_t pk_parse_key_sec1_der(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  tag = -110;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = a2;
  tag = mbedtls_asn1_get_tag(&v9, &a2[a3], &v12, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v7 = &v9[v12];
  tag = mbedtls_asn1_get_int(&v9, &v9[v12], &v14);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  if (v14 != 1)
  {
    return -15744;
  }

  tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 4);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v8 = v9;
  v11 = v12;
  v9 += v12;
  v13 = 0;
  if (v9 != v7)
  {
    tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 160);
    if (tag)
    {
      if (tag != -98)
      {
        return mbedtls_error_add(-15616, tag);
      }
    }

    else
    {
      tag = pk_get_ecparams(&v9, &v9[v12], v10);
      if (tag || (tag = pk_use_ecparams(v10, v20)) != 0)
      {
        return tag;
      }
    }
  }

  tag = mbedtls_pk_ecc_set_key(v20, v8, v11);
  if (tag)
  {
    return tag;
  }

  if (v9 == v7)
  {
    goto LABEL_29;
  }

  tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 161);
  if (!tag)
  {
    v6 = &v9[v12];
    tag = mbedtls_asn1_get_bitstring_null(&v9, &v9[v12], &v12);
    if (!tag)
    {
      if (&v9[v12] != v6)
      {
        return mbedtls_error_add(-15616, -102);
      }

      tag = mbedtls_pk_ecc_set_pubkey(v20, v9, v6 - v9);
      if (tag)
      {
        if (tag != -20096)
        {
          return -15616;
        }
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_29;
    }

    return mbedtls_error_add(-15616, tag);
  }

  if (tag != -98)
  {
    return mbedtls_error_add(-15616, tag);
  }

LABEL_29:
  if (v13 || (tag = mbedtls_pk_ecc_set_pubkey_from_prv(v20, v8, v11, v17, v16)) == 0)
  {
    return 0;
  }

  else
  {
    return tag;
  }
}

uint64_t pk_parse_key_pkcs8_unencrypted_der(unsigned int **a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, unint64_t), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  tag = 0;
  v14 = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = a2;
  v10 = &a2[a3];
  v9 = 0;
  v8 = 0;
  tag = mbedtls_asn1_get_tag(&v11, &a2[a3], &v13, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v10 = &v11[v13];
  if ((tag = mbedtls_asn1_get_int(&v11, &v11[v13], &v14)) != 0)
  {
    return mbedtls_error_add(-15616, tag);
  }

  else
  {
    if (v14)
    {
      return mbedtls_error_add(-15744, tag);
    }

    tag = pk_get_pk_alg(&v11, v10, &v9, v12, &v8);
    if (tag)
    {
      return tag;
    }

    tag = mbedtls_asn1_get_tag(&v11, v10, &v13, 4);
    if (tag)
    {
      return mbedtls_error_add(-15616, tag);
    }

    if (!v13)
    {
      return mbedtls_error_add(-15616, -96);
    }

    v7 = mbedtls_pk_info_from_type(v9);
    if (!v7)
    {
      return -15488;
    }

    tag = mbedtls_pk_setup(v20, v7);
    if (tag)
    {
      return tag;
    }

    if (v9 == 1)
    {
      v5 = mbedtls_pk_rsa(*v20, v20[1]);
      tag = mbedtls_rsa_parse_key(v5, v11, v13);
      if (tag)
      {
LABEL_18:
        mbedtls_pk_free(v20);
        return tag;
      }
    }

    else
    {
      if (v9 != 2 && v9 != 3)
      {
        return -15488;
      }

      tag = pk_use_ecparams(v12, v20);
      if (tag)
      {
        goto LABEL_18;
      }

      tag = pk_parse_key_sec1_der(v20, v11, v13, v17, v16);
      if (tag)
      {
        goto LABEL_18;
      }
    }

    v10 = &v11[v13];
    if (&v11[v13] == &v19[v18])
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-15616, -102);
    }
  }
}

uint64_t mbedtls_pk_parse_public_key(unsigned int **a1, char *a2, unsigned __int8 *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -110;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    return -15616;
  }

  mbedtls_pem_init();
  if (v13[v14 - 1])
  {
    v12 = -4224;
  }

  else
  {
    v12 = mbedtls_pem_read_buffer(&v6, "-----BEGIN RSA PUBLIC KEY-----", "-----END RSA PUBLIC KEY-----", v14, 0, 0, &v9);
  }

  if (!v12)
  {
    v11 = v6;
    v10 = mbedtls_pk_info_from_type(1);
    if (!v10)
    {
      mbedtls_pem_free(&v6);
      return -15488;
    }

    v12 = mbedtls_pk_setup(v15, v10);
    if (!v12)
    {
      v3 = mbedtls_pk_rsa(*v15, v15[1]);
      v12 = mbedtls_rsa_parse_pubkey(v3, v11, v7);
      if (v12)
      {
        mbedtls_pk_free(v15);
      }
    }

LABEL_21:
    mbedtls_pem_free(&v6);
    return v12;
  }

  if (v12 != -4224)
  {
    goto LABEL_21;
  }

  if (v13[v14 - 1])
  {
    v12 = -4224;
  }

  else
  {
    v12 = mbedtls_pem_read_buffer(&v6, "-----BEGIN PUBLIC KEY-----", "-----END PUBLIC KEY-----", v14, 0, 0, &v9);
  }

  if (!v12)
  {
    v11 = v6;
    v12 = mbedtls_pk_parse_subpubkey(&v11, &v7[v6], v15);
    mbedtls_pem_free(&v6);
    return v12;
  }

  if (v12 != -4224)
  {
    goto LABEL_21;
  }

  mbedtls_pem_free(&v6);
  v10 = mbedtls_pk_info_from_type(1);
  if (v10)
  {
    v12 = mbedtls_pk_setup(v15, v10);
    if (v12)
    {
      return v12;
    }

    else
    {
      v11 = v14;
      v4 = mbedtls_pk_rsa(*v15, v15[1]);
      v12 = mbedtls_rsa_parse_pubkey(v4, v11, v13);
      if (v12)
      {
        mbedtls_pk_free(v15);
        if (v12 == -98)
        {
          v11 = v14;
          return mbedtls_pk_parse_subpubkey(&v11, &v13[v14], v15);
        }

        return v12;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -15488;
  }
}

uint64_t pk_get_ecparams(unsigned __int8 **a1, uint64_t a2, unsigned int *a3)
{
  if (a2 - *a1 >= 1)
  {
    *a3 = **a1;
    if (*a3 == 6 || (v3 = *a3, pk_ecc_tag_is_specified_ec_domain()))
    {
      tag = mbedtls_asn1_get_tag(a1, a2, a3 + 1, *a3);
      if (tag)
      {
        return mbedtls_error_add(-15616, tag);
      }

      else
      {
        *(a3 + 2) = *a1;
        *a1 += *(a3 + 1);
        if (*a1 == a2)
        {
          return 0;
        }

        else
        {
          return mbedtls_error_add(-15616, -102);
        }
      }
    }

    else
    {
      return mbedtls_error_add(-15616, -98);
    }
  }

  else
  {
    return mbedtls_error_add(-15616, -96);
  }
}

uint64_t mbedtls_platform_set_calloc_free(uint64_t (*a1)(), uint64_t (*a2)())
{
  mbedtls_calloc_func[0] = a1;
  mbedtls_free_func = a2;
  return 0;
}

void *mbedtls_platform_zeroize(void *result, size_t a2)
{
  if (a2)
  {
    return _memset(result, 0, a2);
  }

  return result;
}

void mbedtls_zeroize_and_free(void *a1, size_t a2)
{
  if (a1)
  {
    mbedtls_platform_zeroize(a1, a2);
  }

  mbedtls_free();
}

uint64_t mbedtls_rsa_parse_key(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  tag = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v6 = v11;
  v5 = &v11[v10];
  tag = mbedtls_asn1_get_tag(&v6, &v11[v10], &v7, 48);
  if (tag)
  {
    return tag;
  }

  else if (v5 == &v6[v7])
  {
    tag = mbedtls_asn1_get_int(&v6, v5, &v8);
    if (tag)
    {
      return tag;
    }

    else if (v8)
    {
      return -16512;
    }

    else
    {
      tag = asn1_get_nonzero_mpi(&v6, v5, v4);
      if (!tag)
      {
        tag = mbedtls_rsa_import(v12, v4, 0, 0, 0, 0);
        if (!tag)
        {
          tag = asn1_get_nonzero_mpi(&v6, v5, v4);
          if (!tag)
          {
            tag = mbedtls_rsa_import(v12, 0, 0, 0, 0, v4);
            if (!tag)
            {
              tag = asn1_get_nonzero_mpi(&v6, v5, v4);
              if (!tag)
              {
                tag = mbedtls_rsa_import(v12, 0, 0, 0, v4, 0);
                if (!tag)
                {
                  tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                  if (!tag)
                  {
                    tag = mbedtls_rsa_import(v12, 0, v4, 0, 0, 0);
                    if (!tag)
                    {
                      tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                      if (!tag)
                      {
                        tag = mbedtls_rsa_import(v12, 0, 0, v4, 0, 0);
                        if (!tag)
                        {
                          tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                          if (!tag)
                          {
                            tag = mbedtls_mpi_copy((v12 + 12), v4);
                            if (!tag)
                            {
                              tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                              if (!tag)
                              {
                                tag = mbedtls_mpi_copy((v12 + 14), v4);
                                if (!tag)
                                {
                                  tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                                  if (!tag)
                                  {
                                    tag = mbedtls_mpi_copy((v12 + 16), v4);
                                    if (!tag)
                                    {
                                      tag = mbedtls_rsa_complete(v12);
                                      if (!tag)
                                      {
                                        tag = mbedtls_rsa_check_pubkey(v12);
                                        if (!tag && v6 != v5)
                                        {
                                          tag = -102;
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

      mbedtls_mpi_free(v4);
      if (tag)
      {
        mbedtls_rsa_free(v12);
      }

      return tag;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t asn1_get_nonzero_mpi(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  mpi = mbedtls_asn1_get_mpi(a1, a2, a3);
  if (mpi)
  {
    return mpi;
  }

  else if (mbedtls_mpi_cmp_int(a3, 0))
  {
    return 0;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_import(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 && (v7 = mbedtls_mpi_copy(a1 + 16, a2)) != 0 || a3 && (v7 = mbedtls_mpi_copy(a1 + 64, a3)) != 0 || a4 && (v7 = mbedtls_mpi_copy(a1 + 80, a4)) != 0 || a5 && (v7 = mbedtls_mpi_copy(a1 + 48, a5)) != 0 || a6 && (v7 = mbedtls_mpi_copy(a1 + 32, a6)) != 0)
  {
    return mbedtls_error_add(-16512, v7);
  }

  else
  {
    if (a2)
    {
      *(a1 + 8) = mbedtls_mpi_size(a1 + 16);
    }

    return 0;
  }
}

uint64_t mbedtls_rsa_complete(void *a1)
{
  v14 = mbedtls_mpi_cmp_int((a1 + 2), 0) != 0;
  v13 = mbedtls_mpi_cmp_int((a1 + 8), 0) != 0;
  v12 = mbedtls_mpi_cmp_int((a1 + 10), 0) != 0;
  v11 = mbedtls_mpi_cmp_int((a1 + 6), 0) != 0;
  v10 = mbedtls_mpi_cmp_int((a1 + 4), 0) != 0;
  v9 = mbedtls_mpi_cmp_int((a1 + 12), 0) != 0;
  v8 = mbedtls_mpi_cmp_int((a1 + 14), 0) != 0;
  v7 = mbedtls_mpi_cmp_int((a1 + 16), 0) != 0;
  v6 = 0;
  if (v13)
  {
    v6 = 0;
    if (v12)
    {
      v6 = 0;
      if (v11)
      {
        v6 = v10;
      }
    }
  }

  v5 = 0;
  if (v14)
  {
    v5 = 0;
    if (!v13)
    {
      v5 = 0;
      if (!v12)
      {
        v5 = 0;
        if (v11)
        {
          v5 = v10;
        }
      }
    }
  }

  v4 = 0;
  if (v13)
  {
    v4 = 0;
    if (v12)
    {
      v4 = 0;
      if (!v11)
      {
        v4 = v10;
      }
    }
  }

  v3 = 0;
  if (v14)
  {
    v3 = 0;
    if (!v13)
    {
      v3 = 0;
      if (!v12)
      {
        v3 = 0;
        if (!v11)
        {
          v3 = v10;
        }
      }
    }
  }

  v2 = 1;
  if (!v6)
  {
    v2 = 1;
    if (!v5)
    {
      v2 = v4;
    }
  }

  if (v2 || v3)
  {
    if (!v14 && v13 && v12)
    {
      v15 = mbedtls_mpi_mul_mpi(a1 + 2, a1 + 8, a1 + 10);
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }

      a1[1] = mbedtls_mpi_size((a1 + 2));
    }

    if (v5)
    {
      v15 = mbedtls_rsa_deduce_primes(a1 + 2, a1 + 4, a1 + 6, a1 + 8, a1 + 5);
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }
    }

    else if (v4)
    {
      v15 = mbedtls_rsa_deduce_private_exponent((a1 + 8), (a1 + 10), a1 + 4, a1 + 6);
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }
    }

    if (!v2 || v9 && v8 && v7 || (v15 = mbedtls_rsa_deduce_crt(a1 + 8, a1 + 10, a1 + 6, (a1 + 12), (a1 + 14), (a1 + 16))) == 0)
    {
      return rsa_check_context(a1, v2);
    }

    return mbedtls_error_add(-16512, v15);
  }

  return -16512;
}

uint64_t mbedtls_rsa_check_pubkey(uint64_t a1)
{
  if (rsa_check_context(a1, 0))
  {
    return -16896;
  }

  else if (mbedtls_mpi_bitlen(a1 + 16) >= 0x80)
  {
    if (mbedtls_mpi_get_bit(a1 + 32, 0) && mbedtls_mpi_bitlen(a1 + 32) >= 2 && (mbedtls_mpi_cmp_mpi(a1 + 32, a1 + 16) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return -16896;
    }
  }

  else
  {
    return -16896;
  }
}

void mbedtls_rsa_free(uint64_t a1)
{
  if (a1)
  {
    mbedtls_mpi_free(a1 + 192);
    mbedtls_mpi_free(a1 + 208);
    mbedtls_mpi_free(a1 + 144);
    mbedtls_mpi_free(a1 + 48);
    mbedtls_mpi_free(a1 + 80);
    mbedtls_mpi_free(a1 + 64);
    mbedtls_mpi_free(a1 + 32);
    mbedtls_mpi_free(a1 + 16);
    mbedtls_mpi_free(a1 + 176);
    mbedtls_mpi_free(a1 + 160);
    mbedtls_mpi_free(a1 + 128);
    mbedtls_mpi_free(a1 + 112);
    mbedtls_mpi_free(a1 + 96);
  }
}

uint64_t mbedtls_rsa_parse_pubkey(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v8 = a1;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = a2;
  v6 = &a3[a2];
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(v7, &a3[a2], &v4, 48);
  if (tag)
  {
    return tag;
  }

  else if (v6 == &v7[0][v4])
  {
    tag = mbedtls_asn1_get_tag(v7, v6, &v4, 2);
    if (tag)
    {
      return tag;
    }

    else
    {
      tag = mbedtls_rsa_import_raw(v8, v7[0], v4, 0, 0, 0, 0, 0, 0, 0, 0);
      if (tag)
      {
        return -16512;
      }

      else
      {
        v7[0] += v4;
        tag = mbedtls_asn1_get_tag(v7, v6, &v4, 2);
        if (tag)
        {
          return tag;
        }

        else
        {
          tag = mbedtls_rsa_import_raw(v8, 0, 0, 0, 0, 0, 0, 0, 0, v7[0], v4);
          if (tag)
          {
            return -16512;
          }

          else
          {
            v7[0] += v4;
            if (mbedtls_rsa_complete(v8) || mbedtls_rsa_check_pubkey(v8))
            {
              return -16512;
            }

            else if (v7[0] == v6)
            {
              return 0;
            }

            else
            {
              return -102;
            }
          }
        }
      }
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_import_raw(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  binary = 0;
  if (a2)
  {
    binary = mbedtls_mpi_read_binary(a1 + 16, a2, a3);
    if (binary)
    {
      goto LABEL_12;
    }

    *(a1 + 8) = mbedtls_mpi_size(a1 + 16);
  }

  if ((!a4 || (binary = mbedtls_mpi_read_binary(a1 + 64, a4, a5)) == 0) && (!a6 || (binary = mbedtls_mpi_read_binary(a1 + 80, a6, a7)) == 0) && (!a8 || (binary = mbedtls_mpi_read_binary(a1 + 48, a8, a9)) == 0))
  {
    if (a10)
    {
      binary = mbedtls_mpi_read_binary(a1 + 32, a10, a11);
    }
  }

LABEL_12:
  if (binary)
  {
    return mbedtls_error_add(-16512, binary);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_write_key(uint64_t *a1, unint64_t a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v5 = mbedtls_rsa_export_crt(v9, 0, 0, v4);
  if (!v5)
  {
    v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
    if ((v5 & 0x80000000) == 0)
    {
      v6 += v5;
      v5 = mbedtls_rsa_export_crt(v9, 0, v4, 0);
      if (!v5)
      {
        v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
        if ((v5 & 0x80000000) == 0)
        {
          v6 += v5;
          v5 = mbedtls_rsa_export_crt(v9, v4, 0, 0);
          if (!v5)
          {
            v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
            if ((v5 & 0x80000000) == 0)
            {
              v6 += v5;
              v5 = mbedtls_rsa_export(v9, 0, 0, v4, 0, 0);
              if (!v5)
              {
                v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                if ((v5 & 0x80000000) == 0)
                {
                  v6 += v5;
                  v5 = mbedtls_rsa_export(v9, 0, v4, 0, 0, 0);
                  if (!v5)
                  {
                    v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                    if ((v5 & 0x80000000) == 0)
                    {
                      v6 += v5;
                      v5 = mbedtls_rsa_export(v9, 0, 0, 0, v4, 0);
                      if (!v5)
                      {
                        v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                        if ((v5 & 0x80000000) == 0)
                        {
                          v6 += v5;
                          v5 = mbedtls_rsa_export(v9, 0, 0, 0, 0, v4);
                          if (!v5)
                          {
                            v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                            if ((v5 & 0x80000000) == 0)
                            {
                              v6 += v5;
                              v5 = mbedtls_rsa_export(v9, v4, 0, 0, 0, 0);
                              if (!v5)
                              {
                                v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                                if ((v5 & 0x80000000) == 0)
                                {
                                  v6 += v5;
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

  mbedtls_mpi_free(v4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    v5 = mbedtls_asn1_write_int(v7, v8, 0);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      v6 += v5;
      v5 = mbedtls_asn1_write_len(v7, v8, v6);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

      else
      {
        v6 += v5;
        v5 = mbedtls_asn1_write_tag(v7, v8, 48);
        if ((v5 & 0x80000000) != 0)
        {
          return v5;
        }

        else
        {
          v6 += v5;
          return v6;
        }
      }
    }
  }
}

uint64_t mbedtls_rsa_export_crt(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (mbedtls_mpi_cmp_int((a1 + 2), 0))
  {
    v5 = 0;
    if (mbedtls_mpi_cmp_int((a1 + 8), 0))
    {
      v5 = 0;
      if (mbedtls_mpi_cmp_int((a1 + 10), 0))
      {
        v5 = 0;
        if (mbedtls_mpi_cmp_int((a1 + 6), 0))
        {
          v5 = mbedtls_mpi_cmp_int((a1 + 4), 0) != 0;
        }
      }
    }
  }

  if (v5)
  {
    if (a2 && (v6 = mbedtls_mpi_copy(a2, a1 + 12)) != 0 || a3 && (v6 = mbedtls_mpi_copy(a3, a1 + 14)) != 0 || a4 && (v6 = mbedtls_mpi_copy(a4, a1 + 16)) != 0)
    {
      return mbedtls_error_add(-16512, v6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_export(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  if (mbedtls_mpi_cmp_int((a1 + 2), 0))
  {
    v7 = 0;
    if (mbedtls_mpi_cmp_int((a1 + 8), 0))
    {
      v7 = 0;
      if (mbedtls_mpi_cmp_int((a1 + 10), 0))
      {
        v7 = 0;
        if (mbedtls_mpi_cmp_int((a1 + 6), 0))
        {
          v7 = mbedtls_mpi_cmp_int((a1 + 4), 0) != 0;
        }
      }
    }
  }

  if (!v7 && (a3 || a4 || a5))
  {
    return -16512;
  }

  else if (a2 && (v8 = mbedtls_mpi_copy(a2, a1 + 2)) != 0 || a3 && (v8 = mbedtls_mpi_copy(a3, a1 + 8)) != 0 || a4 && (v8 = mbedtls_mpi_copy(a4, a1 + 10)) != 0 || a5 && (v8 = mbedtls_mpi_copy(a5, a1 + 6)) != 0 || a6 && (v8 = mbedtls_mpi_copy(a6, a1 + 4)) != 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_write_pubkey(uint64_t *a1, unint64_t a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v6 = mbedtls_rsa_export(v9, 0, 0, 0, 0, v4);
  if (!v6)
  {
    v6 = mbedtls_asn1_write_mpi(v7, v8, v4);
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      v6 = mbedtls_rsa_export(v9, v4, 0, 0, 0, 0);
      if (!v6)
      {
        v6 = mbedtls_asn1_write_mpi(v7, v8, v4);
        if ((v6 & 0x80000000) == 0)
        {
          v5 += v6;
        }
      }
    }
  }

  mbedtls_mpi_free(v4);
  if (v6 < 0)
  {
    return v6;
  }

  else
  {
    v6 = mbedtls_asn1_write_len(v7, v8, v5);
    if (v6 < 0)
    {
      return v6;
    }

    else
    {
      v5 += v6;
      v6 = mbedtls_asn1_write_tag(v7, v8, 48);
      if (v6 < 0)
      {
        return v6;
      }

      else
      {
        v5 += v6;
        return v5;
      }
    }
  }
}

uint64_t rsa_check_context(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (v4 == mbedtls_mpi_size(a1 + 16) && *(a1 + 8) <= 0x20uLL)
  {
    v2 = mbedtls_mpi_cmp_int(a1 + 16, 0);
    if (v2 > 0 && mbedtls_mpi_get_bit(a1 + 16, 0))
    {
      if (!a2 || mbedtls_mpi_cmp_int(a1 + 64, 0) > 0 && mbedtls_mpi_get_bit(a1 + 64, 0) && mbedtls_mpi_cmp_int(a1 + 80, 0) > 0 && mbedtls_mpi_get_bit(a1 + 80, 0))
      {
        if (mbedtls_mpi_cmp_int(a1 + 32, 0) > 0)
        {
          if (a2 && (mbedtls_mpi_cmp_int(a1 + 96, 0) <= 0 || mbedtls_mpi_cmp_int(a1 + 112, 0) <= 0))
          {
            return -16512;
          }

          else if (a2 && mbedtls_mpi_cmp_int(a1 + 128, 0) <= 0)
          {
            return -16512;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return -16512;
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_export_raw(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11)
{
  v13 = 0;
  v12 = 0;
  if (mbedtls_mpi_cmp_int(a1 + 16, 0))
  {
    v12 = 0;
    if (mbedtls_mpi_cmp_int(a1 + 64, 0))
    {
      v12 = 0;
      if (mbedtls_mpi_cmp_int(a1 + 80, 0))
      {
        v12 = 0;
        if (mbedtls_mpi_cmp_int(a1 + 48, 0))
        {
          v12 = mbedtls_mpi_cmp_int(a1 + 32, 0) != 0;
        }
      }
    }
  }

  if (!v12 && (a4 || a6 || a8))
  {
    return -16512;
  }

  else
  {
    if ((!a2 || (v13 = mbedtls_mpi_write_binary(a1 + 16, a2, a3)) == 0) && (!a4 || (v13 = mbedtls_mpi_write_binary(a1 + 64, a4, a5)) == 0) && (!a6 || (v13 = mbedtls_mpi_write_binary(a1 + 80, a6, a7)) == 0) && (!a8 || (v13 = mbedtls_mpi_write_binary(a1 + 48, a8, a9)) == 0))
    {
      if (a10)
      {
        return mbedtls_mpi_write_binary(a1 + 32, a10, a11);
      }
    }

    return v13;
  }
}

uint64_t mbedtls_rsa_init(uint64_t a1)
{
  result = __memset_chk();
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  return result;
}

uint64_t mbedtls_rsa_set_padding(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    if (!a3 || mbedtls_md_info_from_type(a3))
    {
      *(a1 + 224) = 1;
      *(a1 + 228) = a3;
      return 0;
    }

    else
    {
      return -16640;
    }
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_check_privkey(uint64_t *a1)
{
  if (mbedtls_rsa_check_pubkey(a1) || rsa_check_context(a1, 1))
  {
    return -16896;
  }

  else if (mbedtls_rsa_validate_params((a1 + 2), a1 + 8, a1 + 10, a1 + 6, a1 + 4, 0, 0))
  {
    return -16896;
  }

  else if (mbedtls_rsa_validate_crt(a1 + 8, a1 + 10, (a1 + 6), (a1 + 12), (a1 + 14), a1 + 16))
  {
    return -16896;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_check_pub_priv(uint64_t a1, uint64_t *a2)
{
  if (mbedtls_rsa_check_pubkey(a1) || mbedtls_rsa_check_privkey(a2))
  {
    return -16896;
  }

  else if (mbedtls_mpi_cmp_mpi(a1 + 16, (a2 + 2)) || mbedtls_mpi_cmp_mpi(a1 + 32, (a2 + 4)))
  {
    return -16896;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_public(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  binary = -110;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (rsa_check_context(a1, 0))
  {
    return -16512;
  }

  else
  {
    mbedtls_mpi_init(v4);
    binary = mbedtls_mpi_read_binary(v4, v8, *(v9 + 8));
    if (!binary)
    {
      if ((mbedtls_mpi_cmp_mpi(v4, v9 + 16) & 0x80000000) != 0)
      {
        v5 = *(v9 + 8);
        binary = mbedtls_mpi_exp_mod(v4, v4, v9 + 32, (v9 + 16), (v9 + 144));
        if (!binary)
        {
          binary = mbedtls_mpi_write_binary(v4, v7, v5);
        }
      }

      else
      {
        binary = -4;
      }
    }

    mbedtls_mpi_free(v4);
    if (binary)
    {
      return mbedtls_error_add(-17024, binary);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_rsa_private(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  binary = -110;
  v16 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2)
  {
    if (rsa_check_context(v22, 1))
    {
      return -16512;
    }

    else
    {
      mbedtls_mpi_init(v15);
      mbedtls_mpi_init(v14);
      mbedtls_mpi_init(v13);
      mbedtls_mpi_init(v12);
      mbedtls_mpi_init(v9);
      mbedtls_mpi_init(v8);
      mbedtls_mpi_init(v11);
      mbedtls_mpi_init(v10);
      mbedtls_mpi_init(v7);
      mbedtls_mpi_init(v6);
      binary = mbedtls_mpi_read_binary(v15, v19, *(v22 + 8));
      if (!binary)
      {
        if ((mbedtls_mpi_cmp_mpi(v15, v22 + 16) & 0x80000000) != 0)
        {
          binary = rsa_prepare_blinding(v22, v21, v20);
          if (!binary)
          {
            binary = mbedtls_mpi_mul_mpi(v15, v15, (v22 + 192));
            if (!binary)
            {
              binary = mbedtls_mpi_mod_mpi(v15, v15, (v22 + 16));
              if (!binary)
              {
                binary = mbedtls_mpi_copy(v7, v15);
                if (!binary)
                {
                  binary = mbedtls_mpi_sub_int(v14, v22 + 64, 1);
                  if (!binary)
                  {
                    binary = mbedtls_mpi_sub_int(v13, v22 + 80, 1);
                    if (!binary)
                    {
                      binary = mbedtls_mpi_fill_random(v12, 0x1CuLL, v21, v20);
                      if (!binary)
                      {
                        binary = mbedtls_mpi_mul_mpi(v9, v14, v12);
                        if (!binary)
                        {
                          binary = mbedtls_mpi_add_mpi(v9, v9, v22 + 96);
                          if (!binary)
                          {
                            binary = mbedtls_mpi_fill_random(v12, 0x1CuLL, v21, v20);
                            if (!binary)
                            {
                              binary = mbedtls_mpi_mul_mpi(v8, v13, v12);
                              if (!binary)
                              {
                                binary = mbedtls_mpi_add_mpi(v8, v8, v22 + 112);
                                if (!binary)
                                {
                                  binary = mbedtls_mpi_exp_mod(v11, v15, v9, (v22 + 64), (v22 + 160));
                                  if (!binary)
                                  {
                                    binary = mbedtls_mpi_exp_mod(v10, v15, v8, (v22 + 80), (v22 + 176));
                                    if (!binary)
                                    {
                                      binary = mbedtls_mpi_sub_mpi(v15, v11, v10);
                                      if (!binary)
                                      {
                                        binary = mbedtls_mpi_mul_mpi(v11, v15, (v22 + 128));
                                        if (!binary)
                                        {
                                          binary = mbedtls_mpi_mod_mpi(v15, v11, (v22 + 64));
                                          if (!binary)
                                          {
                                            binary = mbedtls_mpi_mul_mpi(v11, v15, (v22 + 80));
                                            if (!binary)
                                            {
                                              binary = mbedtls_mpi_add_mpi(v15, v10, v11);
                                              if (!binary)
                                              {
                                                binary = mbedtls_mpi_exp_mod(v6, v15, v22 + 32, (v22 + 16), (v22 + 144));
                                                if (!binary)
                                                {
                                                  if (mbedtls_mpi_cmp_mpi(v6, v7))
                                                  {
                                                    binary = -17280;
                                                  }

                                                  else
                                                  {
                                                    binary = rsa_unblind(v15, (v22 + 208), (v22 + 16));
                                                    if (!binary)
                                                    {
                                                      v16 = *(v22 + 8);
                                                      binary = mbedtls_mpi_write_binary(v15, v18, v16);
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

        else
        {
          binary = -4;
        }
      }

      mbedtls_mpi_free(v14);
      mbedtls_mpi_free(v13);
      mbedtls_mpi_free(v12);
      mbedtls_mpi_free(v9);
      mbedtls_mpi_free(v8);
      mbedtls_mpi_free(v15);
      mbedtls_mpi_free(v11);
      mbedtls_mpi_free(v10);
      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v7);
      if (binary && binary >= -127)
      {
        return mbedtls_error_add(-17152, binary);
      }

      else
      {
        return binary;
      }
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_prepare_blinding(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  if (*(v10 + 208))
  {
    v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 192), (v10 + 192));
    if (!v7)
    {
      v7 = mbedtls_mpi_mod_mpi(v10 + 192, (v10 + 192), (v10 + 16));
      if (!v7)
      {
        v7 = mbedtls_mpi_mul_mpi((v10 + 208), (v10 + 208), (v10 + 208));
        if (!v7)
        {
          v7 = mbedtls_mpi_mod_mpi(v10 + 208, (v10 + 208), (v10 + 16));
        }
      }
    }
  }

  else
  {
    do
    {
      v3 = v6++;
      if (v3 > 10)
      {
        v7 = -17536;
        goto LABEL_18;
      }

      v7 = mbedtls_mpi_fill_random(v10 + 208, *(v10 + 8) - 1, v9, v8);
      if (!v7)
      {
        v7 = mbedtls_mpi_fill_random(v5, *(v10 + 8) - 1, v9, v8);
        if (!v7)
        {
          v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 208), v5);
          if (!v7)
          {
            v7 = mbedtls_mpi_mod_mpi(v10 + 192, (v10 + 192), (v10 + 16));
            if (!v7)
            {
              v7 = mbedtls_mpi_inv_mod(v10 + 192, (v10 + 192), (v10 + 16));
              if (!v7 || v7 == -14)
              {
                continue;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }

    while (v7 == -14);
    v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 192), v5);
    if (!v7)
    {
      v7 = mbedtls_mpi_mod_mpi(v10 + 192, (v10 + 192), (v10 + 16));
      if (!v7)
      {
        v7 = mbedtls_mpi_exp_mod((v10 + 192), (v10 + 192), v10 + 32, (v10 + 16), (v10 + 144));
      }
    }
  }

LABEL_18:
  mbedtls_mpi_free(v5);
  return v7;
}

uint64_t rsa_unblind(uint64_t *a1, unint64_t **a2, unint64_t **a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  mont_r2_unsafe = -110;
  v8 = mbedtls_mpi_core_montmul_init(*a3);
  v7 = *(v10 + 5);
  v6 = mbedtls_mpi_core_montmul_working_limbs(v7);
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v5);
  mbedtls_mpi_init(v4);
  mont_r2_unsafe = mbedtls_mpi_core_get_mont_r2_unsafe(v5, v10);
  if (!mont_r2_unsafe)
  {
    mont_r2_unsafe = mbedtls_mpi_grow(v4, v6);
    if (!mont_r2_unsafe)
    {
      mont_r2_unsafe = mbedtls_mpi_grow(v12, v7);
      if (!mont_r2_unsafe)
      {
        mont_r2_unsafe = mbedtls_mpi_grow(v11, v7);
        if (!mont_r2_unsafe)
        {
          mbedtls_mpi_core_to_mont_rep(*v12, *v12, *v10, v7, v8, v5[0], v4[0]);
          mbedtls_mpi_core_montmul(*v12, *v12, *v11, v7, *v10, v7, v8, v4[0]);
        }
      }
    }
  }

  mbedtls_mpi_free(v5);
  mbedtls_mpi_free(v4);
  return mont_r2_unsafe;
}

uint64_t mbedtls_rsa_rsaes_oaep_encrypt(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void), uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    size_from_type = mbedtls_md_get_size_from_type(*(a1 + 228));
    if (size_from_type)
    {
      v18 = *(a1 + 8);
      if (a6 + 2 * size_from_type + 2 >= a6 && v18 >= a6 + 2 * size_from_type + 2)
      {
        __memset_chk();
        v8 = a8;
        v12 = a8 + 1;
        *v8 = 0;
        v14 = a2(a3, v12, size_from_type);
        if (v14)
        {
          return mbedtls_error_add(-17536, v14);
        }

        else
        {
          v13 = v12 + size_from_type;
          v15 = compute_hash(*(a1 + 228), a4, a5, v13);
          if (v15)
          {
            return v15;
          }

          else
          {
            *(v13 + size_from_type + v18 - 2 * size_from_type - 2 - a6) = 1;
            if (a6)
            {
              __memcpy_chk();
            }

            v16 = mgf_mask((a8 + size_from_type + 1), v18 - size_from_type - 1, a8 + 1, size_from_type, *(a1 + 228));
            if (v16)
            {
              return v16;
            }

            else
            {
              v17 = mgf_mask((a8 + 1), size_from_type, a8 + size_from_type + 1, v18 - size_from_type - 1, *(a1 + 228));
              if (v17)
              {
                return v17;
              }

              else
              {
                return mbedtls_rsa_public(a1, a8, a8);
              }
            }
          }
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t compute_hash(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = mbedtls_md_info_from_type(a1);
  if (v5)
  {
    return mbedtls_md(v5, a2, a3, a4);
  }

  else
  {
    return -16512;
  }
}

uint64_t mgf_mask(_BYTE *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v14 = 0;
  size = 0;
  i = 0;
  v11 = 0;
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  mbedtls_md_init();
  v9 = mbedtls_md_info_from_type(v16);
  if (v9)
  {
    mbedtls_md_init();
    v10 = mbedtls_md_setup(v8, v9, 0);
    if (!v10)
    {
      size = mbedtls_md_get_size(v9);
      memset(v22, 0, sizeof(v22));
      v15 = 0;
      v14 = v20;
      while (v19)
      {
        v11 = size;
        if (v19 < size)
        {
          v11 = v19;
        }

        v10 = mbedtls_md_starts(v8);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_update(v8, v18, v17);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_update(v8, &v15, 4uLL);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_finish(v8);
        if (v10)
        {
          break;
        }

        for (i = 0; i < v11; ++i)
        {
          v5 = *(v22 + i);
          v6 = v14++;
          *v6 ^= v5;
        }

        ++HIBYTE(v15);
        v19 -= v11;
      }
    }

    mbedtls_platform_zeroize(v22, 0x20uLL);
    mbedtls_md_free(v8);
    return v10;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_encrypt(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, void), uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsaes_oaep_encrypt(a1, a2, a3, 0, 0, a4, a5, a6);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_rsaes_oaep_decrypt(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (*(a1 + 224) == 1)
  {
    v31 = *(a1 + 8);
    if (v31 >= 0x10 && v31 <= 0x20)
    {
      size_from_type = mbedtls_md_get_size_from_type(*(a1 + 228));
      if (size_from_type)
      {
        if (2 * size_from_type + 2 > v31)
        {
          return -16512;
        }

        else
        {
          v9 = mbedtls_rsa_private(a1, a2, a3, a7, &v42);
          v32 = v9;
          if (!v9)
          {
            v32 = mgf_mask(v43, size_from_type, &v43[size_from_type], v31 - size_from_type - 1, *(a1 + 228));
            if (!v32)
            {
              v32 = mgf_mask(&v43[size_from_type], v31 - size_from_type - 1, v43, size_from_type, *(a1 + 228));
              if (!v32)
              {
                v32 = compute_hash(*(a1 + 228), a4, a5, v41);
                if (!v32)
                {
                  v26 = &v43[size_from_type];
                  v22 = mbedtls_ct_BOOL(v42);
                  v10 = mbedtls_ct_memcmp(v41, v26, size_from_type);
                  v11 = mbedtls_ct_BOOL(v10);
                  v25 = mbedtls_ct_BOOL_or(v22, v11);
                  v27 = &v26[size_from_type];
                  v29 = 0;
                  mbedtls_ct_compiler_opaque();
                  v24 = v12;
                  for (i = 0; i < v31 - 2 * size_from_type - 2; ++i)
                  {
                    v13 = v27[i];
                    v14 = mbedtls_ct_uint_eq();
                    v24 = mbedtls_ct_BOOL_and(v24, v14);
                    v29 += mbedtls_ct_uint_if_else_0(v24, 1u);
                  }

                  v15 = &v27[v29];
                  v28 = &v27[v29 + 1];
                  v16 = *v15;
                  v17 = mbedtls_ct_uint_ne();
                  v21 = mbedtls_ct_BOOL_or(v25, v17);
                  mbedtls_ct_compiler_opaque();
                  if (v21 == v18)
                  {
                    if (v31 - (v28 - &v42) <= a9)
                    {
                      *a6 = v31 - (v28 - &v42);
                      if (*a6)
                      {
                        v19 = *a6;
                        __memcpy_chk();
                      }

                      v32 = 0;
                    }

                    else
                    {
                      v32 = -17408;
                    }
                  }

                  else
                  {
                    v32 = -16640;
                  }
                }
              }
            }
          }

          mbedtls_platform_zeroize(&v42, 0x20uLL);
          mbedtls_platform_zeroize(v41, 0x20uLL);
          return v32;
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_decrypt(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsaes_oaep_decrypt(a1, a2, a3, 0, 0, a4, a5, a6, a7);
  }

  else
  {
    return -16640;
  }
}

uint64_t rsa_rsassa_pss_sign_no_mode_check(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, _BYTE *a8)
{
  v17 = 0;
  if ((a4 || a5) && !a6)
  {
    return -16512;
  }

  else if (a2)
  {
    v24 = *(a1 + 8);
    if (a4)
    {
      size_from_type = mbedtls_md_get_size_from_type(a4);
      if (!size_from_type)
      {
        return -16512;
      }

      if (a5 != size_from_type)
      {
        return -16512;
      }
    }

    v12 = *(a1 + 228);
    if (!v12)
    {
      v12 = a4;
    }

    v9 = mbedtls_md_get_size_from_type(v12);
    v18 = v9;
    if (v9)
    {
      if (a7 == -1)
      {
        if (v24 < 2 * v9)
        {
          return -16512;
        }

        if (v24 >= 2 * v9 + 2)
        {
          v19 = v9;
        }

        else
        {
          v19 = v24 - v9 - 2;
        }
      }

      else
      {
        if (a7 < 0 || a7 + v9 + 2 > v24)
        {
          return -16512;
        }

        v19 = a7;
      }

      __memset_chk();
      v13 = mbedtls_mpi_bitlen(a1 + 16) - 1;
      v10 = &a8[v24 - v18 - v19 - 2];
      v22 = v10 + 1;
      *v10 = 1;
      v20 = (v10 + 1);
      v14 = a2(a3, (v10 + 1), v19);
      if (v14)
      {
        return mbedtls_error_add(-17536, v14);
      }

      else
      {
        v23 = &v22[v19];
        v15 = hash_mprime(a6, a5, v20, v19, v23, v12);
        if (v15)
        {
          return v15;
        }

        else
        {
          if (!(v13 % 8))
          {
            v17 = 1;
          }

          v16 = mgf_mask(&a8[v17], v24 - v18 - 1 - v17, v23, v18, v12);
          if (v16)
          {
            return v16;
          }

          else
          {
            *a8 &= 255 >> (8 * v24 - (mbedtls_mpi_bitlen(a1 + 16) - 1));
            *(v23 + v18) = -68;
            return mbedtls_rsa_private(a1, a2, a3, a8, a8);
          }
        }
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_rsassa_pss_sign(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, _BYTE *a8)
{
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 228) || a4)
    {
      return rsa_rsassa_pss_sign_no_mode_check(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_sign(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, _BYTE *a7)
{
  if ((a4 || a5) && !a6)
  {
    return -16512;
  }

  else if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsassa_pss_sign(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_rsassa_pss_verify_ext(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  memset(v29, 0, sizeof(v29));
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else
  {
    v18 = *(a1 + 8);
    if (v18 >= 0x10 && v18 <= 0x20)
    {
      v19 = mbedtls_rsa_public(a1, a7, v29);
      if (v19)
      {
        return v19;
      }

      else
      {
        v16 = v29;
        if (*(v29 + v18 - 1) == 188)
        {
          if (a2)
          {
            size_from_type = mbedtls_md_get_size_from_type(a2);
            if (!size_from_type)
            {
              return -16512;
            }

            if (a3 != size_from_type)
            {
              return -16512;
            }
          }

          __n = mbedtls_md_get_size_from_type(a5);
          if (__n)
          {
            v8 = mbedtls_mpi_bitlen(a1 + 16);
            v12 = v8 - 1;
            if (LOBYTE(v29[0]) >> (8 - 8 * v18 + v8 - 1))
            {
              return -16512;
            }

            else
            {
              if (!(v12 % 8))
              {
                v16 = v29 + 1;
                --v18;
              }

              if (v18 >= __n + 2)
              {
                __n_4 = &v16[v18 - __n - 1];
                v20 = mgf_mask(v16, v18 - __n - 1, __n_4, __n, a5);
                if (v20)
                {
                  return v20;
                }

                else
                {
                  LOBYTE(v29[0]) &= 255 >> (8 * v18 - v12);
                  while (1)
                  {
                    v11 = 0;
                    if (v16 < __n_4 - 1)
                    {
                      v11 = *v16 == 0;
                    }

                    if (!v11)
                    {
                      break;
                    }

                    ++v16;
                  }

                  v9 = v16;
                  v17 = (v16 + 1);
                  if (*v9 == 1)
                  {
                    v13 = &__n_4[-v17];
                    if (a6 == -1 || v13 == a6)
                    {
                      v21 = hash_mprime(a4, a3, v17, v13, __s2, a5);
                      if (v21)
                      {
                        return v21;
                      }

                      else if (!memcmp(__n_4, __s2, __n))
                      {
                        return 0;
                      }

                      else
                      {
                        return -17280;
                      }
                    }

                    else
                    {
                      return -16640;
                    }
                  }

                  else
                  {
                    return -16640;
                  }
                }
              }

              else
              {
                return -16512;
              }
            }
          }

          else
          {
            return -16512;
          }
        }

        else
        {
          return -16640;
        }
      }
    }

    else
    {
      return -16512;
    }
  }
}

uint64_t hash_mprime(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v17 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = mbedtls_md_info_from_type(a6);
  if (v7)
  {
    mbedtls_md_init();
    v8 = mbedtls_md_setup(v9, v7, 0);
    if (!v8)
    {
      v8 = mbedtls_md_starts(v9);
      if (!v8)
      {
        v8 = mbedtls_md_update(v9, &v17, 8uLL);
        if (!v8)
        {
          v8 = mbedtls_md_update(v9, v15, v14);
          if (!v8)
          {
            v8 = mbedtls_md_update(v9, v13, v12);
            if (!v8)
            {
              v8 = mbedtls_md_finish(v9);
            }
          }
        }
      }
    }

    mbedtls_md_free(v9);
    return v8;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_rsassa_pss_verify(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else
  {
    if (*(a1 + 228))
    {
      v6 = *(a1 + 228);
    }

    else
    {
      v6 = a2;
    }

    return mbedtls_rsa_rsassa_pss_verify_ext(a1, a2, a3, a4, v6, -1, a5);
  }
}

uint64_t mbedtls_rsa_pkcs1_verify(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsassa_pss_verify(a1, a2, a3, a4, a5);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_copy(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v3 = mbedtls_mpi_copy(a1 + 16, (a2 + 16));
  if (!v3)
  {
    v3 = mbedtls_mpi_copy(a1 + 32, (a2 + 32));
    if (!v3)
    {
      v3 = mbedtls_mpi_copy(a1 + 48, (a2 + 48));
      if (!v3)
      {
        v3 = mbedtls_mpi_copy(a1 + 64, (a2 + 64));
        if (!v3)
        {
          v3 = mbedtls_mpi_copy(a1 + 80, (a2 + 80));
          if (!v3)
          {
            v3 = mbedtls_mpi_copy(a1 + 96, (a2 + 96));
            if (!v3)
            {
              v3 = mbedtls_mpi_copy(a1 + 112, (a2 + 112));
              if (!v3)
              {
                v3 = mbedtls_mpi_copy(a1 + 128, (a2 + 128));
                if (!v3)
                {
                  v3 = mbedtls_mpi_copy(a1 + 160, (a2 + 160));
                  if (!v3)
                  {
                    v3 = mbedtls_mpi_copy(a1 + 176, (a2 + 176));
                    if (!v3)
                    {
                      v3 = mbedtls_mpi_copy(a1 + 144, (a2 + 144));
                      if (!v3)
                      {
                        v3 = mbedtls_mpi_copy(a1 + 192, (a2 + 192));
                        if (!v3)
                        {
                          v3 = mbedtls_mpi_copy(a1 + 208, (a2 + 208));
                          if (!v3)
                          {
                            *(a1 + 224) = *(a2 + 224);
                            *(a1 + 228) = *(a2 + 228);
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

  if (v3)
  {
    mbedtls_rsa_free(a1);
  }

  return v3;
}

void *mbedtls_sha256_free(void *result)
{
  if (result)
  {
    return mbedtls_platform_zeroize(result, 0x68uLL);
  }

  return result;
}

uint64_t mbedtls_sha256_starts(_DWORD *a1, int a2)
{
  if (a2)
  {
    return -116;
  }

  else
  {
    a1[16] = 0;
    a1[17] = 0;
    a1[18] = 1779033703;
    a1[19] = -1150833019;
    a1[20] = 1013904242;
    a1[21] = -1521486534;
    a1[22] = 1359893119;
    a1[23] = -1694144372;
    a1[24] = 528734635;
    a1[25] = 1541459225;
    return 0;
  }
}

uint64_t mbedtls_internal_sha256_process(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  bzero(&v6, 0x128uLL);
  for (i = 0; i < 8; ++i)
  {
    *(&v9 + i) = *(v18 + 72 + 4 * i);
  }

  for (j = 0; j < 0x40; ++j)
  {
    if (j >= 0x10)
    {
      v8[j] = (((v8[j - 2] << 15) | (v8[j - 2] >> 17)) ^ ((v8[j - 2] << 13) | (v8[j - 2] >> 19)) ^ (v8[j - 2] >> 10)) + v8[j - 7] + (((v8[j - 15] << 25) | (v8[j - 15] >> 7)) ^ ((v8[j - 15] << 14) | (v8[j - 15] >> 18)) ^ (v8[j - 15] >> 3)) + v8[j - 16];
    }

    else
    {
      v20 = (v17 + 4 * j);
      v19 = 0;
      v19 = *v20;
      v8[j] = bswap32(v19);
    }

    v6 = v16 + (((v13 << 26) | (v13 >> 6)) ^ ((v13 << 21) | (v13 >> 11)) ^ ((v13 << 7) | (v13 >> 25))) + (v15 ^ v13 & (v14 ^ v15)) + K[j] + v8[j];
    v7 = (((v9 << 30) | (v9 >> 2)) ^ ((v9 << 19) | (v9 >> 13)) ^ ((v9 << 10) | (v9 >> 22))) + (v9 & v10 | v11 & (v9 | v10));
    v12 += v6;
    v6 += v7;
    v16 = v15;
    v15 = v14;
    v14 = v13;
    v13 = v12;
    v12 = v11;
    v11 = v10;
    v10 = v9;
    v9 = v6;
  }

  for (k = 0; k < 8; ++k)
  {
    *(v18 + 72 + 4 * k) += *(&v9 + k);
  }

  mbedtls_platform_zeroize(&v6, 0x128uLL);
  return 0;
}

uint64_t mbedtls_sha256_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  if (a3)
  {
    v5 = *(a1 + 64) & 0x3F;
    v6 = (64 - v5);
    *(a1 + 64) += a3;
    *(a1 + 64) = *(a1 + 64);
    if (*(a1 + 64) < a3)
    {
      ++*(a1 + 68);
    }

    if (v5 && a3 >= v6)
    {
      __memcpy_chk();
      v7 = mbedtls_internal_sha256_process(a1, a1);
      if (!v7)
      {
        a2 += v6;
        v8 -= v6;
        goto LABEL_10;
      }

      return v7;
    }

    else
    {
LABEL_10:
      while (v8 >= 0x40)
      {
        v4 = mbedtls_internal_sha256_process_many(a1, a2, v8);
        if (v4 < 0x40)
        {
          return -1;
        }

        a2 += v4;
        v8 -= v4;
      }

      if (v8)
      {
        __memcpy_chk();
      }

      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_internal_sha256_process_many(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  while (a3 >= 0x40)
  {
    if (mbedtls_internal_sha256_process(a1, a2))
    {
      return 0;
    }

    a2 += 64;
    a3 -= 64;
    v4 += 64;
  }

  return v4;
}

uint64_t mbedtls_sha256_finish(_DWORD *a1)
{
  v4 = a1[16] & 0x3F;
  *(a1 + v4) = 0x80;
  if (v4 + 1 <= 0x38 || (__memset_chk(), (v5 = mbedtls_internal_sha256_process(a1, a1)) == 0))
  {
    __memset_chk();
    v3 = 8 * *(a1 + 8);
    __memcpy_chk();
    __memcpy_chk();
    v5 = mbedtls_internal_sha256_process(a1, a1);
    if (!v5)
    {
      v13 = bswap32(a1[18]);
      __memcpy_chk();
      v1 = bswap32(a1[19]);
      __memcpy_chk();
      v12 = bswap32(a1[20]);
      __memcpy_chk();
      v11 = bswap32(a1[21]);
      __memcpy_chk();
      v10 = bswap32(a1[22]);
      __memcpy_chk();
      v9 = bswap32(a1[23]);
      __memcpy_chk();
      v8 = bswap32(a1[24]);
      __memcpy_chk();
      v7 = bswap32(a1[25]);
      __memcpy_chk();
      v5 = 0;
    }
  }

  mbedtls_sha256_free(a1);
  return v5;
}

uint64_t mbedtls_sha256(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  if (a4)
  {
    return -116;
  }

  else
  {
    mbedtls_sha256_init();
    v5 = mbedtls_sha256_starts(__b, 0);
    if (!v5)
    {
      v5 = mbedtls_sha256_update(__b, a1, a2);
      if (!v5)
      {
        v5 = mbedtls_sha256_finish(__b);
      }
    }

    mbedtls_sha256_free(__b);
    return v5;
  }
}

uint64_t mbedtls_ssl_write_client_hello(void *a1)
{
  v7 = a1;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  started = ssl_prepare_client_hello(a1);
  if (started)
  {
    return started;
  }

  started = mbedtls_ssl_start_handshake_msg(v7, 1, &v5, &v4);
  if (started)
  {
    return started;
  }

  started = ssl_write_client_hello_body(v7, v5, &v5[v4], &v3, &v2);
  if (started)
  {
    return started;
  }

  if (*(*v7 + 9) != 1)
  {
    started = mbedtls_ssl_add_hs_hdr_to_checksum(v7, 1, v3);
    if (started)
    {
      return started;
    }

    started = (*(v7[13] + 24))(v7, v5, v3 - v2);
    if (started)
    {
      return started;
    }

    started = mbedtls_ssl_finish_handshake_msg(v7, v4, v3);
    if (!started)
    {
      mbedtls_ssl_handshake_set_state(v7, 2);
    }

    return started;
  }

  v7[46] = v3 + 4;
  mbedtls_ssl_send_flight_completed(v7);
  mbedtls_ssl_handshake_set_state(v7, 2);
  started = mbedtls_ssl_write_handshake_msg(v7);
  if (!started)
  {
    started = mbedtls_ssl_flight_transmit(v7);
    if (started)
    {
      return started;
    }

    return started;
  }

  return started;
}

uint64_t ssl_prepare_client_hello(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (**(a1 + 104))
    {
      *(a1 + 12) = *(v2 + 4);
      *(*(a1 + 104) + 4) = *(a1 + 12);
    }

    else
    {
      *(*(a1 + 104) + 4) = *(*a1 + 4);
    }

    if (*(*a1 + 9) == 1 && *(*(a1 + 104) + 752) || (random = ssl_generate_random(a1)) == 0)
    {
      v3 = *(v2 + 16);
      if (*(a1 + 12) == 771 && (v3 < 0x10 || v3 > 0x20 || !**(a1 + 104)))
      {
        v3 = 0;
      }

      if (v3 != *(v2 + 16) && (*(v2 + 16) = v3) != 0 && (v5 = (*(*a1 + 40))(*(*a1 + 48), v2 + 24, v3)) != 0)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return random;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_write_client_hello_body(void *a1, _BYTE *a2, unint64_t a3, void *a4, void *a5)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = 0;
  v23 = a1[13];
  v22 = a2;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  *a4 = 0;
  *v25 = 0;
  v15 = 0;
  if (*(v23 + 4) <= 0x303u)
  {
    v15 = *(v29 + 3) >= 0x303u;
  }

  if (mbedtls_ssl_chk_buf_ptr(v22, v27, 2uLL))
  {
    return -27136;
  }

  else
  {
    v5 = *(*v29 + 9);
    mbedtls_ssl_write_version();
    v22 += 2;
    if (mbedtls_ssl_chk_buf_ptr(v22, v27, 0x20uLL))
    {
      return -27136;
    }

    else
    {
      __memcpy_chk();
      v22 += 32;
      if (mbedtls_ssl_chk_buf_ptr(v22, v27, *(v29[12] + 16) + 1))
      {
        return -27136;
      }

      else
      {
        v6 = *(v29[12] + 16);
        v7 = v22++;
        *v7 = v6;
        v8 = v29[12] + 24;
        v9 = *(v29[12] + 16);
        __memcpy_chk();
        v22 += *(v29[12] + 16);
        if (*(*v29 + 9) == 1)
        {
          v17 = 0;
          if (*(v23 + 752))
          {
            v17 = *(v23 + 760);
          }

          if (mbedtls_ssl_chk_buf_ptr(v22, v27, v17 + 1))
          {
            return -27136;
          }

          v10 = v22++;
          *v10 = v17;
          if (v17)
          {
            v11 = *(v23 + 752);
            __memcpy_chk();
            v22 += v17;
          }
        }

        v24 = ssl_write_client_hello_cipher_suites(v29, v22, v27, &v18, &v20);
        if (v24)
        {
          return v24;
        }

        else
        {
          v22 += v20;
          if (mbedtls_ssl_chk_buf_ptr(v22, v27, 2uLL))
          {
            return -27136;
          }

          else
          {
            v12 = v22++;
            *v12 = 1;
            v13 = v22++;
            *v13 = 0;
            if (mbedtls_ssl_chk_buf_ptr(v22, v27, 2uLL))
            {
              return -27136;
            }

            else
            {
              v21 = v22;
              v22 += 2;
              v16 = 0;
              if (v15)
              {
                v16 = v18 != 0;
              }

              if (v16)
              {
                v24 = ssl_write_supported_groups_ext(v29, v22, v27, v16, &v20);
                if (v24)
                {
                  return v24;
                }

                v22 += v20;
              }

              if (v15)
              {
                v24 = mbedtls_ssl_tls12_write_client_hello_exts(v29, v22, v27, v18, &v20);
                if (v24)
                {
                  return v24;
                }

                v22 += v20;
              }

              v19 = (v22 - v21 - 2);
              if (v22 - v21 == 2)
              {
                v22 = v21;
              }

              else
              {
                v32 = v21;
                v31 = bswap32(v19) >> 16;
                __memcpy_chk();
              }

              *v26 = v22 - v28;
              return 0;
            }
          }
        }
      }
    }
  }
}

BOOL mbedtls_ssl_chk_buf_ptr(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = 1;
  if (a1 <= a2)
  {
    return a3 > a2 - a1;
  }

  return v4;
}

uint64_t ssl_write_client_hello_cipher_suites(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4, void *a5)
{
  *a4 = 0;
  *a5 = 0;
  v8 = *(*a1 + 16);
  if (mbedtls_ssl_chk_buf_ptr(a2, a3, 2uLL))
  {
    return -27136;
  }

  else
  {
    v10 = a2 + 2;
    for (i = 0; *(v8 + 4 * i); ++i)
    {
      v6 = mbedtls_ssl_ciphersuite_from_id(*(v8 + 4 * i));
      if (!mbedtls_ssl_validate_ciphersuite(a1, v6, *(*(a1 + 104) + 4), *(a1 + 12)))
      {
        *a4 |= mbedtls_ssl_ciphersuite_uses_ec(v6);
        if (mbedtls_ssl_chk_buf_ptr(v10, a3, 2uLL))
        {
          return -27136;
        }

        __memcpy_chk();
        v10 += 2;
      }
    }

    if (mbedtls_ssl_chk_buf_ptr(v10, a3, 2uLL))
    {
      return -27136;
    }

    else
    {
      __memcpy_chk();
      __memcpy_chk();
      *a5 = v10 + 2 - a2;
      return 0;
    }
  }
}

uint64_t ssl_write_supported_groups_ext(void *a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  groups = mbedtls_ssl_get_groups(a1);
  *a5 = 0;
  if (mbedtls_ssl_chk_buf_ptr(a2, a3, 6uLL))
  {
    return -27136;
  }

  else
  {
    v11 = a2 + 6;
    v9 = v11;
    if (groups)
    {
      while (*groups)
      {
        v7 = 0;
        if ((a4 & 1) != 0 && mbedtls_ssl_tls12_named_group_is_ecdhe(*groups))
        {
          v7 = mbedtls_ssl_get_ecp_group_id_from_tls_id(*groups) != 0;
        }

        if (v7)
        {
          if (mbedtls_ssl_chk_buf_ptr(v11, a3, 2uLL))
          {
            return -27136;
          }

          v5 = bswap32(*groups) >> 16;
          __memcpy_chk();
          v11 += 2;
        }

        ++groups;
      }

      if (v11 == v9)
      {
        return -27648;
      }

      else
      {
        __memcpy_chk();
        __memcpy_chk();
        __memcpy_chk();
        *a5 = v11 - a2;
        return 0;
      }
    }

    else
    {
      return -24192;
    }
  }
}

uint64_t mbedtls_ssl_get_groups(void *a1)
{
  if (a1[13] && *(a1[13] + 56))
  {
    return *(a1[13] + 56);
  }

  else
  {
    return *(*a1 + 160);
  }
}

BOOL mbedtls_ssl_tls12_named_group_is_ecdhe(__int16 a1)
{
  v2 = 1;
  if (a1 != 29)
  {
    v2 = 1;
    if (a1 != 26)
    {
      v2 = 1;
      if (a1 != 27)
      {
        v2 = 1;
        if (a1 != 28)
        {
          v2 = 1;
          if (a1 != 30)
          {
            v2 = 1;
            if (a1 != 18)
            {
              v2 = 1;
              if (a1 != 19)
              {
                v2 = 1;
                if (a1 != 20)
                {
                  v2 = 1;
                  if (a1 != 21)
                  {
                    v2 = 1;
                    if (a1 != 22)
                    {
                      v2 = 1;
                      if (a1 != 23)
                      {
                        v2 = 1;
                        if (a1 != 24)
                        {
                          return a1 == 25;
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

  return v2;
}

uint64_t mbedtls_ssl_set_client_transport_id(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 8) == 1)
  {
    v3 = a1[51];
    mbedtls_free();
    v4 = mbedtls_calloc();
    a1[51] = v4;
    if (v4)
    {
      v5 = a1[51];
      __memcpy_chk();
      a1[52] = a3;
      return 0;
    }

    else
    {
      return -32512;
    }
  }

  else
  {
    return -28928;
  }
}

void *mbedtls_ssl_conf_dtls_cookies(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  return result;
}

uint64_t mbedtls_ssl_handshake_server_step(uint64_t a1)
{
  v2 = 0;
  switch(*(a1 + 8))
  {
    case 0:
      *(a1 + 8) = 1;
      goto LABEL_19;
    case 1:
      v2 = ssl_parse_client_hello(a1);
      goto LABEL_19;
    case 2:
      v2 = ssl_write_server_hello(a1);
      goto LABEL_19;
    case 3:
      v2 = mbedtls_ssl_write_certificate(a1);
      goto LABEL_19;
    case 4:
      v2 = ssl_write_server_key_exchange(a1);
      goto LABEL_19;
    case 5:
    case 9:
      v2 = ssl_write_certificate_request(a1);
      goto LABEL_19;
    case 6:
      v2 = ssl_write_server_hello_done(a1);
      goto LABEL_19;
    case 7:
      v2 = mbedtls_ssl_parse_certificate(a1);
      goto LABEL_19;
    case 8:
      v2 = ssl_parse_client_key_exchange(a1);
      goto LABEL_19;
    case 0xA:
      v2 = mbedtls_ssl_parse_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xB:
      v2 = mbedtls_ssl_parse_finished(a1);
      goto LABEL_19;
    case 0xC:
      v2 = mbedtls_ssl_write_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xD:
      v2 = mbedtls_ssl_write_finished(a1);
      goto LABEL_19;
    case 0xE:
      *(a1 + 8) = 15;
      goto LABEL_19;
    case 0xF:
      mbedtls_ssl_handshake_wrapup(a1);
LABEL_19:
      v3 = v2;
      break;
    case 0x11:
      v3 = -27264;
      break;
    default:
      v3 = -28928;
      break;
  }

  return v3;
}

uint64_t ssl_parse_client_hello(void *a1)
{
  v32 = a1;
  input = 0;
  v30 = 0;
  i = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  j = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  while (1)
  {
    if (!*(v32 + 73))
    {
      input = mbedtls_ssl_fetch_input(v32, 5uLL);
      if (input)
      {
        return input;
      }
    }

    v17 = v32[23];
    if (*v17 != 22)
    {
      return -30464;
    }

    if (*(*v32 + 9) != 1)
    {
      break;
    }

    if (*v32[22] || *(v32[22] + 1))
    {
      return -26112;
    }

    v1 = v32[22];
    __memcpy_chk();
    if (!mbedtls_ssl_dtls_replay_check(v32))
    {
      mbedtls_ssl_dtls_replay_update(v32);
      break;
    }

    v32[32] = 0;
    v32[30] = 0;
  }

  v49 = v32[24];
  v48 = 0;
  v48 = *v49;
  v24 = bswap32(v48) >> 16;
  if (*(v32 + 73))
  {
    *(v32 + 73) = 0;
  }

  else
  {
    if (v24 > 0x4000)
    {
      return -26112;
    }

    v2 = mbedtls_ssl_in_hdr_len(v32);
    input = mbedtls_ssl_fetch_input(v32, v2 + v24);
    if (input)
    {
      return input;
    }

    if (*(*v32 + 9) == 1)
    {
      v32[32] = v24 + mbedtls_ssl_in_hdr_len(v32);
    }

    else
    {
      v32[30] = 0;
    }
  }

  v17 = v32[26];
  input = (*(v32[13] + 24))(v32, v17, v24);
  if (input)
  {
    return input;
  }

  if (v24 < mbedtls_ssl_hs_hdr_len(v32))
  {
    return -29440;
  }

  if (*v17 != 1)
  {
    return -30464;
  }

  if (*(v17 + 1))
  {
    return -29440;
  }

  v11 = (*(v17 + 2) << 8) | (*(v17 + 1) << 16) | *(v17 + 3);
  if (v24 != mbedtls_ssl_hs_hdr_len(v32) + v11)
  {
    return -29440;
  }

  if (*(*v32 + 9) == 1)
  {
    v47 = (v32[26] + 4);
    v46 = 0;
    v46 = *v47;
    v10 = bswap32(v46) >> 16;
    *(v32[13] + 764) = v10;
    *(v32[13] + 768) = v10 + 1;
    if ((*(v32[26] + 7) << 8) | (*(v32[26] + 6) << 16) | *(v32[26] + 8) || ((*(v32[26] + 2) << 8) | (*(v32[26] + 1) << 16) | *(v32[26] + 3)) != ((*(v32[26] + 10) << 8) | (*(v32[26] + 9) << 16) | *(v32[26] + 11)))
    {
      return -28800;
    }
  }

  v17 = (v17 + mbedtls_ssl_hs_hdr_len(v32));
  v24 -= mbedtls_ssl_hs_hdr_len(v32);
  if (v24 < 0x26)
  {
    return -29440;
  }

  *(v32 + 3) = mbedtls_ssl_read_version(v17, *(*v32 + 9));
  *(v32[12] + 4) = *(v32 + 3);
  *(v32[12] + 2) = *(*v32 + 8);
  if (*(v32 + 3) != 771)
  {
    mbedtls_ssl_send_alert_message(v32, 2, 70);
    return -28288;
  }

  v3 = v32[13] + 896;
  __memcpy_chk();
  v22 = *(v17 + 34);
  if (v22 > 0x20 || v22 + 36 > v24)
  {
LABEL_72:
    mbedtls_ssl_send_alert_message(v32, 2, 50);
    return -29440;
  }

  *(v32[12] + 16) = v22;
  v4 = v32[12];
  __memset_chk();
  v5 = v32[12] + 24;
  v6 = *(v32[12] + 16);
  __memcpy_chk();
  if (*(*v32 + 9) == 1)
  {
    v19 = v22 + 35;
    v18 = *(v17 + v22 + 35);
    if (v22 + 36 + v18 + 2 > v24)
    {
      goto LABEL_72;
    }

    if (*(*v32 + 104))
    {
      if ((*(*v32 + 104))(*(*v32 + 112), v17 + v19 + 1, v18, v32[51], v32[52]))
      {
        *(v32[13] + 761) = 1;
      }

      else
      {
        *(v32[13] + 761) = 0;
      }
    }

    else if (v18)
    {
      return -29440;
    }

    v27 = v19 + 1 + v18;
  }

  else
  {
    v27 = v22 + 35;
  }

  v45 = v17 + v27;
  v44 = 0;
  v44 = *(v17 + v27);
  v23 = bswap32(v44) >> 16;
  if (v23 < 2)
  {
    goto LABEL_72;
  }

  if (v23 + 2 + v27 + 1 > v24)
  {
    goto LABEL_72;
  }

  if (v23 % 2)
  {
    goto LABEL_72;
  }

  v26 = v27 + 2 + v23;
  v21 = *(v17 + v26);
  if (!v21 || v21 > 0x10 || v21 + v26 + 1 > v24)
  {
    goto LABEL_72;
  }

  v25 = v26 + 1 + v21;
  if (v24 <= v25)
  {
    v20 = 0;
  }

  else
  {
    if (v24 < v25 + 2)
    {
      goto LABEL_72;
    }

    v43 = v17 + v25;
    v42 = 0;
    v42 = *(v17 + v25);
    v20 = bswap32(v42) >> 16;
    if (v24 != v25 + 2 + v20)
    {
      goto LABEL_72;
    }
  }

  v15 = v17 + v25 + 2;
  while (v20)
  {
    if (v20 < 4)
    {
      goto LABEL_72;
    }

    v41 = v15;
    v40 = 0;
    v40 = *v15;
    v9 = bswap32(v40) >> 16;
    v39 = v15 + 2;
    v38 = 0;
    v38 = *(v15 + 1);
    v8 = bswap32(v38) >> 16;
    if (v8 + 4 > v20)
    {
      goto LABEL_72;
    }

    switch(v9)
    {
      case 1u:
        input = ssl_parse_max_fragment_length_ext(v32, v15 + 4, v8);
        if (input)
        {
          return input;
        }

        break;
      case 0xAu:
        input = ssl_parse_supported_groups_ext(v32, v15 + 2, v8);
        if (input)
        {
          return input;
        }

        break;
      case 0xBu:
        *(v32[13] + 1) |= 1u;
        input = ssl_parse_supported_point_formats(v32, v15 + 4, v8);
        if (input)
        {
          return input;
        }

        break;
      case 0x100u:
        input = ssl_parse_ecjpake_kkpp(v32, (v15 + 4), v8);
        if (input)
        {
          return input;
        }

        break;
      case 0xFF01u:
        input = ssl_parse_renegotiation_info(v32, v15 + 4, v8);
        if (input)
        {
          return input;
        }

        break;
    }

    v20 -= v8 + 4;
    v15 += v8 + 4;
  }

  i = 0;
  j = v17 + v27 + 2;
  while (i < v23)
  {
    if (!*j && j[1] == 255)
    {
      *(v32 + 106) = 1;
      break;
    }

    i += 2;
    j += 2;
  }

  if (*(v32 + 106) != 1 && *(*v32 + 11) == 2)
  {
    v14 = 1;
  }

  if (v14 == 1)
  {
    mbedtls_ssl_send_alert_message(v32, 2, 40);
    return -28160;
  }

  if (*(*v32 + 192))
  {
    input = (*(*v32 + 192))(v32);
    if (input)
    {
      return input;
    }
  }

  v30 = 0;
  v13 = *(*v32 + 16);
  v12 = 0;
  if (*(*v32 + 15) == 1)
  {
    v28 = 0;
    j = v17 + v27 + 2;
    while (v28 < v23)
    {
      for (i = 0; *(v13 + 4 * i); ++i)
      {
        v37 = j;
        v36 = 0;
        v36 = *j;
        if (*(v13 + 4 * i) == bswap32(v36) >> 16)
        {
          v30 = 1;
          input = ssl_ciphersuite_match(v32, *(v13 + 4 * i), &v12);
          if (input)
          {
            return input;
          }

          if (v12)
          {
            goto LABEL_130;
          }
        }
      }

      v28 += 2;
      j += 2;
    }

LABEL_129:
    mbedtls_ssl_send_alert_message(v32, 2, 40);
    return -28160;
  }

  i = 0;
LABEL_120:
  if (!*(v13 + 4 * i))
  {
    goto LABEL_129;
  }

  v28 = 0;
  for (j = v17 + v27 + 2; ; j += 2)
  {
    if (v28 >= v23)
    {
      ++i;
      goto LABEL_120;
    }

    v35 = j;
    v34 = 0;
    v34 = *j;
    if (*(v13 + 4 * i) == bswap32(v34) >> 16)
    {
      v30 = 1;
      input = ssl_ciphersuite_match(v32, *(v13 + 4 * i), &v12);
      if (input)
      {
        return input;
      }

      if (v12)
      {
        break;
      }
    }

    v28 += 2;
  }

LABEL_130:
  *(v32[12] + 8) = *(v13 + 4 * i);
  *(v32[13] + 16) = v12;
  ++*(v32 + 2);
  if (*(*v32 + 9) == 1)
  {
    mbedtls_ssl_recv_flight_completed(v32);
  }

  return 0;
}

uint64_t ssl_write_server_hello(uint64_t a1)
{
  v17 = a1;
  v16 = -110;
  v15 = 0;
  if (*(*a1 + 9) == 1 && *(*(v17 + 104) + 761))
  {
    return ssl_write_hello_verify_request(v17);
  }

  else
  {
    v10 = *(v17 + 352);
    v1 = *(*v17 + 9);
    v2 = *(v17 + 12);
    mbedtls_ssl_write_version();
    v16 = (*(*v17 + 40))(*(*v17 + 48), v10 + 6, 4);
    if (v16)
    {
      return v16;
    }

    else
    {
      v16 = (*(*v17 + 40))(*(*v17 + 48), v10 + 10, 20);
      if (v16)
      {
        return v16;
      }

      else
      {
        v16 = (*(*v17 + 40))(*(*v17 + 48), v10 + 30, 8);
        if (v16)
        {
          return v16;
        }

        else
        {
          v3 = *(v17 + 104) + 928;
          __memcpy_chk();
          ssl_handle_id_based_session_resumption(v17);
          if (**(v17 + 104))
          {
            v11 = *(*(v17 + 96) + 16);
            *(v17 + 8) = 12;
            v16 = mbedtls_ssl_derive_keys(v17);
            if (v16)
            {
              return v16;
            }
          }

          else
          {
            ++*(v17 + 8);
            *(*(v17 + 96) + 16) = 32;
            v16 = (*(*v17 + 40))(*(*v17 + 48), *(v17 + 96) + 24, 32);
            if (v16)
            {
              return v16;
            }
          }

          *(v10 + 38) = *(*(v17 + 96) + 16);
          v4 = *(v17 + 96) + 24;
          v5 = *(*(v17 + 96) + 16);
          __memcpy_chk();
          v6 = bswap32(*(*(v17 + 96) + 8)) >> 16;
          v22 = v10 + 39 + *(*(v17 + 96) + 16);
          v21 = v6;
          __memcpy_chk();
          v9 = v22 + 3;
          *(v22 + 2) = 0;
          ssl_write_renegotiation_ext(v17, (v9 + 2), &v15);
          v12 = v15;
          ssl_write_max_fragment_length_ext(v17, (v9 + 2 + v15), &v15);
          v13 = v12 + v15;
          v8 = mbedtls_ssl_ciphersuite_from_id(*(*(v17 + 96) + 8));
          if (v8 && mbedtls_ssl_ciphersuite_uses_ec(v8))
          {
            ssl_write_supported_point_formats_ext(v17, (v9 + 2 + v13), &v15);
            v13 += v15;
          }

          ssl_write_ecjpake_kkpp_ext(v17, v9 + 2 + v13, &v15);
          v14 = v13 + v15;
          if (v14)
          {
            v20 = v9;
            v19 = bswap32(v14) >> 16;
            __memcpy_chk();
            v9 += v14 + 2;
          }

          *(v17 + 368) = v9 - v10;
          *(v17 + 360) = 22;
          **(v17 + 352) = 2;
          return mbedtls_ssl_write_handshake_msg(v17);
        }
      }
    }
  }
}

uint64_t ssl_write_server_key_exchange(void *a1)
{
  v4 = a1;
  v3 = -110;
  v2 = 0;
  v3 = ssl_prepare_server_key_exchange(a1, &v2);
  if (v3)
  {
    if (v3 != -25856)
    {
      v4[46] = 0;
    }

    return v3;
  }

  else
  {
    *(v4 + 90) = 22;
    *v4[44] = 12;
    ++*(v4 + 2);
    v3 = mbedtls_ssl_write_handshake_msg(v4);
    if (v3)
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t ssl_write_certificate_request(uint64_t a1)
{
  if (mbedtls_ssl_ciphersuite_cert_req_allowed(*(*(a1 + 104) + 16)))
  {
    return -27648;
  }

  else
  {
    ++*(a1 + 8);
    return 0;
  }
}

uint64_t ssl_write_server_hello_done(uint64_t a1)
{
  *(a1 + 368) = 4;
  *(a1 + 360) = 22;
  **(a1 + 352) = 14;
  ++*(a1 + 8);
  if (*(*a1 + 9) == 1)
  {
    mbedtls_ssl_send_flight_completed(a1);
  }

  v2 = mbedtls_ssl_write_handshake_msg(a1);
  if (v2)
  {
    return v2;
  }

  else if (*(*a1 + 9) == 1 && (v3 = mbedtls_ssl_flight_transmit(a1)) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t ssl_parse_client_key_exchange(uint64_t a1)
{
  v5 = *(*(a1 + 104) + 16);
  record = mbedtls_ssl_read_record(a1, 1);
  if (record)
  {
    return record;
  }

  else
  {
    v3 = *(a1 + 208);
    v4 = (v3 + mbedtls_ssl_hs_hdr_len(a1));
    if (*(a1 + 224) == 22)
    {
      if (**(a1 + 208) == 16)
      {
        if (*(v5 + 18) == 11)
        {
          if (mbedtls_ecjpake_read_round_two(*(a1 + 104) + 72, v4, *(a1 + 208) + *(a1 + 280) - v4))
          {
            return -27648;
          }

          else
          {
            v7 = mbedtls_ecjpake_derive_secret((*(a1 + 104) + 72), *(a1 + 104) + 960, 0x20uLL, (*(a1 + 104) + 992), *(*a1 + 40), *(*a1 + 48));
            if (v7)
            {
              return v7;
            }

            else
            {
              v1 = mbedtls_ssl_derive_keys(a1);
              if (v1)
              {
                return v1;
              }

              else
              {
                ++*(a1 + 8);
                return 0;
              }
            }
          }
        }

        else
        {
          return -27648;
        }
      }

      else
      {
        return -30464;
      }
    }

    else
    {
      return -30464;
    }
  }
}

uint64_t mbedtls_ssl_in_hdr_len(uint64_t a1)
{
  if (*(*a1 + 9) == 1)
  {
    return 13;
  }

  else
  {
    return 5;
  }
}

uint64_t mbedtls_ssl_hs_hdr_len(uint64_t a1)
{
  if (*(*a1 + 9) == 1)
  {
    return 12;
  }

  else
  {
    return 4;
  }
}

uint64_t ssl_parse_renegotiation_info(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 == 1 && !*a2)
  {
    *(a1 + 424) = 1;
    return 0;
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 40);
    return -28160;
  }
}

uint64_t ssl_parse_supported_groups_ext(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (a3 >= 2 && (v10 = bswap32(*a2) >> 16, v10 + 2 == a3) && !(v10 % 2))
  {
    if (*(*(a1 + 104) + 584))
    {
      mbedtls_ssl_send_alert_message(a1, 2, 47);
      return -26112;
    }

    else
    {
      v9 = v10 / 2 + 1;
      if (v9 > 0xE)
      {
        v9 = 14;
      }

      v7 = mbedtls_calloc();
      if (v7)
      {
        *(*(a1 + 104) + 584) = v7;
        for (i = a2 + 1; ; ++i)
        {
          v5 = 0;
          if (v10)
          {
            v5 = v9 > 1;
          }

          if (!v5)
          {
            break;
          }

          v6 = bswap32(*i) >> 16;
          if (mbedtls_ssl_get_ecp_group_id_from_tls_id(v6))
          {
            v3 = v7;
            v7 += 2;
            *v3 = v6;
            --v9;
          }

          v10 -= 2;
        }

        return 0;
      }

      else
      {
        mbedtls_ssl_send_alert_message(a1, 2, 80);
        return -32512;
      }
    }
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 50);
    return -29440;
  }
}

uint64_t ssl_parse_supported_point_formats(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 && *a2 + 1 == a3)
  {
    v5 = *a2;
    v4 = a2 + 1;
    while (v5)
    {
      if (!*v4 || *v4 == 1)
      {
        mbedtls_ecjpake_set_point_format(*(a1 + 104) + 72, *v4);
        return 0;
      }

      --v5;
      ++v4;
    }

    return 0;
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 50);
    return -29440;
  }
}

uint64_t ssl_parse_ecjpake_kkpp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (mbedtls_ecjpake_check(*(a1 + 104) + 72))
  {
    return 0;
  }

  else
  {
    round_one = mbedtls_ecjpake_read_round_one(*(a1 + 104) + 72, a2, a3);
    if (round_one)
    {
      mbedtls_ssl_send_alert_message(a1, 2, 47);
      return round_one;
    }

    else
    {
      *(*(a1 + 104) + 1) |= 2u;
      return 0;
    }
  }
}

uint64_t ssl_parse_max_fragment_length_ext(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 == 1 && *a2 < 5u)
  {
    **(a1 + 96) = *a2;
    return 0;
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 47);
    return -26112;
  }
}

uint64_t ssl_ciphersuite_match(uint64_t a1, int a2, void *a3)
{
  v4 = mbedtls_ssl_ciphersuite_from_id(a2);
  if (v4)
  {
    if (*(v4 + 10) <= *(a1 + 12) && *(v4 + 11) >= *(a1 + 12))
    {
      if (*(v4 + 18) != 11 || (*(*(a1 + 104) + 1) & 2) != 0)
      {
        if (!ssl_pick_cert(a1, v4))
        {
          *a3 = v4;
        }

        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_pick_cert(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  i = 0;
  *&v4[8] = 0;
  *v4 = mbedtls_ssl_get_ciphersuite_sig_pk_alg(a2);
  v3 = 0;
  *&v4[4] = *(*v7 + 128);
  if (*v4)
  {
    if (*&v4[4])
    {
      for (i = *&v4[4]; i; i = i[2])
      {
        v3 = 0;
        if (mbedtls_pk_can_do(*i + 360, *v4))
        {
          if (!mbedtls_ssl_check_cert_usage(*i, v6, 1, &v3))
          {
            break;
          }
        }
      }

      if (i)
      {
        *(v7[13] + 592) = i;
        return 0;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t ssl_write_hello_verify_request(uint64_t a1)
{
  v8 = a1;
  v7 = -110;
  v6 = *(a1 + 352) + 4;
  v1 = *(*a1 + 9);
  v2 = *(a1 + 12);
  mbedtls_ssl_write_version();
  v6 += 2;
  if (*(*v8 + 96))
  {
    v3 = v6++;
    v5 = v3;
    v7 = (*(*v8 + 96))(*(*v8 + 112), &v6, *(v8 + 312) + 16429, *(v8 + 408), *(v8 + 416));
    if (v7)
    {
      return v7;
    }

    else
    {
      *v5 = v6 - (v5 + 1);
      *(v8 + 368) = v6 - *(v8 + 352);
      *(v8 + 360) = 22;
      **(v8 + 352) = 3;
      *(v8 + 8) = 17;
      v7 = mbedtls_ssl_write_handshake_msg(v8);
      if (v7)
      {
        return v7;
      }

      else if (*(*v8 + 9) == 1 && (v7 = mbedtls_ssl_flight_transmit(v8)) != 0)
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -27648;
  }
}

void *ssl_handle_id_based_session_resumption(uint64_t a1)
{
  result = memset(__b, 0, sizeof(__b));
  __dst = *(a1 + 96);
  if (**(a1 + 104) != 1 && *(__dst + 2) && *(*a1 + 56))
  {
    mbedtls_ssl_session_init();
    if (!(*(*a1 + 56))(*(*a1 + 72), __dst + 24, *(__dst + 2), __b) && *(__dst + 2) == __b[2])
    {
      mbedtls_ssl_session_free(__dst);
      memcpy(__dst, __b, 0x80uLL);
      memset(__b, 0, sizeof(__b));
      **(a1 + 104) = 1;
    }

    return mbedtls_ssl_session_free(__b);
  }

  return result;
}

uint64_t ssl_write_renegotiation_ext(uint64_t result, _BYTE *a2, void *a3)
{
  if (*(result + 424) == 1)
  {
    result = __memcpy_chk();
    a2[2] = 0;
    a2[3] = 1;
    a2[4] = 0;
    *a3 = a2 + 5 - a2;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ssl_write_max_fragment_length_ext(uint64_t result, _BYTE *a2, void *a3)
{
  v5 = result;
  if (**(result + 96))
  {
    result = __memcpy_chk();
    a2[2] = 0;
    a2[3] = 1;
    a2[4] = **(v5 + 96);
    *a3 = 5;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ssl_write_supported_point_formats_ext(uint64_t result, _BYTE *a2, void *a3)
{
  if (*(*(result + 104) + 1))
  {
    result = __memcpy_chk();
    a2[2] = 0;
    a2[3] = 2;
    a2[4] = 1;
    a2[5] = 0;
    *a3 = 6;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ssl_write_ecjpake_kkpp_ext(uint64_t result, uint64_t a2, void *a3)
{
  v9 = result;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5 = a2;
  v4 = *(result + 352) + 0x4000;
  v3 = 0;
  *a3 = 0;
  if (*(*(v9[13] + 16) + 18) == 11 && v4 - v5 >= 4)
  {
    v13 = v5;
    v12 = 1;
    __memcpy_chk();
    v5 += 2;
    result = mbedtls_ecjpake_write_round_one(v9[13] + 72, v5 + 2, v4 - v5 - 2, &v3, *(*v9 + 40), *(*v9 + 48));
    v6 = result;
    if (!result)
    {
      v11 = v5;
      v10 = bswap32(v3) >> 16;
      result = __memcpy_chk();
      *v7 = v3 + 4;
    }
  }

  return result;
}

uint64_t ssl_prepare_server_key_exchange(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = *(a1[13] + 16);
  a1[46] = 4;
  if (*(v5 + 18) != 11)
  {
    return 0;
  }

  v4 = -110;
  v3 = 0;
  v4 = mbedtls_ecjpake_write_round_two(v7[13] + 72, (v7[44] + v7[46]), 0x4000 - v7[46], &v3, *(*v7 + 40), *(*v7 + 48));
  if (!v4)
  {
    v7[46] += v3;
    return 0;
  }

  return v4;
}

uint64_t mbedtls_ssl_tls12_write_client_hello_exts(void *a1, _BYTE *a2, unint64_t a3, int a4, void *a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = -110;
  v7 = a2;
  v6 = 0;
  *a5 = 0;
  if (v10)
  {
    v8 = ssl_write_supported_point_formats_ext_0(v13, v7, v11, &v6);
    if (v8)
    {
      return v8;
    }

    v7 += v6;
  }

  v8 = ssl_write_ecjpake_kkpp_ext_0(v13, v7, v11, &v6);
  if (v8)
  {
    return v8;
  }

  else
  {
    v7 += v6;
    v8 = ssl_write_max_fragment_length_ext_0(v13, v7, v11, &v6);
    if (v8)
    {
      return v8;
    }

    else
    {
      v7 += v6;
      *v9 = v7 - v12;
      return 0;
    }
  }
}

uint64_t ssl_write_supported_point_formats_ext_0(uint64_t a1, _BYTE *a2, unint64_t a3, void *a4)
{
  *a4 = 0;
  if (mbedtls_ssl_chk_buf_ptr(a2, a3, 6uLL))
  {
    return -27136;
  }

  else
  {
    __memcpy_chk();
    a2[2] = 0;
    a2[3] = 2;
    a2[4] = 1;
    a2[5] = 0;
    *a4 = 6;
    return 0;
  }
}

uint64_t ssl_write_ecjpake_kkpp_ext_0(void *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = -110;
  v8 = a2;
  v7 = 0;
  *a4 = 0;
  if (mbedtls_ecjpake_check(v13[13] + 72))
  {
    return 0;
  }

  else
  {
    if (!mbedtls_ssl_chk_buf_ptr(v8, v11, 4uLL))
    {
      v18 = v8;
      v17 = 1;
      __memcpy_chk();
      v8 += 2;
      if (*(v13[13] + 568) && *(v13[13] + 576))
      {
        v7 = *(v13[13] + 576);
        if (mbedtls_ssl_chk_buf_ptr(v8 + 2, v11, v7))
        {
          return -27136;
        }

        v5 = *(v13[13] + 568);
        __memcpy_chk();
      }

      else
      {
        v9 = mbedtls_ecjpake_write_round_one(v13[13] + 72, v8 + 2, v11 - v8 - 2, &v7, *(*v13 + 40), *(*v13 + 48));
        if (v9)
        {
          return v9;
        }

        *(v13[13] + 568) = mbedtls_calloc();
        if (!*(v13[13] + 568))
        {
          return -32512;
        }

        v4 = *(v13[13] + 568);
        __memcpy_chk();
        *(v13[13] + 576) = v7;
      }

      v16 = v8;
      v15 = bswap32(v7) >> 16;
      __memcpy_chk();
      v8 += 2;
      *v10 = v7 + 4;
      return 0;
    }

    return -27136;
  }
}

uint64_t ssl_write_max_fragment_length_ext_0(uint64_t a1, _BYTE *a2, unint64_t a3, void *a4)
{
  *a4 = 0;
  if (*(*a1 + 12))
  {
    if (mbedtls_ssl_chk_buf_ptr(a2, a3, 5uLL))
    {
      return -27136;
    }

    else
    {
      __memcpy_chk();
      a2[2] = 0;
      a2[3] = 1;
      a2[4] = *(*a1 + 12);
      *a4 = 5;
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_handshake_client_step(uint64_t a1)
{
  v2 = 0;
  switch(*(a1 + 8))
  {
    case 0:
      *(a1 + 8) = 1;
      goto LABEL_19;
    case 1:
      v2 = mbedtls_ssl_write_client_hello(a1);
      goto LABEL_19;
    case 2:
      v2 = ssl_parse_server_hello(a1);
      goto LABEL_19;
    case 3:
      v2 = mbedtls_ssl_parse_certificate(a1);
      goto LABEL_19;
    case 4:
      v2 = ssl_parse_server_key_exchange(a1);
      goto LABEL_19;
    case 5:
      v2 = ssl_write_certificate_request(a1);
      goto LABEL_19;
    case 6:
      v2 = ssl_parse_server_hello_done(a1);
      goto LABEL_19;
    case 7:
      v2 = mbedtls_ssl_write_certificate(a1);
      goto LABEL_19;
    case 8:
      v2 = ssl_write_client_key_exchange(a1);
      goto LABEL_19;
    case 9:
      v2 = ssl_write_certificate_verify(a1);
      goto LABEL_19;
    case 0xA:
      v2 = mbedtls_ssl_write_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xB:
      v2 = mbedtls_ssl_write_finished(a1);
      goto LABEL_19;
    case 0xC:
      v2 = mbedtls_ssl_parse_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xD:
      v2 = mbedtls_ssl_parse_finished(a1);
      goto LABEL_19;
    case 0xE:
      *(a1 + 8) = 15;
      goto LABEL_19;
    case 0xF:
      mbedtls_ssl_handshake_wrapup(a1);
LABEL_19:
      v3 = v2;
      break;
    default:
      v3 = -28928;
      break;
  }

  return v3;
}

uint64_t ssl_parse_server_hello(_DWORD *a1)
{
  v14 = 0;
  record = mbedtls_ssl_read_record(a1, 1);
  if (record)
  {
    return record;
  }

  v16 = *(a1 + 26);
  if (a1[56] != 22)
  {
    mbedtls_ssl_send_alert_message(a1, 2, 10);
    return -30464;
  }

  if (*(*a1 + 9) == 1)
  {
    if (*v16 == 3)
    {
      return ssl_parse_hello_verify_request(a1);
    }

    v1 = *(*(a1 + 13) + 752);
    mbedtls_free();
    *(*(a1 + 13) + 752) = 0;
    *(*(a1 + 13) + 760) = 0;
  }

  v10 = *(a1 + 35);
  if (v10 < mbedtls_ssl_hs_hdr_len(a1) + 38 || *v16 != 2)
  {
    goto LABEL_48;
  }

  v17 = &v16[mbedtls_ssl_hs_hdr_len(a1)];
  a1[3] = mbedtls_ssl_read_version(v17, *(*a1 + 9));
  *(*(a1 + 12) + 4) = a1[3];
  *(*(a1 + 12) + 2) = *(*a1 + 8);
  if (a1[3] < *(*a1 + 4) || a1[3] > **a1)
  {
    mbedtls_ssl_send_alert_message(a1, 2, 70);
    return -28288;
  }

  v2 = *(a1 + 13) + 928;
  __memcpy_chk();
  __n = *(v17 + 34);
  if (__n > 0x20)
  {
    goto LABEL_48;
  }

  v9 = *(a1 + 35);
  if (v9 <= mbedtls_ssl_hs_hdr_len(a1) + 39 + __n)
  {
    v7 = *(a1 + 35);
    if (v7 == mbedtls_ssl_hs_hdr_len(a1) + 38 + __n)
    {
      v18 = 0;
      goto LABEL_26;
    }

LABEL_48:
    mbedtls_ssl_send_alert_message(a1, 2, 50);
    return -29440;
  }

  v18 = bswap32(*(v17 + __n + 38)) >> 16;
  if (v18 && v18 < 4)
  {
    goto LABEL_48;
  }

  v8 = *(a1 + 35);
  if (v8 != mbedtls_ssl_hs_hdr_len(a1) + 40 + __n + v18)
  {
    goto LABEL_48;
  }

LABEL_26:
  v20 = bswap32(*(v17 + __n + 35)) >> 16;
  if (*(v17 + __n + 37))
  {
    mbedtls_ssl_send_alert_message(a1, 2, 47);
    return -28800;
  }

  else
  {
    *(*(a1 + 13) + 16) = mbedtls_ssl_ciphersuite_from_id(v20);
    if (*(*(a1 + 13) + 16))
    {
      mbedtls_ssl_optimize_checksum(a1, *(*(a1 + 13) + 16));
      if (**(a1 + 13) && __n && *(*(a1 + 12) + 8) == v20 && *(*(a1 + 12) + 16) == __n && !memcmp((*(a1 + 12) + 24), v17 + 35, __n))
      {
        a1[2] = 12;
      }

      else
      {
        ++a1[2];
        **(a1 + 13) = 0;
        *(*(a1 + 12) + 8) = v20;
        *(*(a1 + 12) + 16) = __n;
        v3 = *(a1 + 12) + 24;
        __memcpy_chk();
      }

      v21 = 0;
      do
      {
        if (!*(*(*a1 + 16) + 4 * v21))
        {
          mbedtls_ssl_send_alert_message(a1, 2, 47);
          return -26112;
        }

        v4 = v21++;
      }

      while (*(*(*a1 + 16) + 4 * v4) != *(*(a1 + 12) + 8));
      v13 = mbedtls_ssl_ciphersuite_from_id(*(*(a1 + 12) + 8));
      if (!mbedtls_ssl_validate_ciphersuite(a1, v13, a1[3], a1[3]))
      {
        v15 = v17 + __n + 40;
        while (v18)
        {
          v12 = bswap32(*v15) >> 16;
          v11 = bswap32(*(v15 + 1)) >> 16;
          if (v11 + 4 > v18)
          {
            goto LABEL_48;
          }

          switch(v12)
          {
            case 1u:
              v24 = ssl_parse_max_fragment_length_ext_0(a1, v15 + 4, v11);
              if (v24)
              {
                return v24;
              }

              break;
            case 0xBu:
              v25 = ssl_parse_supported_point_formats_ext(a1, v15 + 4, v11);
              if (v25)
              {
                return v25;
              }

              break;
            case 0x100u:
              v26 = ssl_parse_ecjpake_kkpp_0(a1, (v15 + 4), v11);
              if (v26)
              {
                return v26;
              }

              break;
            case 0xFF01u:
              v23 = ssl_parse_renegotiation_info(a1, v15 + 4, v11);
              if (v23)
              {
                return v23;
              }

              break;
          }

          v18 -= v11 + 4;
          v15 += v11 + 4;
          if (v18 && v18 < 4)
          {
            return -29440;
          }
        }

        if (**(a1 + 13))
        {
          v27 = mbedtls_ssl_derive_keys(a1);
          if (v27)
          {
            mbedtls_ssl_send_alert_message(a1, 2, 80);
            return v27;
          }
        }

        if (!a1[106] && *(*a1 + 11) == 2)
        {
          v14 = 1;
        }

        if (v14 != 1)
        {
          return 0;
        }
      }

      mbedtls_ssl_send_alert_message(a1, 2, 40);
      return -28160;
    }

    else
    {
      mbedtls_ssl_send_alert_message(a1, 2, 80);
      return -28928;
    }
  }
}

uint64_t ssl_parse_server_key_exchange(uint64_t a1)
{
  v4 = *(*(a1 + 104) + 16);
  record = mbedtls_ssl_read_record(a1, 1);
  if (!record)
  {
    if (*(a1 + 224) != 22)
    {
LABEL_4:
      mbedtls_ssl_send_alert_message(a1, 2, 10);
      return -30464;
    }

    if (**(a1 + 208) == 12)
    {
      v2 = *(a1 + 208);
      v3 = (v2 + mbedtls_ssl_hs_hdr_len(a1));
      if (*(v4 + 18) != 11)
      {
        return -27648;
      }

      if (mbedtls_ecjpake_read_round_two(*(a1 + 104) + 72, v3, *(a1 + 208) + *(a1 + 280) - v3))
      {
        mbedtls_ssl_send_alert_message(a1, 2, 40);
        return -28160;
      }
    }

    else
    {
      if (*(v4 + 18) != 5 && *(v4 + 18) != 7)
      {
        goto LABEL_4;
      }

      *(a1 + 292) = 1;
    }

    ++*(a1 + 8);
    return 0;
  }

  return record;
}

uint64_t ssl_parse_server_hello_done(uint64_t a1)
{
  record = mbedtls_ssl_read_record(a1, 1);
  if (record)
  {
    return record;
  }

  else if (*(a1 + 224) == 22)
  {
    v2 = *(a1 + 280);
    if (v2 == mbedtls_ssl_hs_hdr_len(a1) && **(a1 + 208) == 14)
    {
      ++*(a1 + 8);
      if (*(*a1 + 9) == 1)
      {
        mbedtls_ssl_recv_flight_completed(a1);
      }

      return 0;
    }

    else
    {
      mbedtls_ssl_send_alert_message(a1, 2, 50);
      return -29440;
    }
  }

  else
  {
    return -30464;
  }
}

uint64_t ssl_write_client_key_exchange(uint64_t a1)
{
  v6 = a1;
  v5 = -110;
  v4 = 0;
  v3 = 0;
  if (*(*(*(a1 + 104) + 16) + 18) == 11)
  {
    v4 = 4;
    v5 = mbedtls_ecjpake_write_round_two(*(v6 + 104) + 72, (*(v6 + 352) + 4), 16380, &v3, *(*v6 + 40), *(*v6 + 48));
    if (v5)
    {
      return v5;
    }

    else
    {
      v5 = mbedtls_ecjpake_derive_secret((*(v6 + 104) + 72), *(v6 + 104) + 960, 0x20uLL, (*(v6 + 104) + 992), *(*v6 + 40), *(*v6 + 48));
      if (v5)
      {
        return v5;
      }

      else
      {
        *(v6 + 368) = v4 + v3;
        *(v6 + 360) = 22;
        **(v6 + 352) = 16;
        ++*(v6 + 8);
        v1 = mbedtls_ssl_write_handshake_msg(v6);
        v5 = v1;
        if (v1)
        {
          return v5;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_write_certificate_verify(uint64_t a1)
{
  v3 = *(*(a1 + 104) + 16);
  v2 = mbedtls_ssl_derive_keys(a1);
  if (v2)
  {
    return v2;
  }

  else if (mbedtls_ssl_ciphersuite_cert_req_allowed(v3))
  {
    return -27648;
  }

  else
  {
    ++*(a1 + 8);
    return 0;
  }
}

uint64_t ssl_parse_hello_verify_request(uint64_t a1)
{
  v4 = *(a1 + 208);
  v7 = (v4 + mbedtls_ssl_hs_hdr_len(a1));
  if ((mbedtls_ssl_hs_hdr_len(a1) + 3) > *(a1 + 232))
  {
    goto LABEL_2;
  }

  v6 = bswap32(*v7) >> 16;
  v8 = (v7 + 1);
  if (v6 != 65277 && v6 != 65279)
  {
    mbedtls_ssl_send_alert_message(a1, 2, 70);
    return -28288;
  }

  v5 = *v8;
  if (*(a1 + 208) + *(a1 + 232) - (v8 + 1) < *v8)
  {
LABEL_2:
    mbedtls_ssl_send_alert_message(a1, 2, 50);
    return -29440;
  }

  else
  {
    v1 = *(*(a1 + 104) + 752);
    mbedtls_free();
    *(*(a1 + 104) + 752) = mbedtls_calloc();
    if (*(*(a1 + 104) + 752))
    {
      v2 = *(*(a1 + 104) + 752);
      __memcpy_chk();
      *(*(a1 + 104) + 760) = v5;
      *(a1 + 8) = 1;
      v9 = mbedtls_ssl_reset_checksum(a1);
      if (v9)
      {
        return v9;
      }

      else
      {
        mbedtls_ssl_recv_flight_completed(a1);
        return 0;
      }
    }

    else
    {
      return -32512;
    }
  }
}

uint64_t ssl_parse_max_fragment_length_ext_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*a1 + 12) && a3 == 1 && *a2 == *(*a1 + 12))
  {
    return 0;
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 47);
    return -26112;
  }
}

uint64_t ssl_parse_supported_point_formats_ext(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 && *a2 + 1 == a3)
  {
    v5 = *a2;
    v4 = a2 + 1;
    while (v5)
    {
      if (!*v4 || *v4 == 1)
      {
        mbedtls_ecjpake_set_point_format(*(a1 + 104) + 72, *v4);
        return 0;
      }

      --v5;
      ++v4;
    }

    mbedtls_ssl_send_alert_message(a1, 2, 40);
    return -28160;
  }

  else
  {
    mbedtls_ssl_send_alert_message(a1, 2, 50);
    return -29440;
  }
}

uint64_t ssl_parse_ecjpake_kkpp_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 104) + 16) + 18) == 11)
  {
    v3 = *(*(a1 + 104) + 568);
    mbedtls_free();
    *(*(a1 + 104) + 568) = 0;
    *(*(a1 + 104) + 576) = 0;
    round_one = mbedtls_ecjpake_read_round_one(*(a1 + 104) + 72, a2, a3);
    if (round_one)
    {
      mbedtls_ssl_send_alert_message(a1, 2, 40);
      return round_one;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

const char **mbedtls_ssl_ciphersuite_from_string(const char *a1)
{
  v2 = &ciphersuite_definitions;
  if (!a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (!strcmp(v2[1], a1))
    {
      return v2;
    }

    v2 += 3;
  }

  return 0;
}

_DWORD *mbedtls_ssl_ciphersuite_from_id(int a1)
{
  for (i = &ciphersuite_definitions; *i; i += 6)
  {
    if (*i == a1)
    {
      return i;
    }
  }

  return 0;
}

const char *mbedtls_ssl_get_ciphersuite_name(int a1)
{
  v2 = mbedtls_ssl_ciphersuite_from_id(a1);
  if (v2)
  {
    return *(v2 + 1);
  }

  else
  {
    return "unknown";
  }
}

uint64_t mbedtls_ssl_get_ciphersuite_id(const char *a1)
{
  v2 = mbedtls_ssl_ciphersuite_from_string(a1);
  if (v2)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_get_ciphersuite_sig_pk_alg(uint64_t a1)
{
  v2 = *(a1 + 18);
  if ((v2 - 1) <= 2)
  {
    return 1;
  }

  if (v2 == 4)
  {
    return 4;
  }

  if (v2 == 7)
  {
    return 1;
  }

  else if (v2 != 10 && v2 != 9)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t mbedtls_ssl_get_ciphersuite_sig_alg(uint64_t a1)
{
  v2 = *(a1 + 18);
  if (v2 != 3 && v2 != 2)
  {
    if (v2 == 4)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t mbedtls_ssl_cookie_init(uint64_t a1)
{
  result = mbedtls_md_init();
  *(a1 + 24) = 0;
  *(a1 + 32) = 60;
  return result;
}

uint64_t mbedtls_ssl_cookie_setup(uint64_t a1, uint64_t (*a2)(uint64_t, _BYTE *, uint64_t), uint64_t a3)
{
  v5 = a2(a3, v10, 32);
  if (v5)
  {
    return v5;
  }

  else
  {
    v3 = mbedtls_md_info_from_type(9);
    v6 = mbedtls_md_setup(a1, v3, 1);
    if (v6)
    {
      return v6;
    }

    else
    {
      v7 = mbedtls_md_hmac_starts(a1, v10, 0x20uLL);
      if (v7)
      {
        return v7;
      }

      else
      {
        mbedtls_platform_zeroize(v10, 0x20uLL);
        return 0;
      }
    }
  }
}

uint64_t mbedtls_ssl_cookie_write(void *a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1 && a4)
  {
    if (mbedtls_ssl_chk_buf_ptr(*a2, a3, 0x20uLL))
    {
      return -27136;
    }

    else
    {
      ++a1[3];
      v12 = *a2;
      __memcpy_chk();
      *a2 += 4;
      return ssl_cookie_hmac(a1, *a2 - 4, a2, a3, a4, a5);
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_cookie_hmac(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (mbedtls_ssl_chk_buf_ptr(*a3, a4, 0x1CuLL))
  {
    return -27136;
  }

  else if (mbedtls_md_hmac_reset(a1) || mbedtls_md_hmac_update(a1, a2, 4uLL) || mbedtls_md_hmac_update(a1, a5, a6) || mbedtls_md_hmac_finish(a1))
  {
    return -27648;
  }

  else
  {
    v6 = *a3;
    __memcpy_chk();
    *a3 += 28;
    return 0;
  }
}

uint64_t mbedtls_ssl_cookie_check(void *a1, unsigned int *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = v19;
  v9 = 0;
  if (a1 && v12)
  {
    if (v13 == 32)
    {
      if (ssl_cookie_hmac(a1, v14, &v10, (v10 + 28), v12, v11))
      {
        v9 = -1;
      }

      if (!v9)
      {
        if (mbedtls_ct_memcmp((v14 + 1), v19, 0x1CuLL))
        {
          v9 = -1;
        }

        else
        {
          v7 = a1[3];
          v18 = v14;
          v17 = 0;
          v17 = *v14;
          v6 = bswap32(v17);
          if (a1[4] && (v7 - v6) > a1[4])
          {
            v9 = -1;
          }
        }
      }

      mbedtls_platform_zeroize(v19, 0x1CuLL);
      return v9;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t mbedtls_ssl_set_timer(uint64_t result, unsigned int a2)
{
  if (*(result + 152))
  {
    return (*(result + 152))(*(result + 144), a2 / 4, a2);
  }

  return result;
}

uint64_t mbedtls_ssl_check_timer(uint64_t a1)
{
  if (*(a1 + 160))
  {
    if ((*(a1 + 160))(*(a1 + 144)) == 2)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_check_record(void *a1, void *a2, unint64_t a3)
{
  if (*(*a1 + 9))
  {
    memset(__b, 0, sizeof(__b));
    v4 = ssl_parse_record_header(a1, a2, a3, __b);
    if (!v4 && a1[14])
    {
      v4 = mbedtls_ssl_decrypt_buf(a1, a1[14], __b);
    }
  }

  else
  {
    v4 = -28800;
  }

  mbedtls_platform_zeroize(a2, a3);
  if (v4 == -24576 || v4 == -25728)
  {
    return -26368;
  }

  return v4;
}

uint64_t ssl_parse_record_header(void *a1, uint64_t a2, unint64_t a3, unsigned __int16 *a4)
{
  if (*(*a1 + 9) == 1)
  {
    v6 = 11;
  }

  else
  {
    v6 = 3;
  }

  if (a3 < v6 + 2)
  {
    return -29184;
  }

  *(a4 + 8) = *a2;
  if (ssl_check_record_type(*(a4 + 8)))
  {
    return -29184;
  }

  *(a4 + 9) = *(a2 + 1);
  *(a4 + 10) = *(a2 + 2);
  if (mbedtls_ssl_read_version((a2 + 1), *(*a1 + 9)) > **a1)
  {
    return -29184;
  }

  if (*(*a1 + 9) != 1)
  {
    v4 = a1[22];
  }

  __memcpy_chk();
  *(a4 + 4) = v6 + 2;
  *(a4 + 5) = bswap32(*(a2 + v6)) >> 16;
  *(a4 + 2) = a2;
  *(a4 + 3) = *(a4 + 4) + *(a4 + 5);
  if (!*(a4 + 5))
  {
    return -29184;
  }

  if (*(*a1 + 9) != 1)
  {
    return 0;
  }

  v7 = bswap32(*a4) >> 16;
  if (a3 < *(a4 + 4) + *(a4 + 5))
  {
    return -29184;
  }

  if (v7 == *(a1 + 124))
  {
    if (mbedtls_ssl_dtls_record_replay_check(a1, a4))
    {
      return -26368;
    }

    return 0;
  }

  if (v7 == *(a1 + 124) + 1)
  {
    return -25728;
  }

  else
  {
    return -26368;
  }
}

uint64_t mbedtls_ssl_decrypt_buf(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = a2;
  v13 = a3;
  v12 = 0;
  mode_from_transform = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v15 = 0;
  if (a3 && v13[2] && v13[3] >= v13[4] && v13[3] - v13[4] >= v13[5])
  {
    v8 = (v13[2] + v13[4]);
    mode_from_transform = mbedtls_ssl_get_mode_from_transform(v14);
    if (mode_from_transform != 3)
    {
      return -27648;
    }

    if (ssl_transform_aead_dynamic_iv_is_explicit(v14))
    {
      if (v13[5] < 8uLL)
      {
        return -29056;
      }

      v6 = v8;
      v8 += 8;
      v13[4] += 8;
      v13[5] -= 8;
    }

    else
    {
      v6 = v13;
    }

    if (v13[5] >= *(v14 + 32))
    {
      v13[5] -= *(v14 + 32);
      ssl_build_record_nonce(v17, 12, v14 + 56, *(v14 + 16), v6, 8uLL);
      v3 = *(v14 + 72);
      v4 = *(v14 + 32);
      ssl_extract_add_data_from_record(v18, &v7, v13);
      v10 = mbedtls_cipher_auth_decrypt_ext((v14 + 160), v17, *(v14 + 8), v18, v7, v8, v13[5] + *(v14 + 32), v8, v13[3] - &v8[-v13[2]], &v12, *(v14 + 32));
      if (v10)
      {
        if (v10 == -25344)
        {
          return -29056;
        }

        else
        {
          return v10;
        }
      }

      else
      {
        ++v9;
        if (v12 == v13[5])
        {
          if (v9 == 1)
          {
            return 0;
          }

          else
          {
            return -27648;
          }
        }

        else
        {
          return -27648;
        }
      }
    }

    else
    {
      return -29056;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t mbedtls_ssl_encrypt_buf(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  mode_from_transform = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v21 = 0;
  if (a2)
  {
    if (v19 && v19[2] && v19[3] >= v19[4] && v19[3] - v19[4] >= v19[5])
    {
      mode_from_transform = mbedtls_ssl_get_mode_from_transform(v20);
      v14 = v19[2] + v19[4];
      v10 = v19[3] - (v19[5] + v19[4]);
      if (v19[5] <= 0x4000uLL)
      {
        v11 = v19[3] - (v19[5] + v19[4]);
        if (mode_from_transform != 3)
        {
          return -27648;
        }

        is_explicit = ssl_transform_aead_dynamic_iv_is_explicit(v20);
        if (v11 >= *(v20 + 32))
        {
          ssl_build_record_nonce(v23, 12, v20 + 40, *(v20 + 16), v19, 8uLL);
          v5 = *(v20 + 72);
          v6 = *(v20 + 32);
          ssl_extract_add_data_from_record(v24, &v13, v19);
          v8 = mbedtls_cipher_auth_encrypt_ext((v20 + 80), v23, *(v20 + 8), v24, v13, v14, v19[5], v14, v19[3] - (v14 - v19[2]), v19 + 5, *(v20 + 32));
          if (v8)
          {
            return v8;
          }

          else
          {
            v12 = v11 - *(v20 + 32);
            if (is_explicit)
            {
              if (v19[4] < 8uLL)
              {
                return -27136;
              }

              __memcpy_chk();
              v19[4] -= 8;
              v19[5] += 8;
            }

            if (++v15 == 1)
            {
              return 0;
            }

            else
            {
              return -27648;
            }
          }
        }

        else
        {
          return -27136;
        }
      }

      else
      {
        return -28928;
      }
    }

    else
    {
      return -27648;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_build_record_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  __memset_chk();
  result = __memcpy_chk();
  v12 = a1 + a2 - a6;
  for (i = 0; i + 16 <= a6; i += 16)
  {
    *(v12 + i) = veorq_s8(*(v12 + i), *(a5 + i));
  }

  while (i < a6)
  {
    *(v12 + i) ^= *(a5 + i);
    ++i;
  }

  return result;
}

uint64_t ssl_extract_add_data_from_record(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  __memcpy_chk();
  *(a1 + 8) = *(a3 + 8);
  __memcpy_chk();
  result = __memcpy_chk();
  *a2 = a1 + 13 - a1;
  return result;
}

uint64_t mbedtls_ssl_fetch_input(void *a1, unint64_t a2)
{
  if (!a1[6] && !a1[7])
  {
    return -28928;
  }

  if (a2 > 16429 - (a1[23] - a1[21]))
  {
    return -28928;
  }

  if (*(*a1 + 9) != 1)
  {
    while (a1[30] < a2)
    {
      v8 = a2 - a1[30];
      if (mbedtls_ssl_check_timer(a1))
      {
        v11 = -26624;
      }

      else if (a1[7])
      {
        v11 = (a1[7])(a1[8], a1[23] + a1[30], v8, *(*a1 + 168));
      }

      else
      {
        v11 = (a1[6])(a1[8], a1[23] + a1[30], v8);
      }

      if (!v11)
      {
        return -29312;
      }

      if (v11 < 0)
      {
        return v11;
      }

      if (v11 > v8)
      {
        return -27648;
      }

      a1[30] += v11;
    }

    return 0;
  }

  if (a1[32])
  {
    if (a1[30] < a1[32])
    {
      return -27648;
    }

    a1[30] -= a1[32];
    if (a1[30])
    {
      v2 = a1[23];
      v3 = a1[23] + a1[32];
      v4 = a1[30];
      __memmove_chk();
    }

    a1[32] = 0;
  }

  if (a2 <= a1[30])
  {
    return 0;
  }

  if (a1[30])
  {
    return -27648;
  }

  if (mbedtls_ssl_check_timer(a1))
  {
    v9 = -26624;
  }

  else
  {
    v7 = 16429 - (a1[23] - a1[21]);
    if (mbedtls_ssl_is_handshake_over(a1))
    {
      v6 = *(*a1 + 168);
    }

    else
    {
      v6 = *(a1[13] + 772);
    }

    if (a1[7])
    {
      v9 = (a1[7])(a1[8], a1[23], v7, v6);
    }

    else
    {
      v9 = (a1[6])(a1[8], a1[23], v7);
    }

    if (!v9)
    {
      return -29312;
    }
  }

  if (v9 != -26624 || (mbedtls_ssl_set_timer(a1, 0), *(a1 + 2) == 27))
  {
    if (v9 < 0)
    {
      return v9;
    }

    a1[30] = v9;
    return 0;
  }

  if (ssl_double_retransmit_timeout(a1))
  {
    return -26624;
  }

  else
  {
    v10 = mbedtls_ssl_resend(a1);
    if (v10)
    {
      return v10;
    }

    else
    {
      return -26880;
    }
  }
}

uint64_t ssl_double_retransmit_timeout(void *a1)
{
  if (*(a1[13] + 772) < *(*a1 + 176))
  {
    if (*(a1[13] + 772) != *(*a1 + 172))
    {
      *(a1[13] + 824) = 508;
    }

    v2 = 2 * *(a1[13] + 772);
    if (v2 < *(a1[13] + 772) || v2 > *(*a1 + 176))
    {
      v2 = *(*a1 + 176);
    }

    *(a1[13] + 772) = v2;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_flush_output(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (*(a1 + 376))
    {
      while (*(a1 + 376))
      {
        v2 = (*(a1 + 40))(*(a1 + 64), *(a1 + 328) - *(a1 + 376), *(a1 + 376));
        if (v2 <= 0)
        {
          return v2;
        }

        if (v2 > *(a1 + 376))
        {
          return -27648;
        }

        *(a1 + 376) -= v2;
      }

      if (*(*a1 + 9) == 1)
      {
        *(a1 + 328) = *(a1 + 312);
      }

      else
      {
        *(a1 + 328) = *(a1 + 312) + 8;
      }

      mbedtls_ssl_update_out_pointers(a1, *(a1 + 120));
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t mbedtls_ssl_update_out_pointers(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(*result + 9) == 1)
  {
    *(result + 320) = *(result + 328) + 3;
    *(result + 336) = *(result + 320) + 8;
    *(result + 344) = *(result + 336) + 2;
  }

  else
  {
    *(result + 336) = *(result + 328) + 3;
    *(result + 344) = *(result + 328) + 5;
  }

  *(result + 352) = *(result + 344);
  if (a2)
  {
    result = ssl_transform_get_explicit_iv_len(a2);
    *(v2 + 352) += result;
  }

  return result;
}

void mbedtls_ssl_flight_free(uint64_t *a1)
{
  while (a1)
  {
    v2 = a1[3];
    v1 = *a1;
    mbedtls_free();
    mbedtls_free();
    a1 = v2;
  }
}