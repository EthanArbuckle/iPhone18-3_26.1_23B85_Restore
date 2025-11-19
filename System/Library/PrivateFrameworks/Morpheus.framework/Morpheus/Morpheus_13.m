double fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>@<D0>(uint64_t a1@<X0>, int a2@<W1>, __n128 *a3@<X8>)
{
  *&result = fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get((a1 + 8), a2, a3).n128_u64[0];
  if (!a3[1].n128_u32[0])
  {
    fmt::v10::detail::throw_format_error("argument not found", v4);
  }

  return result;
}

char *fmt::v10::detail::do_parse_arg_id<char,char const* fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(char const*,char const*,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &)::id_adapter &>(char *a1, unsigned __int8 *a2, _DWORD *a3, const char *a4)
{
  v6 = a1;
  v17 = a1;
  v7 = *a1;
  if ((v7 - 48) <= 9)
  {
    if (v7 == 48)
    {
      v8 = 0;
      v9 = (v6 + 1);
      v17 = (v6 + 1);
    }

    else
    {
      v8 = fmt::v10::detail::parse_nonnegative_int<char>(&v17, a2, 0x7FFFFFFFLL, a4);
      v9 = v17;
    }

    if (v9 != a2)
    {
      v15 = *v9;
      if (v15 == 58 || v15 == 125)
      {
        if (*(*a3 + 16) >= 1)
        {
          fmt::v10::detail::throw_format_error("cannot switch from automatic to manual argument indexing", v6);
        }

        *(*a3 + 16) = -1;
        a3[2] = v8;
        return v9;
      }
    }

LABEL_27:
    fmt::v10::detail::throw_format_error("invalid format string", v6);
  }

  if (v7 != 95 && (v7 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_27;
  }

  v11 = a1 + 1;
  while (v11 != a2)
  {
    v13 = *v11++;
    v12 = v13;
    if ((v13 - 48) >= 0xA && v12 != 95 && (v12 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v9 = v11 - 1;
      goto LABEL_18;
    }
  }

  v9 = a2;
LABEL_18:
  if (v9 - a1 < 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(char const*,char const*,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &)::id_adapter::on_name(a3, a1, v9 - a1);
  return v9;
}

unint64_t fmt::v10::detail::parse_nonnegative_int<char>(unint64_t result, unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v4 = *result;
  if (*result == a2 || (v5 = *v4, (v5 - 48) > 9))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x87E, "", a4);
  }

  v6 = result;
  LODWORD(result) = 0;
  v7 = a2 - 1;
  v8 = v4 + 1;
  while (1)
  {
    v9 = result;
    result = (v5 + 10 * result - 48);
    if (v8 == a2)
    {
      break;
    }

    v10 = *v8++;
    v5 = v10;
    if ((v10 - 48) >= 0xA)
    {
      v7 = v8 - 2;
      a2 = v8 - 1;
      break;
    }
  }

  v11 = a2 - v4;
  *v6 = a2;
  if (v11 >= 10 && (v11 != 10 || (((*v7 - 48) & 0xFFFFFFFE) + 10 * v9) >> 31))
  {
    return a3;
  }

  return result;
}

uint64_t fmt::v10::detail::parse_replacement_field<char,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &>(char const*,char const*,void fmt::v10::detail::vformat_to<char>(fmt::v10::detail::buffer<char> &,fmt::v10::basic_string_view<char>,fmt::v10::detail::vformat_args<char>::type,fmt::v10::detail::locale_ref)::format_handler &)::id_adapter::on_name(_DWORD *a1, const void *a2, size_t a3)
{
  result = fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get_id<char>((*a1 + 32), a2, a3);
  if ((result & 0x80000000) != 0)
  {
    fmt::v10::detail::throw_format_error("argument not found", v5);
  }

  a1[2] = result;
  return result;
}

uint64_t fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get_id<char>(uint64_t *a1, const void *a2, size_t a3)
{
  if ((*a1 & 0x4000000000000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = -32;
  if (*a1 >= 0)
  {
    v4 = -16;
  }

  v5 = (a1[1] + v4);
  v6 = v5[1];
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = (*v5 + 8); ; i += 2)
  {
    v10 = strlen(*(i - 1));
    v11 = v10;
    v12 = v10 >= a3 ? a3 : v10;
    v13 = memcmp(*(i - 1), a2, v12);
    if (v11 == a3 && v13 == 0)
    {
      break;
    }

    if (!--v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *i;
}

unint64_t fmt::v10::detail::handle_dynamic_spec<fmt::v10::detail::width_checker,fmt::v10::basic_format_context<fmt::v10::appender,char>>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v7 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,fmt::v10::basic_string_view<char>>(a3, *(a2 + 8), *(a2 + 16), v6);
    goto LABEL_5;
  }

  if (*a2 == 1)
  {
    fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>(a3, *(a2 + 8), v6);
LABEL_5:
    result = fmt::v10::detail::get_dynamic_spec<fmt::v10::detail::width_checker,fmt::v10::basic_format_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>>>(v6, v4);
    *v3 = result;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t fmt::v10::detail::handle_dynamic_spec<fmt::v10::detail::precision_checker,fmt::v10::basic_format_context<fmt::v10::appender,char>>(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v7 = *MEMORY[0x277D85DE8];
  if (*a2 == 2)
  {
    fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,fmt::v10::basic_string_view<char>>(a3, *(a2 + 8), *(a2 + 16), v6);
    goto LABEL_5;
  }

  if (*a2 == 1)
  {
    fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,int>(a3, *(a2 + 8), v6);
LABEL_5:
    result = fmt::v10::detail::get_dynamic_spec<fmt::v10::detail::precision_checker,fmt::v10::basic_format_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>>>(v6, v4);
    *v3 = result;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

char *fmt::v10::detail::parse_dynamic_spec<char>(char *result, char *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v14 = result;
  if (result == a2)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x8E3, "", a4);
  }

  v6 = *result;
  if ((v6 - 48) > 9)
  {
    if (v6 == 123)
    {
      v10 = (result + 1);
      v13[1] = a4;
      v14 = v10;
      v13[0] = a5;
      if (v10 != a2)
      {
        v11 = *v10;
        if (v11 == 58 || v11 == 125)
        {
          v12 = *(a5 + 16);
          if (v12 < 0)
          {
            fmt::v10::detail::throw_format_error("cannot switch from manual to automatic argument indexing", a2);
          }

          *(a5 + 16) = v12 + 1;
          *a4 = 1;
          *(a4 + 8) = v12;
        }

        else
        {
          v10 = fmt::v10::detail::do_parse_arg_id<char,fmt::v10::detail::dynamic_spec_id_handler<char> &>(v10, a2, v13, a4);
        }

        v14 = v10;
      }

      if (v10 == a2 || *v10 != 125)
      {
        fmt::v10::detail::throw_format_error("invalid format string", a2);
      }

      return (v10 + 1);
    }
  }

  else
  {
    v8 = fmt::v10::detail::parse_nonnegative_int<char>(&v14, a2, 0xFFFFFFFFLL, a4);
    if (v8 == -1)
    {
      fmt::v10::detail::throw_format_error("number is too big", v9);
    }

    *a3 = v8;
    return v14;
  }

  return result;
}

char *fmt::v10::detail::parse_precision<char>(uint64_t a1, char *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v6 = (a1 + 1);
  if (v6 == a2 || *v6 == 125)
  {
    fmt::v10::detail::throw_format_error("invalid precision", a2);
  }

  return fmt::v10::detail::parse_dynamic_spec<char>(v6, a2, a3, a4, a5);
}

_BYTE *fmt::v10::detail::fill_t<char>::operator=(_BYTE *result, char *a2, unint64_t a3, const char *a4)
{
  if (a3 > 4)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x7F6, "invalid fill", a4);
  }

  if (a3)
  {
    v4 = result;
    v5 = a3;
    do
    {
      v6 = *a2++;
      *v4++ = v6;
      --v5;
    }

    while (v5);
  }

  result[4] = a3;
  return result;
}

unsigned __int8 *fmt::v10::detail::do_parse_arg_id<char,fmt::v10::detail::dynamic_spec_id_handler<char> &>(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, const char *a4)
{
  v18 = a1;
  v6 = *a1;
  if ((v6 - 48) <= 9)
  {
    if (v6 == 48)
    {
      v7 = 0;
      v8 = a1 + 1;
      v18 = a1 + 1;
    }

    else
    {
      v7 = fmt::v10::detail::parse_nonnegative_int<char>(&v18, a2, 0x7FFFFFFFLL, a4);
      v8 = v18;
    }

    if (v8 != a2)
    {
      v15 = *v8;
      if (v15 == 58 || v15 == 125)
      {
        v16 = a3[1];
        *v16 = 1;
        v16[2] = v7;
        if (*(*a3 + 16) >= 1)
        {
          fmt::v10::detail::throw_format_error("cannot switch from automatic to manual argument indexing", a2);
        }

        *(*a3 + 16) = -1;
        return v8;
      }
    }

LABEL_27:
    fmt::v10::detail::throw_format_error("invalid format string", a2);
  }

  if (v6 != 95 && (v6 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_27;
  }

  v10 = a1 + 1;
  while (v10 != a2)
  {
    v12 = *v10++;
    v11 = v12;
    if ((v12 - 48) >= 0xA && v11 != 95 && (v11 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v8 = v10 - 1;
      goto LABEL_18;
    }
  }

  v8 = a2;
LABEL_18:
  if (v8 - a1 < 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v14 = a3[1];
  *v14 = 2;
  *(v14 + 8) = a1;
  *(v14 + 16) = v8 - a1;
  return v8;
}

unint64_t fmt::v10::detail::get_dynamic_spec<fmt::v10::detail::width_checker,fmt::v10::basic_format_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>>>(unsigned int *a1, const char *a2)
{
  switch(a1[4])
  {
    case 1u:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 2u:
      result = *a1;
      goto LABEL_9;
    case 3u:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 4u:
    case 6u:
      goto LABEL_5;
    case 5u:
      if ((*(a1 + 1) & 0x8000000000000000) != 0)
      {
LABEL_7:
        fmt::v10::detail::throw_format_error("negative width", a2);
      }

LABEL_5:
      result = *a1;
LABEL_9:
      if (result >> 31)
      {
        fmt::v10::detail::throw_format_error("number is too big", a2);
      }

      return result;
    default:
      fmt::v10::detail::throw_format_error("width is not integer", a2);
  }
}

void fmt::v10::detail::get_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>,fmt::v10::basic_string_view<char>>(uint64_t a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, __n128 *a4@<X8>)
{
  fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get<char>((a1 + 8), a2, a3, a4);
  if (!a4[1].n128_u32[0])
  {
    fmt::v10::detail::throw_format_error("argument not found", v5);
  }
}

void fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get<char>(uint64_t *a1@<X0>, const void *a2@<X1>, size_t a3@<X2>, __n128 *a4@<X8>)
{
  v6 = fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get_id<char>(a1, a2, a3);
  if (v6 < 0)
  {
    a4[1].n128_u32[0] = 0;
  }

  else
  {

    fmt::v10::basic_format_args<fmt::v10::basic_format_context<fmt::v10::appender,char>>::get(a1, v6, a4);
  }
}

unint64_t fmt::v10::detail::get_dynamic_spec<fmt::v10::detail::precision_checker,fmt::v10::basic_format_arg<fmt::v10::basic_format_context<fmt::v10::appender,char>>>(unsigned int *a1, const char *a2)
{
  switch(a1[4])
  {
    case 1u:
      result = *a1;
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_7;
      }

      return result;
    case 2u:
      result = *a1;
      goto LABEL_9;
    case 3u:
      result = *a1;
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    case 4u:
    case 6u:
      goto LABEL_5;
    case 5u:
      if ((*(a1 + 1) & 0x8000000000000000) != 0)
      {
LABEL_7:
        fmt::v10::detail::throw_format_error("negative precision", a2);
      }

LABEL_5:
      result = *a1;
LABEL_9:
      if (result >> 31)
      {
        fmt::v10::detail::throw_format_error("number is too big", a2);
      }

      return result;
    default:
      fmt::v10::detail::throw_format_error("precision is not integer", a2);
  }
}

void *fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned long long>(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v53 = *MEMORY[0x277D85DE8];
  v8 = *(a4 + 8);
  if (v8 <= 2)
  {
    if (v8 < 2)
    {
      v14 = fmt::v10::detail::do_count_digits(unsigned long long)::bsr2log10[__clz(a2 | 1) ^ 0x3F];
      v15 = v14 - (fmt::v10::detail::do_count_digits(unsigned long long)::zero_or_powers_of_10[v14] > a2);
      if ((*(a4 + 4) + 1) | *a4)
      {
        fmt::v10::detail::write_int_data<char>::write_int_data(&v48, v15, a3, a4);
        LODWORD(v49[0]) = v5;
        *(v49 + 8) = v48;
        *(&v49[1] + 1) = v6;
        LODWORD(v50) = v15;
        v13 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(v7, a4, v48, v48, v49);
        goto LABEL_85;
      }

      if (v15 < 0)
      {
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
      }

      v30 = a3 & 0xFFFFFF;
      if ((a3 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v49[0]) = v30;
          fmt::v10::detail::buffer<char>::push_back(v7, v49);
          v12 = v30 > 0xFF;
          v30 >>= 8;
        }

        while (v12);
      }

      memset(v49, 0, 20);
      fmt::v10::detail::format_decimal<char,unsigned long long>(v49, v6, v15, a4);
LABEL_84:
      v13 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v49, v31, v7, a4);
      goto LABEL_85;
    }

    if (v8 != 2)
    {
      goto LABEL_87;
    }

    v10 = 0;
    v19 = a2;
    do
    {
      ++v10;
      v12 = v19 > 7;
      v19 >>= 3;
    }

    while (v12);
    if (a3)
    {
      v20 = 12288;
    }

    else
    {
      v20 = 48;
    }

    v21 = (v20 | a3) + 0x1000000;
    v22 = *(a4 + 4);
    if (v22 > v10 || a2 == 0)
    {
      v21 = a3;
    }

    if ((*(a4 + 9) & 0x80) != 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = a3;
    }

    if ((v22 + 1) | *a4)
    {
      fmt::v10::detail::write_int_data<char>::write_int_data(&v48, v10, v24, a4);
      LODWORD(v49[0]) = v24;
      *(v49 + 8) = v48;
      *(&v49[1] + 1) = v6;
      LODWORD(v50) = v10;
      v13 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(v7, a4, v48, v48, v49);
      goto LABEL_85;
    }

    v41 = v24 & 0xFFFFFF;
    if ((v24 & 0xFFFFFF) != 0)
    {
      do
      {
        LOBYTE(v49[0]) = v41;
        fmt::v10::detail::buffer<char>::push_back(v7, v49);
        v12 = v41 > 0xFF;
        v41 >>= 8;
      }

      while (v12);
    }

    v42 = v7[2];
    if (v7[3] >= (v42 + v10))
    {
      v7[2] = v42 + v10;
      v43 = v7[1];
      if (v43)
      {
        v44 = (v43 + v42 + v10 - 1);
        do
        {
          *v44-- = v6 & 7 | 0x30;
          v29 = v6 >= 8;
          v6 >>= 3;
        }

        while (v29);
        goto LABEL_86;
      }
    }

    v45 = v10 - 1;
    memset(v49, 0, 22);
    do
    {
      *(v49 + v45--) = v6 & 7 | 0x30;
      v12 = v6 > 7;
      v6 >>= 3;
    }

    while (v12);
LABEL_83:
    v31 = v49 + v10;
    goto LABEL_84;
  }

  if (v8 - 3 >= 2)
  {
    if (v8 - 5 < 2)
    {
      if ((*(a4 + 9) & 0x80) != 0)
      {
        if (v8 == 6)
        {
          v9 = 16944;
        }

        else
        {
          v9 = 25136;
        }

        if (a3)
        {
          v9 <<= 8;
        }

        v5 = (v9 | a3) + 0x2000000;
      }

      v10 = 0;
      v11 = a2;
      do
      {
        ++v10;
        v12 = v11 > 1;
        v11 >>= 1;
      }

      while (v12);
      if ((*(a4 + 4) + 1) | *a4)
      {
        fmt::v10::detail::write_int_data<char>::write_int_data(&v48, v10, v5, a4);
        LODWORD(v49[0]) = v5;
        *(v49 + 8) = v48;
        *(&v49[1] + 1) = v6;
        LODWORD(v50) = v10;
        v13 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(v7, a4, v48, v48, v49);
LABEL_85:
        v7 = v13;
        goto LABEL_86;
      }

      v25 = v5 & 0xFFFFFF;
      if ((v5 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v49[0]) = v25;
          fmt::v10::detail::buffer<char>::push_back(v7, v49);
          v12 = v25 > 0xFF;
          v25 >>= 8;
        }

        while (v12);
      }

      v26 = v7[2];
      if (v7[3] >= (v26 + v10))
      {
        v7[2] = v26 + v10;
        v27 = v7[1];
        if (v27)
        {
          v28 = (v27 + v26 + v10 - 1);
          do
          {
            *v28-- = v6 & 1 | 0x30;
            v29 = v6 >= 2;
            v6 >>= 1;
          }

          while (v29);
          goto LABEL_86;
        }
      }

      v38 = v10 - 1;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      memset(v49, 0, sizeof(v49));
      do
      {
        *(v49 + v38--) = v6 & 1 | 0x30;
        v12 = v6 > 1;
        v6 >>= 1;
      }

      while (v12);
      goto LABEL_83;
    }

    if (v8 == 15)
    {
      LOBYTE(v49[0]) = 0;
      BYTE1(v49[0]) = a2;
      v13 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a4, 1, 1, v49);
      goto LABEL_85;
    }

LABEL_87:
    fmt::v10::detail::throw_format_error("invalid format specifier", a2);
  }

  if ((*(a4 + 9) & 0x80) != 0)
  {
    if (v8 == 4)
    {
      v16 = 22576;
    }

    else
    {
      v16 = 30768;
    }

    if (a3)
    {
      v16 <<= 8;
    }

    v5 = (v16 | a3) + 0x2000000;
  }

  v10 = 0;
  v17 = a2;
  do
  {
    ++v10;
    v12 = v17 > 0xF;
    v17 >>= 4;
  }

  while (v12);
  if ((*(a4 + 4) + 1) | *a4)
  {
    v18 = v10 + ((v8 == 4) << 32);
    fmt::v10::detail::write_int_data<char>::write_int_data(&v48, v10, v5, a4);
    LODWORD(v49[0]) = v5;
    *(v49 + 8) = v48;
    *(&v49[1] + 1) = v6;
    LODWORD(v50) = v18;
    BYTE4(v50) = BYTE4(v18);
    v13 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(v7, a4, v48, v48, v49);
    goto LABEL_85;
  }

  v32 = v5 & 0xFFFFFF;
  if ((v5 & 0xFFFFFF) != 0)
  {
    do
    {
      LOBYTE(v49[0]) = v32;
      fmt::v10::detail::buffer<char>::push_back(v7, v49);
      v12 = v32 > 0xFF;
      v32 >>= 8;
    }

    while (v12);
  }

  v33 = v7[2];
  if (v7[3] < (v33 + v10) || (v7[2] = v33 + v10, (v34 = v7[1]) == 0))
  {
    v39 = v10 - 1;
    memset(v49, 0, 17);
    v40 = "0123456789abcdef";
    if (v8 == 4)
    {
      v40 = "0123456789ABCDEF";
    }

    do
    {
      *(v49 + v39--) = v40[v6 & 0xF];
      v12 = v6 > 0xF;
      v6 >>= 4;
    }

    while (v12);
    goto LABEL_83;
  }

  v35 = v34 + v33;
  v36 = "0123456789abcdef";
  if (v8 == 4)
  {
    v36 = "0123456789ABCDEF";
  }

  v37 = (v35 + v10 - 1);
  do
  {
    *v37-- = v36[v6 & 0xF];
    v29 = v6 >= 0x10;
    v6 >>= 4;
  }

  while (v29);
LABEL_86:
  v46 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      LOBYTE(v23[0]) = v14;
      fmt::v10::detail::buffer<char>::push_back(v8, v23);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (LOBYTE(v23[0]) = 48; v15; --v15)
  {
    fmt::v10::detail::buffer<char>::push_back(v8, v23);
  }

  v16 = *(a5 + 24);
  v17 = *(a5 + 32);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  fmt::v10::detail::format_decimal<char,unsigned long long>(v23, v16, v17, a4);
  result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v23, v18, v8, v19);
  if (v11 != v13)
  {
    result = fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v21[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v21);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v21[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v21);
  }

  v9 = *(a1 + 32);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = *(a1 + 36);
  v12 = a2[2];
  if (a2[3] >= (v12 + v9) && (a2[2] = v12 + v9, (v13 = a2[1]) != 0))
  {
    v14 = "0123456789abcdef";
    if (v11)
    {
      v14 = "0123456789ABCDEF";
    }

    v15 = (v12 + v9 + v13 - 1);
    do
    {
      *v15-- = v14[v10 & 0xF];
      v7 = v10 >= 0x10;
      v10 >>= 4;
    }

    while (v7);
  }

  else
  {
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    if (v11)
    {
      v16 = "0123456789ABCDEF";
    }

    else
    {
      v16 = "0123456789abcdef";
    }

    v17 = v9 - 1;
    do
    {
      *(v21 + v17--) = v16[v10 & 0xF];
      v18 = v10 > 0xF;
      v10 >>= 4;
    }

    while (v18);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v21, v21 + v9, a2, a4);
  }

  v19 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v18[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v18);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v18[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v18);
  }

  v9 = *(a1 + 32);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = a2[2];
  if (a2[3] >= (v11 + v9) && (a2[2] = v11 + v9, (v12 = a2[1]) != 0))
  {
    v13 = (v11 + v9 + v12 - 1);
    do
    {
      *v13-- = v10 & 1 | 0x30;
      v7 = v10 >= 2;
      v10 >>= 1;
    }

    while (v7);
  }

  else
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v14 = v9 - 1;
    do
    {
      *(v18 + v14--) = v10 & 1 | 0x30;
      v15 = v10 > 1;
      v10 >>= 1;
    }

    while (v15);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v18, v18 + v9, a2, a4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned long long>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned long long>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned long long)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v18) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, &v18);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v18) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, &v18);
  }

  v9 = *(a1 + 32);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v10 = *(a1 + 24);
  v11 = a2[2];
  if (a2[3] >= (v11 + v9) && (a2[2] = v11 + v9, (v12 = a2[1]) != 0))
  {
    v13 = (v11 + v9 + v12 - 1);
    do
    {
      *v13-- = v10 & 7 | 0x30;
      v7 = v10 >= 8;
      v10 >>= 3;
    }

    while (v7);
  }

  else
  {
    v18 = 0;
    v19[0] = 0;
    v14 = v9 - 1;
    *(v19 + 6) = 0;
    do
    {
      *(&v19[-1] + v14--) = v10 & 7 | 0x30;
      v15 = v10 > 7;
      v10 >>= 3;
    }

    while (v15);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v18, &v19[-1] + v9, a2, a4);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned __int128>(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a3 + 8);
  if (v9 <= 2)
  {
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        goto LABEL_103;
      }

      v24 = 0;
      v25 = *a2;
      v26 = *(a2 + 8);
      do
      {
        *(&v27 + 1) = v26;
        *&v27 = v25;
        v16 = v25 <= 7;
        v26 >>= 3;
        ++v24;
        v25 = v27 >> 3;
      }

      while (!v16);
      if (v8)
      {
        v28 = 12288;
      }

      else
      {
        v28 = 48;
      }

      v29 = (v28 | v8) + 0x1000000;
      v30 = *(a3 + 4);
      if (v30 > v24 || (v6 | v7) == 0)
      {
        v29 = *(a2 + 16);
      }

      if ((*(a3 + 9) & 0x80) != 0)
      {
        v8 = v29;
      }

      if ((v30 + 1) | *a3)
      {
        fmt::v10::detail::write_int_data<char>::write_int_data(&v66, v24, v8, a3);
        LODWORD(v67[0]) = v8;
        *(v67 + 8) = v66;
        *&v67[2] = v6;
        *(&v67[2] + 1) = v7;
        LODWORD(v68) = v24;
        v17 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(v5, a3, v66, v66, v67);
        goto LABEL_101;
      }

      v56 = v8 & 0xFFFFFF;
      if ((v8 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v67[0]) = v56;
          fmt::v10::detail::buffer<char>::push_back(v5, v67);
          v38 = v56 > 0xFF;
          v56 >>= 8;
        }

        while (v38);
      }

      v57 = v5[2];
      if (v5[3] < (v57 + v24) || (v5[2] = v57 + v24, (v58 = v5[1]) == 0))
      {
        v61 = v24 - 1;
        memset(v67, 0, 43);
        do
        {
          *(v67 + v61) = v6 & 7 | 0x30;
          *(&v62 + 1) = v7;
          *&v62 = v6;
          v16 = v6 <= 7;
          v7 >>= 3;
          --v61;
          v6 = v62 >> 3;
        }

        while (!v16);
        v55 = v67 + v24;
        goto LABEL_100;
      }

      v59 = (v58 + v57 + v24 - 1);
      do
      {
        *v59-- = v6 & 7 | 0x30;
        v16 = v6 >= 8;
        *(&v60 + 1) = v7;
        *&v60 = v6;
        v6 = v60 >> 3;
        v16 = v7 >= !v16;
        v7 >>= 3;
      }

      while (v16);
      goto LABEL_102;
    }

    if (__PAIR128__(v7, v6) >= 0xA)
    {
      v18 = 4;
      v32 = *a2;
      v33 = *(a2 + 8);
      while (1)
      {
        if (v32 <= 0x63)
        {
          v18 = (v18 - 2);
          goto LABEL_94;
        }

        if (v32 <= 0x3E7)
        {
          break;
        }

        *(&v34 + 1) = v33;
        *&v34 = v32;
        if (v34 >> 4 < 0x271)
        {
          goto LABEL_94;
        }

        *(&v35 + 1) = v33;
        *&v35 = v32;
        v18 = (v18 + 4);
        v32 = __udivti3();
        v33 = v36;
        if ((v35 >> 5) <= 0xC34)
        {
          v18 = (v18 - 3);
          goto LABEL_94;
        }
      }

      v18 = (v18 - 1);
LABEL_94:
      if (!((*(a3 + 4) + 1) | *a3))
      {
        if ((v18 & 0x80000000) != 0)
        {
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
        }

        goto LABEL_97;
      }
    }

    else
    {
      v18 = 1;
      if (!((*(a3 + 4) + 1) | *a3))
      {
LABEL_97:
        v63 = v8 & 0xFFFFFF;
        if ((v8 & 0xFFFFFF) != 0)
        {
          do
          {
            LOBYTE(v67[0]) = v63;
            fmt::v10::detail::buffer<char>::push_back(v5, v67);
            v38 = v63 > 0xFF;
            v63 >>= 8;
          }

          while (v38);
        }

        memset(v67, 0, 39);
        fmt::v10::detail::format_decimal<char,unsigned __int128>(v67, v6, v7, v18);
        goto LABEL_100;
      }
    }

    fmt::v10::detail::write_int_data<char>::write_int_data(&v66, v18, v8, a3);
    LODWORD(v67[0]) = v8;
    *(v67 + 8) = v66;
    *&v67[2] = v6;
    *(&v67[2] + 1) = v7;
    LODWORD(v68) = v18;
    v17 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(v5, a3, v66, v66, v67);
    goto LABEL_101;
  }

  if (v9 - 3 >= 2)
  {
    if (v9 - 5 < 2)
    {
      v10 = 0;
      if (v9 == 6)
      {
        v11 = 16944;
      }

      else
      {
        v11 = 25136;
      }

      if (v8)
      {
        v11 <<= 8;
      }

      v12 = (v11 | v8) + 0x2000000;
      if ((*(a3 + 9) & 0x80) != 0)
      {
        v8 = v12;
      }

      v13 = *a2;
      v14 = *(a2 + 8);
      do
      {
        *(&v15 + 1) = v14;
        *&v15 = v13;
        v16 = v13 <= 1;
        v14 >>= 1;
        ++v10;
        v13 = v15 >> 1;
      }

      while (!v16);
      if ((*(a3 + 4) + 1) | *a3)
      {
        fmt::v10::detail::write_int_data<char>::write_int_data(&v66, v10, v8, a3);
        LODWORD(v67[0]) = v8;
        *(v67 + 8) = v66;
        *&v67[2] = v6;
        *(&v67[2] + 1) = v7;
        LODWORD(v68) = v10;
        v17 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(v5, a3, v66, v66, v67);
LABEL_101:
        v5 = v17;
        goto LABEL_102;
      }

      v37 = v8 & 0xFFFFFF;
      if ((v8 & 0xFFFFFF) != 0)
      {
        do
        {
          LOBYTE(v67[0]) = v37;
          fmt::v10::detail::buffer<char>::push_back(v5, v67);
          v38 = v37 > 0xFF;
          v37 >>= 8;
        }

        while (v38);
      }

      v39 = v5[2];
      if (v5[3] >= (v39 + v10))
      {
        v5[2] = v39 + v10;
        v40 = v5[1];
        if (v40)
        {
          v41 = (v40 + v39 + v10 - 1);
          do
          {
            *v41-- = v6 & 1 | 0x30;
            v16 = v6 >= 2;
            *(&v42 + 1) = v7;
            *&v42 = v6;
            v6 = v42 >> 1;
            v16 = v7 >= !v16;
            v7 >>= 1;
          }

          while (v16);
          goto LABEL_102;
        }
      }

      v50 = v10 - 1;
      v73 = 0;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(v67, 0, sizeof(v67));
      do
      {
        *(v67 + v50) = v6 & 1 | 0x30;
        *(&v51 + 1) = v7;
        *&v51 = v6;
        v16 = v6 <= 1;
        v7 >>= 1;
        --v50;
        v6 = v51 >> 1;
      }

      while (!v16);
      goto LABEL_80;
    }

    if (v9 == 15)
    {
      LOBYTE(v67[0]) = 0;
      BYTE1(v67[0]) = v6;
      v17 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a3, 1, 1, v67);
      goto LABEL_101;
    }

LABEL_103:
    fmt::v10::detail::throw_format_error("invalid format specifier", a2);
  }

  v10 = 0;
  if (v9 == 4)
  {
    v19 = 22576;
  }

  else
  {
    v19 = 30768;
  }

  if (v8)
  {
    v19 <<= 8;
  }

  v20 = (v19 | v8) + 0x2000000;
  if ((*(a3 + 9) & 0x80) != 0)
  {
    v8 = v20;
  }

  v21 = *a2;
  v22 = *(a2 + 8);
  do
  {
    *(&v23 + 1) = v22;
    *&v23 = v21;
    v16 = v21 <= 0xF;
    v22 >>= 4;
    ++v10;
    v21 = v23 >> 4;
  }

  while (!v16);
  if ((*(a3 + 4) + 1) | *a3)
  {
    fmt::v10::detail::write_int_data<char>::write_int_data(&v66, v10, v8, a3);
    LODWORD(v67[0]) = v8;
    *(v67 + 8) = v66;
    *&v67[2] = v6;
    *(&v67[2] + 1) = v7;
    LODWORD(v68) = v10;
    BYTE4(v68) = v9 == 4;
    v17 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(v5, a3, v66, v66, v67);
    goto LABEL_101;
  }

  v43 = v8 & 0xFFFFFF;
  if ((v8 & 0xFFFFFF) != 0)
  {
    do
    {
      LOBYTE(v67[0]) = v43;
      fmt::v10::detail::buffer<char>::push_back(v5, v67);
      v38 = v43 > 0xFF;
      v43 >>= 8;
    }

    while (v38);
  }

  v44 = v5[2];
  if (v5[3] < (v44 + v10) || (v5[2] = v44 + v10, (v45 = v5[1]) == 0))
  {
    v52 = v10 - 1;
    memset(v67, 0, 33);
    v53 = "0123456789abcdef";
    if (v9 == 4)
    {
      v53 = "0123456789ABCDEF";
    }

    do
    {
      *(v67 + v52) = v53[v6 & 0xF];
      *(&v54 + 1) = v7;
      *&v54 = v6;
      v16 = v6 <= 0xF;
      v7 >>= 4;
      --v52;
      v6 = v54 >> 4;
    }

    while (!v16);
LABEL_80:
    v55 = v67 + v10;
LABEL_100:
    v17 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v67, v55, v5, a4);
    goto LABEL_101;
  }

  v46 = v45 + v44;
  v47 = "0123456789abcdef";
  if (v9 == 4)
  {
    v47 = "0123456789ABCDEF";
  }

  v48 = (v46 + v10 - 1);
  do
  {
    *v48-- = v47[v6 & 0xF];
    v16 = v6 >= 0x10;
    *(&v49 + 1) = v7;
    *&v49 = v6;
    v6 = v49 >> 4;
    v16 = v7 >= !v16;
    v7 >>= 4;
  }

  while (v16);
LABEL_102:
  v64 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  v14 = *a5 & 0xFFFFFF;
  if (v14)
  {
    do
    {
      v24[0] = v14;
      fmt::v10::detail::buffer<char>::push_back(v8, v24);
      v9 = v14 >= 0x100;
      v14 >>= 8;
    }

    while (v9);
  }

  v15 = *(a5 + 16);
  for (v24[0] = 48; v15; --v15)
  {
    fmt::v10::detail::buffer<char>::push_back(v8, v24);
  }

  v16 = *(a5 + 32);
  v17 = *(a5 + 40);
  v18 = *(a5 + 48);
  memset(v24, 0, sizeof(v24));
  fmt::v10::detail::format_decimal<char,unsigned __int128>(v24, v16, v17, v18);
  result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v24, v19, v8, v20);
  if (v11 != v13)
  {
    result = fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v23[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v23);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v23[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v23);
  }

  v9 = *(a1 + 48);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 52);
  v13 = a2[2];
  if (a2[3] >= (v13 + v9) && (a2[2] = v13 + v9, (v14 = a2[1]) != 0))
  {
    v15 = "0123456789abcdef";
    if (v12)
    {
      v15 = "0123456789ABCDEF";
    }

    v16 = (v13 + v9 + v14 - 1);
    do
    {
      *v16-- = v15[v11 & 0xF];
      v7 = v11 >= 0x10;
      *(&v17 + 1) = v10;
      *&v17 = v11;
      v11 = v17 >> 4;
      v7 = v10 >= !v7;
      v10 >>= 4;
    }

    while (v7);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    if (v12)
    {
      v18 = "0123456789ABCDEF";
    }

    else
    {
      v18 = "0123456789abcdef";
    }

    v19 = v9 - 1;
    do
    {
      *(v23 + v19) = v18[v11 & 0xF];
      *(&v20 + 1) = v10;
      *&v20 = v11;
      v7 = v11 <= 0xF;
      v10 >>= 4;
      --v19;
      v11 = v20 >> 4;
    }

    while (!v7);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v23, v23 + v9, a2, a4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v20[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v20);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v20[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v20);
  }

  v9 = *(a1 + 48);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = a2[2];
  if (a2[3] >= (v12 + v9) && (a2[2] = v12 + v9, (v13 = a2[1]) != 0))
  {
    v14 = (v12 + v9 + v13 - 1);
    do
    {
      *v14-- = v11 & 1 | 0x30;
      v7 = v11 >= 2;
      *(&v15 + 1) = v10;
      *&v15 = v11;
      v11 = v15 >> 1;
      v7 = v10 >= !v7;
      v10 >>= 1;
    }

    while (v7);
  }

  else
  {
    v21 = 0;
    v16 = v9 - 1;
    memset(v20, 0, sizeof(v20));
    do
    {
      *(v20 + v16) = v11 & 1 | 0x30;
      *(&v17 + 1) = v10;
      *&v17 = v11;
      v7 = v11 <= 1;
      v10 >>= 1;
      --v16;
      v11 = v17 >> 1;
    }

    while (!v7);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v20, v20 + v9, a2, a4);
  }

  v18 = *MEMORY[0x277D85DE8];
  return a2;
}

void *fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,char fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6 = *a2;
  if ((v6 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v6 >= a4;
  v10 = v6 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  result = fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(a5, v8, a3, a4);
  if (v11 != v13)
  {

    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v15);
  }

  return result;
}

void *fmt::v10::detail::write_int<fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_int<char,fmt::v10::appender,unsigned __int128>(fmt::v10::appender,fmt::v10::detail::write_int_arg<unsigned __int128>,fmt::v10::format_specs<char> const&,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4}>(char,int,unsigned int,fmt::v10::format_specs<fmt::v10::appender> const&,unsigned __int128)::{lambda(fmt::v10::appender)#1}::operator()(uint64_t a1, void *a2, uint64_t a3, const char *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *a1 & 0xFFFFFF;
  if (v6)
  {
    do
    {
      LOBYTE(v20[0]) = v6;
      fmt::v10::detail::buffer<char>::push_back(a2, v20);
      v7 = v6 >= 0x100;
      v6 >>= 8;
    }

    while (v7);
  }

  v8 = *(a1 + 16);
  for (LOBYTE(v20[0]) = 48; v8; --v8)
  {
    fmt::v10::detail::buffer<char>::push_back(a2, v20);
  }

  v9 = *(a1 + 48);
  if ((v9 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = a2[2];
  if (a2[3] >= (v12 + v9) && (a2[2] = v12 + v9, (v13 = a2[1]) != 0))
  {
    v14 = (v12 + v9 + v13 - 1);
    do
    {
      *v14-- = v11 & 7 | 0x30;
      v7 = v11 >= 8;
      *(&v15 + 1) = v10;
      *&v15 = v11;
      v11 = v15 >> 3;
      v7 = v10 >= !v7;
      v10 >>= 3;
    }

    while (v7);
  }

  else
  {
    memset(v20, 0, 43);
    v16 = v9 - 1;
    do
    {
      *(v20 + v16) = v11 & 7 | 0x30;
      *(&v17 + 1) = v10;
      *&v17 = v11;
      v7 = v11 <= 7;
      v10 >>= 3;
      --v16;
      v11 = v17 >> 3;
    }

    while (!v7);
    a2 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v20, v20 + v9, a2, a4);
  }

  v18 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender>(uint64_t a1, const char *a2, uint64_t a3, char *a4)
{
  v6 = a2;
  v14 = *MEMORY[0x277D85DE8];
  if (fmt::v10::detail::check_char_specs<char>(a3, a2))
  {
    LOBYTE(v12[0]) = *(a3 + 8) == 18;
    BYTE1(v12[0]) = v6;
    v8 = fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_char<char,fmt::v10::appender>(fmt::v10::appender,char,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, a3, 1, 1, v12);
LABEL_7:
    a1 = v8;
    goto LABEL_8;
  }

  v9 = *(a3 + 9);
  if ((v9 & 0x100) == 0)
  {
LABEL_6:
    v8 = fmt::v10::detail::write_int_noinline<char,fmt::v10::appender,unsigned int>(a1, (v6 | (dword_25A9BF6E0[(v9 >> 4) & 7] << 32)), a3, a4);
    goto LABEL_7;
  }

  v13 = 2;
  v12[0] = v6;
  v12[1] = 0;
  if ((fmt::v10::detail::write_loc(a1, v12, a3, a4) & 1) == 0)
  {
    v9 = *(a3 + 9);
    goto LABEL_6;
  }

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t fmt::v10::detail::check_char_specs<char>(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 8);
  v3 = v2 > 0x12;
  v4 = (1 << v2) & 0x48001;
  if (v3 || v4 == 0)
  {
    return 0;
  }

  if ((*(a1 + 9) & 0xF) == 4 || (*(a1 + 9) & 0xF0) != 0)
  {
    fmt::v10::detail::throw_format_error("invalid format specifier for char", a2);
  }

  return 1;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,float,0>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, float a5)
{
  v7 = a1;
  v13 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_4;
  }

  v12[4] = 9;
  *v12 = a5;
  if ((fmt::v10::detail::write_loc(a1, v12, &v10, a4) & 1) == 0)
  {
    a2 = v10;
    a3 = v11;
LABEL_4:
    v7 = fmt::v10::detail::write_float<char,fmt::v10::appender,float>(v7, a2, a3, a4, a5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t fmt::v10::detail::write_float<char,fmt::v10::appender,float>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, float a5)
{
  v30[63] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24 = a3;
  v8 = fmt::v10::detail::parse_float_type_spec<char>(&v23, a2);
  v22[0] = v8;
  v11 = HIDWORD(v8) & 0xFFFF00FF;
  v12 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v24 + 1) >> 4) & 7) << 8);
  v22[1] = v12;
  if ((LODWORD(a5) & 0x80000000) != 0)
  {
    v12 = v11 | 0x100;
    v22[1] = v11 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v24 + 1)) & 0x700) == 0x100)
  {
    v22[1] = HIDWORD(v8) & 0xFFFF00FF;
    v12 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 < INFINITY || a5 > INFINITY)
  {
    if ((BYTE1(v24) & 0xF) == 4 && (v12 & 0xFF00) != 0)
    {
      LOBYTE(v27) = byte_25A9BFEED[BYTE1(v12)];
      fmt::v10::detail::buffer<char>::push_back(a1, &v27);
      v12 &= 0xFFFF00FF;
      v22[1] = v12;
      if (v23)
      {
        LODWORD(v23) = v23 - 1;
      }
    }

    v27 = &unk_286BF19A0;
    __p = v30;
    v29 = xmmword_25A9BF650;
    if (v12 == 3)
    {
      if ((v12 & 0xFF00) != 0)
      {
        LOBYTE(v25) = byte_25A9BFEED[BYTE1(v12)];
        fmt::v10::detail::buffer<char>::push_back(&v27, &v25);
      }

      fmt::v10::detail::format_hexfloat<double,0>(SHIDWORD(v23), *v22, &v27, a5);
      v25 = __p;
      v26 = v29;
      v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)2,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, &v23, v29, v29, &v25);
    }

    else
    {
      v15 = HIDWORD(v23);
      if (v24)
      {
        v16 = SHIDWORD(v23) <= -1;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v15 = 6;
      }

      if (v12 == 1)
      {
        if (v15 == 0x7FFFFFFF)
        {
          fmt::v10::detail::throw_format_error("number is too big", v9);
        }

        v17 = v15 + 1;
      }

      else
      {
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 == 2;
        }

        if (v18)
        {
          v17 = v15;
        }

        else
        {
          v17 = 1;
        }
      }

      v22[1] = v12 | 0x40000;
      v19 = fmt::v10::detail::format_float<double>(v17, *v22, &v27, v10, a5);
      v22[0] = v17;
      v25 = __p;
      v26 = __PAIR64__(v19, v29);
      v14 = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(a1, &v25, &v23, *v22, a4);
    }

    v13 = v14;
    if (__p != v30)
    {
      operator delete(__p);
    }
  }

  else
  {
    v13 = fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(a1, 0, v23, v24, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_25A34477C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::parse_float_type_spec<char>(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 9);
  v3 = (v2 >> 7) & 1;
  v4 = (((v2 >> 8) & 1) << 17) & 0xFFF7FFFF | (v3 << 19);
  v5 = *(a1 + 8);
  if (v5 <= 9)
  {
    if (*(a1 + 8) > 7u)
    {
      if (v5 != 8)
      {
        if (v5 != 9)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

      LODWORD(v4) = v4 | 0x10000;
    }

    else
    {
      if (!*(a1 + 8))
      {
        return v4 << 32;
      }

      if (v5 != 7)
      {
        goto LABEL_16;
      }
    }

    v4 = v4 | 3;
    return v4 << 32;
  }

  if (*(a1 + 8) <= 0xBu)
  {
    if (v5 != 10)
    {
      if (v5 != 11)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }

    LODWORD(v4) = v4 | 0x10000;
LABEL_20:
    if (*(a1 + 4))
    {
      v3 = 1;
    }

    v4 = v4 & 0xFFF7FFFE | (v3 << 19) | 1;
    return v4 << 32;
  }

  if (v5 == 12)
  {
    LODWORD(v4) = v4 | 0x10000;
LABEL_24:
    if (*(a1 + 4))
    {
      v3 = 1;
    }

    v4 = v4 & 0x7FFFF | (v3 << 19) | 2;
    return v4 << 32;
  }

  if (v5 != 13)
  {
    if (v5 == 14)
    {
      v4 = v4 | 0x10000;
      return v4 << 32;
    }

LABEL_16:
    fmt::v10::detail::throw_format_error("invalid format specifier", a2);
  }

  return v4 << 32;
}

uint64_t fmt::v10::detail::format_hexfloat<double,0>(int a1, unint64_t a2, uint64_t a3, double a4)
{
  v6 = ((*&a4 & 0x7FF0000000000000uLL) >> 52) - 1023;
  v31 = *MEMORY[0x277D85DE8];
  v7 = HIDWORD(a2);
  if ((*&a4 & 0x7FF0000000000000) != 0)
  {
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL | 0x10000000000000;
  }

  else
  {
    v8 = *&a4 & 0xFFFFFFFFFFFFFLL;
  }

  if ((*&a4 & 0x7FF0000000000000) != 0)
  {
    v9 = ((*&a4 & 0x7FF0000000000000uLL) >> 52) - 1023;
  }

  else
  {
    v9 = -1022;
  }

  v10 = ((1 << (52 - 4 * a1)) + v8) & -(1 << (52 - 4 * a1));
  if (((v8 >> (48 - 4 * a1)) & 8) == 0)
  {
    v10 = v8;
  }

  if (a1 > 0xC)
  {
    v11 = 13;
  }

  else
  {
    v8 = v10;
    v11 = a1;
  }

  memset(v28, 48, sizeof(v28));
  v12 = "0123456789ABCDEF";
  if ((a2 & 0x1000000000000) == 0)
  {
    v12 = "0123456789abcdef";
  }

  v13 = 13;
  do
  {
    *(v28 + v13--) = v12[v8 & 0xF];
    v14 = v8 > 0xF;
    v8 >>= 4;
  }

  while (v14);
  if (v11 < 1)
  {
    v16 = 0;
  }

  else
  {
    while (1)
    {
      v15 = *(v28 + v11);
      v16 = v15 != 48;
      if (v15 != 48)
      {
        break;
      }

      v17 = __OFSUB__(v11--, 1);
      if ((v11 < 0) ^ v17 | (v11 == 0))
      {
        v11 = 0;
        break;
      }
    }
  }

  LOBYTE(v29) = 48;
  fmt::v10::detail::buffer<char>::push_back(a3, &v29);
  if ((v7 & 0x10000) != 0)
  {
    v18 = 88;
  }

  else
  {
    v18 = 120;
  }

  LOBYTE(v29) = v18;
  fmt::v10::detail::buffer<char>::push_back(a3, &v29);
  fmt::v10::detail::buffer<char>::push_back(a3, v28);
  if (a1 > 0 || (v7 & 0x80000) != 0 || v16)
  {
    LOBYTE(v29) = 46;
    fmt::v10::detail::buffer<char>::push_back(a3, &v29);
  }

  fmt::v10::detail::buffer<char>::append<char>(a3, v28 + 1, v28 + v11 + 1, v19);
  v17 = __OFSUB__(a1, v11);
  v20 = a1 - v11;
  if (!((v20 < 0) ^ v17 | (v20 == 0)))
  {
    do
    {
      LOBYTE(v29) = 48;
      fmt::v10::detail::buffer<char>::push_back(a3, &v29);
      --v20;
    }

    while (v20);
  }

  if ((v7 & 0x10000) != 0)
  {
    v21 = 80;
  }

  else
  {
    v21 = 112;
  }

  LOBYTE(v29) = v21;
  fmt::v10::detail::buffer<char>::push_back(a3, &v29);
  if (v9 < 0)
  {
    LOBYTE(v29) = 45;
    fmt::v10::detail::buffer<char>::push_back(a3, &v29);
    v6 = -v9;
  }

  else
  {
    LOBYTE(v29) = 43;
    fmt::v10::detail::buffer<char>::push_back(a3, &v29);
  }

  v23 = (fmt::v10::detail::do_count_digits::table[__clz(v6 | 1) ^ 0x1F] + v6) >> 32;
  v30 = 0;
  v29 = 0;
  fmt::v10::detail::format_decimal<char,unsigned int>(&v29, v6, v23, v22);
  result = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(&v29, v24, a3, v25);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t fmt::v10::detail::format_float<double>(uint64_t __len, unint64_t a2, uint64_t a3, const char *a4, double a5)
{
  v82 = *MEMORY[0x277D85DE8];
  if (a5 < 0.0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xCD2, "value is negative", a4);
  }

  v6 = __len;
  v7 = a2 & 0xFF00000000;
  if (a5 <= 0.0)
  {
    if (__len >= 1 && v7 == 0x200000000)
    {
      v16 = *(a3 + 24);
      if (v16 < __len)
      {
        (**a3)(a3, __len);
        v16 = *(a3 + 24);
      }

      if (v16 >= v6)
      {
        v16 = v6;
      }

      *(a3 + 16) = v16;
      memset(*(a3 + 8), 48, v6);
      v17 = -v6;
    }

    else
    {
      LOBYTE(v80[0]) = 48;
      fmt::v10::detail::buffer<char>::push_back(a3, v80);
      v17 = 0;
    }
  }

  else
  {
    v9 = HIDWORD(a2);
    if ((__len & 0x80000000) == 0)
    {
      v10 = *&a5 & 0xFFFFFFFFFFFFFLL;
      v11 = *&a5 >> 52;
      if (*&a5 >> 52)
      {
        v14 = v11 - 1075;
        v15 = (2 * v10) | 0x20000000000000;
      }

      else
      {
        if (!v10)
        {
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xD0B, "zeros should not appear here", a4);
        }

        v12 = __clz(v10);
        v13 = v12 - 10;
        v14 = -1063 - v12;
        v15 = v10 << v13;
      }

      v21 = ((315653 * v14) >> 20) - 2;
      v22 = 2 - ((315653 * v14) >> 20);
      v23 = v15 << (v14 + ((1741647 * v22) >> 19));
      cached_power = fmt::v10::detail::dragonbox::cache_accessor<double>::get_cached_power(v22, a2, a3, a4);
      v27 = (v23 * v26) >> 64;
      v32 = __CFADD__(v23 * v26, (v23 * cached_power) >> 64);
      v28 = (__PAIR128__(v26, cached_power) * v23) >> 64;
      if (v32)
      {
        v29 = v27 + 1;
      }

      else
      {
        v29 = v27;
      }

      if (v29 <= 0xDE0B6B3A763FFFFLL)
      {
        v30 = 10 * v29;
      }

      else
      {
        v30 = v29;
      }

      if (v29 <= 0xDE0B6B3A763FFFFLL)
      {
        v31 = 18;
      }

      else
      {
        v31 = 19;
      }

      if (v7 == 0x200000000)
      {
        v32 = v21 + v31 < 1 || ((v21 + v31) ^ 0x7FFFFFFFu) >= v6;
        if (!v32)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          _ZN3fmt3v1012format_errorCI1St13runtime_errorEPKc(exception, "number is too big");
        }

        v6 += v21 + v31;
      }

      v33 = v31 - v6;
      if (v31 <= v6)
      {
        v79 = v31 + v21 - 1;
        if ((v9 & 0x40000) != 0)
        {
          v48 = a5;
          v41 = (LODWORD(v48) >> 23) - 150;
          v40 = LODWORD(v48) & 0x7FFFFF;
          if ((LODWORD(v48) & 0x7F800000) != 0)
          {
            v40 |= 0x800000uLL;
          }

          else
          {
            v41 = -149;
          }

          v43 = (LODWORD(v48) & 0x7F000000) != 0 && (LODWORD(v48) & 0x7FFFFF) == 0;
        }

        else
        {
          v40 = v10 | 0x10000000000000;
          v41 = v11 - 1075;
          if ((*&a5 & 0x7FF0000000000000) == 0)
          {
            v40 = *&a5 & 0xFFFFFFFFFFFFFLL;
            v41 = -1074;
          }

          if (v10)
          {
            v42 = 1;
          }

          else
          {
            v42 = (*&a5 & 0x7FF0000000000000uLL) >> 53 == 0;
          }

          v43 = !v42;
        }

        if (v7 == 0x200000000)
        {
          v49 = v43 | 4;
        }

        else
        {
          v49 = v43;
        }

        if (v6 >= 0x2FF)
        {
          v50 = 767;
        }

        else
        {
          v50 = v6;
        }

        v80[0] = v40;
        v80[1] = 0;
        v81 = v41;
        fmt::v10::detail::format_dragon(v80, v49, v50, a3, &v79);
LABEL_121:
        if (v7 == 0x200000000 || (v9 & 0x80000) != 0)
        {
LABEL_132:
          v17 = v79;
          goto LABEL_133;
        }

        v72 = *(a3 + 16);
        if (v72)
        {
          v73 = *(a3 + 8) - 1;
          v74 = v79 + 1;
          while (*(v73 + v72) == 48)
          {
            v79 = v74++;
            if (!--v72)
            {
              goto LABEL_127;
            }
          }

          v75 = *(a3 + 24);
          if (v75 >= v72)
          {
            goto LABEL_129;
          }

          (**a3)(a3, v72);
        }

        else
        {
LABEL_127:
          v72 = 0;
        }

        v75 = *(a3 + 24);
LABEL_129:
        if (v75 >= v72)
        {
          v75 = v72;
        }

        *(a3 + 16) = v75;
        goto LABEL_132;
      }

      if (v6 <= 0)
      {
        v79 = v21 + v31;
        if ((v6 & 0x80000000) != 0)
        {
          *(a3 + 16) = 0;
        }

        else
        {
          if (*(a3 + 24))
          {
            v51 = 1;
          }

          else
          {
            (**a3)(a3, 1);
            v51 = *(a3 + 24) != 0;
          }

          *(a3 + 16) = v51;
          if ((v30 | (v28 != 0)) < 0x4563918244F40001)
          {
            v61 = 48;
          }

          else
          {
            v61 = 49;
          }

          **(a3 + 8) = v61;
        }

        goto LABEL_121;
      }

      v34 = v33 + v21;
      v79 = v33 + v21;
      if (v6 >= 9)
      {
        v35 = 9;
      }

      else
      {
        v35 = v6;
      }

      v36 = *(a3 + 8);
      if (v35)
      {
        v37 = ((720575941 * ((v30 * 0x6DF37F675EF6EAE0uLL) >> 96)) >> 24) + 1;
        v38 = HIDWORD(v37);
        *v36 = BYTE4(v37) + 48;
        v39 = 1;
      }

      else
      {
        v37 = ((450359963 * ((v30 * 0x6DF37F675EF6EAE0uLL) >> 96)) >> 20) + 1;
        v38 = HIDWORD(v37);
        *v36 = *&a00010203040506[2 * HIDWORD(v37)];
        v39 = 2;
      }

      v52 = v30 - 10000000000 * (((v30 * 0x6DF37F675EF6EAE0uLL) >> 64) >> 32);
      if (v6 <= v39)
      {
        LOBYTE(v55) = v38;
      }

      else
      {
        v53 = v39;
        do
        {
          v37 = 100 * v37;
          *&v36[v53] = *&a00010203040506[(v37 >> 31) & 0xFE];
          v53 += 2;
        }

        while (v53 < v35);
        v54 = v6 - 9;
        if (v6 > 9)
        {
          v56 = (v52 * 0x199999999999999AuLL) >> 64;
          v57 = (*(a3 + 8) + 9);
          if ((v6 - 9))
          {
            v58 = ((720575941 * v56) >> 24) + 1;
            v59 = HIDWORD(v58);
            *v57 = BYTE4(v58) + 48;
            v60 = 1;
          }

          else
          {
            v58 = ((450359963 * v56) >> 20) + 1;
            v59 = HIDWORD(v58);
            *v57 = *&a00010203040506[2 * HIDWORD(v58)];
            v60 = 2;
          }

          v62 = v52 - 10 * v56;
          if (v60 >= v54)
          {
            LOBYTE(v64) = v59;
          }

          else
          {
            v63 = v60;
            do
            {
              v58 = 100 * v58;
              *&v57[v63] = *&a00010203040506[(v58 >> 31) & 0xFE];
              v63 += 2;
            }

            while (v63 < v54);
            v64 = HIDWORD(v58);
            if (v6 > 17)
            {
              if (v62 <= 5 && (v62 != 5 || (v58 & 0x100000000) == 0 && !v28))
              {
                goto LABEL_116;
              }

LABEL_96:
              v65 = v6;
              ++*(*(a3 + 8) + v6 - 1);
              goto LABEL_108;
            }
          }

          if (dword_25A9C03C0[17 - v6] > v58)
          {
            v66 = v64 & 1;
            if (v62)
            {
              v67 = 0;
            }

            else
            {
              v67 = v28 == 0;
            }

            if (!v67)
            {
              v66 = 1;
            }

            if ((*&v66 & (v58 >> 31)) == 0)
            {
              goto LABEL_115;
            }
          }

LABEL_105:
          ++*(*(a3 + 8) + v6 - 1);
          if (v6 == 1)
          {
            v65 = 1;
            goto LABEL_111;
          }

          v65 = v6;
LABEL_108:
          v68 = v65 - 2;
          do
          {
            v69 = *(a3 + 8);
            if (*(v69 + (v68 + 1)) <= 57)
            {
              break;
            }

            *(v69 + (v68 + 1)) = 48;
            ++*(*(a3 + 8) + v68--);
          }

          while (v68 + 3 > 2);
LABEL_111:
          v70 = *(a3 + 8);
          if (*v70 > 57)
          {
            *v70 = 49;
            if (v7 == 0x200000000)
            {
              ++v6;
              *(*(a3 + 8) + v65) = 48;
            }

            else
            {
              v79 = v34 + 1;
            }
          }

          goto LABEL_115;
        }

        v55 = HIDWORD(v37);
        if (v6 == 9)
        {
          if (v52 <= 0x12A05F200 && (v52 != 5000000000 || (v37 & 0x100000000) == 0 && !v28))
          {
            v6 = 9;
LABEL_116:
            v71 = *(a3 + 24);
            if (v71 < v6)
            {
              (**a3)(a3, v6);
              v71 = *(a3 + 24);
            }

            if (v71 >= v6)
            {
              v71 = v6;
            }

            *(a3 + 16) = v71;
            goto LABEL_121;
          }

          goto LABEL_96;
        }
      }

      if (dword_25A9C03C0[8 - v35] > v37 && ((v55 | ((v52 | v28) != 0)) & (v37 >> 31)) == 0)
      {
LABEL_115:
        if ((v6 & 0x80000000) != 0)
        {
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v25);
        }

        goto LABEL_116;
      }

      goto LABEL_105;
    }

    if ((a2 & 0x4000000000000) != 0)
    {
      v44 = a5;
      v45 = fmt::v10::detail::dragonbox::to_decimal<float>(v44, __len, a2, a3, a4);
      v17 = HIDWORD(v45);
      fmt::v10::detail::write<char,fmt::v10::appender,unsigned int,0>(a3, v45, v46, v47);
    }

    else
    {
      v18 = fmt::v10::detail::dragonbox::to_decimal<double>(a5, __len, a2, a3, a4);
      v17 = v19;
      fmt::v10::detail::write<char,fmt::v10::appender,unsigned long long,0>(a3, v18, v18, v20);
    }
  }

LABEL_133:
  v76 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)2,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  fmt::v10::detail::buffer<char>::append<char>(v8, *a5, (*a5 + *(a5 + 8)), a4);
  if (v11 == v13)
  {
    return v8;
  }

  return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
}

void fmt::v10::detail::format_dragon(uint64_t a1, char a2, uint64_t a3, uint64_t a4, signed int *a5)
{
  v7 = a3;
  v80 = &unk_286BF1AA8;
  v81 = v83;
  v82 = xmmword_25A9BF680;
  v83[32] = 0;
  v76 = &unk_286BF1AA8;
  v77 = v79;
  v78 = xmmword_25A9BF680;
  v79[32] = 0;
  v72 = &unk_286BF1AA8;
  v73 = v75;
  v74 = xmmword_25A9BF680;
  v75[32] = 0;
  v68 = &unk_286BF1AA8;
  __p = v71;
  v70 = xmmword_25A9BF680;
  v71[32] = 0;
  if (a2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if ((*(a1 + 16) & 0x80000000) != 0)
  {
    if (*a5 < 0)
    {
      fmt::v10::detail::bigint::assign_pow10(&v80, -*a5, a3, a4);
      fmt::v10::detail::bigint::assign(&v72, &v80);
      if (a2)
      {
        fmt::v10::detail::bigint::assign(&v68, &v80);
        v17 = &v68;
        fmt::v10::detail::bigint::operator<<=(&v68, 1u, v59, v60);
      }

      else
      {
        v17 = 0;
      }

      fmt::v10::detail::bigint::operator*=<unsigned __int128>(&v80, *a1, *(a1 + 8), v58);
      fmt::v10::detail::bigint::operator<<=(&v80, v10, v61, v62);
      fmt::v10::detail::bigint::assign<unsigned long long,0>(&v76, 1uLL);
      fmt::v10::detail::bigint::operator<<=(&v76, v10 - *(a1 + 16), v63, v64);
    }

    else
    {
      fmt::v10::detail::bigint::operator=<unsigned __int128>(&v80, *a1, *(a1 + 8), a4);
      fmt::v10::detail::bigint::operator<<=(&v80, v10, v18, v19);
      fmt::v10::detail::bigint::assign_pow10(&v76, *a5, v20, v21);
      fmt::v10::detail::bigint::operator<<=(&v76, v10 - *(a1 + 16), v22, v23);
      fmt::v10::detail::bigint::assign<unsigned long long,0>(&v72, 1uLL);
      if (a2)
      {
        v17 = &v68;
        fmt::v10::detail::bigint::assign<unsigned long long,0>(&v68, 2uLL);
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    fmt::v10::detail::bigint::operator=<unsigned __int128>(&v80, *a1, *(a1 + 8), a4);
    fmt::v10::detail::bigint::operator<<=(&v80, *(a1 + 16) + v10, v11, v12);
    fmt::v10::detail::bigint::assign<unsigned long long,0>(&v72, 1uLL);
    fmt::v10::detail::bigint::operator<<=(&v72, *(a1 + 16), v13, v14);
    if (a2)
    {
      fmt::v10::detail::bigint::assign<unsigned long long,0>(&v68, 1uLL);
      v17 = &v68;
      fmt::v10::detail::bigint::operator<<=(&v68, *(a1 + 16) + 1, v26, v27);
    }

    else
    {
      v17 = 0;
    }

    fmt::v10::detail::bigint::assign_pow10(&v76, *a5, v15, v16);
    fmt::v10::detail::bigint::operator<<=(&v76, v10, v28, v29);
  }

  v66 = a5;
  v30 = (*a1 & 1) == 0;
  if (v17)
  {
    v31 = v17;
  }

  else
  {
    v31 = &v72;
  }

  v32 = v7;
  if ((a2 & 2) != 0)
  {
    v33 = fmt::v10::detail::add_compare(&v80, v31, &v76);
    if ((v33 + v30 < 0) ^ __OFADD__(v33, v30) | (v33 + v30 == 0))
    {
      --*a5;
      fmt::v10::detail::bigint::multiply(&v80, 0xAu);
      if (v7 < 0)
      {
        fmt::v10::detail::bigint::multiply(&v72, 0xAu);
        if (v17)
        {
          fmt::v10::detail::bigint::multiply(v17, 0xAu);
        }
      }
    }

    v32 = v7;
    if ((a2 & 4) != 0)
    {
      v34 = *a5;
      if ((*a5 & 0x80000000) == 0 && 2147483646 - v34 < v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "number is too big");
        exception->__vftable = &unk_286BF19F8;
      }

      v32 = v7 + v34 + 1;
    }
  }

  if (v7 < 0)
  {
    v46 = 0;
    v47 = *(a4 + 8);
    v48 = -v30;
    while (1)
    {
      v49 = fmt::v10::detail::bigint::divmod_assign(&v80, &v76, v24, v25);
      v52 = fmt::v10::detail::compare(&v80, &v72, v50, v51);
      v53 = fmt::v10::detail::add_compare(&v80, v31, &v76);
      *(v47 + v46) = v49 + 48;
      if (v52 < v30 || v53 > v48)
      {
        break;
      }

      fmt::v10::detail::bigint::multiply(&v80, 0xAu);
      fmt::v10::detail::bigint::multiply(&v72, 0xAu);
      if (v17)
      {
        fmt::v10::detail::bigint::multiply(v17, 0xAu);
      }

      ++v46;
    }

    v54 = v46 + 1;
    if (v52 >= v30 || v53 > v48 && ((v55 = fmt::v10::detail::add_compare(&v80, &v80, &v76), v55 > 0) || !v55 && (v49 & 1) != 0))
    {
      ++*(v47 + v54 - 1);
    }

    v56 = *(a4 + 24);
    if (v56 < v54)
    {
      (**a4)(a4, v54);
      v56 = *(a4 + 24);
    }

    if (v56 >= v54)
    {
      v56 = v54;
    }

    *(a4 + 16) = v56;
    v44 = v66;
    v45 = *v66 - v46;
    goto LABEL_62;
  }

  v35 = v32 - 1;
  *a5 -= v35;
  if (v32 <= 0)
  {
    fmt::v10::detail::bigint::multiply(&v76, 0xAu);
    if (fmt::v10::detail::add_compare(&v80, &v80, &v76) <= 0)
    {
      v57 = 48;
    }

    else
    {
      v57 = 49;
    }

    v67 = v57;
    fmt::v10::detail::buffer<char>::push_back(a4, &v67);
    goto LABEL_69;
  }

  v36 = *(a4 + 24);
  if (v36 < v32)
  {
    (**a4)(a4, v32);
    v36 = *(a4 + 24);
  }

  if (v36 >= v32)
  {
    v36 = v32;
  }

  *(a4 + 16) = v36;
  if (v32 != 1)
  {
    v37 = 0;
    do
    {
      *(*(a4 + 8) + v37) = fmt::v10::detail::bigint::divmod_assign(&v80, &v76, v24, v25) + 48;
      fmt::v10::detail::bigint::multiply(&v80, 0xAu);
      ++v37;
    }

    while (v35 != v37);
  }

  v38 = fmt::v10::detail::bigint::divmod_assign(&v80, &v76, v24, v25);
  v39 = fmt::v10::detail::add_compare(&v80, &v80, &v76);
  if (v39 <= 0 && (v39 || (v38 & 1) == 0))
  {
LABEL_68:
    *(*(a4 + 8) + v35) = v38 + 48;
    goto LABEL_69;
  }

  if (v38 != 9)
  {
    LOBYTE(v38) = v38 + 1;
    goto LABEL_68;
  }

  *(*(a4 + 8) + v35) = 58;
  if (v32 != 1)
  {
    v40 = v32 + 1;
    v41 = v32 - 2;
    do
    {
      v42 = *(a4 + 8);
      if (*(v42 + (v41 + 1)) != 58)
      {
        break;
      }

      *(v42 + (v41 + 1)) = 48;
      ++*(*(a4 + 8) + v41);
      --v40;
      --v41;
    }

    while (v40 > 2);
  }

  v43 = *(a4 + 8);
  if (*v43 == 58)
  {
    *v43 = 49;
    if ((a2 & 4) == 0)
    {
      v44 = v66;
      v45 = *v66 + 1;
LABEL_62:
      *v44 = v45;
      goto LABEL_69;
    }

    v67 = 48;
    fmt::v10::detail::buffer<char>::push_back(a4, &v67);
  }

LABEL_69:
  if (__p != v71)
  {
    operator delete(__p);
  }

  if (v73 != v75)
  {
    operator delete(v73);
  }

  if (v77 != v79)
  {
    operator delete(v77);
  }

  if (v81 != v83)
  {
    operator delete(v81);
  }
}

void sub_25A345AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p)
{
  if (__p != a10)
  {
    operator delete(__p);
  }

  v20 = *(v17 + 176);
  if (v20 != a11)
  {
    operator delete(v20);
  }

  v21 = *(v17 + 344);
  if (v21 != a12)
  {
    operator delete(v21);
  }

  v22 = *(v18 - 248);
  if (v22 != a13)
  {
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::bigint::operator=<unsigned __int128>(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  if (!(a2 | a3))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB46, "", a4);
  }

  return fmt::v10::detail::bigint::assign<unsigned __int128,0>(a1, a2, a3);
}

uint64_t fmt::v10::detail::bigint::operator<<=(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB4F, "", a4);
  }

  *(a1 + 160) += a2 >> 5;
  v5 = a2 & 0x1F;
  if ((a2 & 0x1F) != 0)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 8);
      do
      {
        v9 = (*v8 << v5) + v7;
        v7 = *v8 >> (32 - v5);
        *v8++ = v9;
        v11 = v7;
        --v6;
      }

      while (v6);
      if (v7)
      {
        fmt::v10::detail::buffer<unsigned int>::push_back(a1, &v11);
      }
    }
  }

  return a1;
}

uint64_t fmt::v10::detail::bigint::assign_pow10(fmt::v10::detail::bigint *this, signed int a2, uint64_t a3, const char *a4)
{
  if (a2 < 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB92, "", a4);
  }

  if (a2)
  {
    v6 = 1;
    do
    {
      v7 = v6;
      v6 *= 2;
    }

    while (v7 <= a2);
    fmt::v10::detail::bigint::assign<unsigned long long,0>(this, 5uLL);
    if (v7 >= 4)
    {
      v10 = v7 >> 2;
      do
      {
        fmt::v10::detail::bigint::square(this);
        if ((v10 & a2) != 0)
        {
          fmt::v10::detail::bigint::multiply(this, 5u);
        }

        v11 = v10 > 1;
        v10 >>= 1;
      }

      while (v11);
    }

    return fmt::v10::detail::bigint::operator<<=(this, a2, v8, v9);
  }

  else
  {

    return fmt::v10::detail::bigint::assign<unsigned long long,0>(this, 1uLL);
  }
}

uint64_t fmt::v10::detail::bigint::assign(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  if (*(result + 24) >= v4)
  {
    *(result + 16) = v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = (**result)(result, *(a2 + 16));
    v5 = *(v3 + 24);
    if (v5 >= v4)
    {
      v5 = v4;
    }

    *(v3 + 16) = v5;
  }

  v6 = *(a2 + 8);
  v7 = *(v3 + 8);
  v8 = 4 * v4;
  do
  {
    v9 = *v6++;
    *v7++ = v9;
    v8 -= 4;
  }

  while (v8);
LABEL_8:
  *(v3 + 160) = *(a2 + 160);
  return result;
}

uint64_t fmt::v10::detail::bigint::operator*=<unsigned __int128>(uint64_t a1, unint64_t a2, uint64_t a3, const char *a4)
{
  if (!(a2 | a3))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB5F, "", a4);
  }

  fmt::v10::detail::bigint::multiply<unsigned __int128,0>(a1, a2, a3);
  return a1;
}

uint64_t fmt::v10::detail::add_compare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  v4 = v3 + *(a1 + 16);
  v5 = *(a2 + 160);
  v6 = v5 + *(a2 + 16);
  if (v4 <= v6)
  {
    v7 = v5 + *(a2 + 16);
  }

  else
  {
    v7 = v3 + *(a1 + 16);
  }

  v8 = *(a3 + 16);
  v9 = *(a3 + 160);
  v10 = v9 + v8;
  if (v7 + 1 < v9 + v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v10)
  {
    return 1;
  }

  if (v3 >= v5)
  {
    v12 = *(a2 + 160);
  }

  else
  {
    v12 = *(a1 + 160);
  }

  if (v12 >= v9)
  {
    v12 = *(a3 + 160);
  }

  if (v10 > v12)
  {
    v13 = 0;
    v14 = *(a1 + 8);
    v15 = *(a2 + 8);
    v16 = v8 - 1;
    v17 = v9 - v5;
    v18 = v9 - v3;
    v19 = *(a3 + 8);
    while (1)
    {
      v20 = v9 + v16 + 1;
      if (v3 < v20)
      {
        v22 = __OFSUB__(v4, v20);
        v21 = v4 - v20 < 0;
      }

      else
      {
        v22 = 0;
        v21 = 1;
      }

      if (v21 != v22)
      {
        v23 = 0;
      }

      else
      {
        if ((v18 + v16) < 0)
        {
          goto LABEL_43;
        }

        v23 = *(v14 + 4 * (v18 + v16));
      }

      if (v5 < v20)
      {
        v25 = __OFSUB__(v6, v20);
        v24 = v6 - v20 < 0;
      }

      else
      {
        v25 = 0;
        v24 = 1;
      }

      if (v24 != v25)
      {
        v26 = 0;
      }

      else
      {
        if ((v17 + v16) < 0)
        {
          goto LABEL_43;
        }

        v26 = *(v15 + 4 * (v17 + v16));
      }

      v27 = 0;
      if (v9 < v20 && v10 >= v20)
      {
        if ((v16 & 0x80000000) != 0)
        {
LABEL_43:
          fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v13);
        }

        v27 = *(v19 + 4 * v16);
      }

      v28 = v26 + v23;
      v29 = v27 | v13;
      v30 = (v27 | v13) >= v28;
      v31 = (v27 | v13) - v28;
      if (!v30)
      {
        return 1;
      }

      if (v31 > 1)
      {
        return 0xFFFFFFFFLL;
      }

      v13 = v31 << 32;
      --v16;
      if ((v9 + v16 + 1) <= v12)
      {
        if (v29 == v28)
        {
          return 0;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0;
}

uint64_t fmt::v10::detail::bigint::divmod_assign(fmt::v10::detail::bigint *this, const fmt::v10::detail::bigint *a2, uint64_t a3, const char *a4)
{
  if (this == a2)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xBD0, "", a4);
  }

  if ((fmt::v10::detail::compare(this, a2, a3, a4) & 0x80000000) != 0)
  {
    return 0;
  }

  if (!*(*(a2 + 1) + 4 * *(a2 + 2) - 4))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xBD2, "", v7);
  }

  fmt::v10::detail::bigint::align(this, a2, v6, v7);
  LODWORD(v10) = 0;
  do
  {
    fmt::v10::detail::bigint::subtract_aligned(this, a2, v8, v9);
    v10 = (v10 + 1);
  }

  while ((fmt::v10::detail::compare(this, a2, v11, v12) & 0x80000000) == 0);
  return v10;
}

uint64_t fmt::v10::detail::compare(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 160) + v4;
  v6 = *(a2 + 16);
  v7 = *(a2 + 160) + v6;
  if (v5 == v7)
  {
    v8 = v4;
    v9 = v6;
    v10 = (v4 - v6) & ~((v4 - v6) >> 31);
    while (v10 < v8)
    {
      if (v9 <= 0)
      {
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
      }

      v11 = *(*(a1 + 8) - 4 + 4 * v8);
      v12 = *(*(a2 + 8) - 4 + 4 * v9--);
      --v8;
      if (v11 != v12)
      {
        if (v11 > v12)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    if (v8 > v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    if (v8 == v9)
    {
      return 0;
    }

    else
    {
      return v14;
    }
  }

  else if (v5 > v7)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void fmt::v10::basic_memory_buffer<unsigned int,32ul,std::allocator<unsigned int>>::grow(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24) + (*(a1 + 24) >> 1);
  v3 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v3 = a2;
  }

  if (!(v2 >> 62))
  {
    v3 = *(a1 + 24) + (*(a1 + 24) >> 1);
  }

  if (v2 >= a2)
  {
    v4 = v3;
  }

  else
  {
    v4 = a2;
  }

  if (!(v4 >> 62))
  {
    v5 = *(a1 + 8);
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fmt::v10::detail::bigint::assign<unsigned __int128,0>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 8);
  do
  {
    *(v5 + 4 * v4++) = a2;
    *(&v6 + 1) = a3;
    *&v6 = a2;
    a2 = v6 >> 32;
    v7 = a2 | HIDWORD(a3);
    a3 >>= 32;
  }

  while (v7);
  v8 = *(result + 24);
  if (v8 <= v4 - 1)
  {
    result = (**result)(result, v4, a3);
    v8 = *(v3 + 24);
  }

  if (v8 >= v4)
  {
    v8 = v4;
  }

  *(v3 + 16) = v8;
  *(v3 + 160) = 0;
  return result;
}

uint64_t fmt::v10::detail::buffer<unsigned int>::push_back(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = v4 + 1;
  if (*(result + 24) < (v4 + 1))
  {
    result = (**result)(result);
    v4 = *(v3 + 16);
    v5 = v4 + 1;
  }

  v6 = *a2;
  v7 = *(v3 + 8);
  *(v3 + 16) = v5;
  *(v7 + 4 * v4) = v6;
  return result;
}

uint64_t fmt::v10::detail::bigint::assign<unsigned long long,0>(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 8);
  do
  {
    *(v4 + 4 * v3++) = a2;
    a2 >>= 32;
  }

  while (a2);
  v5 = *(result + 24);
  if (v5 <= v3 - 1)
  {
    result = (**result)(result, v3);
    v5 = *(v2 + 24);
  }

  if (v5 >= v3)
  {
    v5 = v3;
  }

  *(v2 + 16) = v5;
  *(v2 + 160) = 0;
  return result;
}

void fmt::v10::detail::bigint::square(fmt::v10::detail::bigint *this)
{
  v2 = *(this + 2);
  fmt::v10::basic_memory_buffer<unsigned int,32ul,std::allocator<unsigned int>>::basic_memory_buffer(&v33, this);
  if ((v2 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v5);
  }

  v6 = (2 * v2);
  v7 = *(this + 3);
  if (v7 < v6)
  {
    (**this)(this, (2 * v2));
    v7 = *(this + 3);
  }

  if (v7 >= v6)
  {
    v7 = (2 * v2);
  }

  *(this + 2) = v7;
  if (v2)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = __p;
    v13 = *(this + 1);
    v14 = 1;
    do
    {
      v15 = 0;
      v16 = v8;
      do
      {
        v3 = *&v12[v16];
        v17 = v3 * *&v12[4 * v15];
        v18 = __CFADD__(v10, v17);
        v10 += v17;
        if (v18)
        {
          ++v11;
        }

        ++v15;
        v16 -= 4;
      }

      while (v14 != v15);
      *(v13 + 4 * v9) = v10;
      *(&v19 + 1) = v11;
      *&v19 = v10;
      v10 = v19 >> 32;
      v11 >>= 32;
      ++v9;
      ++v14;
      v8 += 4;
    }

    while (v9 != (v2 & 0x7FFFFFFF));
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v6 > v2)
  {
    v20 = __p;
    v21 = v2 & 0x7FFFFFFF;
    v22 = *(this + 1);
    v23 = __p + 4 * v21 - 4;
    v24 = 1;
    v25 = v2 - 1;
    do
    {
      if (v21 - (v2 - 1) < v2)
      {
        v26 = &v20[4 * v24];
        v27 = v25;
        v3 = v23;
        do
        {
          v29 = *v26;
          v26 += 4;
          v28 = v29;
          v30 = *v3;
          v3 -= 4;
          v5 = v30;
          v4 = v30 * v28;
          v18 = __CFADD__(v10, v4);
          v10 += v4;
          if (v18)
          {
            ++v11;
          }

          --v27;
        }

        while (v27);
      }

      *(v22 + 4 * v21) = v10;
      *(&v31 + 1) = v11;
      *&v31 = v10;
      v10 = v31 >> 32;
      v11 >>= 32;
      ++v21;
      --v25;
    }

    while (v24++ != v2);
  }

  fmt::v10::detail::bigint::remove_leading_zeros(this, v3, v4, v5);
  *(this + 40) *= 2;
  if (__p != &v35)
  {
    operator delete(__p);
  }
}

void sub_25A34653C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__p != &a13)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::bigint::remove_leading_zeros(uint64_t this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = this;
  v5 = *(this + 16);
  while (1)
  {
    v6 = v5;
    if (v5 < 2)
    {
      break;
    }

    --v5;
    if (*(*(this + 8) + 4 * v6 - 4))
    {
      goto LABEL_6;
    }
  }

  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

LABEL_6:
  v7 = *(this + 24);
  if (v7 < v6)
  {
    this = (**this)(this, v6);
    v7 = *(v4 + 24);
  }

  if (v7 >= v6)
  {
    v7 = v6;
  }

  *(v4 + 16) = v7;
  return this;
}

void *fmt::v10::basic_memory_buffer<unsigned int,32ul,std::allocator<unsigned int>>::basic_memory_buffer(void *a1, void *a2)
{
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_286BF1AA8;
  a1[1] = 0;
  fmt::v10::basic_memory_buffer<unsigned int,32ul,std::allocator<unsigned int>>::move(a1, a2);
  return a1;
}

uint64_t fmt::v10::basic_memory_buffer<unsigned int,32ul,std::allocator<unsigned int>>::move(uint64_t result, void *a2)
{
  v2 = result;
  v3 = a2[2];
  v4 = a2[1];
  v5 = a2[3];
  v6 = (a2 + 4);
  if (v4 == a2 + 4)
  {
    v7 = (result + 32);
    *(result + 8) = result + 32;
    *(result + 24) = v5;
    if (v3)
    {
      v8 = 4 * v3;
      do
      {
        v9 = *v6++;
        *v7++ = v9;
        v8 -= 4;
      }

      while (v8);
    }
  }

  else
  {
    *(result + 8) = v4;
    *(result + 24) = v5;
    a2[1] = v6;
    a2[2] = 0;
    a2[3] = 0;
    v5 = *(result + 24);
  }

  if (v5 < v3)
  {
    result = (**result)(result, v3);
    v5 = *(v2 + 24);
  }

  if (v5 >= v3)
  {
    v5 = v3;
  }

  *(v2 + 16) = v5;
  return result;
}

uint64_t fmt::v10::detail::bigint::multiply<unsigned __int128,0>(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(result + 8);
    do
    {
      v8 = *v7;
      v9 = (a2 * *v7) >> 64;
      v10 = a2 * v8 + v5;
      if (__CFADD__(a2 * v8, v5))
      {
        ++v9;
      }

      v11 = HIDWORD(v9);
      *(&v13 + 1) = v9;
      *&v13 = a2 * v8 + v5;
      v12 = v13 >> 32;
      *(&v13 + 1) = v6;
      *&v13 = v5;
      result = HIDWORD(v6);
      v6 = (__PAIR128__((((a3 << 32) * *v7) >> 64) + HIDWORD(a3) * *v7, (a3 << 32) * *v7) + (v13 >> 32) + __PAIR128__(v11, v12)) >> 64;
      v5 = (a3 << 32) * *v7 + (v13 >> 32) + v12;
      *v7++ = v10;
      --v3;
    }

    while (v3);
    if (__PAIR128__(v6, v5) != 0)
    {
      do
      {
        v16 = v5;
        result = fmt::v10::detail::buffer<unsigned int>::push_back(v4, &v16);
        *(&v14 + 1) = v6;
        *&v14 = v5;
        v5 = v14 >> 32;
        v15 = v5 | HIDWORD(v6);
        v6 >>= 32;
      }

      while (v15);
    }
  }

  return result;
}

uint64_t fmt::v10::detail::bigint::multiply(uint64_t this, unsigned int a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = v3 + *v4 * a2;
      *v4++ = v5;
      v3 = HIDWORD(v5);
      v6 = v3;
      --v2;
    }

    while (v2);
    if (v3)
    {
      return fmt::v10::detail::buffer<unsigned int>::push_back(this, &v6);
    }
  }

  return this;
}

void fmt::v10::detail::bigint::align(fmt::v10::detail::bigint *this, const fmt::v10::detail::bigint *a2, uint64_t a3, const char *a4)
{
  v4 = *(this + 40) - *(a2 + 40);
  if (v4 >= 1)
  {
    v6 = *(this + 4);
    v7 = (v4 + v6);
    if (v4 + v6 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    v8 = *(this + 3);
    if (v8 < v7)
    {
      (**this)(this, (v4 + v6));
      v8 = *(this + 3);
    }

    if (v8 >= v7)
    {
      v8 = (v4 + v6);
    }

    *(this + 2) = v8;
    if (v6 <= 0)
    {
      v9 = *(this + 1);
    }

    else
    {
      v9 = *(this + 1);
      v10 = 4 * (v6 - 1);
      v11 = 4 * (v6 - 1 + v4);
      do
      {
        *&v9[v11] = *&v9[v10];
        v10 -= 4;
        v11 -= 4;
      }

      while (v10 != -4);
    }

    bzero(v9, 4 * (v4 - 1) + 4);
    *(this + 40) -= v4;
  }
}

uint64_t fmt::v10::detail::bigint::subtract_aligned(fmt::v10::detail::bigint *this, const fmt::v10::detail::bigint *a2, uint64_t a3, const char *a4)
{
  if (*(a2 + 40) < *(this + 40))
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB00, "unaligned bigints", a4);
  }

  if ((fmt::v10::detail::compare(this, a2, a3, a4) & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/format.h", 0xB01, "", v8);
  }

  v9 = *(a2 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = *(a2 + 40) - *(this + 40);
    v12 = *(a2 + 1);
    v13 = v11;
    do
    {
      if ((v11 & 0x80000000) != 0)
      {
        goto LABEL_15;
      }

      v14 = *v12++;
      v15 = *(this + 1);
      v16 = v10 - v14 + *(v15 + 4 * v13);
      *(v15 + 4 * v13) = v16;
      v10 = v16 >> 63;
      ++v13;
      --v9;
    }

    while (v9);
    if (v16 < 0)
    {
      if ((v13 & 0x80000000) != 0)
      {
LABEL_15:
        fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v8);
      }

      v17 = v13 & 0x7FFFFFFF;
      v18 = *(this + 1);
      v19 = *(v18 + 4 * v17);
      v20 = -1;
      do
      {
        v22 = v20 + v19;
        v21 = v22 < 0;
        v19 = v22;
        v20 = v22 >> 63;
      }

      while (v21);
      *(v18 + 4 * v17) = v19;
    }
  }

  return fmt::v10::detail::bigint::remove_leading_zeros(this, v6, v7, v8);
}

uint64_t fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, uint64_t a2, unsigned int *a3, const char *a4, std::locale *a5)
{
  v63 = *a2;
  v64 = a4;
  v6 = *(a2 + 8);
  v62 = v6;
  v61 = 48;
  v60 = BYTE5(a4);
  if ((v6 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v11 = a4 >> 32;
  if (BYTE5(a4))
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = v6;
  }

  if ((HIDWORD(a4) & 0x20000) != 0)
  {
    if (a5)
    {
      std::locale::locale(&v44, a5);
    }

    else
    {
      MEMORY[0x25F8515F0](&v44);
    }

    v14 = std::locale::use_facet(&v44, MEMORY[0x277D826C0]);
    v13 = (v14->__vftable[1].~facet)(v14);
    std::locale::~locale(&v44);
    v6 = v62;
  }

  else
  {
    v13 = 46;
  }

  v59 = v13;
  v15 = *(a2 + 12);
  v16 = v6 + v15;
  if (BYTE4(a4) == 1 || !BYTE4(a4) && (v16 < -3 || (a4 <= 0 ? (v17 = 16) : (v17 = a4), v16 > v17)))
  {
    v18 = v16 - 1;
    if ((v11 & 0x80000) != 0)
    {
      v19 = (a4 - v6) & ~((a4 - v6) >> 31);
      v12 += v19;
    }

    else if (v6 == 1)
    {
      v13 = 0;
      LODWORD(v19) = 0;
      v59 = 0;
    }

    else
    {
      LODWORD(v19) = 0;
    }

    if ((v11 & 0x10000) != 0)
    {
      v26 = 69;
    }

    else
    {
      v26 = 101;
    }

    LOBYTE(v44.__locale_) = v60;
    v27 = v63;
    v45 = v63;
    LODWORD(v46) = v6;
    BYTE4(v46) = v13;
    LODWORD(v47) = v19;
    BYTE4(v47) = 48;
    BYTE5(v47) = v26;
    LODWORD(v48) = v16 - 1;
    if (*a3 < 1)
    {
      if (v60)
      {
        LOBYTE(v53[0]) = byte_25A9BFEED[v60];
        fmt::v10::detail::buffer<char>::push_back(a1, v53);
        v27 = v45;
        v6 = v46;
        LOBYTE(v13) = BYTE4(v46);
      }

      v32 = fmt::v10::detail::write_significand<fmt::v10::appender,char>(a1, v27, v6, 1, v13);
      v33 = v47;
      if (v47 >= 1)
      {
        do
        {
          fmt::v10::detail::buffer<char>::push_back(v32, &v47 + 4);
          --v33;
        }

        while (v33);
      }

      LOBYTE(v53[0]) = BYTE5(v47);
      fmt::v10::detail::buffer<char>::push_back(v32, v53);
      return fmt::v10::detail::write_exponent<char,fmt::v10::appender>(v48, v32, v34, v35);
    }

    else
    {
      if (v13)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      if (v16 < 1)
      {
        v18 = 1 - v16;
      }

      v29 = 3;
      if (v18 > 999)
      {
        v29 = 4;
      }

      if (v18 <= 99)
      {
        v30 = 2;
      }

      else
      {
        v30 = v29;
      }

      return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(a1, a3, v12 + v30 + v28, (v12 + v30 + v28), &v44);
    }
  }

  v58 = v6 + v15;
  if ((v15 & 0x80000000) == 0)
  {
    v20 = v15 + v12;
    v21 = a4 - v16;
    v57 = a4 - v16;
    if ((v11 & 0x80000) != 0)
    {
      if (v21 > 0 || v11 == 2)
      {
        v36 = v21 < 1;
        v37 = v20 + 1 + v21;
        if (v36)
        {
          ++v20;
        }

        else
        {
          v20 = v37;
        }
      }

      else
      {
        v57 = 0;
        ++v20;
      }
    }

    fmt::v10::detail::digit_grouping<char>::digit_grouping(v53, a5, (v11 >> 17) & 1);
    v38 = fmt::v10::detail::digit_grouping<char>::count_separators(v53, v16);
    if ((v38 & 0x80000000) == 0)
    {
      v44.__locale_ = &v60;
      v45 = &v63;
      v46 = &v62;
      v47 = a2;
      v48 = v53;
      v49 = &v64;
      v50 = &v59;
      v51 = &v57;
      v52 = &v61;
      v25 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(a1, a3, v20 + v38, (v20 + v38), &v44);
      goto LABEL_56;
    }

LABEL_77:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  if (v16 < 1)
  {
    if (a4 >= -v16)
    {
      v40 = -v16;
    }

    else
    {
      v40 = a4;
    }

    if (a4 <= -1 || v6 != 0)
    {
      v40 = -v16;
    }

    LODWORD(v53[0]) = v40;
    if (v40 | v6)
    {
      LOBYTE(v57) = 1;
      if (v40 < 0)
      {
        goto LABEL_77;
      }

      v42 = 2;
    }

    else
    {
      LOBYTE(v57) = (v11 & 0x80000) >> 19;
      if ((v11 & 0x80000) != 0)
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }
    }

    v44.__locale_ = &v60;
    v45 = &v61;
    v46 = &v57;
    v47 = &v59;
    v48 = v53;
    v49 = &v63;
    v50 = &v62;
    return fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(a1, a3, (v42 + v40) + v12, ((v42 + v40) + v12), &v44);
  }

  v22 = (a4 - v6) & ((v11 << 12) >> 31);
  v57 = v22;
  fmt::v10::detail::digit_grouping<char>::digit_grouping(v53, a5, (v11 >> 17) & 1);
  v23 = fmt::v10::detail::digit_grouping<char>::count_separators(v53, v16);
  if ((v23 & 0x80000000) != 0)
  {
    goto LABEL_77;
  }

  v44.__locale_ = &v60;
  v45 = &v63;
  v46 = &v62;
  v47 = &v58;
  v24 = ((v22 & ~(v22 >> 31)) + 1 + v12 + v23);
  v48 = &v59;
  v49 = v53;
  v50 = &v57;
  v51 = &v61;
  v25 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(a1, a3, v24, v24, &v44);
LABEL_56:
  v39 = v25;
  if (v56 < 0)
  {
    operator delete(__p);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  return v39;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#1} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 *a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (*a5)
  {
    v21 = byte_25A9BFEED[*a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v21);
  }

  v14 = fmt::v10::detail::write_significand<fmt::v10::appender,char>(v8, *(a5 + 1), *(a5 + 4), 1, a5[20]);
  v15 = *(a5 + 6);
  if (v15 >= 1)
  {
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v14, a5 + 28);
      --v15;
    }

    while (v15);
  }

  v20 = a5[29];
  fmt::v10::detail::buffer<char>::push_back(v14, &v20);
  result = fmt::v10::detail::write_exponent<char,fmt::v10::appender>(*(a5 + 8), v14, v16, v17);
  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(result, v11 - v13, a2 + 11, v19);
  }

  return result;
}

uint64_t fmt::v10::detail::write_significand<fmt::v10::appender,char>(uint64_t a1, char *a2, int a3, const char *a4, int a5)
{
  v13 = a5;
  v8 = &a2[a4];
  v9 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(a2, v8, a1, a4);
  v10 = v9;
  if (a5)
  {
    fmt::v10::detail::buffer<char>::push_back(v9, &v13);
    return fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(v8, &a2[a3], v10, v11);
  }

  return v10;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#2} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v20 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v20);
  }

  v14 = fmt::v10::detail::write_significand<char,fmt::v10::appender,char const*,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *(a5[3] + 3), a5[4]);
  v16 = v14;
  if ((a5[5][6] & 8) != 0)
  {
    fmt::v10::detail::buffer<char>::push_back(v14, a5[6]);
    v17 = *a5[7];
    if (v17 >= 1)
    {
      v18 = a5[8];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v16, v18);
        --v17;
      }

      while (v17);
    }
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v16, v11 - v13, a2 + 11, v15);
  }

  return v16;
}

uint64_t fmt::v10::detail::write_significand<char,fmt::v10::appender,char const*,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, char *a2, int a3, const char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a1;
  v15[63] = *MEMORY[0x277D85DE8];
  v7 = *(a5 + 47);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a5 + 32);
  }

  if (v7)
  {
    v12 = &unk_286BF19A0;
    __p = v15;
    v14 = xmmword_25A9BF650;
    fmt::v10::detail::buffer<char>::append<char>(&v12, a2, &a2[a3], a4);
    v11 = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(&v12, &v11);
        --v5;
      }

      while (v5);
    }

    v6 = fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a5, v6, __p, v14);
    if (__p != v15)
    {
      operator delete(__p);
    }
  }

  else
  {
    fmt::v10::detail::buffer<char>::append<char>(a1, a2, &a2[a3], a4);
    LOBYTE(v12) = 48;
    if (v5 >= 1)
    {
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v6, &v12);
        --v5;
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_25A347348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p != v12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#3} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v19 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v19);
  }

  v15 = fmt::v10::detail::write_significand<fmt::v10::appender,char,char const*,fmt::v10::detail::digit_grouping<char>>(v8, *a5[1], *a5[2], *a5[3], *a5[4], a5[5]);
  v16 = *a5[6];
  if (v16 >= 1)
  {
    v17 = a5[7];
    do
    {
      fmt::v10::detail::buffer<char>::push_back(v15, v17);
      --v16;
    }

    while (v16);
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v15, v11 - v13, a2 + 11, v14);
  }

  return v15;
}

uint64_t fmt::v10::detail::write_significand<fmt::v10::appender,char,char const*,fmt::v10::detail::digit_grouping<char>>(uint64_t a1, char *a2, int a3, const char *a4, int a5, uint64_t a6)
{
  v6 = a4;
  v19[63] = *MEMORY[0x277D85DE8];
  v8 = *(a6 + 47);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a6 + 32);
  }

  if (v8)
  {
    v16 = &unk_286BF19A0;
    __p = v19;
    v18 = xmmword_25A9BF650;
    fmt::v10::detail::write_significand<fmt::v10::appender,char>(&v16, a2, a3, a4, a5);
    if ((v6 & 0x80000000) != 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v10);
    }

    fmt::v10::detail::digit_grouping<char>::apply<fmt::v10::appender,char>(a6, a1, __p, v6);
    v12 = fmt::v10::detail::copy_str_noinline<char,char *,fmt::v10::appender>(__p + v6, __p + v18, a1, v11);
    if (__p != v19)
    {
      operator delete(__p);
    }

    v13 = *MEMORY[0x277D85DE8];
    return v12;
  }

  else
  {
    v15 = *MEMORY[0x277D85DE8];

    return fmt::v10::detail::write_significand<fmt::v10::appender,char>(a1, a2, a3, a4, a5);
  }
}

void sub_25A347608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p != v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(fmt::v10::appender,fmt::v10::detail::big_decimal_fp const&,fmt::v10::format_specs<char> const&,fmt::v10::detail::float_specs,fmt::v10::detail::locale_ref)::{lambda(fmt::v10::appender)#4} &>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, unsigned __int8 **a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BFE8E[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (**a5)
  {
    v19 = byte_25A9BFEED[**a5];
    fmt::v10::detail::buffer<char>::push_back(v8, &v19);
  }

  fmt::v10::detail::buffer<char>::push_back(v8, a5[1]);
  if (*a5[2] == 1)
  {
    fmt::v10::detail::buffer<char>::push_back(v8, a5[3]);
    v16 = *a5[4];
    if (v16 >= 1)
    {
      v17 = a5[1];
      do
      {
        fmt::v10::detail::buffer<char>::push_back(v8, v17);
        --v16;
      }

      while (v16);
    }

    fmt::v10::detail::buffer<char>::append<char>(v8, *a5[5], (*a5[5] + *a5[6]), v15);
  }

  if (v11 != v13)
  {
    return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
  }

  return v8;
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,double,0>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_4;
  }

  v13 = 10;
  v12[0] = a5;
  if ((fmt::v10::detail::write_loc(a1, v12, &v10, a4) & 1) == 0)
  {
    a2 = v10;
    a3 = v11;
LABEL_4:
    v7 = fmt::v10::detail::write_float<char,fmt::v10::appender,double>(v7, a2, a3, a4, a5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t fmt::v10::detail::write_float<char,fmt::v10::appender,double>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, double a5)
{
  v30[63] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24 = a3;
  v8 = fmt::v10::detail::parse_float_type_spec<char>(&v23, a2);
  v22[0] = v8;
  v11 = HIDWORD(v8) & 0xFFFF00FF;
  v12 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v24 + 1) >> 4) & 7) << 8);
  v22[1] = v12;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v12 = v11 | 0x100;
    v22[1] = v11 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v24 + 1)) & 0x700) == 0x100)
  {
    v22[1] = HIDWORD(v8) & 0xFFFF00FF;
    v12 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 < INFINITY || a5 > INFINITY)
  {
    if ((BYTE1(v24) & 0xF) == 4 && (v12 & 0xFF00) != 0)
    {
      LOBYTE(v27) = byte_25A9BFEED[BYTE1(v12)];
      fmt::v10::detail::buffer<char>::push_back(a1, &v27);
      v12 &= 0xFFFF00FF;
      v22[1] = v12;
      if (v23)
      {
        LODWORD(v23) = v23 - 1;
      }
    }

    v27 = &unk_286BF19A0;
    __p = v30;
    v29 = xmmword_25A9BF650;
    if (v12 == 3)
    {
      if ((v12 & 0xFF00) != 0)
      {
        LOBYTE(v25) = byte_25A9BFEED[BYTE1(v12)];
        fmt::v10::detail::buffer<char>::push_back(&v27, &v25);
      }

      fmt::v10::detail::format_hexfloat<double,0>(SHIDWORD(v23), *v22, &v27, a5);
      v25 = __p;
      v26 = v29;
      v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)2,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, &v23, v29, v29, &v25);
    }

    else
    {
      v15 = HIDWORD(v23);
      if (v24)
      {
        v16 = SHIDWORD(v23) <= -1;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v15 = 6;
      }

      if (v12 == 1)
      {
        if (v15 == 0x7FFFFFFF)
        {
          fmt::v10::detail::throw_format_error("number is too big", v9);
        }

        v17 = v15 + 1;
      }

      else
      {
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 == 2;
        }

        if (v18)
        {
          v17 = v15;
        }

        else
        {
          v17 = 1;
        }
      }

      v19 = fmt::v10::detail::format_float<double>(v17, *v22, &v27, v10, a5);
      v22[0] = v17;
      v25 = __p;
      v26 = __PAIR64__(v19, v29);
      v14 = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(a1, &v25, &v23, *v22, a4);
    }

    v13 = v14;
    if (__p != v30)
    {
      operator delete(__p);
    }
  }

  else
  {
    v13 = fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(a1, 0, v23, v24, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_25A347AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender,long double,0>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, double a5)
{
  v7 = a1;
  v14 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a3;
  if ((a3 & 0x10000) == 0)
  {
    goto LABEL_4;
  }

  v13 = 11;
  v12[0] = a5;
  if ((fmt::v10::detail::write_loc(a1, v12, &v10, a4) & 1) == 0)
  {
    a2 = v10;
    a3 = v11;
LABEL_4:
    v7 = fmt::v10::detail::write_float<char,fmt::v10::appender,long double>(v7, a2, a3, a4, a5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t fmt::v10::detail::write_float<char,fmt::v10::appender,long double>(uint64_t a1, const char *a2, uint64_t a3, std::locale *a4, double a5)
{
  v30[63] = *MEMORY[0x277D85DE8];
  v23 = a2;
  v24 = a3;
  v8 = fmt::v10::detail::parse_float_type_spec<char>(&v23, a2);
  v22[0] = v8;
  v11 = HIDWORD(v8) & 0xFFFF00FF;
  v12 = HIDWORD(v8) & 0xFFFF00FF | (((*(&v24 + 1) >> 4) & 7) << 8);
  v22[1] = v12;
  if ((*&a5 & 0x8000000000000000) != 0)
  {
    v12 = v11 | 0x100;
    v22[1] = v11 | 0x100;
    a5 = -a5;
  }

  else if (((16 * *(&v24 + 1)) & 0x700) == 0x100)
  {
    v22[1] = HIDWORD(v8) & 0xFFFF00FF;
    v12 = HIDWORD(v8) & 0xFFFF00FF;
  }

  if (a5 < INFINITY || a5 > INFINITY)
  {
    if ((BYTE1(v24) & 0xF) == 4 && (v12 & 0xFF00) != 0)
    {
      LOBYTE(v27) = byte_25A9BFEED[BYTE1(v12)];
      fmt::v10::detail::buffer<char>::push_back(a1, &v27);
      v12 &= 0xFFFF00FF;
      v22[1] = v12;
      if (v23)
      {
        LODWORD(v23) = v23 - 1;
      }
    }

    v27 = &unk_286BF19A0;
    __p = v30;
    v29 = xmmword_25A9BF650;
    if (v12 == 3)
    {
      if ((v12 & 0xFF00) != 0)
      {
        LOBYTE(v25) = byte_25A9BFEED[BYTE1(v12)];
        fmt::v10::detail::buffer<char>::push_back(&v27, &v25);
      }

      fmt::v10::detail::format_hexfloat<double,0>(SHIDWORD(v23), *v22, &v27, a5);
      v25 = __p;
      v26 = v29;
      v14 = fmt::v10::detail::write_padded<(fmt::v10::align::type)2,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write_bytes<(fmt::v10::align::type)2,char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1} &>(a1, &v23, v29, v29, &v25);
    }

    else
    {
      v15 = HIDWORD(v23);
      if (v24)
      {
        v16 = SHIDWORD(v23) <= -1;
      }

      else
      {
        v16 = 0;
      }

      if (v16)
      {
        v15 = 6;
      }

      if (v12 == 1)
      {
        if (v15 == 0x7FFFFFFF)
        {
          fmt::v10::detail::throw_format_error("number is too big", v9);
        }

        v17 = v15 + 1;
      }

      else
      {
        if (v15)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 == 2;
        }

        if (v18)
        {
          v17 = v15;
        }

        else
        {
          v17 = 1;
        }
      }

      v19 = fmt::v10::detail::format_float<double>(v17, *v22, &v27, v10, a5);
      v22[0] = v17;
      v25 = __p;
      v26 = __PAIR64__(v19, v29);
      v14 = fmt::v10::detail::do_write_float<fmt::v10::appender,fmt::v10::detail::big_decimal_fp,char,fmt::v10::detail::digit_grouping<char>>(a1, &v25, &v23, *v22, a4);
    }

    v13 = v14;
    if (__p != v30)
    {
      operator delete(__p);
    }
  }

  else
  {
    v13 = fmt::v10::detail::write_nonfinite<char,fmt::v10::appender>(a1, 0, v23, v24, v22);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_25A347E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p != v16)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *fmt::v10::detail::write<char,fmt::v10::appender>(uint64_t a1, char *__s, uint64_t a3)
{
  if (*(a3 + 8) == 17)
  {

    return fmt::v10::detail::write_ptr<char,fmt::v10::appender,unsigned long>(a1, __s, a3);
  }

  else
  {
    if (!__s)
    {
      fmt::v10::detail::throw_format_error("string pointer is null", 0);
    }

    v7 = strlen(__s);

    return fmt::v10::detail::write<char,fmt::v10::appender>(a1, __s, v7, a3);
  }
}

uint64_t fmt::v10::detail::write<char,fmt::v10::appender>(uint64_t a1, unsigned __int8 *__src, unint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 4);
  v9 = a3;
  if ((v8 & 0x80000000) == 0)
  {
    v9 = a3;
    if (a3 > v8)
    {
      v17 = a3;
      v18 = v8;
      *&v13 = __src;
      *(&v13 + 1) = &v18;
      v14 = &v17;
      fmt::v10::detail::for_each_codepoint<fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(__src, a3, &v13, a4);
      v9 = v17;
    }
  }

  v10 = *(a4 + 8);
  if (*a4)
  {
    if (v10 == 18)
    {
      v11 = fmt::v10::detail::write_escaped_string<char,fmt::v10::detail::counting_iterator>(0, __src, a3, a4);
    }

    else
    {
      *&v13 = 0;
      fmt::v10::detail::for_each_codepoint<fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points>(__src, v9, &v13, a4);
      v11 = v13;
    }
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v13) = v10 == 18;
  *(&v13 + 1) = __src;
  v14 = a3;
  v15 = __src;
  v16 = v9;
  return fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write<char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1}>(a1, a4, v9, v11, &v13);
}

unsigned __int8 *fmt::v10::detail::write_escaped_string<char,fmt::v10::detail::counting_iterator>(uint64_t a1, unsigned __int8 *__src, uint64_t a3, const char *a4)
{
  v4 = __src;
  v5 = (a1 + 1);
  v6 = &__src[a3];
  do
  {
    v11 = 0;
    v12 = 0;
    v10 = v6;
    if (v6 - v4 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(v4, v6 - v4, &v10, a4);
    if (v4 != v10)
    {
      v5 = &v10[v5 - v4];
    }

    v4 = v11;
    if (!v11)
    {
      break;
    }

    v5 = fmt::v10::detail::write_escaped_cp<fmt::v10::detail::counting_iterator,char>(v5, &v10, v7, v8);
  }

  while (v4 != v6);
  return v5 + 1;
}

uint64_t fmt::v10::detail::write_padded<(fmt::v10::align::type)1,fmt::v10::appender,char,fmt::v10::appender fmt::v10::detail::write<char,fmt::v10::appender>(fmt::v10::appender,fmt::v10::basic_string_view<char>,fmt::v10::format_specs<char> const&)::{lambda(fmt::v10::appender)#1}>(uint64_t a1, unsigned int *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v5 = *a2;
  if ((v5 & 0x80000000) != 0)
  {
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  v8 = a1;
  v9 = v5 >= a4;
  v10 = v5 - a4;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_25A9BF942[*(a2 + 9) & 0xF];
  v13 = v11 >> v12;
  if (v11 >> v12)
  {
    v8 = fmt::v10::detail::fill<fmt::v10::appender,char>(a1, v11 >> v12, a2 + 11, a4);
  }

  if (*a5 == 1)
  {
    v8 = fmt::v10::detail::write_escaped_string<char,fmt::v10::appender>(v8, *(a5 + 8), *(a5 + 16));
  }

  else
  {
    fmt::v10::detail::buffer<char>::append<char>(v8, *(a5 + 24), (*(a5 + 24) + *(a5 + 32)), a4);
  }

  if (v11 == v13)
  {
    return v8;
  }

  return fmt::v10::detail::fill<fmt::v10::appender,char>(v8, v11 - v13, a2 + 11, v14);
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(unsigned __int8 *__src, unint64_t a2, __int128 *a3, const char *a4)
{
  v5 = __src;
  v12 = *a3;
  v13 = *(a3 + 2);
  v6 = __src;
  if (a2 >= 4)
  {
    v7 = &__src[a2 - 3];
    v6 = __src;
    while (v6 < v7)
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(&v12, v6, v6, a4);
      v6 = __src;
      if (!__src)
      {
        return __src;
      }
    }
  }

  v8 = &v5[a2] - v6;
  if (v8)
  {
    *(__dst + 3) = 0;
    __dst[0] = 0;
    if (v8 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    memcpy(__dst, v6, v8);
    v10 = __dst;
    do
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(&v12, v10, v6, v9);
      if (!__src)
      {
        break;
      }

      v6 += __src - v10;
      v10 = __src;
    }

    while (__src - __dst < v8);
  }

  return __src;
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::code_point_index(fmt::v10::basic_string_view<char>,unsigned long)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(uint64_t a1, unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v4 = *a2;
  v5 = byte_25A9C0490[v4 >> 3];
  v6 = (0x80FF0000 >> (*a2 >> 3)) & 1;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = (((dword_25A9C0440[v5] & v4) << 18) | ((v7 & 0x3F) << 12) | ((v8 & 0x3F) << 6) | v9 & 0x3F) >> dword_25A9C0468[v5];
  v11 = (((v8 >> 4) & 0xC | (v7 >> 2) & 0x30 | (v9 >> 6) | ((v10 < dword_25A9C0454[v5]) << 6) | ((HIWORD(v10) > 0x10u) << 8) | (((v10 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_25A9C047C[v5];
  if (!v11 && v6 + v5 < 0)
  {
    goto LABEL_12;
  }

  v12 = *(a1 + 8);
  v13 = *v12;
  if (*v12)
  {
    *v12 = v13 - 1;
    goto LABEL_7;
  }

  if (a3 - *a1 < 0)
  {
LABEL_12:
    fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
  }

  **(a1 + 16) = a3 - *a1;
LABEL_7:
  v14 = &a2[v6 + v5];
  if (v11)
  {
    v14 = a2 + 1;
  }

  if (v13)
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t fmt::v10::detail::write_escaped_cp<fmt::v10::detail::counting_iterator,char>(uint64_t result, unsigned __int8 **a2, uint64_t a3, const char *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  v5 = v4 > 0x27 || ((1 << v4) & 0x8400002600) == 0;
  if (!v5 || v4 == 92)
  {
    result += 2;
  }

  else
  {
    if (v4 <= 0xFF)
    {
      v7 = v18;
      v8 = 1;
      do
      {
        v17[v8--] = a0123456789abcd_0[v4 & 0xF];
        v9 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v9);
LABEL_19:
      result = v7 + result - v17 + 2;
      goto LABEL_6;
    }

    if (!HIWORD(v4))
    {
      v7 = &v18[2];
      v10 = 3;
      do
      {
        v17[v10--] = a0123456789abcd_0[v4 & 0xF];
        v9 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v9);
      goto LABEL_19;
    }

    if (HIWORD(v4) <= 0x10u)
    {
      v7 = &v19;
      v11 = 7;
      do
      {
        v17[v11--] = a0123456789abcd_0[v4 & 0xF];
        v9 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v9);
      goto LABEL_19;
    }

    v12 = *a2;
    v13 = a2[1];
    if (v13 - *a2 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    if (v12 != v13)
    {
      v14 = 4 * v12;
      do
      {
        v15 = *v12;
        v16 = 1;
        do
        {
          v17[v16--] = a0123456789abcd_0[v15 & 0xF];
          v9 = v15 > 0xF;
          v15 >>= 4;
        }

        while (v9);
        ++v12;
      }

      while (v12 != v13);
      result = 4 * v13 + result - v14;
    }
  }

LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(unsigned __int8 *__src, unint64_t a2, uint64_t a3, const char *a4)
{
  v5 = __src;
  v12 = a3;
  v6 = __src;
  if (a2 >= 4)
  {
    v7 = &__src[a2 - 3];
    v6 = __src;
    while (v6 < v7)
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(&v12, v6, v6, a4);
      v6 = __src;
      if (!__src)
      {
        return __src;
      }
    }
  }

  v8 = &v5[a2] - v6;
  if (v8)
  {
    memset(v11, 0, 7);
    if (v8 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    memcpy(v11, v6, v8);
    v10 = v11;
    do
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(&v12, v10, v6, v9);
      if (!__src)
      {
        break;
      }

      v6 += __src - v10;
      v10 = __src;
    }

    while (__src - v11 < v8);
  }

  return __src;
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(fmt::v10::basic_string_view<char>,fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1})::{lambda(char const*,char const*)#1}::operator()(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, const char *a4)
{
  v6 = *a2;
  v7 = byte_25A9C0490[v6 >> 3];
  v8 = &a2[((0x80FF0000 >> (*a2 >> 3)) & 1) + v7];
  v10 = a2 + 1;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = (((dword_25A9C0440[v7] & v6) << 18) | ((v9 & 0x3F) << 12) | ((v11 & 0x3F) << 6) | v12 & 0x3F) >> dword_25A9C0468[v7];
  v14 = (((v11 >> 4) & 0xC | (v9 >> 2) & 0x30 | (v12 >> 6) | ((v13 < dword_25A9C0454[v7]) << 6) | ((HIWORD(v13) > 0x10u) << 8) | (((v13 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_25A9C047C[v7];
  if (v14)
  {
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = 1;
  }

  else
  {
    v16 = ((0x80FF0000 >> (*a2 >> 3)) & 1) + v7;
    if (v16 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }
  }

  if (v15 < 0x20 || v15 == 34 || v15 == 92 || v15 == 127 || (fmt::v10::detail::is_printable(v15) & 1) == 0)
  {
    result = 0;
    v18 = *a1;
    *v18 = a3;
    *(v18 + 8) = a3 + v16;
    *(v18 + 16) = v15;
  }

  else if (v14)
  {
    return v10;
  }

  else
  {
    return v8;
  }

  return result;
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points>(unsigned __int8 *__src, unint64_t a2, void *a3, const char *a4)
{
  v5 = __src;
  v11 = a3;
  v6 = __src;
  if (a2 >= 4)
  {
    v7 = &__src[a2 - 3];
    v6 = __src;
    while (v6 < v7)
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points>(fmt::v10::basic_string_view<char>,fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points)::{lambda(char const*,char const*)#1}::operator()(&v11, v6);
      v6 = __src;
      if (!__src)
      {
        return __src;
      }
    }
  }

  v8 = &v5[a2] - v6;
  if (v8)
  {
    memset(v10, 0, 7);
    if (v8 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", a4);
    }

    memcpy(v10, v6, v8);
    v9 = v10;
    do
    {
      __src = fmt::v10::detail::for_each_codepoint<fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points>(fmt::v10::basic_string_view<char>,fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points)::{lambda(char const*,char const*)#1}::operator()(&v11, v9);
      if (!__src)
      {
        break;
      }

      v6 += __src - v9;
      v9 = __src;
    }

    while (__src - v10 < v8);
  }

  return __src;
}

unsigned __int8 *fmt::v10::detail::for_each_codepoint<fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points>(fmt::v10::basic_string_view<char>,fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points)::{lambda(char const*,char const*)#1}::operator()(void **a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = v2 >> 3;
  v4 = byte_25A9C0490[v2 >> 3];
  v6 = a2 + 1;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = (((dword_25A9C0440[v4] & v2) << 18) | ((v5 & 0x3F) << 12) | ((v7 & 0x3F) << 6) | v8 & 0x3F) >> dword_25A9C0468[v4];
  if ((((v7 >> 4) & 0xC | (v5 >> 2) & 0x30 | (v8 >> 6) | ((v9 < dword_25A9C0454[v4]) << 6) | ((HIWORD(v9) > 0x10u) << 8) | (((v9 & 0x7FFFF800) == 55296) << 7)) ^ 0x2A) >> dword_25A9C047C[v4])
  {
    v9 = -1;
  }

  else
  {
    v10 = (0x80FF0000 >> v3) & 1;
    if (v10 + v4 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", (v10 + v4));
    }

    v6 = &a2[v4 + v10];
  }

  if (fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points::operator()(a1, v9))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t fmt::v10::detail::compute_width(fmt::v10::basic_string_view<char>)::count_code_points::operator()(void **a1, unsigned int a2)
{
  if (a2 >> 8 < 0x11)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
    if (a2 >> 5 >= 0x8B && a2 - 9001 >= 2)
    {
      v3 = a2 == 12351 || (a2 - 11904) >> 4 >= 0x765;
      v4 = !v3;
      v5 = vdupq_n_s32(a2);
      v6 = vaddq_s32(v5, xmmword_25A9BF6A0);
      v5.i32[2] = a2 & 0xFFFEFFFE;
      v2 = 2;
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_25A9BF6C0, v6), vcgtq_u32(xmmword_25A9BF6B0, vaddq_s32(v5, xmmword_25A9BF690))))) & 1) == 0)
      {
        v7 = 1;
        if (a2 >> 8 == 505)
        {
          v7 = 2;
        }

        if (!v4)
        {
          v2 = v7;
        }
      }
    }
  }

  **a1 += v2;
  return 1;
}

uint64_t fmt::v10::detail::write_escaped_string<char,fmt::v10::appender>(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = a1;
  LOBYTE(v12) = 34;
  fmt::v10::detail::buffer<char>::push_back(a1, &v12);
  v7 = &a2[a3];
  do
  {
    v13 = 0;
    v14 = 0;
    v12 = v7;
    if (v7 - a2 < 0)
    {
      fmt::v10::detail::assert_fail("/Library/Caches/com.apple.xbs/Sources/PFLMLHostPlugins/Morpheus/mlx/fmt/include/fmt/core.h", 0x189, "negative value", v6);
    }

    fmt::v10::detail::for_each_codepoint<fmt::v10::detail::find_escape(char const*,char const*)::{lambda(unsigned int,fmt::v10::basic_string_view<char>)#1}>(a2, v7 - a2, &v12, v6);
    fmt::v10::detail::buffer<char>::append<char>(v5, a2, v12, v8);
    a2 = v13;
    if (!v13)
    {
      break;
    }

    v5 = fmt::v10::detail::write_escaped_cp<fmt::v10::appender,char>(v5, &v12, v9, v10);
  }

  while (a2 != v7);
  LOBYTE(v12) = 34;
  fmt::v10::detail::buffer<char>::push_back(v5, &v12);
  return v5;
}

uint64_t *mlx::core::mutable_default_device(mlx::core *this)
{
  {
    if (v2)
    {
      mlx::core::mutable_default_device(void)::default_device = mlx::core::metal::is_available(v2);
    }
  }

  return &mlx::core::mutable_default_device(void)::default_device;
}

uint64_t *mlx::core::set_default_device(mlx::core::metal *a1)
{
  is_available = mlx::core::metal::is_available(a1);
  if ((is_available & 1) == 0 && *a1 == 1 && *(a1 + 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[set_default_device] Cannot set gpu device without gpu backend.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  result = mlx::core::mutable_default_device(is_available);
  mlx::core::mutable_default_device(void)::default_device = *a1;
  return result;
}

BOOL mlx::core::is_unary(void *a1)
{
  {
    return 1;
  }

  v3 = *(*a1 - 8);
}

BOOL mlx::core::is_binary(void *a1)
{
  {
    return 1;
  }

  v3 = *(*a1 - 8);
}

BOOL mlx::core::is_noop(void *a1)
{
  {
    return 1;
  }

  v3 = *(*a1 - 8);
}

BOOL mlx::core::is_reduction(void *a1)
{
  {
    return 1;
  }

  v3 = *(*a1 - 8);
}

BOOL mlx::core::is_fusable(void *a1)
{
  {
    return 1;
  }

  v3 = *(*a1 - 8);
}

uint64_t mlx::core::Compiled::Compiled(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  *(a1 + 16) = a3;
  *a1 = &unk_286BF6828;
  *(a1 + 8) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = *a4;
  *(a1 + 40) = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = *a5;
  *(a1 + 64) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *a6;
  *(a1 + 88) = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 96, a7);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

{
  return mlx::core::Compiled::Compiled(a1, a2, a3, a4, a5, a6, a7);
}

void mlx::core::Compiled::vjp()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Compiled] Cannot vjp primitive.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Compiled::jvp()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Compiled] Cannot jvp primitive.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void mlx::core::Compiled::vmap()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "[Compiled] Cannot vmap primitive.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t mlx::core::Compiled::is_equivalent(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  if (v3 - v2 != v5 - v4)
  {
    return 0;
  }

  if (v2 == v3 || v4 == v5)
  {
    return v2 == v3 && v4 == v5;
  }

  while (1)
  {
    v9 = *(*v2 + 64);
    v10 = *(*v4 + 64);
    result = std::type_info::operator==[abi:ne200100](*(*v9 - 8), *(*v10 - 8));
    if (!result)
    {
      break;
    }

    result = (*(*v9 + 48))(v9, v10);
    if (!result)
    {
      break;
    }

    v2 += 16;
    v4 += 16;
    if (v2 == v3 || v4 == v5)
    {
      return v2 == v3 && v4 == v5;
    }
  }

  return result;
}

void *mlx::core::Compiled::print(uint64_t a1, void *a2)
{
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Compiled", 8);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  while (v6 != v5)
  {
    v7 = *v6;
    v6 += 2;
    result = (*(**(v7 + 64) + 40))(*(v7 + 64), a2);
  }

  return result;
}

void mlx::core::Compiled::output_shapes(uint64_t a1@<X0>, int ****a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  if (*a2 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6;
      v6 += 2;
      v10 = v9[1] - *v9;
      if (v8 <= v10)
      {
        v8 = v10;
      }
    }

    while (v6 != v7);
  }

  std::vector<int>::vector[abi:ne200100](__p, v8);
  v11 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    v13 = __p[0] + 4 * v8;
    do
    {
      v14 = **v11;
      v15 = (*v11)[1] - v14;
      if (v8 - (v15 >> 2) < v8)
      {
        v16 = -(v15 >> 2);
        do
        {
          v17 = *&v13[4 * v16];
          v19 = *v14++;
          v18 = v19;
          if (v17 <= v19)
          {
            v17 = v18;
          }

          *&v13[4 * v16] = v17;
        }

        while (!__CFADD__(v16++, 1));
      }

      v11 += 2;
    }

    while (v11 != v12);
  }

  std::vector<std::vector<int>>::vector[abi:ne200100](a3, (*(a1 + 56) - *(a1 + 48)) >> 4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_25A349B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *mlx::core::detail::compile_mode(mlx::core::detail *this)
{
  if ((atomic_load_explicit(&qword_27FA05E30, memory_order_acquire) & 1) == 0)
  {
    mlx::core::detail::compile_mode();
  }

  return &_MergedGlobals_1;
}

uint64_t *mlx::core::detail::merge_one(uint64_t *a1, unint64_t *a2, void *a3)
{
  v12 = *a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(a3, &v12);
  if (result)
  {
    v6 = result;
    v11 = *a1;
    v12 = &v11;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a3, &v11);
    v8 = v6[3];
    v9 = v6[4];
    if (v8 != v9)
    {
      v10 = v7;
      do
      {
        mlx::core::array::operator=((*(*v8 + 176) + 16 * v8[4]), a1);
        std::vector<std::pair<mlx::core::array,int>>::push_back[abi:ne200100]((v10 + 3), v8);
        v8 += 6;
      }

      while (v8 != v9);
    }

    return std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::erase(a3, v6);
  }

  return result;
}

uint64_t std::vector<std::pair<mlx::core::array,int>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<mlx::core::array,int>>::__emplace_back_slow_path<std::pair<mlx::core::array,int> const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    *(v3 + 8) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::pair<mlx::core::array,int>>::__emplace_back_slow_path<std::pair<mlx::core::array,int>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void mlx::core::detail::merge(mlx::core::array *a1, mlx::core::array *this, void *a3)
{
  mlx::core::array::outputs(this, &v9);
  mlx::core::array::outputs(a1, v8);
  v5 = v9;
  if (v10 != v9)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      mlx::core::detail::merge_one(&v8[0][v6], (v5 + v6 * 8), a3);
      ++v7;
      v5 = v9;
      v6 += 2;
    }

    while (v7 < (v10 - v9) >> 4);
  }

  v11 = v8;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v11);
  v8[0] = &v9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v8);
}

void sub_25A349D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *mlx::core::detail::compiler_cache(mlx::core::detail *this)
{
  {
    mlx::core::detail::CompilerCache::CompilerCache(&mlx::core::detail::compiler_cache(void)::compiler_cache_);
    __cxa_atexit(mlx::core::detail::CompilerCache::~CompilerCache, &mlx::core::detail::compiler_cache(void)::compiler_cache_, &dword_25A232000);
  }

  return &mlx::core::detail::compiler_cache(void)::compiler_cache_;
}

void mlx::core::detail::compile_trace(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  mlx::core::detail::InTracing::InTracing(&v24, a3, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v7 = *a2;
  if (a2[1] != *a2)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + v8);
      __p = 0;
      v19 = 0;
      v20 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *v10, v10[1], (v10[1] - *v10) >> 2);
      v11 = *(*(*a2 + v8) + 56);
      v16 = 0;
      v17 = 0;
      memset(v15, 0, sizeof(v15));
      mlx::core::array::array(&v13, &__p, v11 & 0xFFFFFFFFFFLL, &v16, v15);
      v25 = v15;
      std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v25);
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      *(v13 + 128) = 1;
      std::vector<mlx::core::array>::push_back[abi:ne200100](&v21, &v13);
      mlx::core::array::~array(&v13);
      ++v9;
      v7 = *a2;
      v8 += 16;
    }

    while (v9 < (a2[1] - *a2) >> 4);
  }

  v12 = *(a1 + 24);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(&v13);
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a4, v21, v22, (v22 - v21) >> 4);
  *(a4 + 24) = v13;
  *(a4 + 40) = v14;
  v14 = 0;
  v13 = 0uLL;
  v25 = &v13;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v25);
  *&v13 = &v21;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v13);
  mlx::core::detail::InTracing::~InTracing(&v24);
}

void sub_25A349FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  *(v20 - 72) = &a9;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  a9 = &a20;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a9);
  mlx::core::detail::InTracing::~InTracing((v20 - 73));
  _Unwind_Resume(a1);
}

void mlx::core::detail::compile_dfs(uint64_t *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  v10 = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      *&v8[0] = *(v3 + v6);
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v15, v8);
      *&v8[0] = *(*a3 + v6);
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v13, v8);
      ++v7;
      v3 = *a1;
      v6 += 16;
    }

    while (v7 < (a1[1] - *a1) >> 4);
  }

  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  operator new();
}

void sub_25A34A274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::~__hash_table(&a15);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a21);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a27);
  a27 = (v27 - 160);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a27);
  std::__function::__value_func<void ()(mlx::core::array const&)>::~__value_func[abi:ne200100](v27 - 136);
  _Unwind_Resume(a1);
}

void mlx::core::detail::compile_simplify(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v53[0] = 0;
  v53[1] = 0;
  v52 = v53;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (*a1 != v8)
  {
    do
    {
      if (mlx::core::array::is_available(v7))
      {
        v9 = *v7;
        if (*(*v7 + 8) == **v7)
        {
          v10 = 0;
          v11 = *(v9 + 56);
          if (BYTE4(v11) > 3u)
          {
            if (BYTE4(v11) == 4)
            {
              v10 = **(v9 + 152);
            }

            else if (BYTE4(v11) == 8)
            {
              v10 = **(v9 + 152);
            }
          }

          else if (BYTE4(v11) == 1)
          {
            v10 = **(v9 + 152);
          }

          else if (BYTE4(v11) == 2)
          {
            v10 = **(v9 + 152);
          }

          *&v47 = v10;
          DWORD2(v47) = v11;
          *&v48 = v9;
          v12 = *(v7 + 1);
          *(&v48 + 1) = v12;
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          }

          std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__emplace_unique_key_args<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::pair<std::pair<unsigned long long,mlx::core::Dtype::Val> const,mlx::core::array>>(&v52, &v47);
          mlx::core::array::~array(&v48);
        }
      }

      v7 = (v7 + 16);
    }

    while (v7 != v8);
    v7 = *a1;
    v8 = *(a1 + 8);
  }

  v51 = 0;
  memset(v50, 0, 24);
  while (v7 != v8)
  {
    if (!mlx::core::array::is_available(v7))
    {
      goto LABEL_22;
    }

    v13 = *v7;
    if (*(*v7 + 8) != **v7)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v15 = *(v13 + 56);
    if (BYTE4(v15) > 3u)
    {
      if (BYTE4(v15) == 4)
      {
        v14 = **(v13 + 152);
      }

      else if (BYTE4(v15) == 8)
      {
        v14 = **(v13 + 152);
      }
    }

    else if (BYTE4(v15) == 1)
    {
      v14 = **(v13 + 152);
    }

    else if (BYTE4(v15) == 2)
    {
      v14 = **(v13 + 152);
    }

    *&v47 = v14;
    DWORD2(v47) = v15;
    v16 = std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::find<std::pair<unsigned long long,mlx::core::Dtype::Val>>(&v52, &v47);
    v18 = *(v16 + 48);
    v17 = (v16 + 48);
    if (v18 != *v7)
    {
      mlx::core::detail::merge(v17, v7, a2);
    }

    else
    {
LABEL_22:
      std::vector<mlx::core::array>::push_back[abi:ne200100](v50, v7);
    }

    v7 = (v7 + 16);
  }

  std::vector<mlx::core::array>::__vdeallocate(a1);
  v19 = *&v50[0];
  *a1 = *&v50[0];
  v20 = *(&v50[0] + 1);
  *(a1 + 8) = *(v50 + 8);
  memset(v50, 0, 24);
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  v21 = *a3;
  v22 = *(a3 + 8);
  if (*a3 == v22)
  {
    v24 = v20;
  }

  else
  {
    do
    {
      *&v44 = *v21;
      *(&v44 + 1) = v44;
      v23 = v21[1];
      *&v45 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(&v47, &v44);
      mlx::core::array::~array((&v44 + 8));
      v21 += 2;
    }

    while (v21 != v22);
    v19 = *a1;
    v24 = *(a1 + 8);
  }

  while (v19 != v24)
  {
    v25 = *(*v19 + 64);
    if (v25 && mlx::core::is_noop(v25))
    {
      mlx::core::detail::merge_one(*(*v19 + 176), v19, a2);
      *&v44 = *v19;
      v26 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(&v47, &v44);
      if (v26)
      {
        mlx::core::array::operator=(v26 + 3, *(*v19 + 176));
      }
    }

    else
    {
      std::vector<mlx::core::array>::push_back[abi:ne200100](v50, v19);
    }

    v19 += 2;
  }

  std::vector<mlx::core::array>::__vdeallocate(a1);
  *a1 = v50[0];
  *(a1 + 16) = *&v50[1];
  memset(v50, 0, 24);
  v28 = *a3;
  v27 = *(a3 + 8);
  while (v28 != v27)
  {
    *&v44 = *v28;
    v29 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(&v47, &v44);
    if (!v29)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    mlx::core::array::operator=(v28, v29 + 3);
    v28 += 2;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(&v47);
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  v30 = *a1;
  if (*(a1 + 8) != *a1)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      *&v44 = *(v30 + 2 * v31);
      DWORD2(v44) = v32;
      std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,int>>(&v47, &v44);
      v30 = *a1;
      v31 = ++v32;
    }

    while (v32 < ((*(a1 + 8) - *a1) >> 4));
  }

  v44 = 0u;
  v45 = 0u;
  v46 = 1065353216;
  v33 = *a3;
  v34 = *(a3 + 8);
  while (v33 != v34)
  {
    v43[0] = *v33;
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(&v44, v43);
    v33 += 2;
  }

  if (a4 >= 1)
  {
    v35 = 0;
    v37 = *a1;
    v36 = *(a1 + 8);
    do
    {
      while (v37 != v36)
      {
        v43[0] = a2;
        v43[1] = &v47;
        v43[2] = &v51;
        v43[3] = &v44;
        v38 = mlx::core::detail::compile_simplify(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> &,int)::$_0::operator()<mlx::core::array>(v43, v37);
        v40 = *(*v37 + 25);
        v39 = *(*v37 + 26);
        while (v40 != v39)
        {
          v38 &= mlx::core::detail::compile_simplify(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> &,int)::$_0::operator()<mlx::core::array>(v43, v40);
          v40 += 2;
        }

        if ((v38 & 1) == 0)
        {
          std::vector<mlx::core::array>::push_back[abi:ne200100](v50, v37);
        }

        v37 += 2;
      }

      std::vector<mlx::core::array>::__vdeallocate(a1);
      v37 = *&v50[0];
      *a1 = *&v50[0];
      v41 = *(&v50[0] + 1);
      *(a1 + 8) = *(v50 + 8);
      memset(v50, 0, 24);
      ++v35;
      v36 = v41;
    }

    while (v35 != a4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v44);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v47);
  *&v47 = v50;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v47);
  std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::destroy(&v52, v53[0]);
}

void sub_25A34A7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a21 = &a27;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::destroy(v27 - 120, *(v27 - 112));
  _Unwind_Resume(a1);
}

BOOL mlx::core::detail::compile_simplify(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> &,int)::$_0::operator()<mlx::core::array>(void **a1, void **a2)
{
  v3 = a1;
  v4 = *a1;
  __p[0] = *a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v4, __p);
  if (v5)
  {
    v6 = v5;
    v8 = v5[3];
    v7 = v5[4];
    LOBYTE(v48) = 0;
    std::vector<BOOL>::vector(__p, 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3));
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    if (v7 != v8)
    {
      v10 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
      }

      v41 = v11;
      v42 = 1;
      v44 = v6;
      while (1)
      {
        v43 = v10 + 1;
        if (((*(__p[0] + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10) & 1) == 0 && v9 > v43)
        {
          break;
        }

LABEL_35:
        ++v42;
        ++v10;
        if (v43 == v41)
        {
          goto LABEL_36;
        }
      }

      v12 = v42;
      while (1)
      {
        if (((*(__p[0] + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          v13 = v9;
          v14 = v3[1];
          v46 = *(v6[3] + 24 * v12);
          v48 = &v46;
          v15 = *(std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v14, &v46) + 6);
          v16 = v3;
          v17 = v3[1];
          v45 = *(v6[3] + 24 * v10);
          v48 = &v45;
          v18 = *(std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v17, &v45) + 6);
          v19 = v15 >= v18;
          if (v15 >= v18)
          {
            v20 = v10;
          }

          else
          {
            v20 = v12;
          }

          if (v19)
          {
            v21 = v12;
          }

          else
          {
            v21 = v10;
          }

          v22 = v6[3];
          v23 = (v22 + 24 * v21);
          v24 = (v22 + 24 * v20);
          if (*v23 == *v24)
          {
            goto LABEL_33;
          }

          v25 = *(*v23 + 64);
          if (!v25)
          {
            goto LABEL_33;
          }

          v26 = *(*v24 + 64);
          if (!v26 || v25 == v26)
          {
            goto LABEL_33;
          }

          if (!std::type_info::operator==[abi:ne200100](*(*v25 - 8), *(*v26 - 8)))
          {
            goto LABEL_33;
          }

          v28 = *(*v23 + 176);
          v29 = *(*v23 + 184);
          v30 = *(*v24 + 176);
          if (v29 - v28 != *(*v24 + 184) - v30)
          {
            goto LABEL_33;
          }

          if (v29 != v28)
          {
            v31 = (v29 - v28) >> 4;
            if (v31 <= 1)
            {
              v31 = 1;
            }

            while (*v28 == *v30)
            {
              v30 += 2;
              v28 += 16;
              if (!--v31)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_33;
          }

LABEL_30:
          if (!(*(*v25 + 48))(v25, v26))
          {
            goto LABEL_33;
          }

          v3 = v16;
          v32 = v16[3];
          v48 = *v23;
          v33 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v32, &v48);
          v6 = v44;
          v9 = v13;
          if (!v33)
          {
            mlx::core::detail::merge(v24, v23, *v16);
            *(__p[0] + ((v21 >> 3) & 0x1FFFFFF8)) |= 1 << v21;
LABEL_33:
            v3 = v16;
            v6 = v44;
            v9 = v13;
          }
        }

        if (v9 <= ++v12)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_36:
    v34 = (v9 - 1);
    if (v9 - 1 >= 0)
    {
      do
      {
        if ((*(__p[0] + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v34))
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *>(&v48, (v6[3] + 24 * v34 + 24), v6[4], v6[3] + 24 * v34);
          v36 = v35;
            ;
          }

          v6[4] = v36;
        }
      }

      while (v34-- > 0);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  else
  {
    v40 = v3[3];
    __p[0] = *a2;
    return std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v40, __p) == 0;
  }
}

void sub_25A34AC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mlx::core::detail::compile_fuse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  v5 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    do
    {
      *&v33 = *v5;
      *(&v33 + 1) = v33;
      v7 = v5[1];
      *&v34 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(v36, &v33);
      mlx::core::array::~array((&v33 + 8));
      v5 += 2;
    }

    while (v5 != v6);
  }

  v33 = 0u;
  v34 = 0u;
  v35 = 1065353216;
  v8 = *a3;
  v9 = *(a3 + 8);
  if (*a3 != v9)
  {
    do
    {
      *&v29[0] = *v8;
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(&v33, v29);
      v8 += 2;
    }

    while (v8 != v9);
  }

  v31 = 0uLL;
  v32 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  v10 = (*(a1 + 8) - *a1) >> 4;
  v11 = (v10 - 1);
  if (v10 - 1 >= 0)
  {
    do
    {
      *&v27[0] = *(*a1 + 16 * v11);
      if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v29, v27))
      {
        v38 = 0;
        memset(v27, 0, sizeof(v27));
        v28 = 1065353216;
        operator new();
      }

      v14 = v11-- <= 0;
    }

    while (!v14);
    v12 = v31;
    v13 = *(&v31 + 1) - 16;
    v14 = v31 != *(&v31 + 1) && v13 > v31;
    if (v14)
    {
      do
      {
        v15 = *v12;
        v16 = v12[1];
        *v12 = 0;
        v12[1] = 0;
        v17 = *v13;
        *v13 = 0;
        *(v13 + 8) = 0;
        v18 = v12[1];
        *v12 = v17;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        v27[0] = 0uLL;
        v19 = *(v13 + 8);
        *v13 = v15;
        *(v13 + 8) = v16;
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        mlx::core::array::~array(v27);
        v12 += 2;
        v13 -= 16;
      }

      while (v12 < v13);
    }
  }

  std::vector<mlx::core::array>::__vdeallocate(a1);
  *a1 = v31;
  *(a1 + 16) = v32;
  v31 = 0uLL;
  v32 = 0;
  v21 = *a4;
  v20 = *(a4 + 8);
  while (v21 != v20)
  {
    *&v27[0] = *v21;
    v22 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v36, v27);
    if (!v22)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    mlx::core::array::operator=(v21, v22 + 3);
    v21 += 2;
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v29);
  *&v29[0] = &v31;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v29);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v33);
  result = std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(v36);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A34B5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  a13 = &a19;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v67 - 256);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  *(v67 - 256) = &a29;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100]((v67 - 256));
  *(v67 - 256) = &a32;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v67 - 256));
  std::__function::__value_func<void ()(mlx::core::array const&)>::~__value_func[abi:ne200100](v67 - 208);
  v69 = std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v67 - 176);
  *(v67 - 176) = &a35;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v69);
  *(v67 - 176) = &a38;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v67 - 176));
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a41);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a47);
  std::__function::__value_func<void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::~__value_func[abi:ne200100](v67 - 128);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a53);
  a53 = &a58;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&a53);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a61);
  std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(&a67);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::operator()(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t std::vector<std::pair<mlx::core::array,int>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        mlx::core::array::~array((v7 - 24));
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

BOOL std::operator==[abi:ne200100]<int,std::allocator<int>>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t mlx::core::detail::compile_replace@<X0>(mlx::core::array **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  v9 = *a4;
  if (a4[1] != *a4)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      *&v58[0] = *(*a2 + v12);
      v14 = *(v9 + v12);
      *(v58 + 8) = v14;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(v59, v58);
      mlx::core::array::~array((v58 + 8));
      ++v13;
      v9 = *a4;
      v12 += 16;
    }

    while (v13 < (a4[1] - *a4) >> 4);
  }

  v15 = *a1;
  v16 = a1[1];
  if (*a1 != v16)
  {
    do
    {
      v17 = *v15;
      v18 = *(*v15 + 64);
      if (v18)
      {
        {
          memset(v58, 0, 24);
          v20 = *v15;
          v21 = *(*v15 + 176);
          v22 = *(*v15 + 184);
          if (v21 != v22)
          {
            do
            {
              *&v56 = *v21;
              v23 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v59, &v56);
              if (!v23)
              {
                std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
              }

              std::vector<mlx::core::array>::push_back[abi:ne200100](v58, (v23 + 3));
              v21 += 2;
            }

            while (v21 != v22);
            v20 = *v15;
          }

          if (*(v20 + 200) == *(v20 + 208))
          {
            if (a5)
            {
              (*(**(v20 + 64) + 56))(v55);
              v20 = v55[0];
            }

            v56 = 0uLL;
            v57 = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v56, *v20, *(v20 + 8), (*(v20 + 8) - *v20) >> 2);
            if (a5)
            {
              v48 = v55;
              std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v48);
            }

            *__p = v56;
            __p[2] = v57;
            v56 = 0uLL;
            v57 = 0;
            v31 = *(*v15 + 56);
            v32 = *(*v15 + 72);
            v52 = *(*v15 + 64);
            v53 = v32;
            if (v32)
            {
              atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v50 = v58[0];
            v51 = *&v58[1];
            memset(v58, 0, 24);
            mlx::core::array::array(&v46, __p, v31 & 0xFFFFFFFFFFLL, &v52, &v50);
            v48 = &v50;
            std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v48);
            if (v53)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v53);
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            v48 = *v15;
            v49 = v46;
            v46 = 0uLL;
            std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(v59, &v48);
            mlx::core::array::~array(&v49);
            mlx::core::array::~array(&v46);
          }

          else
          {
            v56 = 0uLL;
            v57 = 0;
            mlx::core::array::outputs(v15, &v48);
            v24 = v48;
            v25 = v49;
            while (v24 != v25)
            {
              v26 = *(*v24 + 7);
              LODWORD(v46) = v26;
              BYTE4(v46) = BYTE4(v26);
              std::vector<mlx::core::Dtype>::push_back[abi:ne200100](&v56, &v46);
              v24 += 2;
            }

            v46 = 0uLL;
            v47 = 0;
            if (a5)
            {
              (*(**(*v15 + 64) + 56))(&v44);
              std::vector<std::vector<int>>::__vdeallocate(&v46);
              v46 = v44;
              v47 = v45;
              v45 = 0;
              v44 = 0uLL;
              v40 = &v44;
              std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v40);
            }

            else
            {
              v33 = v48;
              v34 = v49;
              while (v33 != v34)
              {
                std::vector<std::vector<int>>::push_back[abi:ne200100](&v46, *v33);
                v33 += 2;
              }
            }

            v42 = v46;
            v43 = v47;
            v46 = 0uLL;
            v47 = 0;
            mlx::core::array::make_arrays(&v42, &v56, *v15 + 64, v58, &v44);
            v40 = &v42;
            std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v40);
            v27 = v48;
            if (v49 != v48)
            {
              v28 = 0;
              v29 = 0;
              do
              {
                v30 = (v44 + v28 * 8);
                v40 = v27[v28];
                v41 = *(v44 + v28 * 8);
                *v30 = 0;
                v30[1] = 0;
                std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(v59, &v40);
                mlx::core::array::~array(&v41);
                ++v29;
                v27 = v48;
                v28 += 2;
              }

              while (v29 < (v49 - v48) >> 4);
            }

            v40 = &v44;
            std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v40);
            *&v44 = &v46;
            std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v44);
            *&v46 = &v48;
            std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v46);
          }

          if (v56)
          {
            *(&v56 + 1) = v56;
            operator delete(v56);
          }

          *&v56 = v58;
          std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v56);
          goto LABEL_41;
        }

        v17 = *v15;
      }

      *&v58[0] = v17;
      *(&v58[0] + 1) = v17;
      v19 = *(v15 + 1);
      *&v58[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,mlx::core::array>>(v59, v58);
      mlx::core::array::~array((v58 + 8));
LABEL_41:
      v15 = (v15 + 16);
    }

    while (v15 != v16);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v35 = *a3;
  v36 = *(a3 + 8);
  while (v35 != v36)
  {
    *&v58[0] = *v35;
    v37 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v59, v58);
    if (!v37)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    std::vector<mlx::core::array>::push_back[abi:ne200100](a6, (v37 + 3));
    v35 += 2;
  }

  return std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(v59);
}

void sub_25A34BE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36)
{
  *(v36 - 208) = v36 - 176;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v36 - 208));
  std::__hash_table<std::__hash_value_type<unsigned long,mlx::core::array>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,mlx::core::array>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,mlx::core::array>>>::~__hash_table(v36 - 144);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::detail::skip_compile(mlx::core::detail *this)
{
  v1 = mlx::core::detail::compile_mode(this);
  if (!_MergedGlobals_1)
  {
    return 1;
  }

  mlx::core::default_device(v1);
  return mlx::core::detail::compile_available_for_device() ^ 1;
}

uint64_t mlx::core::detail::compile@<X0>(mlx::core::detail *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!mlx::core::detail::skip_compile(a1))
  {
    if (*(a1 + 3))
    {
      std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v13, a1);
      v13[4] = a2;
      v14 = a3;
      v15 = *a4;
      v16 = *(a4 + 2);
      *a4 = 0;
      *(a4 + 1) = 0;
      *(a4 + 2) = 0;
      *(a5 + 24) = 0;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[compile] Cannot compile a function without a target.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  v10 = *MEMORY[0x277D85DE8];

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a5, a1);
}

uint64_t mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
}

uint64_t *mlx::core::detail::compile_erase(mlx::core::detail *this)
{
  mlx::core::detail::compiler_cache(this);
  v3 = this;
  return std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__erase_unique<unsigned long>(mlx::core::detail::compiler_cache(void)::compiler_cache_, &v3);
}

void mlx::core::detail::compile_clear_cache(mlx::core::detail *this)
{
  mlx::core::detail::compiler_cache(this);

  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::clear(mlx::core::detail::compiler_cache(void)::compiler_cache_);
}

uint64_t mlx::core::compile@<X0>(mlx::core::detail *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  if (mlx::core::detail::skip_compile(a1))
  {
    v6 = *MEMORY[0x277D85DE8];

    return std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](a3, a1);
  }

  else
  {
    v8 = *(a1 + 3);
    {
      operator new();
    }

    std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100](v13, a1);
    memset(__p, 0, sizeof(__p));
    mlx::core::detail::compile(v13, v10, a2, __p, a3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    result = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v13);
    v11 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void sub_25A34C428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

uint64_t mlx::core::compile@<X0>(mlx::core::detail *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  result = mlx::core::detail::skip_compile(a1);
  if (result)
  {
    a3[3] = 0;
    if (a1)
    {
      *a3 = &unk_286BF1E58;
      a3[1] = a1;
      a3[3] = a3;
    }
  }

  else
  {
    v10 = 0;
    if (a1)
    {
      v9[0] = &unk_286BF1E58;
      v9[1] = a1;
      v10 = v9;
    }

    memset(__p, 0, sizeof(__p));
    mlx::core::detail::compile(v9, a1, a2, __p, a3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    result = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A34C5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

int *mlx::core::disable_compile(mlx::core *this)
{
  result = mlx::core::detail::compile_mode(this);
  _MergedGlobals_1 = 0;
  return result;
}

int *mlx::core::enable_compile(mlx::core *this)
{
  result = mlx::core::detail::compile_mode(this);
  _MergedGlobals_1 = 3;
  return result;
}

int *mlx::core::set_compile_mode(mlx::core::detail *a1)
{
  v1 = a1;
  result = mlx::core::detail::compile_mode(a1);
  _MergedGlobals_1 = v1;
  return result;
}

uint64_t std::vector<std::pair<mlx::core::array,int>>::__emplace_back_slow_path<std::pair<mlx::core::array,int> const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 8);
  *v7 = *a2;
  *(v7 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(24 * v2 + 0x10) = *(a2 + 16);
  *&v17 = v7 + 24;
  v9 = *(a1 + 8);
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>,std::pair<mlx::core::array,int>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<mlx::core::array,int>>::~__split_buffer(&v15);
  return v14;
}

void sub_25A34C764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<mlx::core::array,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>,std::pair<mlx::core::array,int>*>(uint64_t a1, mlx::core::array *a2, mlx::core::array *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      *(v6 + 1) = 0;
      *(a4 + 16) = *(v6 + 4);
      v6 = (v6 + 24);
      a4 += 24;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      mlx::core::array::~array(v5);
      v5 = (v7 + 24);
    }
  }
}

uint64_t std::__split_buffer<std::pair<mlx::core::array,int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    mlx::core::array::~array((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

mlx::core::detail::CompilerCache *mlx::core::detail::CompilerCache::CompilerCache(mlx::core::detail::CompilerCache *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  mlx::core::allocator::allocator(this);
  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::destroy[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,void,0>(a1, i))
  {
    i -= 120;
  }

  *(a1 + 8) = a2;
}

void std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::destroy[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,void,0>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  if (v3)
  {
    *(a2 + 104) = v3;
    operator delete(v3);
  }

  v4 = (a2 + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 40);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a2 + 16);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void mlx::core::detail::CompilerCache::CacheEntry::~CacheEntry(mlx::core::detail::CompilerCache::CacheEntry *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = (this + 64);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 40);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 16);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void *std::pair<std::vector<mlx::core::array>,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>::pair[abi:ne200100]<std::vector<mlx::core::array>&,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>&,0>(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
  std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>::unordered_map((a1 + 3), a3);
  return a1;
}

void sub_25A34CB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<std::pair<mlx::core::array,int>>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,std::vector<std::pair<mlx::core::array,int>>> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__construct_node_hash<std::pair<unsigned long const,std::vector<std::pair<mlx::core::array,int>>> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_25A34CE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25A34CEF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<mlx::core::array,int>>::__init_with_size[abi:ne200100]<std::pair<mlx::core::array,int>*,std::pair<mlx::core::array,int>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<mlx::core::array,int>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<mlx::core::array,int>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<std::pair<mlx::core::array,int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *,std::pair<mlx::core::array,int> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      *(a4 + 16) = *(v5 + 4);
      v5 = (v5 + 24);
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::vector<std::pair<mlx::core::array,int>>::__emplace_back_slow_path<std::pair<mlx::core::array,int>>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v7 + 16) = *(a2 + 16);
  *&v16 = 24 * v2 + 24;
  v8 = *(a1 + 8);
  v9 = 24 * v2 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<mlx::core::array,int>>,std::pair<mlx::core::array,int>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::pair<mlx::core::array,int>>::~__split_buffer(&v14);
  return v13;
}

void sub_25A34D1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<mlx::core::array,int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<int>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__erase_unique<unsigned long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 3;
      std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__destroy_vector::operator()[abi:ne200100](&v7);
    }

    operator delete(v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 3;
    std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    if (v6 == 1)
    {
      v7 = v3 + 3;
      std::vector<std::pair<mlx::core::array,int>>::__destroy_vector::operator()[abi:ne200100](&v7);
    }

    operator delete(v3);
  }

  return v2;
}

__n128 std::__function::__func<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1AE8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::operator()(uint64_t a1, __int128 *a2)
{
  v28 = *a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(*(a1 + 8), &v28))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[compile] Attempting to compile a function with uncaptured inputs is not allowed.");
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(*(a1 + 16), &v28);
  if (!result)
  {
    v5 = *(*a2 + 176);
    if (*(*a2 + 184) != v5)
    {
      v6 = 0;
      do
      {
        v7 = (v5 + 16 * v6);
        v8 = *(a1 + 24);
        v27 = *v7;
        v24 = &v27;
        v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v8, &v27);
        v10 = *(a2 + 1);
        v24 = *a2;
        v25 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = v6;
        std::vector<std::pair<mlx::core::array,int>>::push_back[abi:ne200100]((v9 + 3), &v24);
        mlx::core::array::~array(&v24);
        v11 = *a2;
        v12 = *(*a2 + 200);
        v13 = *(*a2 + 208);
        if (v12 != v13)
        {
          do
          {
            v14 = *(a1 + 24);
            v27 = *v7;
            v24 = &v27;
            v15 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v14, &v27);
            v16 = v12[1];
            v24 = *v12;
            v25 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = v6;
            std::vector<std::pair<mlx::core::array,int>>::push_back[abi:ne200100]((v15 + 3), &v24);
            mlx::core::array::~array(&v24);
            v12 += 2;
          }

          while (v12 != v13);
          v11 = *a2;
        }

        v17 = *(a1 + 32);
        v24 = v11;
        if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v17, &v24))
        {
          v18 = *(*(a1 + 40) + 24);
          if (!v18)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v18 + 48))(v18, v7);
        }

        ++v6;
        v5 = *(*a2 + 176);
      }

      while (v6 < (*(*a2 + 184) - v5) >> 4);
    }

    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(*(a1 + 16), &v28);
    v19 = *(*a2 + 200);
    v20 = *(*a2 + 208);
    while (v19 != v20)
    {
      v21 = *(a1 + 16);
      v22 = *v19;
      v19 += 2;
      v24 = v22;
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v21, &v24);
    }

    return std::vector<mlx::core::array>::push_back[abi:ne200100](*(a1 + 48), a2);
  }

  return result;
}

uint64_t std::__function::__func<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0,std::allocator<mlx::core::detail::compile_dfs(std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> const&)::$_0>,void ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::destroy(a1, a2[1]);
    mlx::core::array::~array((a2 + 6));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__emplace_unique_key_args<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::pair<std::pair<unsigned long long,mlx::core::Dtype::Val> const,mlx::core::array>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__find_equal<std::pair<unsigned long long,mlx::core::Dtype::Val>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__find_equal<std::pair<unsigned long long,mlx::core::Dtype::Val>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 2);
    while (1)
    {
      v8 = v4;
      v9 = v4[4];
      if (v6 == v9)
      {
        v10 = *(v8 + 10);
        if (v7 >= v10)
        {
          v11 = v10 == v7;
          if (v10 >= v7)
          {
            v12 = 1;
          }

          else
          {
            v12 = -1;
          }

          if (v11)
          {
            v12 = 0;
          }

          if ((v12 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

LABEL_13:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v6 < v9)
        {
          goto LABEL_13;
        }

        if (v9 >= v6)
        {
          v13 = 1;
        }

        else
        {
          v13 = -1;
        }

        if ((v13 & 0x80) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        result = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v8 = result;
LABEL_22:
  *a2 = v8;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      mlx::core::array::~array((v2 + 48));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::find<std::pair<unsigned long long,mlx::core::Dtype::Val>>(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  result = std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__lower_bound<std::pair<unsigned long long,mlx::core::Dtype::Val>>(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 32);
  if (*a2 >= v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (*a2 == v5)
  {
    v7 = *(a2 + 8);
    v8 = *(result + 40);
    v9 = v7 == v8;
    v10 = v7 < v8;
    v6 = -1;
    if (!v10)
    {
      v6 = 1;
    }

    if (v9)
    {
      v6 = 0;
    }
  }

  if (v6 < 0)
  {
    return v3;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::__map_value_compare<std::pair<unsigned long long,mlx::core::Dtype::Val>,std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>,std::less<std::pair<unsigned long long,mlx::core::Dtype::Val>>,true>,std::allocator<std::__value_type<std::pair<unsigned long long,mlx::core::Dtype::Val>,mlx::core::array>>>::__lower_bound<std::pair<unsigned long long,mlx::core::Dtype::Val>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    do
    {
      v7 = *(a3 + 32);
      v8 = v7 == v5;
      if (v7 >= v5)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a3 + 40);
        v11 = v10 == v6;
        v9 = v10 >= v6 ? 1 : -1;
        if (v11)
        {
          v9 = 0;
        }
      }

      v12 = v9 & 0x80;
      v8 = v12 == 0;
      v13 = v12 >> 4;
      if (v8)
      {
        result = a3;
      }

      a3 = *(a3 + v13);
    }

    while (a3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0>,void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1B68;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0>,void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::operator()(void *a1, uint64_t *a2, int *a3, _DWORD *a4, uint64_t a5)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v10 = a1[1];
  v28[0] = *a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v10, v28);
  if (!result)
  {
    if (v9 <= 10 && (v12 = *(*a2 + 64)) != 0 && *(v12 + 8) == *a4 && mlx::core::is_fusable(v12) && ((v13 = a1[2], v28[0] = *a2, !std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v13, v28)) || std::operator==[abi:ne200100]<int,std::allocator<int>>(*a2, a5)))
    {
      if (v9 >= 1)
      {
        v14 = a1[4];
        v28[0] = *a2;
        v15 = std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>::at(v14, v28);
        v16 = *v15;
        v17 = v15[1];
        while (v16 != v17)
        {
          v18 = a1[1];
          v28[0] = *v16;
          if (!std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v18, v28))
          {
            goto LABEL_13;
          }

          v16 += 3;
        }
      }

      v21 = a1[2];
      v28[0] = *a2;
      v22 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v21, v28);
      v23 = a1[3];
      v28[0] = *a2;
      if (v22)
      {
        result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v23, v28);
      }

      else
      {
        result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::__erase_unique<unsigned long>(v23, v28);
      }

      if (*(a1[3] + 24) <= 0x17uLL)
      {
        v24 = a1[1];
        v28[0] = *a2;
        result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v24, v28);
        v25 = *a2;
        v26 = *(*a2 + 176);
        v27 = *(v25 + 184);
        while (v26 != v27)
        {
          result = std::function<void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::operator()(a1[5], v26, v9 + 1);
          v26 += 16;
        }
      }
    }

    else
    {
LABEL_13:
      v19 = a1[3];
      v28[0] = *a2;
      result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v19, v28);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_0>,void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>>::at(void *a1, unint64_t *a2)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(a1, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  return v2 + 3;
}

void *std::__function::__value_func<void ()(mlx::core::array const&,int,mlx::core::Stream const&,std::vector<int> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A34E238(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1>,void ()(mlx::core::array const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1BF8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1>,void ()(mlx::core::array const&)>::operator()(void *a1, __int128 *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  v15 = *a2;
  if (std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v4, &v15))
  {
    v6 = a1[4];
    v15 = *a2;
    result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v6, &v15);
    if (result)
    {
      return result;
    }

    v8 = a1[4];
    v15 = *a2;
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v8, &v15);
    v9 = *(*a2 + 176);
    v10 = *(*a2 + 184);
    v11 = 5;
    while (v9 != v10)
    {
      v12 = *(a1[5] + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v12 + 48))(v12, v9);
      v9 += 16;
    }
  }

  else
  {
    v13 = a1[2];
    v15 = *a2;
    result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(v13, &v15);
    if (result)
    {
      return result;
    }

    v14 = a1[2];
    v15 = *a2;
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v14, &v15);
    v11 = 2;
  }

  return std::vector<mlx::core::array>::push_back[abi:ne200100](v5[v11], a2);
}

uint64_t std::__function::__func<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1,std::allocator<mlx::core::detail::compile_fuse(std::vector<mlx::core::array> &,std::unordered_map<unsigned long,std::vector<std::pair<mlx::core::array,int>>> &,std::vector<mlx::core::array> const&,std::vector<mlx::core::array> &)::$_1>,void ()(mlx::core::array const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__erase_unique<unsigned long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__shared_ptr_emplace<mlx::core::Compiled>::__shared_ptr_emplace[abi:ne200100]<mlx::core::Stream const&,std::vector<mlx::core::array> &,std::vector<mlx::core::array> &,std::vector<mlx::core::array>,std::unordered_set<unsigned long>,std::allocator<mlx::core::Compiled>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_286BF1C78;
  std::construct_at[abi:ne200100]<mlx::core::Compiled,mlx::core::Stream const&,std::vector<mlx::core::array> &,std::vector<mlx::core::array> &,std::vector<mlx::core::array>,std::unordered_set<unsigned long>,mlx::core::Compiled*>((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void std::__shared_ptr_emplace<mlx::core::Compiled>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286BF1C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t std::construct_at[abi:ne200100]<mlx::core::Compiled,mlx::core::Stream const&,std::vector<mlx::core::array> &,std::vector<mlx::core::array> &,std::vector<mlx::core::array>,std::unordered_set<unsigned long>,mlx::core::Compiled*>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5, uint64_t *a6)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  memset(v17, 0, sizeof(v17));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v17, *a3, a3[1], (a3[1] - *a3) >> 4);
  memset(v16, 0, sizeof(v16));
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v16, *a4, a4[1], (a4[1] - *a4) >> 4);
  v14 = *a5;
  v15 = *(a5 + 2);
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v13, a6);
  mlx::core::Compiled::Compiled(a1, v10, v11, v17, v16, &v14, v13);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v13);
  v18 = &v14;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = v16;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  v18 = v17;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v18);
  return a1;
}

void sub_25A34E748(_Unwind_Exception *a1)
{
  *(v2 - 72) = v1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100]((v2 - 72));
  _Unwind_Resume(a1);
}

void *std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF1CC8;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF1CC8;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x25F851760);
}

void sub_25A34E8D0(_Unwind_Exception *a1)
{
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t a1, void *a2)
{
  v2 = a2;
  *a2 = &unk_286BF1CC8;
  std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__value_func[abi:ne200100]((a2 + 1), a1 + 8);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v2[7] = 0;
  v2 += 7;
  *(v2 - 8) = v5;
  *(v2 - 2) = v4;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(v2, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 3);
}

void std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *a1)
{
  mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0::~$_0(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()@<X0>(_BOOL8 is_tracer@<X0>, const void ****a2@<X1>, void *a3@<X8>)
{
  v4 = is_tracer;
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    is_tracer = mlx::core::array::is_tracer(v6);
    if (is_tracer)
    {
      v12 = *(v4 + 32);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v13 = *(*v12 + 48);

      return v13();
    }

    v6 += 2;
  }

  mlx::core::detail::compiler_cache(is_tracer);
  v8 = mlx::core::detail::CompilerCache::find(mlx::core::detail::compiler_cache(void)::compiler_cache_, *(v4 + 40), a2, *(v4 + 48), v4 + 56);
  v9 = v8;
  if (*(v8 + 88) == 1)
  {
    *(v8 + 88) = 0;
    v10 = (v8 + 96);
    if (v9 + 96 != v4 + 56)
    {
      std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v10, *(v4 + 56), *(v4 + 64), (*(v4 + 64) - *(v4 + 56)) >> 3);
    }

    mlx::core::detail::compile_trace(v4 + 8, a2, *(v4 + 48), &v14);
    std::vector<mlx::core::array>::__vdeallocate((v9 + 16));
    *(v9 + 16) = v14;
    *(v9 + 32) = v15;
    v15 = 0;
    v14 = 0uLL;
    std::vector<mlx::core::array>::__vdeallocate((v9 + 40));
    *(v9 + 40) = v16;
    *(v9 + 56) = v17;
    v17 = 0;
    v16 = 0uLL;
    *&v18[0] = &v16;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v18);
    *&v18[0] = &v14;
    std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v18);
    memset(v18, 0, sizeof(v18));
    v19 = 1065353216;
    mlx::core::detail::compile_dfs((v9 + 16), v9 + 40, a2);
  }

  return mlx::core::detail::compile_replace((v8 + 64), (v8 + 16), v8 + 40, a2, *(v4 + 48), a3);
}

void sub_25A34EC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0,std::allocator<mlx::core::detail::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,unsigned long,BOOL,std::vector<unsigned long long>)::$_0>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t mlx::core::detail::CompilerCache::find(void *a1, unint64_t a2, const void ****a3, int a4, uint64_t a5)
{
  v47 = a2;
  *v37 = &v47;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1, &v47);
  v9 = mlx::core::default_device(v8);
  v10 = mlx::core::default_stream(*v9);
  v11 = *(v8 + 3);
  v30 = v8 + 24;
  v31 = v12;
  v32 = v8;
  v13 = *(v8 + 4);
  if (v11 != v13)
  {
    v35 = *a3;
    v36 = a3[1];
    v14 = v36 - *a3;
    if ((v14 >> 4) <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = (v36 - *a3) >> 4;
    }

    __s1 = *a5;
    __n = *(a5 + 8) - *a5;
    v34 = v15;
    do
    {
      if (*v11 == v10 && *(v11 + 12) == a4)
      {
        v16 = *(v11 + 16);
        if (v14 == *(v11 + 24) - v16)
        {
          v17 = v34;
          v18 = v35;
          if (v36 == v35)
          {
LABEL_15:
            v24 = *(v11 + 96);
            if (__n == *(v11 + 104) - v24 && !memcmp(__s1, v24, __n))
            {
              return v11;
            }
          }

          else
          {
            while (1)
            {
              v19 = *v18;
              v20 = **v18;
              v21 = (*v18)[1] - v20;
              v22 = *v16;
              v23 = **v16;
              if (v21 != (*v16)[1] - v23 || (a4 & 1) == 0 && memcmp(v20, v23, v21))
              {
                break;
              }

              if (*(v19 + 14) != *(v22 + 14))
              {
                break;
              }

              v16 += 2;
              v18 += 2;
              if (!--v17)
              {
                goto LABEL_15;
              }
            }
          }
        }
      }

      v11 += 120;
    }

    while (v11 != v13);
  }

  *v37 = v10;
  *&v37[8] = v31;
  v37[12] = a4;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v43 = 1;
  v45 = 0;
  v46 = 0;
  __p = 0;
  if (v13 >= *(v32 + 5))
  {
    v26 = std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__emplace_back_slow_path<mlx::core::detail::CompilerCache::CacheEntry>(v30, v37);
    v27 = __p;
    *(v32 + 4) = v26;
    if (v27)
    {
      v45 = v27;
      operator delete(v27);
    }
  }

  else
  {
    v25 = *v37;
    *(v13 + 5) = *&v37[5];
    *v13 = v25;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v38 = 0uLL;
    *&v39 = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(&v39 + 1) = 0;
    *&v40 = 0;
    *(v13 + 64) = 0;
    *(v13 + 72) = 0;
    *(v13 + 80) = 0;
    *(&v40 + 1) = 0;
    v41 = 0uLL;
    v42 = 0;
    *(v13 + 88) = 1;
    *(v13 + 96) = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
    __p = 0;
    v45 = 0;
    v46 = 0;
    *(v32 + 4) = v13 + 120;
  }

  v48[0] = &v41;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v48);
  v48[0] = &v39 + 1;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v48);
  v48[0] = &v38;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](v48);
  return *(v32 + 4) - 120;
}

void sub_25A34EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  mlx::core::detail::CompilerCache::CacheEntry::~CacheEntry(va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::vector<mlx::core::detail::CompilerCache::CacheEntry>::__emplace_back_slow_path<mlx::core::detail::CompilerCache::CacheEntry>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x111111111111111)
  {
    v6 = 0x222222222222222;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>(a1, v6);
  }

  v13 = 0;
  v14 = 120 * v2;
  std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::construct[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,mlx::core::detail::CompilerCache::CacheEntry,void,0>(a1, 120 * v2, a2);
  v15 = 120 * v2 + 120;
  v7 = *(a1 + 8);
  v8 = 120 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<mlx::core::detail::CompilerCache::CacheEntry>::~__split_buffer(&v13);
  return v12;
}

void sub_25A34F294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<mlx::core::detail::CompilerCache::CacheEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::construct[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,mlx::core::detail::CompilerCache::CacheEntry,void,0>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  *(a2 + 5) = *(a3 + 5);
  *a2 = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 16) = *(a3 + 1);
  *(a2 + 32) = a3[4];
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = *(a3 + 5);
  *(a2 + 56) = a3[7];
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = *(a3 + 4);
  *(a2 + 80) = a3[10];
  a3[9] = 0;
  a3[10] = 0;
  a3[8] = 0;
  *(a2 + 88) = *(a3 + 88);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  result = *(a3 + 6);
  *(a2 + 96) = result;
  *(a2 + 112) = a3[14];
  a3[12] = 0;
  a3[13] = 0;
  a3[14] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x222222222222223)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::construct[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,mlx::core::detail::CompilerCache::CacheEntry,void,0>(a1, a4, v7);
      v7 += 15;
      a4 = v12 + 120;
      v12 += 120;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::destroy[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,void,0>(a1, v5);
      v5 += 120;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>,mlx::core::detail::CompilerCache::CacheEntry*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 120;
      std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::destroy[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<mlx::core::detail::CompilerCache::CacheEntry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<mlx::core::detail::CompilerCache::CacheEntry>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<mlx::core::detail::CompilerCache::CacheEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 120;
    std::allocator_traits<std::allocator<mlx::core::detail::CompilerCache::CacheEntry>>::destroy[abi:ne200100]<mlx::core::detail::CompilerCache::CacheEntry,void,0>(v5, v4 - 120);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::pair<mlx::core::array,int>>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t *mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_0::operator()<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>>(mlx::core::detail *a1)
{
  mlx::core::detail::compiler_cache(a1);
  v4 = a1;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__erase_unique<unsigned long>(mlx::core::detail::compiler_cache(void)::compiler_cache_, &v4);
  if (a1)
  {
    v3 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](a1);
    return MEMORY[0x25F851760](v3, 0x1020C40A5B76CDFLL);
  }

  return result;
}

void std::__shared_ptr_pointer<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> *,mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_0,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F851760);
}

uint64_t *std::__shared_ptr_pointer<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> *,mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_0,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>>>::__on_zero_shared(mlx::core::detail *a1)
{
  v1 = *(a1 + 3);
  mlx::core::detail::compiler_cache(a1);
  v4 = v1;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<mlx::core::detail::CompilerCache::CacheEntry>>>>::__erase_unique<unsigned long>(mlx::core::detail::compiler_cache(void)::compiler_cache_, &v4);
  if (v1)
  {
    v3 = std::__function::__value_func<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__value_func[abi:ne200100](v1);
    return MEMORY[0x25F851760](v3, 0x1020C40A5B76CDFLL);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)> *,mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_0,std::allocator<std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF1DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::~__func(void *a1)
{
  *a1 = &unk_286BF1DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF1DD8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1,std::allocator<mlx::core::compile(std::function<std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>,BOOL)::$_1>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::vector<mlx::core::array> (*)(std::vector<mlx::core::array> const&),std::allocator<std::vector<mlx::core::array> (*)(std::vector<mlx::core::array> const&)>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286BF1E58;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::vector<mlx::core::array> (*)(std::vector<mlx::core::array> const&),std::allocator<std::vector<mlx::core::array> (*)(std::vector<mlx::core::array> const&)>,std::vector<mlx::core::array> ()(std::vector<mlx::core::array> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *mlx::core::NodeNamer::get_name(mlx::core::NodeNamer *this, const mlx::core::array *a2)
{
  __p[0] = *a2;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,int>>>::find<unsigned long>(this, __p);
  if (v4)
  {
    return v4 + 3;
  }

  if (*(this + 3) != -1)
  {
    operator new();
  }

  v9 = *a2;
  std::string::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<char *>>,std::reverse_iterator<std::__wrap_iter<char *>>>(__p, 0, 0, 0, 0, 0);
  std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,unsigned long,std::string>(this, &v9);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return mlx::core::NodeNamer::get_name(this, a2);
}

void sub_25A34FCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

__n128 mlx::core::NodeNamer::set_name(void *a1, unint64_t *a2, __n128 *a3)
{
  v7[0] = *a2;
  v7[2] = v7;
  v4 = std::__hash_table<std::__hash_value_type<unsigned long,std::string>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::string>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::string>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a1, v7);
  v5 = v4;
  if (*(v4 + 47) < 0)
  {
    operator delete(v4[3]);
  }

  result = *a3;
  v5[5] = a3[1].n128_u64[0];
  *(v5 + 3) = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void mlx::core::depth_first_traversal()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v0 = 0u;
  v1 = 0u;
  v2 = 1065353216;
  operator new();
}