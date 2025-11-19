double byte_stream_new(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = platform_calloc(a1, 1uLL, 0x50uLL);
    if (v3)
    {
      *v3 = 1651733613;
      v3[1] = a1;
      *&result = 0x200000002;
      v3[2] = 0x200000002;
      *(v3 + 18) = 1836348258;
    }
  }

  return result;
}

void byte_stream_free(void *__b)
{
  if (__b && *__b == 1651733613 && *(__b + 18) == 1836348258)
  {
    v2 = __b[7];
    if (v2)
    {
      platform_free(__b[1], v2);
    }

    v3 = __b[1];
    platform_memset(v3, __b, 0, 0x50uLL);

    platform_free(v3, __b);
  }
}

uint64_t byte_stream_attach(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result && *result == 1651733613 && *(result + 72) == 1836348258)
  {
    if (a3 < 0xE8D4A51001)
    {
      *(result + 24) = 0;
      *(result + 40) = a3;
      *(result + 48) = 0;
      *(result + 32) = a2;
    }

    else
    {
      *(result + 24) = 1;
    }
  }

  return result;
}

uint64_t byte_stream_exception(uint64_t a1)
{
  if (a1 && *a1 == 1651733613 && *(a1 + 72) == 1836348258)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

_DWORD *byte_stream_set_byte_order(_DWORD *result, int a2)
{
  if (result && *result == 1651733613 && result[18] == 1836348258)
  {
    result[5] = a2;
  }

  return result;
}

uint64_t byte_stream_read_uint8(uint64_t a1)
{
  if (a1 && *a1 == 1651733613 && *(a1 + 72) == 1836348258 && (*(a1 + 24) & 1) == 0)
  {
    v1 = *(a1 + 48);
    v2 = v1 + 1;
    if ((v1 + 1) <= *(a1 + 40))
    {
      v3 = *(*(a1 + 32) + v1);
      *(a1 + 48) = v2;
      return v3;
    }

    *(a1 + 24) = 1;
  }

  return 255;
}

uint64_t byte_stream_read_uint16(uint64_t a1)
{
  if (a1)
  {
    if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
    {
      return -1;
    }

    v2 = *(a1 + 48);
    if ((v2 + 2) > *(a1 + 40))
    {
      *(a1 + 24) = 1;
      return -1;
    }

    __dst = 0;
    platform_memcpy(*(a1 + 8), &__dst, (*(a1 + 32) + v2), 2uLL);
    *(a1 + 48) += 2;
    v5 = bswap32(__dst) >> 16;
    if (*(a1 + 16) == *(a1 + 20))
    {
      return __dst;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t byte_stream_read_uint32(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 48);
  if ((v2 + 4) > *(a1 + 40))
  {
    *(a1 + 24) = 1;
    return 0xFFFFFFFFLL;
  }

  __dst = 0;
  platform_memcpy(*(a1 + 8), &__dst, (*(a1 + 32) + v2), 4uLL);
  *(a1 + 48) += 4;
  v4 = bswap32(__dst);
  if (*(a1 + 16) == *(a1 + 20))
  {
    return __dst;
  }

  else
  {
    return v4;
  }
}

unint64_t byte_stream_read_uint64(uint64_t a1)
{
  if (!a1)
  {
    return -1;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return -1;
  }

  v2 = *(a1 + 48);
  if ((v2 + 8) > *(a1 + 40))
  {
    *(a1 + 24) = 1;
    return -1;
  }

  __dst = 0;
  platform_memcpy(*(a1 + 8), &__dst, (*(a1 + 32) + v2), 8uLL);
  *(a1 + 48) += 8;
  v4 = bswap64(__dst);
  if (*(a1 + 16) == *(a1 + 20))
  {
    return __dst;
  }

  else
  {
    return v4;
  }
}

uint64_t *byte_stream_read_buffer(uint64_t *result, void *a2, size_t __n)
{
  if (result)
  {
    v3 = result;
    if (*result == 1651733613 && *(result + 18) == 1836348258 && (result[3] & 1) == 0)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      if (!__n)
      {
        return result;
      }

      v5 = result[6];
      if (v5 + __n <= result[5])
      {
        result = platform_memcpy(result[1], a2, (result[4] + v5), __n);
        v3[6] += __n;
      }

      else
      {
LABEL_8:
        *(result + 24) = 1;
      }
    }
  }

  return result;
}

uint64_t byte_stream_read_string(uint64_t a1, size_t a2, uint64_t a3)
{
  if (!a1)
  {
    return -1;
  }

  if (*a1 != 1651733613 || *(a1 + 72) != 1836348258 || (*(a1 + 24) & 1) != 0)
  {
    return -1;
  }

  if (*(a1 + 48) + a2 > *(a1 + 40))
  {
    goto LABEL_6;
  }

  v7 = a2 + 1;
  v8 = *(a1 + 64);
  if (v8 >= a2 + 1)
  {
    platform_memset(*(a1 + 8), *(a1 + 56), 0, v8);
    v10 = *(a1 + 56);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      platform_free(*(a1 + 8), v9);
    }

    *(a1 + 64) = v7;
    v10 = platform_calloc(*(a1 + 8), a2 + 1, 1uLL);
    *(a1 + 56) = v10;
    if (!v10)
    {
      *(a1 + 24) = 1;
      return -1;
    }
  }

  byte_stream_read_buffer(a1, v10, a2);
  if (*(a1 + 24))
  {
    return -1;
  }

  __endptr = 0;
  result = platform_strtoq(*(a1 + 8), *(a1 + 56), &__endptr, a3);
  if (!result)
  {
    if (!*__error())
    {
      return 0;
    }

LABEL_6:
    *(a1 + 24) = 1;
    return -1;
  }

  return result;
}

uint64_t byte_stream_remaining(uint64_t a1)
{
  if (a1 && *a1 == 1651733613 && *(a1 + 72) == 1836348258)
  {
    return *(a1 + 40) - *(a1 + 48);
  }

  else
  {
    return -1;
  }
}

uint64_t byte_stream_advance(uint64_t result, uint64_t a2)
{
  if (result && *result == 1651733613 && *(result + 72) == 1836348258 && (*(result + 24) & 1) == 0)
  {
    v2 = *(result + 48) + a2;
    if (v2 <= *(result + 40))
    {
      *(result + 48) = v2;
    }

    else
    {
      *(result + 24) = 1;
    }
  }

  return result;
}

void *data_archive_decoder_new(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = platform_calloc(a1, 1uLL, 0x60uLL);
    v2 = v5;
    if (!v5)
    {
      return v2;
    }

    *v5 = 1919315316;
    v5[1] = a1;
    byte_stream_new(a1, 0);
    v2[3] = v6;
    if (v6)
    {
      *(v2 + 23) = 1953326706;
      return v2;
    }

    free(v2);
  }

  return 0;
}

void data_archive_decoder_free(void *__b)
{
  if (__b && *__b == 1919315316 && *(__b + 23) == 1953326706)
  {
    v2 = __b[5];
    if (v2)
    {
      platform_free(__b[1], v2);
    }

    v3 = __b[3];
    if (v3)
    {
      byte_stream_free(v3);
    }

    v4 = __b[1];
    platform_memset(v4, __b, 0, 0x60uLL);

    platform_free(v4, __b);
  }
}

uint64_t data_archive_decoder_set_stream(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 != 1919315316)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && *(a1 + 92) == 1953326706)
  {
    *(a1 + 16) = a2;
    *(a1 + 32) = 0x20000;
    v6 = platform_valloc(*(a1 + 8), 0x20000uLL);
    *(a1 + 40) = v6;
    if (!v6)
    {
      v13 = __error();
      v14 = strerror(*v13);
      v10 = "Could not allocate read buffer: %s";
      v23 = v14;
      v11 = a3;
      v12 = 409;
      goto LABEL_10;
    }

    *(a1 + 48) = v6;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    if (populate_read_buffer(a1, *(a1 + 32), a3))
    {
      v10 = "Could not populate the read buffer";
      v11 = a3;
      v12 = 425;
LABEL_10:
      capture_error(v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v12, "data_archive_decoder_set_stream", v10, v7, v8, v9, v23);
      return 0xFFFFFFFFLL;
    }

    if (!*(a1 + 72))
    {
      return 0;
    }

    v15 = *(a1 + 48);
    v16 = *(a1 + 64);
    if (v16 < 0x200)
    {
LABEL_15:
      if (!*(a1 + 84))
      {
        if (check_cpio_header(a1, v15, v16, a3))
        {
          v10 = "Could not check for a cpio header";
          v11 = a3;
          v12 = 461;
          goto LABEL_10;
        }

        if (!*(a1 + 84))
        {
          result = is_pkzip_header(a1, v15, v16);
          if (result)
          {
            result = 0;
            *(a1 + 84) = 9;
          }

          return result;
        }
      }

      return 0;
    }

    byte_stream_attach(*(a1 + 24), *(a1 + 48), *(a1 + 64));
    byte_stream_advance(*(a1 + 24), 257);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v20 = "Could not advance to the magic offset";
      v21 = a3;
      v22 = 805;
    }

    else
    {
      byte_stream_read_buffer(*(a1 + 24), __s1, 6uLL);
      if (byte_stream_exception(*(a1 + 24)))
      {
        v20 = "Could not read the potential magic value";
        v21 = a3;
        v22 = 815;
      }

      else
      {
        byte_stream_read_buffer(*(a1 + 24), v24, 2uLL);
        if ((byte_stream_exception(*(a1 + 24)) & 1) == 0)
        {
          if (!platform_memcmp(*(a1 + 8), __s1, "ustar", 6uLL) && !platform_memcmp(*(a1 + 8), v24, "00", 2uLL))
          {
            *(a1 + 84) = 2;
          }

          goto LABEL_15;
        }

        v20 = "Could not read the potential version value";
        v21 = a3;
        v22 = 825;
      }
    }

    capture_error(v21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v22, "check_tar_posix_header", v20, v17, v18, v19, v23);
    v10 = "Could not check for a tar POSIX header";
    v11 = a3;
    v12 = 445;
    goto LABEL_10;
  }

  return result;
}

uint64_t populate_read_buffer(uint64_t a1, size_t a2, void *a3)
{
  v4 = *(a1 + 64);
  if (v4 >= a2)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  if (v4)
  {
    memmove(v6, *(a1 + 48), v4);
    v6 = *(a1 + 40);
    *(a1 + 48) = v6;
    v7 = *(a1 + 64);
  }

  else
  {
    v7 = 0;
    *(a1 + 48) = v6;
  }

  v8 = *(a1 + 32) - v7;
  v9 = data_stream_read(*(a1 + 16), v6 + v7, v8);
  if (v9 == -1)
  {
    v12 = __error();
    strerror(*v12);
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4061, "populate_read_buffer", "Could not read additional %ld bytes onto read buffer: %s\n", v13, v14, v15, v8);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = vaddq_s64(*(a1 + 64), vdupq_n_s64(v9));
    *(a1 + 64) = v10;
    if (v10.i64[0])
    {
      return 0;
    }

    result = 0;
    *(a1 + 80) = 1;
  }

  return result;
}

uint64_t check_cpio_header(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a3 < 2)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  uint16 = byte_stream_read_uint16(*(a1 + 24));
  if (byte_stream_exception(*(a1 + 24)))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 867, "check_cpio_header", "Could not read the potential binary magic value", v11, v12, v13, v4);
    return 0xFFFFFFFFLL;
  }

  if (uint16 == 51057)
  {
    result = 0;
    v14 = 8;
    goto LABEL_9;
  }

  if (uint16 == 29127)
  {
    result = 0;
    v14 = 7;
LABEL_9:
    *(a1 + 84) = v14;
    return result;
  }

  if (a3 < 6)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  string = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
  if (byte_stream_exception(*(a1 + 24)))
  {
    return 0;
  }

  result = 0;
  if (string > 29126)
  {
    if (string == 29143)
    {
      result = 0;
      v14 = 4;
      goto LABEL_9;
    }

    if (string == 29127)
    {
      result = 0;
      v14 = 3;
      goto LABEL_9;
    }
  }

  else
  {
    if (string == 29121)
    {
      result = 0;
      v14 = 6;
      goto LABEL_9;
    }

    if (string == 29122)
    {
      result = 0;
      v14 = 5;
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t is_pkzip_header(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 4)
  {
    return 0;
  }

  byte_stream_attach(*(a1 + 24), a2, a3);
  uint32 = byte_stream_read_uint32(*(a1 + 24));
  result = 1;
  if (uint32 <= 101075791)
  {
    v6 = uint32 == 67324752;
    v7 = 101010256;
  }

  else
  {
    v6 = uint32 == 101075792 || uint32 == 134695760;
    v7 = 808471376;
  }

  if (!v6 && uint32 != v7)
  {
    return 0;
  }

  return result;
}

uint64_t data_archive_decoder_get_type(_DWORD *a1)
{
  if (a1 && *a1 == 1919315316 && a1[23] == 1953326706)
  {
    return a1[21];
  }

  puts("Invalid decoder?");
  return 0;
}

void *data_archive_decoder_read_entry(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    v10 = "Invalid decoder";
    v11 = a2;
    v12 = 527;
    goto LABEL_7;
  }

  if (*(a1 + 89) == 1)
  {
    v10 = "End of archive";
    v11 = a2;
    v12 = 537;
LABEL_7:
    capture_error(v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v12, "data_archive_decoder_read_entry", v10, a6, a7, a8, v28);
    return 0;
  }

  if (!*(a1 + 64) && populate_read_buffer(a1, *(a1 + 32), a2))
  {
    v10 = "Could not populate the read buffer";
    v11 = a2;
    v12 = 550;
    goto LABEL_7;
  }

  v15 = darc_format_entry_new(*(a1 + 8), 0);
  v13 = v15;
  if (!v15)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 562, "data_archive_decoder_read_entry", "Could not create empty data format entry", v18, v19, v20, v28);
    return v13;
  }

  if (*(a1 + 80) == 1)
  {
    if (!darc_format_entry_set_type(v15, 1))
    {
      *(a1 + 89) = 1;
      return v13;
    }

    v24 = "Could not set EoA entry type";
    v25 = a2;
    v26 = 575;
    goto LABEL_15;
  }

  v27 = *(a1 + 84);
  if (v27 == 9)
  {
    if (!parse_entry_pkzip(a1, v15, a2))
    {
      return v13;
    }

    v24 = "Could not parse PKZip entry";
    v25 = a2;
    v26 = 620;
    goto LABEL_15;
  }

  if (v27 == 3)
  {
    if (!parse_entry_cpio(a1, v15, a2, v16, v17, v18, v19, v20))
    {
      return v13;
    }

    v24 = "Could not parse CPIO ASCII entry";
    v25 = a2;
    v26 = 609;
    goto LABEL_15;
  }

  if (v27 != 2)
  {
    capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 628, "data_archive_decoder_read_entry", "Unknown data format: %d", v18, v19, v20, *(a1 + 84));
    return v13;
  }

  if (parse_entry_posix_ustar(a1, v15, a2))
  {
    v24 = "Could not parse POSIX ustar entry";
    v25 = a2;
    v26 = 598;
LABEL_15:
    capture_error(v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v26, "data_archive_decoder_read_entry", v24, v21, v22, v23, v28);
    darc_format_entry_free(v13);
    return 0;
  }

  return v13;
}

uint64_t parse_entry_posix_ustar(uint64_t a1, _DWORD *a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 56);
  if (!require_minimum_amount(a1, 0x200uLL, "POSIX ustar header", a3))
  {
    v15 = platform_calloc(*(a1 + 8), 1uLL, 0x28uLL);
    if (!v15)
    {
      v24 = __error();
      strerror(*v24);
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1030, "parse_entry_posix_ustar", "Could not allocate %ld bytes for POSIX ustar header: %s", v25, v26, v27, 40);
      goto LABEL_4;
    }

    v16 = v15;
    v17 = *(a1 + 48);
    if (!*v17)
    {
      v28 = 1;
      while (v28 != 512)
      {
        if (v17[v28++])
        {
          if ((v28 - 2) < 0x1FF)
          {
            goto LABEL_8;
          }

          break;
        }
      }

      darc_format_entry_set_type(a2, 3);
      *v16 = 1;
      *(a1 + 48) += 512;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
      goto LABEL_16;
    }

LABEL_8:
    *v15 = 2;
    byte_stream_attach(*(a1 + 24), v17, 0x200uLL);
    memset(__s, 0, sizeof(__s));
    byte_stream_read_buffer(*(a1 + 24), __s, 0x64uLL);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar name field";
      v22 = a3;
      v23 = 1113;
      goto LABEL_110;
    }

    v31 = strlen(__s);
    if (darc_format_entry_set_attribute(a2, "name", __s, v31 + 1))
    {
      v21 = "Could not set name attribute";
      v22 = a3;
      v23 = 1123;
      goto LABEL_110;
    }

    string = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar mode field";
      v22 = a3;
      v23 = 1134;
      goto LABEL_110;
    }

    v16[2] = string | 0x8000;
    v33 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar uid field";
      v22 = a3;
      v23 = 1148;
      goto LABEL_110;
    }

    *(v16 + 2) = v33;
    v34 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar gid field";
      v22 = a3;
      v23 = 1161;
      goto LABEL_110;
    }

    *(v16 + 3) = v34;
    v35 = byte_stream_read_string(*(a1 + 24), 0xCuLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar size field";
      v22 = a3;
      v23 = 1174;
      goto LABEL_110;
    }

    *(v16 + 2) = v35;
    v36 = byte_stream_read_string(*(a1 + 24), 0xCuLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar mtime field";
      v22 = a3;
      v23 = 1187;
      goto LABEL_110;
    }

    *(v16 + 3) = v36;
    byte_stream_read_buffer(*(a1 + 24), v74, 8uLL);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar checksum field";
      v22 = a3;
      v23 = 1202;
      goto LABEL_110;
    }

    v59 = 0;
    byte_stream_read_buffer(*(a1 + 24), &v59, 1uLL);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v21 = "Could not parse the tar type flag field";
      v22 = a3;
      v23 = 1215;
      goto LABEL_110;
    }

    if (v59 > 0x34u)
    {
      if (v59 > 0x36u)
      {
        switch(v59)
        {
          case '7':
            *__error() = 45;
            v21 = "I do not support contiguous files";
            v22 = a3;
            v23 = 1277;
            goto LABEL_110;
          case 'g':
            v37 = 0;
            v38 = 1;
            goto LABEL_60;
          case 'x':
            v38 = 0;
            v37 = 1;
LABEL_60:
            memset(v73, 0, sizeof(v73));
            byte_stream_read_buffer(*(a1 + 24), v73, 0x64uLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the tar linkname field";
              v22 = a3;
              v23 = 1316;
              goto LABEL_110;
            }

            v41 = v37;
            v42 = strlen(v73);
            if (v42 && darc_format_entry_set_attribute(a2, "tar linkname", v73, v42 + 1))
            {
              v21 = "Could not set linkname attribute";
              v22 = a3;
              v23 = 1328;
              goto LABEL_110;
            }

            v58 = 0;
            __s1 = 0;
            byte_stream_read_buffer(*(a1 + 24), &__s1, 6uLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar magic field";
              v22 = a3;
              v23 = 1342;
              goto LABEL_110;
            }

            if (platform_memcmp(*(a1 + 8), &__s1, "ustar", 6uLL))
            {
              v21 = "Invalid magic for POSIX ustar archive";
              v22 = a3;
              v23 = 1348;
              goto LABEL_110;
            }

            v56 = 0;
            byte_stream_read_buffer(*(a1 + 24), &v56, 2uLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the tar version field";
              v22 = a3;
              v23 = 1361;
              goto LABEL_110;
            }

            if (platform_memcmp(*(a1 + 8), &v56, "00", 2uLL))
            {
              v21 = "Invalid version for POSIX ustar archive";
              v22 = a3;
              v23 = 1367;
              goto LABEL_110;
            }

            memset(v72, 0, sizeof(v72));
            byte_stream_read_buffer(*(a1 + 24), v72, 0x20uLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar uname field";
              v22 = a3;
              v23 = 1380;
              goto LABEL_110;
            }

            v46 = strlen(v72);
            if (v46 && darc_format_entry_set_attribute(a2, "POSIX ustar user name", v72, v46 + 1))
            {
              v21 = "Could not set POSIX ustar user name attribute";
              v22 = a3;
              v23 = 1392;
              goto LABEL_110;
            }

            memset(v71, 0, sizeof(v71));
            byte_stream_read_buffer(*(a1 + 24), v71, 0x20uLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar group name field";
              v22 = a3;
              v23 = 1406;
              goto LABEL_110;
            }

            v47 = strlen(v71);
            if (v47 && darc_format_entry_set_attribute(a2, "POSIX ustar group name", v71, v47 + 1))
            {
              v21 = "Could not set POSIX ustar group name attribute";
              v22 = a3;
              v23 = 1418;
              goto LABEL_110;
            }

            v48 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar devmajor field";
              v22 = a3;
              v23 = 1430;
              goto LABEL_110;
            }

            *(v16 + 8) = v48;
            v49 = byte_stream_read_string(*(a1 + 24), 8uLL, 8);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar devminor field";
              v22 = a3;
              v23 = 1443;
              goto LABEL_110;
            }

            *(v16 + 9) = v49;
            v69 = 0u;
            memset(v70, 0, sizeof(v70));
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            *v62 = 0u;
            byte_stream_read_buffer(*(a1 + 24), v62, 0x9BuLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar prefix field";
              v22 = a3;
              v23 = 1458;
              goto LABEL_110;
            }

            v50 = strlen(v62);
            if (v50)
            {
              v51 = v50;
              bzero(__str, 0x400uLL);
              if (v62[v51] == 47)
              {
                snprintf(__str, 0x400uLL, "%s%s");
              }

              else
              {
                snprintf(__str, 0x400uLL, "%s/%s");
              }

              v52 = strlen(__str);
              if (darc_format_entry_set_attribute(a2, "name", __str, v52 + 1))
              {
                v21 = "Could not reset POSIX ustar name attribute";
                v22 = a3;
                v23 = 1482;
                goto LABEL_110;
              }
            }

            v61 = 0;
            *__str = 0;
            byte_stream_read_buffer(*(a1 + 24), __str, 0xCuLL);
            if (byte_stream_exception(*(a1 + 24)))
            {
              v21 = "Could not parse the POSIX ustar padding field";
              v22 = a3;
              v23 = 1496;
              goto LABEL_110;
            }

            *(a1 + 48) += 512;
            *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
            if (v38)
            {
              *v16 = 3;
              *__error() = 45;
              v21 = "This entry has global extended metadata";
              v22 = a3;
              v23 = 1512;
              goto LABEL_110;
            }

            if (v41)
            {
              *v16 = 4;
              if (parse_entry_posix_ustar_extended_metadata(a1, *(v16 + 2), a3))
              {
                v21 = "Could not parse the POSIX ustar extended metadata";
                v22 = a3;
                v23 = 1527;
                goto LABEL_110;
              }
            }

            else
            {
              v53 = *(v16 + 2);
              if (v53 >= 1 && darc_format_entry_set_size(a2, v53))
              {
                v21 = "Could not set entry size";
                v22 = a3;
                v23 = 1543;
                goto LABEL_110;
              }
            }

            if (darc_format_entry_set_type(a2, 2))
            {
              v21 = "Could not set entry type";
              v22 = a3;
              v23 = 1553;
              goto LABEL_110;
            }

LABEL_16:
            v30 = darc_format_entry_set_attribute(a2, "POSIX ustar header", v16, 0x28uLL);
            platform_free(*(a1 + 8), v16);
            if (v30)
            {
              v10 = "Could not set POSIX ustar header attribute";
              v11 = a3;
              v12 = 1052;
            }

            else
            {
              result = darc_format_entry_set_range(a2, v6, *(a1 + 56) - v6);
              if (!result)
              {
                goto LABEL_5;
              }

              v10 = "Could not set entry range";
              v11 = a3;
              v12 = 1065;
            }

            goto LABEL_3;
        }

        goto LABEL_69;
      }

      if (v59 == 53)
      {
        v37 = 0;
        v38 = 0;
        v39 = v16[2] & 0x3FFF | 0x4000;
        goto LABEL_54;
      }

      if (v59 != 54)
      {
LABEL_69:
        if ((v59 - 65) > 0x19)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1302, "parse_entry_posix_ustar_header_decode", "Unrecognize tar type flag value: %c", v18, v19, v20, v59);
LABEL_111:
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1037, "parse_entry_posix_ustar", "Could not decode POSIX ustar header", v43, v44, v45, v55);
          platform_free(*(a1 + 8), v16);
          goto LABEL_4;
        }

        *__error() = 45;
        v21 = "Vendor specific extensions (POSIX.1-1988)";
        v22 = a3;
        v23 = 1298;
LABEL_110:
        capture_error(v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v23, "parse_entry_posix_ustar_header_decode", v21, v18, v19, v20, v54);
        goto LABEL_111;
      }

      v37 = 0;
      v38 = 0;
      v40 = v16[2] & 0x6FFF | 0x1000;
    }

    else
    {
      if (v59 <= 0x31u)
      {
        v37 = 0;
        v38 = 0;
        if (v59 - 48 >= 2 && v59)
        {
          goto LABEL_69;
        }

        goto LABEL_60;
      }

      switch(v59)
      {
        case '2':
          v37 = 0;
          v38 = 0;
          v40 = v16[2] | 0xA000;
          break;
        case '3':
          v37 = 0;
          v38 = 0;
          v40 = v16[2] & 0x5FFF | 0x2000;
          break;
        case '4':
          v37 = 0;
          v38 = 0;
          v39 = v16[2] & 0x1FFF | 0x6000;
LABEL_54:
          v16[2] = v39;
          goto LABEL_60;
        default:
          goto LABEL_69;
      }
    }

    v16[2] = v40;
    goto LABEL_60;
  }

  v10 = "Minimum amount necessary for POSIX ustar header is unavailable";
  v11 = a3;
  v12 = 1022;
LABEL_3:
  capture_error(v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v12, "parse_entry_posix_ustar", v10, v7, v8, v9, v54);
LABEL_4:
  result = 0xFFFFFFFFLL;
LABEL_5:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t parse_entry_cpio(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 56);
  if ((*(a1 + 88) & 1) == 0)
  {
    if (require_minimum_amount(a1, 0x4CuLL, "cpio header", a3))
    {
      v16 = "parse_entry_cpio_header";
      v17 = "Minimum amount necessary for CPIO header is unavailable";
      v18 = a3;
      v19 = 1655;
LABEL_12:
      capture_error(v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v19, v16, v17, a6, a7, a8, v51);
      return 0xFFFFFFFFLL;
    }

    v21 = platform_calloc(*(a1 + 8), 1uLL, 0x48uLL);
    if (!v21)
    {
      v29 = __error();
      strerror(*v29);
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1663, "parse_entry_cpio_header", "Could not allocate %ld bytes for cpio_header: %s", v30, v31, v32, 72);
      return 0xFFFFFFFFLL;
    }

    v22 = v21;
    byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x4CuLL);
    *v22 = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 2) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    v22[2] = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 12) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 7) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 8) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 18) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    *(v22 + 10) = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    v22[6] = byte_stream_read_string(*(a1 + 24), 0xBuLL, 8);
    v22[7] = byte_stream_read_string(*(a1 + 24), 6uLL, 8);
    v22[8] = byte_stream_read_string(*(a1 + 24), 0xBuLL, 8);
    if (byte_stream_exception(*(a1 + 24)))
    {
      v26 = "Could not parse the CPIO header";
      v27 = a3;
      v28 = 1743;
    }

    else if (*v22 == 29127)
    {
      *(a1 + 48) += 76;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78920);
      v33 = v22[8];
      if (v33 < 1 || !darc_format_entry_set_size(a2, v33))
      {
        v37 = v22[7];
        if (v37)
        {
          if (require_minimum_amount(a1, v37, "cpio entry name", a3))
          {
            v26 = "Minimum amount necessary for CPIO name is unavailable";
            v27 = a3;
            v28 = 1785;
            goto LABEL_26;
          }

          byte_stream_attach(*(a1 + 24), *(a1 + 48), v22[7]);
          v38 = platform_calloc(*(a1 + 8), v22[7], 1uLL);
          if (!v38)
          {
            v43 = v22[7];
            v44 = __error();
            strerror(*v44);
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1794, "parse_entry_cpio_header_decode", "Could not allocate %ld bytes: %s", v45, v46, v47, v43);
            goto LABEL_27;
          }

          v39 = v38;
          byte_stream_read_buffer(*(a1 + 24), v38, v22[7]);
          if (byte_stream_exception(*(a1 + 24)))
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1802, "parse_entry_cpio_header_decode", "Could not parse the CPIO name", v40, v41, v42, v51);
            free(v39);
            goto LABEL_27;
          }

          if (darc_format_entry_set_attribute(a2, "name", v39, v22[7]))
          {
            v26 = "Could not set name attribute";
            v27 = a3;
            v28 = 1815;
            goto LABEL_26;
          }

          if (platform_strlen(*(a1 + 8), v39) == 10 && !platform_strncmp(*(a1 + 8), v39, "TRAILER!!!", 0xAuLL))
          {
            *(a1 + 88) = 1;
          }

          platform_free(*(a1 + 8), v39);
          v48 = v22[7];
          v49 = *(a1 + 56) + v48;
          *(a1 + 48) += v48;
          *(a1 + 56) = v49;
          *(a1 + 64) -= v48;
        }

        v50 = darc_format_entry_set_attribute(a2, "cpio header", v22, 0x48uLL);
        platform_free(*(a1 + 8), v22);
        if (v50)
        {
          v16 = "parse_entry_cpio_header";
          v17 = "Could not set cpio header attribute";
          v18 = a3;
          v19 = 1685;
        }

        else if (darc_format_entry_set_type(a2, 4))
        {
          v16 = "parse_entry_cpio_header";
          v17 = "Could not set entry type";
          v18 = a3;
          v19 = 1696;
        }

        else
        {
          result = darc_format_entry_set_range(a2, v11, *(a1 + 56) - v11);
          if (!result)
          {
            return result;
          }

          v16 = "parse_entry_cpio_header";
          v17 = "Could not set entry range";
          v18 = a3;
          v19 = 1705;
        }

        goto LABEL_12;
      }

      v26 = "Could not set entry size";
      v27 = a3;
      v28 = 1764;
    }

    else
    {
      v26 = "Invalid CPIO magic: %lld";
      v51 = *v22;
      v27 = a3;
      v28 = 1749;
    }

LABEL_26:
    capture_error(v27, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v28, "parse_entry_cpio_header_decode", v26, v23, v24, v25, v51);
LABEL_27:
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1670, "parse_entry_cpio_header", "Could not decode CPIO header", v34, v35, v36, v52);
    platform_free(*(a1 + 8), v22);
    return 0xFFFFFFFFLL;
  }

  while ((*(a1 + 80) & 1) == 0)
  {
    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = v12 - 1;
      v14 = *(a1 + 48) + 1;
      while (!*(v14 - 1))
      {
        v15 = *(a1 + 56) + 1;
        *(a1 + 48) = v14;
        *(a1 + 56) = v15;
        *(a1 + 64) = v13--;
        ++v14;
        if (v13 == -1)
        {
          goto LABEL_7;
        }
      }

      v16 = "parse_entry_cpio_padding";
      v17 = "Could not populate the read buffer";
      v18 = a3;
      v19 = 1857;
      goto LABEL_12;
    }

LABEL_7:
    if (populate_read_buffer(a1, *(a1 + 32), a3))
    {
      v16 = "parse_entry_cpio_padding";
      v17 = "Could not populate the read buffer";
      v18 = a3;
      v19 = 1867;
      goto LABEL_12;
    }
  }

  if (darc_format_entry_set_type(a2, 5))
  {
    v16 = "parse_entry_cpio_padding";
    v17 = "Could not set entry type";
    v18 = a3;
    v19 = 1879;
    goto LABEL_12;
  }

  result = darc_format_entry_set_range(a2, v11, *(a1 + 56) - v11);
  if (result)
  {
    v16 = "parse_entry_cpio_padding";
    v17 = "Could not set entry range";
    v18 = a3;
    v19 = 1888;
    goto LABEL_12;
  }

  return result;
}

uint64_t parse_entry_pkzip(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 56);
  if (require_minimum_amount(a1, 4uLL, "PKZip signature", a3))
  {
    return 0xFFFFFFFFLL;
  }

  v102 = a2;
  v103 = a3;
  while (1)
  {
    byte_stream_attach(*(a1 + 24), *(a1 + 48), 4uLL);
    uint32 = byte_stream_read_uint32(*(a1 + 24));
    if (byte_stream_exception(*(a1 + 24)))
    {
      v16 = "parse_entry_pkzip";
      v17 = "Could not parse the PKZip entry";
      v18 = a3;
      v19 = 1936;
      goto LABEL_61;
    }

    if (uint32 > 101075791)
    {
      if (uint32 > 134630223)
      {
        if (uint32 == 134630224)
        {
          v33 = a3;
          if (require_minimum_amount(a1, 8uLL, "PKZip archive extra data", a3))
          {
            return 0xFFFFFFFFLL;
          }

          byte_stream_set_byte_order(*(a1 + 24), 2);
          byte_stream_attach(*(a1 + 24), *(a1 + 48), 8uLL);
          v26 = byte_stream_read_uint32(*(a1 + 24));
          v27 = byte_stream_read_uint32(*(a1 + 24));
          if (byte_stream_exception(*(a1 + 24)))
          {
            v16 = "parse_entry_pkzip_archive_extra_data";
            v17 = "Could not parse the PKZip data descriptor";
            v18 = a3;
            v19 = 2516;
            goto LABEL_61;
          }

          if (v26 == 134630224)
          {
            *(a1 + 48) += 8;
            *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78970);
            if (!v27)
            {
              v15 = a2;
              if (!darc_format_entry_set_type(a2, 9))
              {
                goto LABEL_59;
              }

              v16 = "parse_entry_pkzip_archive_extra_data";
              v17 = "Could not set entry type";
              v18 = v103;
              v19 = 2554;
              goto LABEL_61;
            }

            if (!require_minimum_amount(a1, v27, "PKZip extra data", a3))
            {
              v38 = *(a1 + 56) + v27;
              *(a1 + 48) += v27;
              *(a1 + 56) = v38;
              *(a1 + 64) -= v27;
              v16 = "parse_entry_pkzip_archive_extra_data";
              v17 = "TODO: parse extra field";
              v18 = a3;
              v19 = 2543;
              goto LABEL_61;
            }
          }

          else
          {
            capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2522, "parse_entry_pkzip_archive_extra_data", "Invalid PKZip archive extra signature: %04x", v9, v10, v11, v26);
          }

          return 0xFFFFFFFFLL;
        }

        if (uint32 == 134695760 || uint32 == 808471376)
        {
LABEL_28:
          v15 = a2;
          v33 = v103;
          if (parse_entry_pkzip_data_descriptor(a1, a2, uint32, v103))
          {
            return 0xFFFFFFFFLL;
          }

LABEL_59:
          result = darc_format_entry_set_range(v15, v6, *(a1 + 56) - v6);
          if (!result)
          {
            return result;
          }

          v16 = "parse_entry_pkzip";
          v17 = "Could not set entry range\n";
          v18 = v33;
          v19 = 2109;
LABEL_61:
          capture_error(v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v19, v16, v17, v9, v10, v11, v101);
          return 0xFFFFFFFFLL;
        }

        goto LABEL_21;
      }

      if (uint32 == 101075792)
      {
        v33 = a3;
        if (require_minimum_amount(a1, 0x38uLL, "PKZip ZIP64 end of central directory read", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v20 = platform_calloc(*(a1 + 8), 1uLL, 0x40uLL);
        if (!v20)
        {
          v40 = __error();
          strerror(*v40);
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3041, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Could not allocate %ld bytes for PKZip ZIP64 central directory header: %s", v41, v42, v43, 64);
          return 0xFFFFFFFFLL;
        }

        v21 = v20;
        byte_stream_set_byte_order(*(a1 + 24), 2);
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x38uLL);
        *v21 = byte_stream_read_uint32(*(a1 + 24));
        v21[1] = byte_stream_read_uint64(*(a1 + 24));
        *(v21 + 8) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 9) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 5) = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 6) = byte_stream_read_uint32(*(a1 + 24));
        v21[4] = byte_stream_read_uint64(*(a1 + 24));
        v21[5] = byte_stream_read_uint64(*(a1 + 24));
        v21[6] = byte_stream_read_uint64(*(a1 + 24));
        v21[7] = byte_stream_read_uint64(*(a1 + 24));
        if (byte_stream_exception(*(a1 + 24)))
        {
          v22 = "parse_entry_pkzip_zip64_end_of_central_directory_record";
          v23 = "Could not parse the PKZip ZIP64 end of central directory record";
          v24 = a3;
          v25 = 3062;
          goto LABEL_97;
        }

        if (*v21 != 101075792)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3069, "parse_entry_pkzip_zip64_end_of_central_directory_record", "Invalid PKZip ZIP64 end of central directory record signature: %04x", v9, v10, v11, *v21);
          goto LABEL_98;
        }

        v60 = *(a1 + 48);
        *(a1 + 48) = v60 + 56;
        v61 = *(a1 + 56);
        *(a1 + 56) = vaddq_s64(v61, xmmword_241C78950);
        v62 = v21[1];
        if (v62 - 56 >= 1)
        {
          *(a1 + 48) = v60 + v62;
          *(a1 + 56) = v62 + v61.i64[0];
          *(a1 + 64) = v61.i64[1] - v62;
          v16 = "parse_entry_pkzip_zip64_end_of_central_directory_record";
          v17 = "TODO: parse ZIP64 extensible data";
          v18 = a3;
          v19 = 3087;
          goto LABEL_61;
        }

        v15 = a2;
        if (!darc_format_entry_set_type(a2, 12))
        {
          if (darc_format_entry_set_attribute(a2, "pkzip ZIP64 end of central directory record", v21, 0x40uLL))
          {
            v22 = "parse_entry_pkzip_zip64_end_of_central_directory_record";
            v23 = "Could not set PKZip ZIP64 end of central directory record attribute";
            v24 = v103;
            v25 = 3110;
            goto LABEL_97;
          }

          goto LABEL_124;
        }

        v22 = "parse_entry_pkzip_zip64_end_of_central_directory_record";
        v23 = "Could not set entry type";
        v24 = v103;
        v25 = 3098;
      }

      else
      {
        if (uint32 != 117853008)
        {
          goto LABEL_21;
        }

        v33 = a3;
        if (require_minimum_amount(a1, 0x14uLL, "PKZip ZIP64 end of central directory locator read", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v35 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
        if (!v35)
        {
          v56 = __error();
          strerror(*v56);
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3155, "parse_entry_pkzip_zip64_end_of_central_directory_locator", "Could not allocate %ld bytes for PKZip ZIP64 central directory locator: %s", v57, v58, v59, 24);
          return 0xFFFFFFFFLL;
        }

        v21 = v35;
        byte_stream_set_byte_order(*(a1 + 24), 2);
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x14uLL);
        *v21 = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 1) = byte_stream_read_uint32(*(a1 + 24));
        v21[1] = byte_stream_read_uint64(*(a1 + 24));
        *(v21 + 4) = byte_stream_read_uint32(*(a1 + 24));
        v15 = a2;
        if (byte_stream_exception(*(a1 + 24)))
        {
          v22 = "parse_entry_pkzip_zip64_end_of_central_directory_locator";
          v23 = "Could not parse the PKZip ZIP64 end of central directory locator";
          v24 = v103;
          v25 = 3170;
        }

        else if (*v21 == 117853008)
        {
          *(a1 + 48) += 20;
          *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78940);
          if (!darc_format_entry_set_type(a2, 13))
          {
            if (darc_format_entry_set_attribute(a2, "pkzip ZIP64 end of central directory locator", v21, 0x18uLL))
            {
              v22 = "parse_entry_pkzip_zip64_end_of_central_directory_locator";
              v23 = "Could not set PKZip ZIP64 end of central directory locator attribute";
              v24 = v103;
              v25 = 3203;
              goto LABEL_97;
            }

            goto LABEL_124;
          }

          v22 = "parse_entry_pkzip_zip64_end_of_central_directory_locator";
          v23 = "Could not set entry type";
          v24 = v103;
          v25 = 3191;
        }

        else
        {
          v22 = "parse_entry_pkzip_zip64_end_of_central_directory_locator";
          v23 = "Invalid PKZip ZIP64 end of central directory record signature: %04x";
          v101 = *v21;
          v24 = v103;
          v25 = 3177;
        }
      }

LABEL_97:
      capture_error(v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v25, v22, v23, v9, v10, v11, v101);
      goto LABEL_98;
    }

    if (uint32 <= 84233039)
    {
      if (uint32 != 33639248)
      {
        if (uint32 != 67324752)
        {
          goto LABEL_21;
        }

        v29 = a3;
        if (require_minimum_amount(a1, 0x1EuLL, "PKZip local header", a3))
        {
          return 0xFFFFFFFFLL;
        }

        v31 = platform_calloc(*(a1 + 8), 1uLL, 0x20uLL);
        if (!v31)
        {
          v48 = __error();
          strerror(*v48);
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2159, "parse_entry_pkzip_local_header", "Could not allocate %ld bytes for PKZip local header: %s\n", v49, v50, v51, 32);
          return 0xFFFFFFFFLL;
        }

        v21 = v31;
        byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x1EuLL);
        *v21 = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 2) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 3) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 4) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 5) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 6) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 4) = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 5) = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 6) = byte_stream_read_uint32(*(a1 + 24));
        *(v21 + 14) = byte_stream_read_uint16(*(a1 + 24));
        *(v21 + 15) = byte_stream_read_uint16(*(a1 + 24));
        if (byte_stream_exception(*(a1 + 24)))
        {
          v22 = "parse_entry_pkzip_local_header";
          v23 = "Could not parse the PKZip local header";
          v24 = a3;
          v25 = 2179;
          goto LABEL_97;
        }

        if (*v21 != 67324752)
        {
          capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2186, "parse_entry_pkzip_local_header", "Invalid PKZip local header signature: %04x", v9, v10, v11, *v21);
          goto LABEL_98;
        }

        *(a1 + 48) += 30;
        *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78980);
        if (darc_format_entry_set_attribute(v102, "pkzip local header", v21, 0x20uLL))
        {
          v22 = "parse_entry_pkzip_local_header";
          v23 = "Could not set PKZip local header attribute";
          v24 = a3;
          v25 = 2204;
          goto LABEL_97;
        }

        v65 = *(v21 + 5);
        if (v65 && darc_format_entry_set_size(v102, v65))
        {
          v22 = "parse_entry_pkzip_local_header";
          v23 = "Could not set entry size";
          v24 = a3;
          v25 = 2215;
          goto LABEL_97;
        }

        if (*(v21 + 14))
        {
          if (require_minimum_amount(a1, *(v21 + 14), "PKZip file name", a3))
          {
            goto LABEL_98;
          }

          byte_stream_attach(*(a1 + 24), *(a1 + 48), *(v21 + 14));
          v76 = *(v21 + 14);
          v77 = platform_calloc(*(a1 + 8), v76 + 1, 1uLL);
          if (!v77)
          {
            v83 = *(v21 + 14);
            v84 = __error();
            strerror(*v84);
            capture_error(v103, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2247, "parse_entry_pkzip_local_header", "Could not allocate %d bytes: %s", v85, v86, v87, v83);
            goto LABEL_98;
          }

          v68 = v77;
          byte_stream_read_buffer(*(a1 + 24), v77, *(v21 + 14));
          if (byte_stream_exception(*(a1 + 24)))
          {
            v72 = "parse_entry_pkzip_local_header";
            v73 = "Could not parse the PKZip file name";
            v74 = v103;
            v75 = 2256;
            goto LABEL_143;
          }

          if (darc_format_entry_set_attribute(v102, "name", v68, v76 + 1))
          {
            v72 = "parse_entry_pkzip_local_header";
            v73 = "Could not set entry name";
            v74 = v103;
            v75 = 2270;
            goto LABEL_143;
          }

          free(v68);
          v97 = *(v21 + 14);
          v98 = *(a1 + 56) + v97;
          *(a1 + 48) += v97;
          *(a1 + 56) = v98;
          *(a1 + 64) -= v97;
          v29 = v103;
        }

        if (*(v21 + 15) && parse_entry_pkzip_extra_field(a1, v102, *(v21 + 15), 1, v29))
        {
          v22 = "parse_entry_pkzip_local_header";
          v23 = "Could not parse local header extra field";
          v24 = v29;
          v25 = 2290;
        }

        else
        {
          if ((*(v21 + 3) & 8) != 0)
          {
            if (darc_format_entry_get_attribute(v102, "pkzip extra field ZIP64", 0) < 1)
            {
              *(a1 + 90) = 1;
            }

            else
            {
              *(a1 + 91) = 1;
            }
          }

          else
          {
            *(a1 + 90) = 0;
          }

          v15 = v102;
          if (!darc_format_entry_set_type(v102, 6))
          {
            free(v21);
            v33 = v103;
            goto LABEL_59;
          }

          v22 = "parse_entry_pkzip_local_header";
          v23 = "Could not set entry type";
          v24 = v103;
          v25 = 2326;
        }

        goto LABEL_97;
      }

      v33 = a3;
      if (require_minimum_amount(a1, 0x2EuLL, "PKZip central directory header", a3))
      {
        return 0xFFFFFFFFLL;
      }

      v32 = platform_calloc(*(a1 + 8), 1uLL, 0x30uLL);
      if (!v32)
      {
        v52 = __error();
        strerror(*v52);
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2610, "parse_entry_pkzip_central_directory_header", "Could not allocate %ld bytes for PKZip central directory header: %s", v53, v54, v55, 48);
        return 0xFFFFFFFFLL;
      }

      v21 = v32;
      byte_stream_set_byte_order(*(a1 + 24), 2);
      byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x2EuLL);
      *v21 = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 2) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 3) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 4) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 5) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 6) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 7) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 4) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 5) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 6) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 14) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 15) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 16) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 17) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 18) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 10) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 11) = byte_stream_read_uint32(*(a1 + 24));
      if (byte_stream_exception(*(a1 + 24)))
      {
        v22 = "parse_entry_pkzip_central_directory_header";
        v23 = "Could not parse the PKZip data descriptor";
        v24 = a3;
        v25 = 2638;
        goto LABEL_97;
      }

      if (*v21 != 33639248)
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2645, "parse_entry_pkzip_central_directory_header", "Invalid PKZip central directory header signature: %04x", v9, v10, v11, *v21);
        goto LABEL_98;
      }

      *(a1 + 48) += 46;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78960);
      if (darc_format_entry_set_attribute(a2, "pkzip central directory header", v21, 0x30uLL))
      {
        v22 = "parse_entry_pkzip_central_directory_header";
        v23 = "Could not set PKZip central directory header attribute";
        v24 = a3;
        v25 = 2663;
        goto LABEL_97;
      }

      if (*(v21 + 14))
      {
        if (require_minimum_amount(a1, *(v21 + 14), "PKZip file name", a3))
        {
          goto LABEL_98;
        }

        byte_stream_attach(*(a1 + 24), *(a1 + 48), *(v21 + 14));
        v66 = *(v21 + 14);
        v67 = platform_calloc(*(a1 + 8), v66 + 1, 1uLL);
        if (!v67)
        {
          v78 = *(v21 + 14);
          v79 = __error();
          strerror(*v79);
          capture_error(v103, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2694, "parse_entry_pkzip_central_directory_header", "Could not allocate %d bytes: %s", v80, v81, v82, v78);
          goto LABEL_98;
        }

        v68 = v67;
        byte_stream_read_buffer(*(a1 + 24), v67, *(v21 + 14));
        if (byte_stream_exception(*(a1 + 24)))
        {
          v72 = "parse_entry_pkzip_central_directory_header";
          v73 = "Could not parse the PKZip file name";
          v74 = v103;
          v75 = 2703;
LABEL_143:
          capture_error(v74, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v75, v72, v73, v69, v70, v71, v101);
          free(v68);
          goto LABEL_98;
        }

        if (darc_format_entry_set_attribute(a2, "name", v68, v66 + 1))
        {
          v72 = "parse_entry_pkzip_central_directory_header";
          v73 = "Could not set entry name";
          v74 = v103;
          v75 = 2717;
          goto LABEL_143;
        }

        free(v68);
        v88 = *(v21 + 14);
        v89 = *(a1 + 56) + v88;
        *(a1 + 48) += v88;
        *(a1 + 56) = v89;
        *(a1 + 64) -= v88;
        v33 = v103;
      }

      if (*(v21 + 15) && parse_entry_pkzip_extra_field(a1, a2, *(v21 + 15), 0, v33))
      {
        v22 = "parse_entry_pkzip_central_directory_header";
        v23 = "Could not parse central directory header extra field";
        v24 = v33;
        v25 = 2737;
        goto LABEL_97;
      }

      if (*(v21 + 16))
      {
        if (require_minimum_amount(a1, *(v21 + 16), "PKZip file comment", v33))
        {
          goto LABEL_98;
        }

        byte_stream_attach(*(a1 + 24), *(a1 + 48), *(v21 + 16));
        v90 = *(v21 + 16);
        v91 = platform_calloc(*(a1 + 8), v90, 1uLL);
        if (!v91)
        {
          v92 = *(v21 + 16);
          v93 = __error();
          strerror(*v93);
          capture_error(v103, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2769, "parse_entry_pkzip_central_directory_header", "Could not allocate %d bytes: %s", v94, v95, v96, v92);
          goto LABEL_98;
        }

        v68 = v91;
        byte_stream_read_buffer(*(a1 + 24), v91, *(v21 + 16));
        if (byte_stream_exception(*(a1 + 24)))
        {
          v72 = "parse_entry_pkzip_central_directory_header";
          v73 = "Could not parse the PKZip file comment";
          v74 = v103;
          v75 = 2778;
          goto LABEL_143;
        }

        if (darc_format_entry_set_attribute(a2, "pkzip central directory file comment", v68, v90))
        {
          v72 = "parse_entry_pkzip_central_directory_header";
          v73 = "Could not set entry file comment";
          v74 = v103;
          v75 = 2787;
          goto LABEL_143;
        }

        free(v68);
        v99 = *(v21 + 16);
        v100 = *(a1 + 56) + v99;
        *(a1 + 48) += v99;
        *(a1 + 56) = v100;
        *(a1 + 64) -= v99;
        v33 = v103;
      }

      if (darc_format_entry_set_type(a2, 10))
      {
        v22 = "parse_entry_pkzip_central_directory_header";
        v23 = "Could not set entry type";
        v24 = v33;
        v25 = 2805;
        goto LABEL_97;
      }

      free(v21);
LABEL_58:
      v15 = a2;
      goto LABEL_59;
    }

    if (uint32 == 84233040)
    {
      break;
    }

    if (uint32 == 101010256)
    {
      v33 = a3;
      if (require_minimum_amount(a1, 0x16uLL, "PKZip end of central directory read", a3))
      {
        return 0xFFFFFFFFLL;
      }

      v28 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
      if (!v28)
      {
        v44 = __error();
        strerror(*v44);
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2920, "parse_entry_pkzip_end_of_central_directory_record", "Could not allocate %ld bytes for PKZip central directory header: %s", v45, v46, v47, 24);
        return 0xFFFFFFFFLL;
      }

      v21 = v28;
      byte_stream_set_byte_order(*(a1 + 24), 2);
      byte_stream_attach(*(a1 + 24), *(a1 + 48), 0x16uLL);
      *v21 = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 2) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 3) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 4) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 5) = byte_stream_read_uint16(*(a1 + 24));
      *(v21 + 3) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 4) = byte_stream_read_uint32(*(a1 + 24));
      *(v21 + 10) = byte_stream_read_uint16(*(a1 + 24));
      if (byte_stream_exception(*(a1 + 24)))
      {
        v22 = "parse_entry_pkzip_end_of_central_directory_record";
        v23 = "Could not parse the PKZip data descriptor";
        v24 = a3;
        v25 = 2939;
        goto LABEL_97;
      }

      if (*v21 != 101010256)
      {
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2946, "parse_entry_pkzip_end_of_central_directory_record", "Invalid PKZip end of central directory record signature: %04x", v9, v10, v11, *v21);
        goto LABEL_98;
      }

      *(a1 + 48) += 22;
      *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78930);
      if (*(v21 + 10))
      {
        if (!require_minimum_amount(a1, *(v21 + 10), ".ZIP file comment", a3))
        {
          v63 = *(v21 + 10);
          v64 = *(a1 + 56) + v63;
          *(a1 + 48) += v63;
          *(a1 + 56) = v64;
          *(a1 + 64) -= v63;
          v16 = "parse_entry_pkzip_end_of_central_directory_record";
          v17 = "TODO: parse .ZIP file comment";
          v18 = a3;
          v19 = 2969;
          goto LABEL_61;
        }

LABEL_98:
        free(v21);
        return 0xFFFFFFFFLL;
      }

      v15 = a2;
      if (darc_format_entry_set_type(a2, 14))
      {
        v22 = "parse_entry_pkzip_end_of_central_directory_record";
        v23 = "Could not set entry type";
        v24 = v103;
        v25 = 2980;
        goto LABEL_97;
      }

      if (darc_format_entry_set_attribute(a2, "pkzip end of central directory record", v21, 0x18uLL))
      {
        v22 = "parse_entry_pkzip_end_of_central_directory_record";
        v23 = "Could not set PKZip end of central directory record attribute";
        v24 = v103;
        v25 = 2992;
        goto LABEL_97;
      }

LABEL_124:
      free(v21);
      goto LABEL_59;
    }

LABEL_21:
    if ((~uint32 & 0x3000000) != 0)
    {
      uint32 = 0;
      if (*(a1 + 91) & 1) != 0 || (*(a1 + 90))
      {
        goto LABEL_28;
      }

      ++*(a1 + 48);
      v14 = vaddq_s64(*(a1 + 56), xmmword_241C78990);
      *(a1 + 56) = v14;
      v13 = v14.i64[0];
      if (!v14.i64[1])
      {
        v33 = a3;
        capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2080, "parse_entry_pkzip", "Could not find a PKZip signature", v9, v10, v11, v101);
        *(a1 + 80) = 1;
        goto LABEL_58;
      }
    }

    else
    {
      *(a1 + 48) += 2;
      v12 = vaddq_s64(*(a1 + 56), xmmword_241C789A0);
      *(a1 + 56) = v12;
      v13 = v12.i64[0];
    }

    v6 = v13;
    if (require_minimum_amount(a1, 4uLL, "PKZip signature", a3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v33 = a3;
  if (require_minimum_amount(a1, 6uLL, "PKZip archive digital signature", a3))
  {
    return 0xFFFFFFFFLL;
  }

  byte_stream_set_byte_order(*(a1 + 24), 2);
  byte_stream_attach(*(a1 + 24), *(a1 + 48), 6uLL);
  v36 = byte_stream_read_uint32(*(a1 + 24));
  uint16 = byte_stream_read_uint16(*(a1 + 24));
  if (byte_stream_exception(*(a1 + 24)))
  {
    v16 = "parse_entry_pkzip_digital_signature";
    v17 = "Could not parse the PKZip digital signature";
    v18 = a3;
    v19 = 2858;
    goto LABEL_61;
  }

  if (v36 != 84233040)
  {
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2864, "parse_entry_pkzip_digital_signature", "Invalid PKZip archive digital signature signature: %04x", v9, v10, v11, v36);
    return 0xFFFFFFFFLL;
  }

  if (!require_minimum_amount(a1, uint16, "PKZip archive digital signature", a3))
  {
    v39 = *(a1 + 56) + uint16;
    *(a1 + 48) += uint16;
    *(a1 + 56) = v39;
    *(a1 + 64) -= uint16;
    goto LABEL_58;
  }

  return 0xFFFFFFFFLL;
}

size_t data_archive_decoder_read_data(uint64_t a1, void *__dst, size_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    v15 = "Invalid decoder";
    v16 = a4;
    v17 = 648;
    goto LABEL_12;
  }

  if (!__dst)
  {
    v15 = "Invalid read buffer";
    v16 = a4;
    v17 = 654;
    goto LABEL_12;
  }

  if (!a3)
  {
    v15 = "Invalid bytes to read";
    v16 = a4;
    v17 = 660;
    goto LABEL_12;
  }

  v12 = *(a1 + 64);
  if (!v12)
  {
    if (!populate_read_buffer(a1, *(a1 + 32), a4))
    {
      v12 = *(a1 + 64);
      if (!v12)
      {
        return 0;
      }

      goto LABEL_7;
    }

    v15 = "Could not populate the read buffer";
    v16 = a4;
    v17 = 673;
LABEL_12:
    capture_error(v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v17, "data_archive_decoder_read_data", v15, a6, a7, a8, v19);
    return -1;
  }

LABEL_7:
  if (v12 >= a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v12;
  }

  platform_memcpy(*(a1 + 8), __dst, *(a1 + 48), v13);
  v14 = *(a1 + 56) + v13;
  *(a1 + 48) += v13;
  *(a1 + 56) = v14;
  *(a1 + 64) -= v13;
  return v13;
}

uint64_t data_archive_decoder_rewind_data(uint64_t a1, void *__s2, size_t __n, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1919315316 || *(a1 + 92) != 1953326706)
  {
    v15 = "Invalid decoder";
    v16 = a4;
    v17 = 710;
    goto LABEL_9;
  }

  if (!__s2)
  {
    v15 = "Invalid rewind buffer";
    v16 = a4;
    v17 = 716;
    goto LABEL_9;
  }

  if (!__n)
  {
    v15 = "Invalid bytes to rewind";
    v16 = a4;
    v17 = 722;
    goto LABEL_9;
  }

  v11 = *(a1 + 56);
  v12 = (*(a1 + 48) - __n);
  v13 = *(a1 + 64);
  result = platform_memcmp(*(a1 + 8), v12, __s2, __n);
  if (result)
  {
    v15 = "Bytes don't match";
    v16 = a4;
    v17 = 732;
LABEL_9:
    capture_error(v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v17, "data_archive_decoder_rewind_data", v15, a6, a7, a8, v18);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 48) = v12;
  *(a1 + 56) = v11 - __n;
  *(a1 + 64) = v13 + __n;
  return result;
}

uint64_t require_minimum_amount(uint64_t a1, size_t a2, char a3, void *a4)
{
  if (populate_read_buffer(a1, a2, a4))
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4001, "require_minimum_amount", "Could not populate read buffer for %s", v8, v9, v10, a3);
    return 0xFFFFFFFFLL;
  }

  v11 = *(a1 + 64);
  if (v11 < a2)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 4007, "require_minimum_amount", "Not enough data remaining (%ld) for %s (%ld)", v8, v9, v10, v11);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t parse_entry_posix_ustar_extended_metadata(uint64_t a1, uint64_t a2, void *a3)
{
  if (!require_minimum_amount(a1, 0x200uLL, "POSIX ustar extended metadata", a3))
  {
    v6 = platform_strnlen(*(a1 + 8), *(a1 + 48), 0x200uLL);
    if (v6 < 0x201)
    {
      if (v6 == a2)
      {
        printf("DALLAS: string_length = %lu\n", a2);
        result = 0;
        *(a1 + 48) += 512;
        *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_241C78910);
        return result;
      }

      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1607, "parse_entry_posix_ustar_extended_metadata", "POSIX ustar extended metadata string length %lu does not match expected size %lu", v7, v8, v9, v6);
    }

    else
    {
      capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 1601, "parse_entry_posix_ustar_extended_metadata", "POSIX ustar extended metadata string length %lu is larger than TAR record size %lu", v7, v8, v9, v6);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t parse_entry_pkzip_data_descriptor(uint64_t a1, _DWORD *a2, int a3, void *a4)
{
  v8 = a3 == 134695760 || a3 == 808471376;
  v9 = *(a1 + 91);
  v10 = 4;
  if (v8)
  {
    v10 = 8;
  }

  v11 = v10 + 8;
  v12 = v10 | 0x10;
  if (*(a1 + 91))
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  if (require_minimum_amount(a1, v13, "PKZip data descriptor", a4))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = platform_calloc(*(a1 + 8), 1uLL, 0x18uLL);
  if (!v14)
  {
    v18 = __error();
    strerror(*v18);
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 2409, "parse_entry_pkzip_data_descriptor", "Could not allocate %ld bytes for PKZip data descriptor: %s", v19, v20, v21, 24);
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  byte_stream_set_byte_order(*(a1 + 24), 2);
  byte_stream_attach(*(a1 + 24), *(a1 + 48), v13);
  *v15 = 134695760;
  if (a3 == 808471376 || a3 == 134695760)
  {
    *v15 = byte_stream_read_uint32(*(a1 + 24));
  }

  v15[1] = byte_stream_read_uint32(*(a1 + 24));
  v16 = *(a1 + 24);
  if (v9)
  {
    *(v15 + 1) = byte_stream_read_uint64(v16);
    uint64 = byte_stream_read_uint64(*(a1 + 24));
  }

  else
  {
    *(v15 + 1) = byte_stream_read_uint32(v16);
    uint64 = byte_stream_read_uint32(*(a1 + 24));
  }

  *(v15 + 2) = uint64;
  if (byte_stream_exception(*(a1 + 24)))
  {
    v25 = "Could not parse the PKZip data descriptor";
    v26 = a4;
    v27 = 2438;
LABEL_24:
    capture_error(v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v27, "parse_entry_pkzip_data_descriptor", v25, v22, v23, v24, v30);
    free(v15);
    return 0xFFFFFFFFLL;
  }

  if (*v15 != 134695760)
  {
    v25 = "Invalid PKZip data descriptor signature: %04x";
    v30 = *v15;
    v26 = a4;
    v27 = 2445;
    goto LABEL_24;
  }

  v28 = *(a1 + 56) + v13;
  *(a1 + 48) += v13;
  *(a1 + 56) = v28;
  *(a1 + 64) -= v13;
  if (darc_format_entry_set_type(a2, 7))
  {
    v25 = "Could not set entry type";
    v26 = a4;
    v27 = 2459;
    goto LABEL_24;
  }

  if (darc_format_entry_set_attribute(a2, "pkzip data descriptor", v15, 0x18uLL))
  {
    v25 = "Could not set PKZip data descriptor attribute";
    v26 = a4;
    v27 = 2471;
    goto LABEL_24;
  }

  *(a1 + 90) = 0;
  free(v15);
  return 0;
}

uint64_t parse_entry_pkzip_extra_field(uint64_t *a1, uint64_t a2, size_t a3, int a4, void *a5)
{
  if (require_minimum_amount(a1, a3, "PKZip extra field", a5))
  {
    return 0xFFFFFFFFLL;
  }

  byte_stream_attach(a1[3], a1[6], a3);
  if (!a3)
  {
LABEL_78:
    result = byte_stream_remaining(a1[3]);
    if (result)
    {
      capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3394, "parse_entry_pkzip_extra_field", "%ld bytes remaining after parsing %s extra field", v66, v67, v68, result);
      return 0xFFFFFFFFLL;
    }

    v69 = a1[7] + a3;
    a1[6] += a3;
    a1[7] = v69;
    a1[8] -= a3;
    return result;
  }

  v10 = 0;
  while (1)
  {
    uint16 = byte_stream_read_uint16(a1[3]);
    v12 = byte_stream_read_uint16(a1[3]);
    if (byte_stream_exception(a1[3]))
    {
      v70 = "Exceed byte stream when parsing extra field";
      v71 = a5;
      v72 = 3268;
      goto LABEL_105;
    }

    v16 = v10 + 4;
    if (uint16 > 21588)
    {
      if (uint16 != 21589)
      {
        if (uint16 != 22613)
        {
          if (uint16 != 30837)
          {
            goto LABEL_82;
          }

          v17 = a1[6];
          byte_stream_new(a1[1], 0);
          if (!v18)
          {
            v73 = "Could not create extra byte stream";
            v74 = a5;
            v75 = 3801;
            goto LABEL_91;
          }

          v22 = v18;
          v23 = v12;
          byte_stream_attach(v18, v17 + v16, v12);
          DWORD2(v89) = 0;
          *&v89 = 0;
          LOBYTE(v89) = byte_stream_read_uint8(v22);
          uint8 = byte_stream_read_uint8(v22);
          v28 = uint8;
          if (uint8 == 4)
          {
            DWORD1(v89) = byte_stream_read_uint32(v22);
          }

          else
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3858, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Unrecognized uid size: %d", v25, v26, v27, uint8);
            byte_stream_advance(v22, v28);
          }

          if (byte_stream_read_uint8(v22) == 4)
          {
            DWORD2(v89) = byte_stream_read_uint32(v22);
          }

          else
          {
            capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3869, "parse_entry_pkzip_extra_field_infozip_unix_v3", "Unrecognized uid size: %d", v58, v59, v60, v28);
            byte_stream_advance(v22, v28);
          }

          if (byte_stream_exception(v22))
          {
            v73 = "Could not parse the PKZip Info-ZIP UNIX v3";
            v74 = a5;
            v75 = 3875;
            goto LABEL_91;
          }

          if (darc_format_entry_set_attribute(a2, "pkzip extra field InfoZIP UNIX v3", &v89, 0xCuLL))
          {
            v73 = "Could not set ctime";
            v74 = a5;
            v75 = 3886;
LABEL_91:
            capture_error(v74, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v75, "parse_entry_pkzip_extra_field_infozip_unix_v3", v73, v19, v20, v21, v88);
            v70 = "Could not parse extended timestamp";
            v71 = a5;
            v72 = 3349;
            goto LABEL_105;
          }

          goto LABEL_72;
        }

        v38 = a1[6];
        byte_stream_new(a1[1], 0);
        if (!v39)
        {
          v76 = "Could not create extra byte stream";
          v77 = a5;
          v78 = 3721;
          goto LABEL_94;
        }

        v22 = v39;
        v23 = v12;
        byte_stream_attach(v39, v38 + v16, v12);
        v90 = 0uLL;
        *&v89 = byte_stream_read_uint32(v22);
        *(&v89 + 1) = byte_stream_read_uint32(v22);
        if (v12 >= 0xA)
        {
          LOBYTE(v90) = 1;
          DWORD1(v90) = byte_stream_read_uint16(v22);
          if (v12 == 12)
          {
            BYTE8(v90) = 1;
            HIDWORD(v90) = byte_stream_read_uint16(v22);
          }
        }

        if (byte_stream_exception(v22))
        {
          v76 = "Could not parse the PKZip Info-ZIP extra block for UNIX";
          v77 = a5;
          v78 = 3769;
          goto LABEL_94;
        }

        if (darc_format_entry_set_attribute(a2, "pkzip extra field InfoZIP UNIX v1", &v89, 0x20uLL))
        {
          v76 = "Could not set ctime";
          v77 = a5;
          v78 = 3780;
LABEL_94:
          capture_error(v77, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v78, "parse_entry_pkzip_extra_field_infozip_unix_v1", v76, v40, v41, v42, v88);
          v70 = "Could not parse extended timestamp";
          v71 = a5;
          v72 = 3329;
          goto LABEL_105;
        }

LABEL_72:
        byte_stream_free(v22);
        goto LABEL_73;
      }

      v51 = a1[6];
      byte_stream_new(a1[1], 0);
      if (!v52)
      {
        v85 = "Could not create extra byte stream";
        v86 = a5;
        v87 = 3567;
        goto LABEL_104;
      }

      v22 = v52;
      v23 = v12;
      byte_stream_attach(v52, v51 + v16, v12);
      v56 = byte_stream_read_uint8(v22);
      v57 = v56;
      if (!a4)
      {
        v89 = 0uLL;
        v63 = v12;
        *&v90 = 0;
        if (v12 >= 4)
        {
          v63 = v12;
          if (v56)
          {
            *&v89 = byte_stream_read_uint32(v22);
            v63 = v12 - 4;
          }
        }

        if ((v57 & 2) != 0)
        {
          v64 = v63 - 4;
          if (v63 >= 4)
          {
            *(&v89 + 1) = byte_stream_read_uint32(v22);
            v63 = v64;
          }
        }

        if ((v57 & 4) != 0 && v63 >= 4)
        {
          *&v90 = byte_stream_read_uint32(v22);
        }

        if (byte_stream_exception(v22))
        {
          v85 = "Could not parse the PKZip extended-timestamp extra block";
          v86 = a5;
          v87 = 3688;
        }

        else
        {
          if (!darc_format_entry_set_attribute(a2, "pkzip extra field extended timestamp", &v89, 0x18uLL))
          {
            goto LABEL_72;
          }

          v85 = "Could not set timestamp";
          v86 = a5;
          v87 = 3699;
        }

        goto LABEL_104;
      }

      v89 = 0uLL;
      *&v90 = 0;
      if (v56)
      {
        *&v89 = byte_stream_read_uint32(v22);
        if ((v57 & 2) == 0)
        {
LABEL_34:
          if ((v57 & 4) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else if ((v56 & 2) == 0)
      {
        goto LABEL_34;
      }

      *(&v89 + 1) = byte_stream_read_uint32(v22);
      if ((v57 & 4) == 0)
      {
LABEL_36:
        if (byte_stream_exception(v22))
        {
          v85 = "Could not parse the PKZip extended-timestamp extra block";
          v86 = a5;
          v87 = 3625;
        }

        else
        {
          if (!darc_format_entry_set_attribute(a2, "pkzip extra field extended timestamp", &v89, 0x18uLL))
          {
            goto LABEL_72;
          }

          v85 = "Could not set extended timestamp";
          v86 = a5;
          v87 = 3636;
        }

LABEL_104:
        capture_error(v86, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v87, "parse_entry_pkzip_extra_field_extended_timestamp", v85, v53, v54, v55, v88);
        v70 = "Could not parse extended timestamp";
        v71 = a5;
        v72 = 3309;
        goto LABEL_105;
      }

LABEL_35:
      *&v90 = byte_stream_read_uint32(v22);
      goto LABEL_36;
    }

    if (uint16 != 1)
    {
      break;
    }

    v43 = a1[6];
    byte_stream_new(a1[1], 0);
    if (!v44)
    {
      v82 = "Could not create extra byte stream";
      v83 = a5;
      v84 = 3416;
      goto LABEL_101;
    }

    v48 = v44;
    v23 = v12;
    byte_stream_attach(v44, v43 + v16, v12);
    if (a4)
    {
      v49 = "pkzip local header";
      if (darc_format_entry_get_attribute(a2, "pkzip local header", 0) != 32)
      {
        v82 = "Could not extract PKZip local header from entry";
        v83 = a5;
        v84 = 3465;
        goto LABEL_101;
      }

      v50 = 0uLL;
    }

    else
    {
      v49 = "pkzip central directory header";
      if (darc_format_entry_get_attribute(a2, "pkzip central directory header", 0) != 48)
      {
        v82 = "Could not extract PKZip central directory header from entry";
        v83 = a5;
        v84 = 3483;
        goto LABEL_101;
      }

      v50 = 0uLL;
      v91 = 0u;
    }

    v89 = v50;
    v90 = v50;
    darc_format_entry_get_attribute(a2, v49, &v89);
    v62 = DWORD1(v90);
    v61 = DWORD2(v90);
    *&v91 = 0;
    v89 = 0u;
    v90 = 0u;
    if (v61 == -1)
    {
      LOBYTE(v89) = 1;
      *(&v89 + 1) = byte_stream_read_uint64(v48);
    }

    if (v62 == -1)
    {
      BYTE1(v89) = 1;
      *&v90 = byte_stream_read_uint64(v48);
    }

    if ((a4 & 1) == 0)
    {
      if (byte_stream_remaining(v48) >= 8)
      {
        *(&v90 + 1) = byte_stream_read_uint64(v48);
      }

      if (byte_stream_remaining(v48) >= 4)
      {
        LODWORD(v91) = byte_stream_read_uint32(v48);
      }
    }

    if (byte_stream_exception(v48))
    {
      v82 = "Could not parse the PKZip ZIP64 extra block";
      v83 = a5;
      v84 = 3523;
      goto LABEL_101;
    }

    if (darc_format_entry_set_attribute(a2, "pkzip extra field ZIP64", &v89, 0x28uLL))
    {
      v82 = "Could not set ZIP64";
      v83 = a5;
      v84 = 3534;
      goto LABEL_101;
    }

    byte_stream_free(v48);
    if (darc_format_entry_set_size(a2, *(&v89 + 1)))
    {
      v82 = "Could not reset pkzip entry size";
      v83 = a5;
      v84 = 3547;
LABEL_101:
      capture_error(v83, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v84, "parse_entry_pkzip_extra_field_zip64", v82, v45, v46, v47, v88);
      v70 = "Could not parse extended timestamp";
      v71 = a5;
      v72 = 3288;
      goto LABEL_105;
    }

LABEL_73:
    byte_stream_advance(a1[3], v23);
    v10 = v16 + v23;
    if (v10 == a3)
    {
      goto LABEL_78;
    }
  }

  if (uint16 != 10)
  {
LABEL_82:
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3378, "parse_entry_pkzip_extra_field", "Unrecognized extra field header ID: 0x%04x %d %d", v13, v14, v15, uint16);
    byte_stream_advance(a1[3], v12);
    return 0xFFFFFFFFLL;
  }

  v29 = a1[6];
  byte_stream_new(a1[1], 0);
  if (!v30)
  {
    v79 = "Could not create extra byte stream";
    v80 = a5;
    v81 = 3907;
    goto LABEL_95;
  }

  v22 = v30;
  v23 = v12;
  byte_stream_attach(v30, v29 + v16, v12);
  LODWORD(v89) = byte_stream_read_uint32(v22);
  v34 = byte_stream_read_uint16(v22);
  WORD2(v89) = v34;
  WORD3(v89) = byte_stream_read_uint16(v22);
  if (v34 != 1)
  {
    capture_error(a5, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", 3960, "parse_entry_pkzip_extra_field_ntfs", "Unknown NTFS tag value: %u", v35, v36, v37, v34);
    goto LABEL_96;
  }

  *(&v89 + 1) = byte_stream_read_uint64(v22);
  *&v90 = byte_stream_read_uint64(v22);
  *(&v90 + 1) = byte_stream_read_uint64(v22);
  if (!byte_stream_exception(v22))
  {
    if (darc_format_entry_set_attribute(a2, "pkzip extra field NTFS", &v89, 0x20uLL))
    {
      v79 = "Could not set NTFS extra field";
      v80 = a5;
      v81 = 3981;
      goto LABEL_95;
    }

    goto LABEL_72;
  }

  v79 = "Could not parse the PKZip NTFS extra field";
  v80 = a5;
  v81 = 3970;
LABEL_95:
  capture_error(v80, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v81, "parse_entry_pkzip_extra_field_ntfs", v79, v31, v32, v33, v88);
LABEL_96:
  v70 = "Could not parse NFTS extra field";
  v71 = a5;
  v72 = 3369;
LABEL_105:
  capture_error(v71, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive_decoder.c", v72, "parse_entry_pkzip_extra_field", v70, v13, v14, v15, v88);
  return 0xFFFFFFFFLL;
}

void *data_source_new(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  result = platform_calloc(a1, 1uLL, 0x48uLL);
  if (result)
  {
    *result = 1936876321;
    result[1] = a1;
    *(result + 4) = -1;
    *(result + 16) = 560165491;
  }

  return result;
}

void data_source_free(void *__b)
{
  if (__b && *__b == 1936876321 && *(__b + 16) == 560165491)
  {
    v2 = __b[1];
    platform_memset(v2, __b, 0, 0x48uLL);

    platform_free(v2, __b);
  }
}

_DWORD *data_source_set_fd(_DWORD *result, int a2)
{
  if (result && *result == 1936876321 && result[16] == 560165491)
  {
    result[4] = a2;
  }

  return result;
}

uint64_t data_source_set_handler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && *result == 1936876321 && *(result + 64) == 560165491)
  {
    *(result + 48) = a2;
    *(result + 56) = a3;
  }

  return result;
}

ssize_t data_source_read(uint64_t a1, void *a2, size_t a3)
{
  if (!a1 || *a1 != 1936876321 || *(a1 + 64) != 560165491)
  {
    return -1;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 16);

    return v5(v6, v7, a2, a3);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (*(a1 + 32) - v11 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = *(a1 + 32) - v11;
    }

    if (v9)
    {
      platform_memcpy(*(a1 + 8), a2, (v10 + v11), v9);
      *(a1 + 40) += v9;
    }

    return v9;
  }

  v12 = *(a1 + 8);
  v13 = *(a1 + 16);

  return platform_read(v12, v13, a2, a3);
}

_DWORD *data_archive_new(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  result = platform_toolbox_new(a1);
  if (result)
  {
    v2 = result;
    result = platform_calloc(result, 1uLL, 0xD0uLL);
    if (result)
    {
      *result = 1684107875;
      *(result + 1) = v2;
      result[5] = -1;
      result[50] = 1668440420;
    }

    else
    {
      platform_toolbox_free(v2);
      return 0;
    }
  }

  return result;
}

void data_archive_free(unsigned int *__b)
{
  if (__b && *__b == 1684107875 && __b[50] == 1668440420)
  {
    v2 = *(__b + 20);
    if (v2)
    {
      platform_free(*(__b + 1), v2);
    }

    v3 = *(__b + 15);
    if (v3)
    {
      inflateEnd(v3);
      platform_free(*(__b + 1), *(__b + 15));
    }

    v4 = *(__b + 12);
    if (v4)
    {
      platform_free(*(__b + 1), v4);
    }

    v5 = *(__b + 5);
    if (v5)
    {
      data_archive_decoder_free(v5);
    }

    v6 = *(__b + 4);
    if (v6)
    {
      data_read_stream_free(v6);
    }

    v7 = *(__b + 3);
    if (v7 && *(__b + 16) == 1)
    {
      data_source_free(v7);
    }

    v8 = __b[5];
    if (v8 != -1 && *(__b + 17) == 1)
    {
      platform_close(*(__b + 1), v8);
    }

    v9 = *(__b + 1);
    platform_memset(v9, __b, 0, 0xD0uLL);
    platform_free(v9, __b);

    platform_toolbox_free(v9);
  }
}

uint64_t data_archive_set_passphrase_callback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v9 = "Invalid data archive";
    v10 = a4;
    v11 = 264;
LABEL_7:
    capture_error(v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v11, "data_archive_set_passphrase_callback", v9, a6, a7, a8, vars0);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v9 = "Invalid passphrase callback";
    v10 = a4;
    v11 = 270;
    goto LABEL_7;
  }

  v8 = 0;
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
  return v8;
}

uint64_t data_archive_open_source(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v16 = "Invalid data archive";
    v17 = a3;
    v18 = 292;
LABEL_9:
    capture_error(v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v18, "data_archive_open_source", v16, a6, a7, a8, v27);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    v16 = "Invalid data source";
    v17 = a3;
    v18 = 298;
    goto LABEL_9;
  }

  *(a1 + 24) = a2;
  stream_new = data_read_stream_new(*(a1 + 8), 0);
  *(a1 + 32) = stream_new;
  if (!stream_new)
  {
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    v16 = "Could not create data read stream";
    v17 = a3;
    v18 = 310;
    goto LABEL_9;
  }

  stream_set_source = data_read_stream_set_source(stream_new, *(a1 + 24));
  if (stream_set_source)
  {
    v12 = stream_set_source;
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 323, "data_archive_open_source", "Could not set source for read stream: %d", v13, v14, v15, v12);
    return 0xFFFFFFFFLL;
  }

  v20 = data_archive_decoder_new(*(a1 + 8), 0);
  *(a1 + 40) = v20;
  if (!v20)
  {
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    v16 = "Could not create data decoder";
    v17 = a3;
    v18 = 336;
    goto LABEL_9;
  }

  v21 = data_archive_decoder_set_stream(v20, *(a1 + 32), a3);
  v22 = *(a1 + 40);
  if (v21)
  {
    data_archive_decoder_free(v22);
    *(a1 + 40) = 0;
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 352, "data_archive_open_source", "Could not set read stream for decoder: %d", v23, v24, v25, v21);
    return 0xFFFFFFFFLL;
  }

  type = data_archive_decoder_get_type(v22);
  *(a1 + 48) = type;
  if (!type)
  {
    data_archive_decoder_free(*(a1 + 40));
    *(a1 + 40) = 0;
    data_read_stream_free(*(a1 + 32));
    *(a1 + 32) = 0;
    data_source_free(*(a1 + 24));
    *(a1 + 24) = 0;
    v16 = "Unknown archive format";
    v17 = a3;
    v18 = 368;
    goto LABEL_9;
  }

  return 0;
}

uint64_t data_archive_open_fd(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v19 = "Invalid data archive";
    v20 = a3;
    v21 = 387;
LABEL_10:
    capture_error(v20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v21, "data_archive_open_fd", v19, a6, a7, a8, v22);
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    v19 = "Invalid file descriptor";
    v20 = a3;
    v21 = 393;
    goto LABEL_10;
  }

  *(a1 + 16) = 1;
  v11 = data_source_new(*(a1 + 8), 0);
  if (!v11)
  {
    v19 = "Could not create data source";
    v20 = a3;
    v21 = 407;
    goto LABEL_10;
  }

  v12 = v11;
  data_source_set_fd(v11, a2);

  return data_archive_open_source(a1, v12, a3, v13, v14, v15, v16, v17);
}

uint64_t data_archive_open(uint64_t a1, char *__s, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v18 = "Invalid data archive";
    v19 = a3;
    v20 = 428;
LABEL_11:
    capture_error(v19, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v20, "data_archive_open", v18, a6, a7, a8, v25);
    return 0xFFFFFFFFLL;
  }

  if (!__s)
  {
    v18 = "Invalid path";
    v19 = a3;
    v20 = 434;
    goto LABEL_11;
  }

  if (platform_strlen(*(a1 + 8), __s) > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = open(__s, 0);
  if (v11 == -1)
  {
    v21 = __error();
    strerror(*v21);
    capture_error(a3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 447, "data_archive_open", "Could not open %s: %s", v22, v23, v24, __s);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 17) = 1;

  return data_archive_open_fd(a1, v11, a3, v12, v13, v14, v15, v16);
}

uint64_t data_archive_open_custom(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v20 = "Invalid data archive";
    v21 = a4;
    v22 = 517;
LABEL_10:
    capture_error(v21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v22, "data_archive_open_custom", v20, a6, a7, a8, v23);
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    v20 = "Invalid read handler";
    v21 = a4;
    v22 = 523;
    goto LABEL_10;
  }

  *(a1 + 16) = 1;
  v12 = data_source_new(*(a1 + 8), 0);
  if (!v12)
  {
    v20 = "Could not create data source";
    v21 = a4;
    v22 = 537;
    goto LABEL_10;
  }

  v13 = v12;
  data_source_set_handler(v12, a2, a3);

  return data_archive_open_source(a1, v13, a4, v14, v15, v16, v17, v18);
}

void *data_archive_read_entry(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && *a1 == 1684107875 && *(a1 + 200) == 1668440420)
  {
    if (*(a1 + 48) == 2)
    {
      v10 = *(a1 + 152);
      if (v10 >= 1)
      {
        v11 = *(a1 + 160);
        if (!v11)
        {
          v11 = platform_malloc(*(a1 + 8), 0x200uLL);
          *(a1 + 160) = v11;
          if (!v11)
          {
            v40 = __error();
            v41 = strerror(*v40);
            capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 943, "consume_padding", "Could not allocate padding buffer: %s", v42, v43, v44, v41);
            goto LABEL_44;
          }
        }

        if (v10 >= 0x201)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 950, "consume_padding", "padding amount %lld is larger than buffer %lld", a6, a7, a8, v10);
LABEL_44:
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 574, "data_archive_read_entry", "Could not consume padding %llu", v12, v13, v14, *(a1 + 152));
          return 0;
        }

        if (data_archive_decoder_read_data(*(a1 + 40), v11, v10, 0, a5, a6, a7, a8) == -1)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 957, "consume_padding", "Could not consume %lld bytes of padding", a6, a7, a8, v10);
          goto LABEL_44;
        }

        *(a1 + 152) = 0;
      }
    }

    entry = data_archive_decoder_read_entry(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
    if (entry)
    {
      v21 = entry;
      do
      {
        v22 = *(a1 + 184);
        if (v22 && v22(a1, v21, *(a1 + 192), a2))
        {
          v15 = "Format entry callback failed";
          v16 = a2;
          v17 = 605;
          goto LABEL_11;
        }

        v23 = data_archive_entry_new(*(a1 + 8), 0);
        v18 = v23;
        if (!v23)
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 613, "data_archive_read_entry", "Could not create empty archive entry", v24, v25, v26, v45);
          darc_format_entry_free(v21);
          return v18;
        }

        if (data_archive_entry_set_format_entry(v23, *(a1 + 48), *(a1 + 144), v21, a2, v24, v25, v26))
        {
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 627, "data_archive_read_entry", "Could not set format entry", v27, v28, v29, v45);
          data_archive_entry_free(v18);
          darc_format_entry_free(v21);
          return 0;
        }

        *(a1 + 144) = darc_format_entry_get_type(v21);
        v30 = *(a1 + 48);
        if (v30 == 2)
        {
          v31 = data_archive_entry_size(v18);
          v32 = 512 - v31;
          if (v31 >= 513)
          {
            v32 = v31 & 0x1FF;
          }

          *(a1 + 152) = v32;
          v30 = *(a1 + 48);
        }

        if (v30 == 9)
        {
          *(a1 + 148) = (data_archive_entry_crc32(v18) << 16) & 0xFF000000;
          *(a1 + 168) = 0;
        }

        darc_format_entry_free(v21);
        *(a1 + 60) = 0;
        *(a1 + 52) = 0;
        *(a1 + 73) = 0;
        *(a1 + 68) = 0;
        type = data_archive_entry_get_type(v18);
        if (type <= 2)
        {
          switch(type)
          {
            case 0:
              capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 698, "data_archive_read_entry", "Unknown entry type", v37, v38, v39, v45);
              data_archive_entry_free(v18);
              return 0;
            case 1:
              goto LABEL_40;
            case 2:
              *(a1 + 52) = data_archive_entry_get_data_type(v18);
              *(a1 + 56) = data_archive_entry_compressed_size(v18);
              *(a1 + 64) = data_archive_entry_size(v18);
              return v18;
          }
        }

        else if (type == 4)
        {
          *(a1 + 52) = 1;
          data_archive_entry_free(v18);
        }

        else if (type == 3)
        {
LABEL_40:
          *(a1 + 52) = 1;
          return v18;
        }

        v21 = data_archive_decoder_read_entry(*(a1 + 40), a2, v34, v35, v36, v37, v38, v39);
      }

      while (v21);
    }

    v15 = "Could not read next decoder entry";
    v16 = a2;
    v17 = 596;
  }

  else
  {
    v15 = "Invalid data archive";
    v16 = a2;
    v17 = 557;
  }

LABEL_11:
  capture_error(v16, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v17, "data_archive_read_entry", v15, a6, a7, a8, v45);
  return 0;
}

size_t data_archive_read_data(uint64_t a1, char *a2, size_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || *a1 != 1684107875 || *(a1 + 200) != 1668440420)
  {
    v15 = "data_archive_read_data";
    v16 = "Invalid data archive";
    v17 = a4;
    v18 = 771;
    goto LABEL_13;
  }

  if (!a2)
  {
    v15 = "data_archive_read_data";
    v16 = "Invalid read buffer";
    v17 = a4;
    v18 = 777;
    goto LABEL_13;
  }

  if (!a3)
  {
    v15 = "data_archive_read_data";
    v16 = "Invalid read size";
    v17 = a4;
    v18 = 783;
    goto LABEL_13;
  }

  v12 = *(a1 + 52);
  v13 = -1;
  if (v12 > 3)
  {
    if (v12 <= 5)
    {
      if (v12 != 4)
      {

        return read_streamed_data(a1, a2, a3, a4, a5, a6, a7, a8);
      }

      if ((*(a1 + 168) & 1) == 0 && init_pkzip_cipher(a1, a4, a3, a4, a5, a6, a7, a8))
      {
        v27 = "decrypt_data";
        v28 = "Could not initialize the PKZip cipher";
        v29 = a4;
        v30 = 1206;
LABEL_109:
        capture_error(v29, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v30, v27, v28, a6, a7, a8, v105);
        return v13;
      }

      if (*(a1 + 64) == *(a1 + 72))
      {
        v13 = 0;
LABEL_51:
        *(a1 + 168) = 0;
        return v13;
      }

      data_direct = read_data_direct(a1, a2, a3, a4, a5, a6, a7, a8);
      if (data_direct <= 0)
      {
        v35 = __error();
        v36 = strerror(*v35);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1222, "decrypt_data", "Could not read ciphertext: %s", v37, v38, v39, v36);
        return v13;
      }

      v13 = data_direct;
      pkzip_crypto_decrypt_buffer((a1 + 172), a2, data_direct);
      if (*(a1 + 64) == *(a1 + 72))
      {
        goto LABEL_51;
      }

      return v13;
    }

    if (v12 != 6)
    {
      if (v12 != 7)
      {
        return v13;
      }

      if ((*(a1 + 80) & 1) == 0)
      {
        if ((*(a1 + 168) & 1) == 0 && init_pkzip_cipher(a1, a4, a3, a4, a5, a6, a7, a8))
        {
          v27 = "decrypt_streamed_data";
          v28 = "Could not initialize the PKZip cipher";
          v29 = a4;
          v30 = 1557;
          goto LABEL_109;
        }

        streamed_data = read_streamed_data(a1, a2, a3, a4, a5, a6, a7, a8);
        if (streamed_data < 0)
        {
          v27 = "decrypt_streamed_data";
          v28 = "Could not read encrypted data";
          v29 = a4;
          v30 = 1570;
          goto LABEL_109;
        }

        v13 = streamed_data;
        if (!streamed_data)
        {
          goto LABEL_51;
        }

        pkzip_crypto_decrypt_buffer((a1 + 172), a2, streamed_data);
        return v13;
      }

      return 0;
    }

    if (*(a1 + 80))
    {
      return 0;
    }

    if (!*(a1 + 96))
    {
      *(a1 + 88) = 0x20000;
      v23 = platform_valloc(*(a1 + 8), 0x20000uLL);
      *(a1 + 96) = v23;
      if (!v23)
      {
        v80 = *(a1 + 88);
        v81 = __error();
        strerror(*v81);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1378, "decompress_streamed_data", "Could not allocate %ld for read buffer: %s", v82, v83, v84, v80);
        return v13;
      }

      platform_memset(*(a1 + 8), v23, 0, *(a1 + 88));
      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 120))
    {
      v31 = platform_calloc(*(a1 + 8), 1uLL, 0x70uLL);
      *(a1 + 120) = v31;
      if (!v31)
      {
        v90 = __error();
        v91 = strerror(*v90);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1394, "decompress_streamed_data", "Could not allocate zlib stream: %s", v92, v93, v94, v91);
        return v13;
      }

      v32 = inflateInit2_(v31, -15, "1.2.12", 112);
      if (v32)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1401, "decompress_streamed_data", "Could not inflateInit2: %d", a6, a7, a8, v32);
        return v13;
      }
    }

    v24 = *(a1 + 112);
    if (v24)
    {
      v25 = *(a1 + 104);
LABEL_68:
      v45 = 0;
      v46 = 0;
      v47 = *(a1 + 120);
      do
      {
        v47->next_in = &v25[v46];
        v47->avail_in = v24 - v46;
        v47->next_out = a2;
        v47->avail_out = a3;
        v48 = inflate(v47, 0);
        if (v48)
        {
          if (v48 != 1)
          {
            capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1476, "decompress_streamed_data", "Could not inflate: %d", v50, v51, v52, v48);
            return -1;
          }

          v45 = 1;
          *(a1 + 80) = 1;
        }

        v53 = *(a1 + 112);
        v47 = *(a1 + 120);
        v54 = v24 - v46 - v47->avail_in;
        v25 = (*(a1 + 104) + v54);
        *(a1 + 104) = v25;
        *(a1 + 112) = v53 - v54;
        v13 = a3 - v47->avail_out;
        if (v45)
        {
          break;
        }

        v46 += v54;
      }

      while (!v13 && v24 != v46);
      if ((v45 & 1) == 0)
      {
        return v13;
      }

      if (v53 != v54)
      {
        v56 = data_archive_decoder_rewind_data(*(a1 + 40), v25, v53 - v54, 0, v49, v50, v51, v52);
        if (v56)
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1505, "decompress_streamed_data", "Could not rewind remaining data: %d", v57, v58, v59, v56);
          return -1;
        }

        *(a1 + 104) = *(a1 + 96);
        *(a1 + 112) = 0;
        v47 = *(a1 + 120);
      }

      v97 = inflateEnd(v47);
      if (v97)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1520, "decompress_streamed_data", "Could not inflateEnd: %d", v98, v99, v100, v97);
        return -1;
      }

LABEL_120:
      platform_free(*(a1 + 8), *(a1 + 120));
      *(a1 + 120) = 0;
      return v13;
    }

    v40 = *(a1 + 88);
    data = data_archive_decoder_read_data(*(a1 + 40), *(a1 + 96), v40, 0, a5, a6, a7, a8);
    if (data)
    {
      v24 = data;
      if (data != -1 || *__error() == 35)
      {
        v25 = *(a1 + 96);
        *(a1 + 104) = v25;
        *(a1 + 112) = v24;
        goto LABEL_68;
      }

      capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1420, "decompress_streamed_data", "Could not read %ld bytes from decoder", v42, v43, v44, v40);
      return -1;
    }

    v15 = "decompress_streamed_data";
    v16 = "End of decoder";
    v17 = a4;
    v18 = 1427;
LABEL_13:
    capture_error(v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v18, v15, v16, a6, a7, a8, v105);
    return -1;
  }

  if (v12 == 1)
  {
    return 0;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      return v13;
    }

    if (*(a1 + 80))
    {
      return 0;
    }

    if (!*(a1 + 96))
    {
      *(a1 + 88) = 0x20000;
      v19 = platform_valloc(*(a1 + 8), 0x20000uLL);
      *(a1 + 96) = v19;
      if (!v19)
      {
        v85 = *(a1 + 88);
        v86 = __error();
        strerror(*v86);
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1027, "decompress_data", "Could not allocate %ld for read buffer: %s", v87, v88, v89, v85);
        return v13;
      }

      platform_memset(*(a1 + 8), v19, 0, *(a1 + 88));
      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
    }

    if (!*(a1 + 120))
    {
      v33 = platform_calloc(*(a1 + 8), 1uLL, 0x70uLL);
      *(a1 + 120) = v33;
      if (!v33)
      {
        v95 = __error();
        v96 = strerror(*v95);
        v27 = "decompress_data";
        v28 = "Could not allocate zlib stream: %s";
        v105 = v96;
        v29 = a4;
        v30 = 1043;
        goto LABEL_109;
      }

      v34 = inflateInit2_(v33, -15, "1.2.12", 112);
      if (v34)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1050, "decompress_data", "Could not inflateInit2: %d", a6, a7, a8, v34);
        return v13;
      }
    }

    v20 = *(a1 + 112);
    if (v20)
    {
      v21 = *(a1 + 104);
    }

    else
    {
      if (*(a1 + 88) >= *(a1 + 56) - *(a1 + 72))
      {
        v60 = *(a1 + 56) - *(a1 + 72);
      }

      else
      {
        v60 = *(a1 + 88);
      }

      v61 = data_archive_decoder_read_data(*(a1 + 40), *(a1 + 96), v60, 0, a5, a6, a7, a8);
      if (!v61)
      {
        v15 = "decompress_data";
        v16 = "End of decoder";
        v17 = a4;
        v18 = 1082;
        goto LABEL_13;
      }

      v20 = v61;
      if (v61 == -1 && *__error() != 35)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1075, "decompress_data", "Could not read %ld bytes from decoder", v62, v63, v64, v60);
        return -1;
      }

      v21 = *(a1 + 96);
      *(a1 + 104) = v21;
      *(a1 + 112) = v20;
      *(a1 + 72) += v20;
    }

    v65 = 0;
    v66 = 0;
    v67 = *(a1 + 120);
    do
    {
      v67->next_in = &v21[v66];
      v67->avail_in = v20 - v66;
      v67->next_out = a2;
      v67->avail_out = a3;
      v68 = inflate(v67, 0);
      if (v68)
      {
        if (v68 != 1)
        {
          capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1134, "decompress_data", "Could not inflate: %d", v70, v71, v72, v68);
          return -1;
        }

        v65 = 1;
        *(a1 + 80) = 1;
      }

      v73 = *(a1 + 112);
      v67 = *(a1 + 120);
      v74 = v20 - v66 - v67->avail_in;
      v21 = (*(a1 + 104) + v74);
      *(a1 + 104) = v21;
      *(a1 + 112) = v73 - v74;
      v13 = a3 - v67->avail_out;
      if (v65)
      {
        break;
      }

      v66 += v74;
    }

    while (!v13 && v20 != v66);
    if ((v65 & 1) == 0)
    {
      return v13;
    }

    if (v73 != v74)
    {
      v76 = data_archive_decoder_rewind_data(*(a1 + 40), v21, v73 - v74, 0, v69, v70, v71, v72);
      if (v76)
      {
        capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1163, "decompress_data", "Could not rewind remaining data: %d", v77, v78, v79, v76);
        return -1;
      }

      *(a1 + 104) = *(a1 + 96);
      *(a1 + 112) = 0;
      v67 = *(a1 + 120);
    }

    v101 = inflateEnd(v67);
    if (v101)
    {
      capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1178, "decompress_data", "Could not inflateEnd: %d", v102, v103, v104, v101);
      return -1;
    }

    goto LABEL_120;
  }

  return read_data_direct(a1, a2, a3, a4, a5, a6, a7, a8);
}

size_t read_data_direct(uint64_t *a1, void *a2, size_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[8] - a1[9] >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = a1[8] - a1[9];
  }

  data = data_archive_decoder_read_data(a1[5], a2, v10, 0, a5, a6, a7, a8);
  v15 = data;
  if (data == -1)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 983, "read_data_direct", "Could not read %ld from data decoder", v12, v13, v14, v10);
  }

  else
  {
    a1[9] += data;
  }

  return v15;
}

uint64_t read_streamed_data(uint64_t a1, char *a2, size_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 80))
  {
    return 0;
  }

  v10 = a3;
  data = data_archive_decoder_read_data(*(a1 + 40), a2, a3, a4, a5, a6, a7, a8);
  if (!data)
  {
    v22 = "End of decoder";
    v23 = a4;
    v24 = 1276;
LABEL_18:
    capture_error(v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v24, "read_streamed_data", v22, v14, v15, v16, v34);
    return -1;
  }

  v8 = data;
  if (data == -1 && *__error() != 35)
  {
    capture_error(a4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1269, "read_streamed_data", "Could not read %ld bytes from decoder", v17, v18, v19, v10);
    return -1;
  }

  byte_stream_new(*(a1 + 8), 0);
  if (!v20)
  {
    v22 = "Could not create byte stream";
    v23 = a4;
    v24 = 1292;
    goto LABEL_18;
  }

  v21 = v20;
  if (v8 < 5)
  {
    byte_stream_free(v20);
    return v8;
  }

  v25 = 0;
  v26 = v8;
  do
  {
    byte_stream_attach(v21, &a2[v25], v26);
    uint32 = byte_stream_read_uint32(v21);
    v26 -= uint32 != 134695760;
    if (uint32 == 134695760)
    {
      break;
    }

    ++v25;
  }

  while (v26 > 4);
  byte_stream_free(v21);
  if (uint32 == 134695760)
  {
    *(a1 + 80) = 1;
    v32 = data_archive_decoder_rewind_data(*(a1 + 40), &a2[v25], v26, a4, v28, v29, v30, v31);
    if (!v32)
    {
      v8 -= v26;
      return v8;
    }

    v22 = "Could not rewind remaining data: %d";
    v34 = v32;
    v23 = a4;
    v24 = 1334;
    goto LABEL_18;
  }

  return v8;
}

uint64_t init_pkzip_cipher(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x277D85DE8];
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  v9 = (a1 + 172);
  *(a1 + 180) = 0;
  v10 = *(a1 + 128);
  if (v10)
  {
    v12 = v10(a1, *(a1 + 136), a2);
    if (v12)
    {
      pkzip_crypto_init(v9, v12);
      v14 = 0;
      v15 = __dst;
      do
      {
        data = data_archive_decoder_read_data(*(a1 + 40), v15, 12 - v14, a2, v13, a6, a7, a8);
        if (data <= 0)
        {
          v22 = __error();
          v23 = strerror(*v22);
          capture_error(a2, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", 1635, "init_pkzip_cipher", "Could not read initial ciphertext: %s", v24, v25, v26, v23);
          goto LABEL_13;
        }

        v17 = data;
        pkzip_crypto_decrypt_buffer(v9, v15, data);
        v15 += v17;
        v14 += v17;
      }

      while (v14 != 12);
      if (*(a1 + 151) == __dst[11])
      {
        result = 0;
        *(a1 + 168) = 1;
        goto LABEL_14;
      }

      v19 = "Decryption passphrase appears to be incorrect";
      v20 = a2;
      v21 = 1650;
    }

    else
    {
      v19 = "Client did not provide passphrase";
      v20 = a2;
      v21 = 1615;
    }
  }

  else
  {
    v19 = "No passphrase callback";
    v20 = a2;
    v21 = 1605;
  }

  capture_error(v20, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/data_archive/data_archive.c", v21, "init_pkzip_cipher", v19, a6, a7, a8, v28);
LABEL_13:
  result = 0xFFFFFFFFLL;
LABEL_14:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t BOMCopierSourceNew(char *a1, const __CFDictionary *a2, uint64_t a3, void *a4)
{
  v208[2] = *MEMORY[0x277D85DE8];
  if (!(a1 | a2))
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 636, "BOMCopierSourceNew", "path and options are NULL");
LABEL_328:
    v9 = 0;
    goto LABEL_329;
  }

  v8 = malloc_type_calloc(1uLL, 0x198uLL, 0x10B0040EDB777B7uLL);
  v9 = v8;
  if (!v8)
  {
    v115 = __error();
    BOMCopierErrorCapture(a4, *v115, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 649, "BOMCopierSourceNew", "Could not allocate empty BOMCopierSource");
    goto LABEL_329;
  }

  v8[3] = a3;
  *(v8 + 8) = geteuid();
  v10 = getegid();
  *(v9 + 36) = v10;
  *(v9 + 40) = -1;
  *(v9 + 112) = 0;
  *(v9 + 64) = 1;
  *(v9 + 240) = 0x4000000;
  *(v9 + 168) = 1;
  v11 = *(v9 + 24);
  if (v11)
  {
    v12 = v10;
    if (os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(v9 + 32);
      buf.f_bsize = 67109376;
      buf.f_iosize = v13;
      LOWORD(buf.f_blocks) = 1024;
      *(&buf.f_blocks + 2) = v12;
      _os_log_impl(&dword_241C0E000, v11, OS_LOG_TYPE_DEFAULT, "euid: %u egid: %u", &buf, 0xEu);
    }
  }

  if (!a2)
  {
    goto LABEL_145;
  }

  TypeID = CFBooleanGetTypeID();
  Value = CFDictionaryGetValue(a2, @"useFilesystemCache");
  if (Value)
  {
    v16 = Value;
    if (TypeID != CFGetTypeID(Value))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1600, "parse_copier_source_options", "kBOMCopierSourceOptionUseFilesystemCacheKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 64) = CFEqual(v16, *MEMORY[0x277CBED28]) != 0;
  }

  v17 = CFDictionaryGetValue(a2, @"useEnumerationBom");
  if (v17)
  {
    v18 = v17;
    if (TypeID != CFGetTypeID(v17))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1612, "parse_copier_source_options", "kBOMCopierSourceOptionUseEnumerationBomKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 65) = CFEqual(v18, *MEMORY[0x277CBED28]) != 0;
  }

  v19 = CFDictionaryGetValue(a2, @"applyBomOwnership");
  if (v19)
  {
    v20 = v19;
    if (TypeID != CFGetTypeID(v19))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1624, "parse_copier_source_options", "kBOMCopierSourceOptionApplyBomOwnershipKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 216) = CFEqual(v20, *MEMORY[0x277CBED28]) != 0;
  }

  v21 = CFDictionaryGetValue(a2, @"allowAccessFailures");
  if (v21)
  {
    v22 = v21;
    if (TypeID == CFGetTypeID(v21))
    {
      if (CFEqual(*MEMORY[0x277CBED28], v22) == 1)
      {
        *(v9 + 217) = 1;
      }

      goto LABEL_21;
    }

    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1636, "parse_copier_source_options", "kBOMCopierSourceAllowAccessFailuresKey must be a CFBooleanRef");
LABEL_327:
    BOMCopierSourceFree(v9);
    goto LABEL_328;
  }

LABEL_21:
  v23 = CFDictionaryGetValue(a2, @"crossDevices");
  if (v23)
  {
    v24 = v23;
    if (TypeID != CFGetTypeID(v23))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1651, "parse_copier_source_options", "kBOMCopierSourceOptionCrossDevicesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 168) = CFEqual(*MEMORY[0x277CBED28], v24) != 0;
  }

  v25 = CFDictionaryGetValue(a2, @"extractLibarchive");
  if (v25)
  {
    v26 = v25;
    if (TypeID != CFGetTypeID(v25))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1663, "parse_copier_source_options", "kBOMCopierSourceOptionExtractLibarchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v26) == 1)
    {
      *(v9 + 112) = 2;
    }
  }

  v27 = CFDictionaryGetValue(a2, @"extractDataArchive");
  if (v27)
  {
    v28 = v27;
    if (TypeID != CFGetTypeID(v27))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1678, "parse_copier_source_options", "kBOMCopierSourceOptionExtractDataArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v28) == 1)
    {
      *(v9 + 112) = 3;
    }
  }

  v29 = CFDictionaryGetValue(a2, @"enforceArchiveEntryPermissions");
  if (v29)
  {
    v30 = v29;
    if (TypeID != CFGetTypeID(v29))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1693, "parse_copier_source_options", "kBOMCopierSourceOptionEnforceArchiveEntryPermissionsKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 272) = CFEqual(*MEMORY[0x277CBED28], v30) != 0;
  }

  v31 = CFDictionaryGetValue(a2, @"extractAppleArchive");
  if (v31)
  {
    v32 = v31;
    if (TypeID != CFGetTypeID(v31))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1705, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    if (CFEqual(*MEMORY[0x277CBED28], v32) == 1)
    {
      *(v9 + 112) = 4;
    }
  }

  v33 = CFNumberGetTypeID();
  v34 = CFDictionaryGetValue(a2, @"inputFD");
  if (v34)
  {
    v35 = v34;
    if (v33 != CFGetTypeID(v34))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1722, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFNumberRef");
      goto LABEL_327;
    }

    buf.f_bsize = -1;
    if (!CFNumberGetValue(v35, kCFNumberSInt32Type, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1730, "parse_copier_source_options", "Could not convert the input file descriptor number to kCFNumberSInt32Type");
      goto LABEL_327;
    }

    *(v9 + 40) = buf.f_bsize;
  }

  v36 = CFReadStreamGetTypeID();
  v37 = CFDictionaryGetValue(a2, @"inputStream");
  if (v37)
  {
    v38 = v37;
    if (v36 != CFGetTypeID(v37))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1744, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFReadStreamRef");
      goto LABEL_327;
    }

    if (CFReadStreamGetStatus(v38) != kCFStreamStatusOpen)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1751, "parse_copier_source_options", "CFReadStream is not open");
      goto LABEL_327;
    }

    *(v9 + 48) = v38;
  }

  v39 = CFDictionaryGetValue(a2, @"synthesizeResourceForks");
  if (v39)
  {
    v40 = v39;
    if (TypeID != CFGetTypeID(v39))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1763, "parse_copier_source_options", "kBOMCopierSourceOptionSynthesizeResourceForksKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 66) = CFEqual(*MEMORY[0x277CBED28], v40) != 0;
  }

  v41 = CFDictionaryGetValue(a2, @"synthesizeAppleDoubles");
  if (v41)
  {
    v42 = v41;
    if (TypeID != CFGetTypeID(v41))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1775, "parse_copier_source_options", "kBOMCopierSourceOptionExtractAppleArchiveKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 67) = CFEqual(*MEMORY[0x277CBED28], v42) != 0;
  }

  v43 = CFDictionaryGetValue(a2, @"appleDoublesCaptureResourceAttributes");
  if (v43)
  {
    v44 = v43;
    if (TypeID != CFGetTypeID(v43))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1789, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureResourceAttributesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 68) = CFEqual(*MEMORY[0x277CBED28], v44) != 0;
  }

  v45 = CFDictionaryGetValue(a2, @"appleDoublesCaptureExtendedAttributes");
  if (v45)
  {
    v46 = v45;
    if (TypeID != CFGetTypeID(v45))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1801, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureExtendedAttributesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 69) = CFEqual(*MEMORY[0x277CBED28], v46) != 0;
  }

  v47 = CFDictionaryGetValue(a2, @"appleDoublesCaptureACLs");
  if (v47)
  {
    v48 = v47;
    if (TypeID != CFGetTypeID(v47))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1813, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleCaptureACLsKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 70) = CFEqual(*MEMORY[0x277CBED28], v48) != 0;
  }

  v49 = CFDictionaryGetValue(a2, @"deferAppleDoubles");
  if (v49)
  {
    v50 = v49;
    if (TypeID != CFGetTypeID(v49))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1825, "parse_copier_source_options", "kBOMCopierSourceOptionDeferAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 71) = CFEqual(*MEMORY[0x277CBED28], v50) != 0;
  }

  v51 = CFDictionaryGetValue(a2, @"replayAppleDoubles");
  if (v51)
  {
    v52 = v51;
    if (TypeID != CFGetTypeID(v51))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1837, "parse_copier_source_options", "kBOMCopierSourceOptionReplayAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 72) = CFEqual(*MEMORY[0x277CBED28], v52) != 0;
  }

  v53 = CFDictionaryGetValue(a2, @"replaySymlinks");
  if (v53)
  {
    v54 = v53;
    if (TypeID != CFGetTypeID(v53))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1849, "parse_copier_source_options", "kBOMCopierSourceOptionReplaySymlinksKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 91) = CFEqual(*MEMORY[0x277CBED28], v54) != 0;
  }

  v55 = CFDictionaryGetValue(a2, @"replayDirectories");
  if (v55)
  {
    v56 = v55;
    if (TypeID != CFGetTypeID(v55))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1861, "parse_copier_source_options", "kBOMCopierSourceOptionReplayDirectoriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 92) = CFEqual(*MEMORY[0x277CBED28], v56) != 0;
  }

  v57 = CFDictionaryGetValue(a2, @"excludeRootDirectory");
  if (v57)
  {
    v58 = v57;
    if (TypeID != CFGetTypeID(v57))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1873, "parse_copier_source_options", "kBOMCopierSourceOptionExcludeRootDirectoryKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 93) = CFEqual(*MEMORY[0x277CBED28], v58) != 0;
  }

  v59 = CFDictionaryGetValue(a2, @"skipRootDirectory");
  if (v59)
  {
    v60 = v59;
    if (TypeID != CFGetTypeID(v59))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1885, "parse_copier_source_options", "kBOMCopierSourceOptionSkipRootDirectoryKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 94) = CFEqual(*MEMORY[0x277CBED28], v60) != 0;
  }

  v61 = CFDictionaryGetValue(a2, @"sequesterAppleDoubles");
  if (v61)
  {
    v62 = v61;
    if (TypeID != CFGetTypeID(v61))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1897, "parse_copier_source_options", "kBOMCopierSourceOptionSequesterAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 95) = CFEqual(*MEMORY[0x277CBED28], v62) != 0;
  }

  v63 = CFDictionaryGetValue(a2, @"unsequesterAppleDoubles");
  if (v63)
  {
    v64 = v63;
    if (TypeID != CFGetTypeID(v63))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1909, "parse_copier_source_options", "kBOMCopierSourceOptionUnsequesterAppleDoublesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 96) = CFEqual(*MEMORY[0x277CBED28], v64) != 0;
  }

  v65 = CFDictionaryGetValue(a2, @"libarchiveReadBlockSize");
  if (v65)
  {
    v66 = v65;
    if (v33 != CFGetTypeID(v65))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1921, "parse_copier_source_options", "kBOMCopierSourceOptionLibarchiveReadBlockSize must be a CFNumberRef");
      goto LABEL_327;
    }

    *&buf.f_bsize = 0;
    if (!CFNumberGetValue(v66, kCFNumberSInt64Type, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1929, "parse_copier_source_options", "Could not convert the read block size number to kCFNumberSInt64Type");
      goto LABEL_327;
    }

    *(v9 + 240) = *&buf.f_bsize;
  }

  v67 = CFDictionaryGetValue(a2, @"discoverBinaries");
  if (v67)
  {
    v68 = v67;
    if (TypeID != CFGetTypeID(v67))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1941, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverBinaries must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 384) = CFEqual(*MEMORY[0x277CBED28], v68) != 0;
  }

  v69 = CFDictionaryGetValue(a2, @"discoverResourceAttribute");
  if (v69)
  {
    v70 = v69;
    if (TypeID != CFGetTypeID(v69))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1953, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverResourceAttribute must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 385) = CFEqual(*MEMORY[0x277CBED28], v70) != 0;
  }

  v71 = CFDictionaryGetValue(a2, @"discoverExtendedAttributes");
  if (v71)
  {
    v72 = v71;
    if (TypeID != CFGetTypeID(v71))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1965, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverExtendedAttributes must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 386) = CFEqual(*MEMORY[0x277CBED28], v72) != 0;
  }

  v73 = CFDictionaryGetValue(a2, @"discoverCompressionAttributes");
  if (v73)
  {
    v74 = v73;
    if (TypeID != CFGetTypeID(v73))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1977, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverCompressionAttributes must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 387) = CFEqual(*MEMORY[0x277CBED28], v74) != 0;
  }

  v75 = CFDictionaryGetValue(a2, @"discoverACLs");
  if (v75)
  {
    v76 = v75;
    if (TypeID != CFGetTypeID(v75))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1989, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverACLs must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 388) = CFEqual(*MEMORY[0x277CBED28], v76) != 0;
  }

  v77 = CFDictionaryGetValue(a2, @"discoverQuarantine");
  if (v77)
  {
    v78 = v77;
    if (TypeID != CFGetTypeID(v77))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2001, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverQuarantine must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 389) = CFEqual(*MEMORY[0x277CBED28], v78) != 0;
  }

  v79 = CFStringGetTypeID();
  v80 = CFDictionaryGetValue(a2, @"replayQuarantineFromPath");
  if (v80)
  {
    v81 = v80;
    if (v79 != CFGetTypeID(v80))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2015, "parse_copier_source_options", "kBOMCopierSourceOptionReplayQuarantineFromPath must be a CFBooleanRef");
      goto LABEL_327;
    }

    v82 = CFStringGetLength(v81) + 1;
    v83 = malloc_type_calloc(1uLL, v82, 0xB8ABC262uLL);
    *(v9 + 392) = v83;
    if (!v83)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2027, "parse_copier_source_options", "Could not allocate %ld bytes for path_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v81, v83, v82, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2034, "parse_copier_source_options", "Could not convert quarantine source path string to C string");
      goto LABEL_327;
    }
  }

  v84 = CFDictionaryGetValue(a2, @"keepParent");
  if (v84)
  {
    v85 = v84;
    if (TypeID != CFGetTypeID(v84))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2044, "parse_copier_source_options", "kBOMCopierSourceOptionKeepParent must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 400) = CFEqual(*MEMORY[0x277CBED28], v85) != 0;
  }

  v86 = CFDictionaryGetValue(a2, @"passphrase");
  if (v86)
  {
    v87 = v86;
    if (v79 != CFGetTypeID(v86))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2056, "parse_copier_source_options", "kBOMCopierSourceOptionPassphraseKey must be a CFStringRef");
      goto LABEL_327;
    }

    v88 = CFStringGetLength(v87) + 1;
    v89 = malloc_type_calloc(1uLL, v88, 0xB0C8A890uLL);
    *(v9 + 248) = v89;
    if (!v89)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2066, "parse_copier_source_options", "Could not allocate %ld bytes for passphrase_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v87, v89, v88, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2073, "parse_copier_source_options", "Could not convert passphrase string to C string");
      goto LABEL_327;
    }
  }

  v90 = CFDictionaryGetValue(a2, @"discoverSegmentedFiles");
  if (v90)
  {
    v91 = v90;
    if (TypeID != CFGetTypeID(v90))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2083, "parse_copier_source_options", "kBOMCopierSourceOptionDiscoverSegmentedFilesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 273) = CFEqual(*MEMORY[0x277CBED28], v91) != 0;
  }

  v92 = CFDictionaryGetValue(a2, @"ignoreAppleDoubles");
  if (v92)
  {
    v93 = v92;
    if (TypeID != CFGetTypeID(v92))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2095, "parse_copier_source_options", "kBOMCopierSourceOptionIgnoreAppleDoubles must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 88) = CFEqual(*MEMORY[0x277CBED28], v93) != 0;
  }

  v94 = CFDictionaryGetValue(a2, @"appleDoubleSuffix");
  if (v94)
  {
    v95 = v94;
    if (v79 != CFGetTypeID(v94))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2107, "parse_copier_source_options", "kBOMCopierSourceOptionAppleDoubleSuffix must be a CFStringRef");
      goto LABEL_327;
    }

    v96 = CFStringGetLength(v95) + 1;
    v97 = malloc_type_calloc(1uLL, v96, 0xBD629B1DuLL);
    *(v9 + 80) = v97;
    if (!v97)
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2117, "parse_copier_source_options", "Could not allocate %ld bytes for suffix_size");
      goto LABEL_327;
    }

    if (!CFStringGetCString(v95, v97, v96, 0x8000100u))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2124, "parse_copier_source_options", "Could not convert AppleDouble suffix string to C string");
      goto LABEL_327;
    }
  }

  v98 = CFDictionaryGetValue(a2, @"reorderExtraEntries");
  if (v98)
  {
    v99 = v98;
    if (TypeID != CFGetTypeID(v98))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2134, "parse_copier_source_options", "kBOMCopierSourceOptionReorderExtraEntriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 89) = CFEqual(*MEMORY[0x277CBED28], v99) != 0;
  }

  v100 = CFDictionaryGetValue(a2, @"replayExtraAppleDoubles");
  if (v100)
  {
    v101 = v100;
    if (TypeID != CFGetTypeID(v100))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2146, "parse_copier_source_options", "kBOMCopierSourceOptionReplayExtraAppleDoubleEntriesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 90) = CFEqual(*MEMORY[0x277CBED28], v101) != 0;
  }

  v102 = CFDictionaryGetValue(a2, @"disableLexicographicSort");
  if (v102)
  {
    v103 = v102;
    if (TypeID != CFGetTypeID(v102))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2158, "parse_copier_source_options", "kBOMCopierSourceOptionDisableLexicographicSortKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 97) = CFEqual(*MEMORY[0x277CBED28], v103) != 0;
  }

  v104 = CFDictionaryGetValue(a2, @"segmentFileSize");
  if (v104)
  {
    v105 = v104;
    if (v33 != CFGetTypeID(v104))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2170, "parse_copier_source_options", "kBOMCopierSourceOptionSegmentFileSizeKey must be a CFNumberRef");
      goto LABEL_327;
    }

    *&buf.f_bsize = -1;
    if (!CFNumberGetValue(v105, kCFNumberLongLongType, &buf))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2178, "parse_copier_source_options", "Could not convert kBOMCopierSourceOptionSegmentFileSizeKey to kCFNumberLongLongType");
      goto LABEL_327;
    }

    *(v9 + 280) = *&buf.f_bsize;
  }

  v106 = CFDictionaryGetValue(a2, @"injectAppleDoubleBetweenSegmentedFiles");
  if (v106)
  {
    v107 = v106;
    if (TypeID != CFGetTypeID(v106))
    {
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2190, "parse_copier_source_options", "kBOMCopierSourceOptionInjectAppleDoubleBetweenSegmentedFilesKey must be a CFBooleanRef");
      goto LABEL_327;
    }

    *(v9 + 98) = CFEqual(*MEMORY[0x277CBED28], v107) != 0;
  }

LABEL_145:
  v108 = *(v9 + 112);
  if ((v108 - 2) >= 3 && *(v9 + 65) == 1)
  {
    *(v9 + 112) = 1;
    v109 = *(v9 + 24);
    if (!v109 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
LABEL_164:
      v116 = realpath_DARWIN_EXTSN(a1, 0);
      *(v9 + 184) = v116;
      if (!v116)
      {
        v136 = *__error();
        v137 = __error();
        strerror(*v137);
        BOMCopierErrorCapture(a4, v136, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 862, "BOMCopierSourceNew", "Could not resolve the path: %s");
        goto LABEL_327;
      }

      v117 = *(v9 + 24);
      if (!v117)
      {
        goto LABEL_329;
      }

      v118 = v116;
      if (!os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = v118;
      v119 = "Source path: %s";
      goto LABEL_168;
    }

    LOWORD(buf.f_bsize) = 0;
    _os_log_impl(&dword_241C0E000, v109, OS_LOG_TYPE_DEFAULT, "Using an enumeration bom", &buf, 2u);
    v108 = *(v9 + 112);
  }

  if (v108 <= 1)
  {
    if (!v108)
    {
      v132 = realpath_DARWIN_EXTSN(a1, 0);
      *(v9 + 136) = v132;
      if (!v132)
      {
        v140 = *__error();
        v141 = __error();
        strerror(*v141);
        BOMCopierErrorCapture(a4, v140, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 775, "BOMCopierSourceNew", "Could not resolve %s: %s");
        goto LABEL_327;
      }

      v133 = v132;
      if (*(v9 + 400) == 1)
      {
        if (!basename_r(v132, &buf))
        {
          v164 = *__error();
          v165 = *(v9 + 136);
          v166 = __error();
          strerror(*v166);
          BOMCopierErrorCapture(a4, v164, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 786, "BOMCopierSourceNew", "Could not basename_r %s: %s");
          goto LABEL_327;
        }

        *(v9 + 144) = strlen(&buf) + 1;
        v133 = *(v9 + 136);
      }

      *(v9 + 152) = strlen(v133);
      v208[0] = v133;
      v208[1] = 0;
      if (*(v9 + 168))
      {
        v134 = 21;
      }

      else
      {
        v134 = 85;
      }

      if (*(v9 + 97) == 1)
      {
        v135 = 0;
      }

      else
      {
        v135 = fts_compare;
      }

      v144 = fts_open(v208, v134, v135);
      *(v9 + 160) = v144;
      if (!v144)
      {
        v155 = *__error();
        v156 = *(v9 + 136);
        v157 = __error();
        strerror(*v157);
        BOMCopierErrorCapture(a4, v155, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 817, "BOMCopierSourceNew", "Could not open the FTS handle for %s: %s");
        goto LABEL_327;
      }

      memset(&v204, 0, sizeof(v204));
      if (stat(*(v9 + 136), &v204))
      {
        v145 = *__error();
        v146 = __error();
        strerror(*v146);
        BOMCopierErrorCapture(a4, v145, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 830, "BOMCopierSourceNew", "Could not stat %s: %s");
        goto LABEL_327;
      }

      *(v9 + 172) = v204.st_dev;
      bzero(&buf, 0x878uLL);
      if (statfs(*(v9 + 136), &buf))
      {
        v162 = *__error();
        v163 = __error();
        strerror(*v163);
        BOMCopierErrorCapture(a4, v162, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 841, "BOMCopierSourceNew", "Could not statfs %s: %s");
        goto LABEL_327;
      }

      *(v9 + 176) = (buf.f_flags & 8) == 0;
      v117 = *(v9 + 24);
      if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      v170 = *(v9 + 136);
      v205 = 136315138;
      v206 = v170;
      v119 = "Opened FTS from %s";
      p_buf = &v205;
      goto LABEL_169;
    }

    if (v108 != 1)
    {
      goto LABEL_329;
    }

    goto LABEL_164;
  }

  if (v108 == 2)
  {
    v123 = archive_read_new();
    *(v9 + 232) = v123;
    if (!v123)
    {
      v138 = *__error();
      BOMCopierErrorCapture(a4, v138, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 882, "BOMCopierSourceNew", "Could not create archive object");
      goto LABEL_327;
    }

    support_filter_all = archive_read_support_filter_all();
    if (support_filter_all)
    {
      BOMCopierErrorCapture(a4, support_filter_all, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 891, "BOMCopierSourceNew", "Could not enable read support for all filter types");
      goto LABEL_244;
    }

    v147 = *(v9 + 232);
    support_format_all = archive_read_support_format_all();
    if (support_format_all)
    {
      BOMCopierErrorCapture(a4, support_format_all, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 901, "BOMCopierSourceNew", "Could not enable read support for all format types");
      goto LABEL_244;
    }

    v167 = *(v9 + 232);
    set_options = archive_read_set_options();
    if (set_options)
    {
      BOMCopierErrorCapture(a4, set_options, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 911, "BOMCopierSourceNew", "Could not disable __MACOSX support\n");
      goto LABEL_244;
    }

    v171 = *(v9 + 232);
    set_passphrase_callback = archive_read_set_passphrase_callback();
    if (set_passphrase_callback)
    {
      BOMCopierErrorCapture(a4, set_passphrase_callback, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 925, "BOMCopierSourceNew", "Could not set the passphrase callback\n");
      goto LABEL_244;
    }

    if (*(v9 + 248))
    {
      v176 = *(v9 + 232);
      add_passphrase = archive_read_add_passphrase();
      if (add_passphrase)
      {
        v178 = add_passphrase;
        v179 = *(v9 + 232);
        v180 = archive_errno();
        strerror(v180);
        BOMCopierErrorCapture(a4, v178, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 937, "BOMCopierSourceNew", "Could not add passphrase: %s\n");
        goto LABEL_244;
      }
    }

    if (prepare_archive_source(a1, v9, a4))
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 953, "BOMCopierSourceNew", "Could not prepare archive source");
      goto LABEL_244;
    }

    if (!a1)
    {
      if (*(v9 + 48))
      {
        v188 = malloc_type_valloc(*(v9 + 240), 0x2F6789D6uLL);
        *(v9 + 56) = v188;
        if (v188)
        {
          v189 = *(v9 + 232);
          open = archive_read_open();
          if (!open)
          {
            v184 = *(v9 + 24);
            if (!v184 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_329;
            }

            LOWORD(buf.f_bsize) = 0;
            v119 = "Opened archive from CFReadStream";
            goto LABEL_273;
          }

          v191 = open;
          v192 = *(v9 + 232);
          archive_error_string();
          BOMCopierErrorCapture(a4, v191, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 994, "BOMCopierSourceNew", "Could not open the archive_read_open2 for reading: %s");
        }

        else
        {
          v199 = __error();
          strerror(*v199);
          BOMCopierErrorCapture(a4, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 979, "BOMCopierSourceNew", "Could not allocate libarchive buffer: %s");
        }
      }

      else
      {
        if (*(v9 + 40) == -1)
        {
          BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1006, "BOMCopierSourceNew", "No input file descriptor\n");
          goto LABEL_328;
        }

        v193 = *(v9 + 232);
        v194 = *(v9 + 240);
        open_fd = archive_read_open_fd();
        if (!open_fd)
        {
          v184 = *(v9 + 24);
          if (!v184 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_329;
          }

          LOWORD(buf.f_bsize) = 0;
          v119 = "Opened archive from file descriptor";
          goto LABEL_273;
        }

        v196 = open_fd;
        v197 = *(v9 + 232);
        v198 = *(v9 + 40);
        archive_error_string();
        BOMCopierErrorCapture(a4, v196, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1013, "BOMCopierSourceNew", "Could not open the archive %d for reading: %s");
      }

LABEL_244:
      v173 = *(v9 + 232);
      archive_read_free();
      *(v9 + 232) = 0;
      goto LABEL_327;
    }

    v185 = *(v9 + 232);
    v186 = *(v9 + 240);
    if (archive_read_open_filename())
    {
      v187 = *(v9 + 232);
      archive_error_string();
      BOMCopierErrorCapture(a4, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1028, "BOMCopierSourceNew", "Could not open the archive %s for reading: %s");
      goto LABEL_244;
    }

    v117 = *(v9 + 24);
    if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_329;
    }

    buf.f_bsize = 136315138;
    *&buf.f_iosize = a1;
    v119 = "Opened archive from %s";
LABEL_168:
    p_buf = &buf;
LABEL_169:
    v121 = v117;
    v122 = 12;
LABEL_170:
    _os_log_impl(&dword_241C0E000, v121, OS_LOG_TYPE_DEFAULT, v119, p_buf, v122);
    goto LABEL_329;
  }

  if (v108 == 3)
  {
    v125 = data_archive_new(0);
    *(v9 + 304) = v125;
    if (!v125)
    {
      v139 = *__error();
      BOMCopierErrorCapture(a4, v139, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1045, "BOMCopierSourceNew", "Could not create data_archive object");
      goto LABEL_327;
    }

    *&v204.st_dev = 0;
    v130 = data_archive_set_passphrase_callback(v125, data_archive_passphrase_callback_handler, v9, &v204, v126, v127, v128, v129);
    if (v130)
    {
      v131 = *(*&v204.st_dev + 32);
      BOMCopierErrorCapture(a4, v130, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1058, "BOMCopierSourceNew", "Could not set the passphrase callback: %s");
LABEL_179:
      release_error(*&v204.st_dev);
      goto LABEL_327;
    }

    v149 = prepare_archive_source(a1, v9, a4);
    if (v149)
    {
      BOMCopierErrorCapture(a4, v149, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1072, "BOMCopierSourceNew", "Could not prepare archive source");
      goto LABEL_327;
    }

    if (a1)
    {
      if (data_archive_open(*(v9 + 304), a1, &v204, v150, v151, v152, v153, v154))
      {
        v169 = *(*&v204.st_dev + 32);
        BOMCopierErrorCapture(a4, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1122, "BOMCopierSourceNew", "Could not open the archive %s for reading: %s");
        goto LABEL_179;
      }

      v117 = *(v9 + 24);
      if (!v117 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      buf.f_bsize = 136315138;
      *&buf.f_iosize = a1;
      v119 = "Opened data archive from %s";
      goto LABEL_168;
    }

    if (*(v9 + 48))
    {
      v174 = data_archive_open_custom(*(v9 + 304), v9, data_source_read_callback, &v204, v151, v152, v153, v154);
      if (v174)
      {
        v175 = *(*&v204.st_dev + 32);
        v202 = *(v9 + 40);
        BOMCopierErrorCapture(a4, v174, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1089, "BOMCopierSourceNew", "Could not open the archive %d for custom reading: %s");
        goto LABEL_179;
      }

      v184 = *(v9 + 24);
      if (!v184 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      LOWORD(buf.f_bsize) = 0;
      v119 = "Opened data archive from CFReadStream";
    }

    else
    {
      v181 = *(v9 + 40);
      if (v181 == -1)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1100, "BOMCopierSourceNew", "No input file descriptor\n");
        goto LABEL_327;
      }

      v182 = data_archive_open_fd(*(v9 + 304), v181, &v204, v150, v151, v152, v153, v154);
      if (v182)
      {
        v183 = *(*&v204.st_dev + 32);
        v203 = *(v9 + 40);
        BOMCopierErrorCapture(a4, v182, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1108, "BOMCopierSourceNew", "Could not open the archive %d for reading: %s");
        goto LABEL_179;
      }

      v184 = *(v9 + 24);
      if (!v184 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      LOWORD(buf.f_bsize) = 0;
      v119 = "Opened data archive from file descriptor";
    }

LABEL_273:
    p_buf = &buf;
    v121 = v184;
    v122 = 2;
    goto LABEL_170;
  }

  if (v108 != 4)
  {
    goto LABEL_329;
  }

  if (!a1)
  {
    if (*(v9 + 48))
    {
      v142 = AACustomByteStreamOpen();
      *(v9 + 312) = v142;
      if (!v142)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1141, "BOMCopierSourceNew", "Could not create custom AppleArchive byte stream at %s\n");
        goto LABEL_327;
      }

      AACustomByteStreamSetData(v142, v9);
      AACustomByteStreamSetCloseProc(*(v9 + 312), apple_archive_close_callback);
      AACustomByteStreamSetReadProc(*(v9 + 312), apple_archive_read_callback);
      v143 = *(v9 + 24);
      if (!v143 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_220;
      }

      LOWORD(buf.f_bsize) = 0;
      v112 = "Opened AppleArchive from CFReadStream";
    }

    else
    {
      v158 = *(v9 + 40);
      if (v158 == -1)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1155, "BOMCopierSourceNew", "No input file descriptor\n");
        goto LABEL_327;
      }

      v159 = AAFileStreamOpenWithFD(v158, 0);
      *(v9 + 312) = v159;
      if (!v159)
      {
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1163, "BOMCopierSourceNew", "Could not open AppleArchive byte stream from file descriptor");
        goto LABEL_327;
      }

      v143 = *(v9 + 24);
      if (!v143 || !os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_220;
      }

      LOWORD(buf.f_bsize) = 0;
      v112 = "Opened AppleArchive from file descriptor";
    }

    v113 = v143;
    v114 = 2;
    goto LABEL_219;
  }

  v110 = AAFileStreamOpenWithPath(a1, 0, 0);
  *(v9 + 312) = v110;
  if (!v110)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1175, "BOMCopierSourceNew", "Could not open AppleArchive byte stream at %s");
    goto LABEL_327;
  }

  v111 = *(v9 + 24);
  if (v111 && os_log_type_enabled(*(v9 + 24), OS_LOG_TYPE_DEFAULT))
  {
    buf.f_bsize = 136315138;
    *&buf.f_iosize = a1;
    v112 = "Opened AppleArchive from %s";
    v113 = v111;
    v114 = 12;
LABEL_219:
    _os_log_impl(&dword_241C0E000, v113, OS_LOG_TYPE_DEFAULT, v112, &buf, v114);
  }

LABEL_220:
  v160 = AADecompressionInputStreamOpen(*(v9 + 312), 0, 0);
  *(v9 + 320) = v160;
  if (!v160)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1186, "BOMCopierSourceNew", "Could not open AppleArchive decompression stream at %s");
    goto LABEL_327;
  }

  v161 = AADecodeArchiveInputStreamOpen(v160, 0, 0, 0, 0);
  *(v9 + 328) = v161;
  if (!v161)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1194, "BOMCopierSourceNew", "Could not create AppleArchive decoder");
    goto LABEL_327;
  }

LABEL_329:
  v200 = *MEMORY[0x277D85DE8];
  return v9;
}

void BOMCopierSourceFree(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 13);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 36);
    if (v4)
    {
      free(v4);
    }

    v5 = *(a1 + 49);
    if (v5)
    {
      free(v5);
    }

    v6 = *(a1 + 46);
    if (v6)
    {
      path_tree_node_release(v6);
    }

    v7 = *(a1 + 47);
    if (v7)
    {
      while (!BOMStackIsEmpty(v7))
      {
        v8 = BOMStackPop(*(a1 + 47));
        BOMCopierSourceEntryFree(v8);
        v7 = *(a1 + 47);
      }

      BOMStackFree(*(a1 + 47));
    }

    v9 = *(a1 + 45);
    if (v9)
    {
      while (!BOMStackIsEmpty(v9))
      {
        v10 = BOMStackPop(*(a1 + 45));
        BOMCopierSourceEntryFree(v10);
        v9 = *(a1 + 45);
      }

      BOMStackFree(*(a1 + 45));
    }

    v11 = *(a1 + 44);
    if (v11)
    {
      while (!BOMStackIsEmpty(v11))
      {
        v12 = BOMStackPop(*(a1 + 44));
        BOMCopierSourceEntryFree(v12);
        v11 = *(a1 + 44);
      }

      BOMStackFree(*(a1 + 44));
    }

    v13 = *(a1 + 43);
    if (v13)
    {
      while (!BOMStackIsEmpty(v13))
      {
        v14 = BOMStackPop(*(a1 + 43));
        BOMCopierSourceEntryFree(v14);
        v13 = *(a1 + 43);
      }

      BOMStackFree(*(a1 + 43));
    }

    v15 = *(a1 + 42);
    if (v15)
    {
      while (!BOMStackIsEmpty(v15))
      {
        v16 = BOMStackPop(*(a1 + 42));
        BOMCopierSourceEntryFree(v16);
        v15 = *(a1 + 42);
      }

      BOMStackFree(*(a1 + 42));
    }

    v17 = *(a1 + 31);
    if (v17)
    {
      free(v17);
    }

    v18 = *(a1 + 41);
    if (v18 && AAArchiveStreamClose(v18))
    {
      fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive decoder: %d\n");
    }

    else
    {
      v19 = *(a1 + 40);
      if (v19 && AAByteStreamClose(v19))
      {
        fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive decompression stream: %d\n");
      }

      else
      {
        v20 = *(a1 + 39);
        if (v20 && AAByteStreamClose(v20))
        {
          fprintf(*MEMORY[0x277D85DF8], "Could not close AppleArchive byte stream: %d\n");
        }

        else
        {
          v21 = *(a1 + 38);
          if (v21)
          {
            data_archive_free(v21);
          }

          if (*(a1 + 29))
          {
            archive_read_free();
          }

          v22 = *(a1 + 26);
          if (v22)
          {
            BOMBomEnumeratorFree(v22);
          }

          v23 = *(a1 + 25);
          if (v23)
          {
            BOMFSObjectFree(v23);
          }

          v24 = *(a1 + 23);
          if (v24)
          {
            free(v24);
          }

          v25 = *(a1 + 20);
          if (v25)
          {
            fts_close(v25);
          }

          v26 = *(a1 + 17);
          if (v26)
          {
            free(v26);
          }

          v27 = *(a1 + 10);
          if (v27)
          {
            free(v27);
          }

          free(a1);
        }
      }
    }
  }
}

uint64_t fts_compare(uint64_t a1, uint64_t a2)
{
  if (*(*a2 + 66) <= *(*a1 + 66))
  {
    v2 = *(*a1 + 66);
  }

  else
  {
    v2 = *(*a2 + 66);
  }

  return strncmp((*a1 + 104), (*a2 + 104), v2);
}

uint64_t libarchive_passphrase_callback_handler(uint64_t a1, void *a2)
{
  result = a2[31];
  if (!result)
  {
    v5 = a2[32];
    if (v5)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = 0;
      return v5(a2, a2[33], v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t prepare_archive_source(const char *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    if (stat(a1, &v7))
    {
      v4 = *__error();
      v5 = __error();
      strerror(*v5);
      BOMCopierErrorCapture(a3, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2227, "prepare_archive_source", "Could not stat the archive %s: %s");
      return 1;
    }

    if (!v7.st_size)
    {
      BOMCopierErrorCapture(a3, 3, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2233, "prepare_archive_source", "%s is empty: Unrecognized archive format");
      return 1;
    }
  }

  else if (!*(a2 + 48) && *(a2 + 40) == -1)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2213, "prepare_archive_source", "No input file descriptor\n");
    return 1;
  }

  return 0;
}

uint64_t libarchive_read_callback(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return -1;
  }

  *a3 = *(a2 + 56);
  while (1)
  {
    v4 = CFReadStreamRead(*(a2 + 48), *(a2 + 56), *(a2 + 240));
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v5 = *__error();
      archive_set_error();
      return v4;
    }
  }

  return v4;
}

uint64_t data_archive_passphrase_callback_handler(uint64_t a1, void *a2)
{
  result = a2[31];
  if (!result)
  {
    v5 = a2[32];
    if (v5)
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = 0;
      return v5(a2, a2[33], v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFIndex data_source_read_callback(uint64_t a1, int a2, UInt8 *buffer, CFIndex bufferLength)
{
  if (a1)
  {
    return CFReadStreamRead(*(a1 + 48), buffer, bufferLength);
  }

  else
  {
    return -1;
  }
}

CFIndex apple_archive_read_callback(uint64_t a1, UInt8 *a2, CFIndex a3)
{
  if (a1)
  {
    return CFReadStreamRead(*(a1 + 48), a2, a3);
  }

  else
  {
    return -1;
  }
}

void path_tree_node_release(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    do
    {
      path_tree_node_release(*(*(a1 + 16) + 8 * v2++));
    }

    while (v2 < *(a1 + 8));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    free(v3);
  }

  if (*a1)
  {
    free(*a1);
  }

  free(a1);
}

uint64_t BOMCopierSourceSetErrorHandler(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *a1 = a2;
    a1[1] = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1393, "BOMCopierSourceSetErrorHandler", "copier_source is NULL");
  }

  return v4;
}

uint64_t BOMCopierSourceSetEnumerationBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1412, "BOMCopierSourceSetEnumerationBom", "copier_source is NULL");
    return v7;
  }

  if (!a2)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1418, "BOMCopierSourceSetEnumerationBom", "enumeration_bom is NULL");
    return v7;
  }

  if (*(a1 + 112) != 1)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1424, "BOMCopierSourceSetEnumerationBom", "The copier source is not BOMCopierSourceIndexBom");
    return v7;
  }

  if ((*(a1 + 65) & 1) == 0)
  {
    v7 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1430, "BOMCopierSourceSetEnumerationBom", "The copier source is not configured to use an enumeration bom");
    return v7;
  }

  *(a1 + 192) = a2;
  RootFSObject = BOMBomGetRootFSObject(a2);
  *(a1 + 200) = RootFSObject;
  if (!RootFSObject)
  {
    v7 = 1;
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1439, "BOMCopierSourceSetEnumerationBom", "Could not get the root fso for the enumeration bom");
LABEL_15:
    BOMCopierSourceFree(a1);
    return v7;
  }

  v6 = BOMBomEnumeratorNew(*(a1 + 192), RootFSObject);
  *(a1 + 208) = v6;
  if (!v6)
  {
    v7 = 1;
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1454, "BOMCopierSourceSetEnumerationBom", "Could not create enumerator for the enumeration bom");
    goto LABEL_15;
  }

  return 0;
}

uint64_t BOMCopierSourceSetAllowBom(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 224) = a2;
  }

  else
  {
    v3 = 22;
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1474, "BOMCopierSourceSetAllowBom", "copier_source is NULL");
  }

  return v3;
}

uint64_t BOMCopierSourceSetRedirectCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 120) = a2;
    *(a1 + 128) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1497, "BOMCopierSourceSetRedirectCallback", "copier_source is NULL");
  }

  return v4;
}

uint64_t BOMCopierSourceSetPassphraseCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v4 = 0;
    *(a1 + 256) = a2;
    *(a1 + 264) = a3;
  }

  else
  {
    v4 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1517, "BOMCopierSourceSetPassphraseCallback", "copier_source is NULL");
  }

  return v4;
}

uint64_t *BOMCopierSourceNext(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    do
    {
      v12 = 0;
      result = next_source_entry(a1, &v12, a3, a4, a5, a6, a7, a8);
      if (result)
      {
        break;
      }

      if (v12)
      {
        v11 = a2 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        *a2 = v12;
        return result;
      }

      result = 0;
    }

    while (!v12 && (*(a1 + 116) & 1) == 0);
  }

  else
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 1535, "BOMCopierSourceNext", "copier_source is NULL");
    return 0;
  }

  return result;
}

uint64_t *next_source_entry(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 336);
  if (v10)
  {
    v11 = *(a1 + 24);
    if (v11 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v11, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the pre-empt stack", buf, 2u);
      v10 = *(a1 + 336);
    }

    filesystem_entry = BOMStackPop(v10);
    v140 = 0;
    if (filesystem_entry)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v140 = 0;
  }

  if (*(a1 + 116))
  {
    goto LABEL_9;
  }

  v14 = *(a1 + 24);
  if (v14 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v14, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the source", buf, 2u);
  }

  filesystem_entry = 0;
  v15 = *(a1 + 112);
  if (v15 <= 1)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_10;
      }

      v22 = *(a1 + 208);
      if (!v22)
      {
        BOMCopierErrorCapture(&v140, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3063, "next_enumeration_bom_entry", "The BOMCopierSource does not have an index bom enumerator");
        goto LABEL_9;
      }

      v23 = BOMBomEnumeratorNext(v22);
      if (!v23)
      {
        goto LABEL_190;
      }

      v24 = v23;
      v25 = *(a1 + 64) ^ 1;
      if (*(a1 + 384))
      {
        v25 |= 2u;
      }

      if (*(a1 + 385))
      {
        v25 |= 8u;
      }

      if (*(a1 + 386))
      {
        v25 |= 4u;
      }

      if (*(a1 + 387))
      {
        v25 |= 0x10u;
      }

      if (*(a1 + 388))
      {
        v25 |= 0x20u;
      }

      if (*(a1 + 389))
      {
        v25 |= 0x40u;
      }

      if (*(a1 + 217))
      {
        v25 |= 0x100u;
      }

      if (*(a1 + 216))
      {
        v26 = v25 | 0x80;
      }

      else
      {
        v26 = v25;
      }

      filesystem_entry = BOMCopierSourceEntryNewFromFSObject(*(a1 + 184), v23, v26, &v140);
      if (filesystem_entry)
      {
        v27 = BOMFSObjectParentPathID(v24);
        v28 = BOMFSObjectPathID(v24);
        if (!v27 && v28 == 1)
        {
          BOMCopierSourceEntrySetRoot(filesystem_entry, 1);
        }

        BOMFSObjectFree(v24);
        if (synthesize_filesystem_stuff())
        {
          BOMCopierErrorCapture(&v140, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3144, "next_enumeration_bom_entry", "Could not synthesize filesystem stuff");
          BOMCopierSourceEntryFree(filesystem_entry);
          goto LABEL_9;
        }
      }

      else
      {
        BOMCopierErrorCapture(&v140, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3126, "next_enumeration_bom_entry", "Could not synthesize filesystem stuff");
        BOMFSObjectFree(v24);
      }
    }

    else
    {
      v143[0] = 0;
      v58 = *(a1 + 120);
      if (v58)
      {
        v58(a1, v143, *(a1 + 128));
        *(a1 + 120) = 0;
        *(a1 + 128) = 0;
        v59 = *(a1 + 24);
        if (v59)
        {
          if (os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = v143[0];
            _os_log_impl(&dword_241C0E000, v59, OS_LOG_TYPE_DEFAULT, "Redirected to %s", buf, 0xCu);
          }
        }
      }

      filesystem_entry = next_filesystem_entry(a1, v143[0], (a1 + 116), &v140);
      if (v143[0])
      {
        free(v143[0]);
      }
    }

    goto LABEL_10;
  }

  if (v15 == 2)
  {
    if (!*(a1 + 232))
    {
      BOMCopierErrorCapture(&v140, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3168, "next_libarchive_entry", "copier_source->archive is NULL");
      goto LABEL_9;
    }

    v53 = 512;
    if (!*(a1 + 272))
    {
      v53 = 0;
    }

    if (*(a1 + 384))
    {
      v54 = v53 | 2;
    }

    else
    {
      v54 = v53;
    }

    *buf = 0;
    next_header = archive_read_next_header();
    v56 = *(a1 + 232);
    if (archive_read_has_encrypted_entries() == 1 && !*(a1 + 248) && !*(a1 + 256))
    {
      BOMCopierErrorCapture(&v140, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3199, "next_libarchive_entry", "archive has encrypted entries");
      goto LABEL_9;
    }

    if (next_header == -30)
    {
      v80 = *(a1 + 232);
      v81 = archive_error_string();
      if (!v81 || strcmp(v81, "Invalid central directory signature"))
      {
        BOMCopierErrorCapture(&v140, -30, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3236, "next_libarchive_entry", "Could not read archive header: ARCHIVE_FATAL: %s");
        goto LABEL_9;
      }
    }

    else if (next_header != 1)
    {
      if (next_header)
      {
        v82 = *(a1 + 232);
        archive_error_string();
        BOMCopierErrorCapture(&v140, next_header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3244, "next_libarchive_entry", "Could not read archive header: %d: %s");
        goto LABEL_9;
      }

      v57 = BOMCopierSourceEntryNewFromLibarchive(*(a1 + 232), *buf, v54, &v140);
      goto LABEL_135;
    }

LABEL_190:
    filesystem_entry = 0;
    *(a1 + 116) = 1;
    goto LABEL_10;
  }

  if (v15 == 3)
  {
    v57 = next_data_archive_entry(a1, (a1 + 116), &v140, a4, a5, a6, a7, a8);
LABEL_135:
    filesystem_entry = v57;
    goto LABEL_10;
  }

  if (v15 != 4)
  {
    goto LABEL_10;
  }

  v16 = *(a1 + 328);
  if (!v16)
  {
    BOMCopierErrorCapture(&v140, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3340, "next_apple_archive_entry", "copier_source->aa_decoder is NULL");
    goto LABEL_9;
  }

  v17 = 0;
  if (!*(a1 + 272))
  {
    v17 = 0;
  }

  if (*(a1 + 384))
  {
    v17 = 2;
  }

  if (*(a1 + 386))
  {
    v17 |= 4u;
  }

  if (*(a1 + 388))
  {
    v18 = v17 | 0x20;
  }

  else
  {
    v18 = v17;
  }

  *buf = 0;
  Header = AAArchiveStreamReadHeader(v16, buf);
  if (Header < 0)
  {
    BOMCopierErrorCapture(&v140, Header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3372, "next_apple_archive_entry", "Could not read AppleArchive header: %d");
    goto LABEL_9;
  }

  if (Header != 1)
  {
    if (Header)
    {
      BOMCopierErrorCapture(&v140, Header, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3380, "next_apple_archive_entry", "Could not read AppleArchive header: %d");
LABEL_9:
      filesystem_entry = 0;
      goto LABEL_10;
    }

    goto LABEL_190;
  }

  filesystem_entry = BOMCopierSourceEntryNewFromAppleArchive(*(a1 + 328), *buf, v18, &v140);
  AAHeaderDestroy(*buf);
LABEL_10:
  if (v140)
  {
    if (*(a1 + 16) == 1)
    {
      BOMCopierErrorFree(v140);
      *(a1 + 16) = 1;
      v13 = *(a1 + 24);
      if (v13 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v13, OS_LOG_TYPE_DEFAULT, "Swallowing error", buf, 2u);
      }
    }

    else
    {
      if (a2)
      {
        *a2 = v140;
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2450, "next_source_entry", "Could not get the next source entry");
    }

    goto LABEL_346;
  }

  if (!filesystem_entry)
  {
LABEL_285:
    v91 = 0;
    goto LABEL_286;
  }

LABEL_37:
  v139 = 0;
  if ((*(a1 + 112) - 2) <= 2 && *(a1 + 224))
  {
    Path = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (!Path)
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3407, "filter_next_source_entry", "Could not get entry path for source entry", v135);
LABEL_166:
      v65 = filesystem_entry;
LABEL_167:
      BOMCopierSourceEntryFree(v65);
      goto LABEL_283;
    }

    *buf = 0;
    if (*Path == 46)
    {
      v21 = Path;
    }

    else if (asprintf(buf, "./%s", Path) == -1 || (v21 = *buf) == 0)
    {
      v60 = *__error();
      BOMCopierErrorCapture(&v139, v60, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3420, "filter_next_source_entry", "Could not construct lookup path for skip bom from %s");
      goto LABEL_166;
    }

    v29 = BOMBomFSObjectExistsAtPath(*(a1 + 224), v21);
    if (*buf)
    {
      free(*buf);
    }

    if (!v29)
    {
      if (!consume_source_entry(filesystem_entry, &v139))
      {
        goto LABEL_283;
      }

      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3442, "filter_next_source_entry", "Could not consume the source entry", v135);
      goto LABEL_166;
    }
  }

  if (((*(a1 + 93) & 1) != 0 || *(a1 + 94) == 1) && BOMCopierSourceEntryIsRoot(filesystem_entry))
  {
    v30 = *(a1 + 24);
    if (v30 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v30, OS_LOG_TYPE_DEFAULT, "Consuming root entry", buf, 2u);
    }

    if (consume_source_entry(filesystem_entry, &v139))
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3466, "filter_next_source_entry", "Could not consume the source entry", v135);
      goto LABEL_166;
    }

LABEL_283:
    if (v139)
    {
      v91 = 0;
      *a2 = v139;
      goto LABEL_347;
    }

    goto LABEL_285;
  }

  Type = BOMCopierSourceEntryGetType(filesystem_entry);
  if (*(a1 + 96) == 1)
  {
    v32 = BOMCopierSourceEntryGetType(filesystem_entry);
    if (v32 <= 0xE && ((1 << v32) & 0x6040) != 0)
    {
      v33 = BOMCopierSourceEntryGetPath(filesystem_entry);
      if (v33)
      {
        v34 = v33;
        v35 = strlen(v33);
        v36 = *v34;
        v37 = v36 == 46 ? 10 : 8;
        if (v35 >= v37)
        {
          v38 = v36 == 46 ? "./__MACOSX" : "__MACOSX";
          if (!strncmp(v34, v38, v37))
          {
            v63 = *(a1 + 24);
            if (v63 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241C0E000, v63, OS_LOG_TYPE_DEFAULT, "Consuming __MACOSX directory entry", buf, 2u);
            }

            if (consume_source_entry(filesystem_entry, &v139))
            {
              BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3494, "filter_next_source_entry", "Could not consume the source entry", v135);
              goto LABEL_166;
            }

            goto LABEL_283;
          }
        }
      }
    }
  }

  if (!is_apple_double(filesystem_entry))
  {
    goto LABEL_205;
  }

  if (*(a1 + 95) == 1)
  {
    v39 = *(a1 + 24);
    if (v39 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v39, OS_LOG_TYPE_DEFAULT, "Sequestering __MACOSX entry", buf, 2u);
    }

    v40 = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (v40)
    {
      v41 = v40;
      v42 = *(a1 + 24);
      if (v42 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = v41;
        _os_log_impl(&dword_241C0E000, v42, OS_LOG_TYPE_DEFAULT, "Sequestering AppleDouble from %s", buf, 0xCu);
      }

      if (*(a1 + 93))
      {
        v43 = "__MACOSX";
      }

      else
      {
        v43 = "./__MACOSX";
      }

      v44 = &v41[2 * (*v41 == 46)];
      v141 = 0;
      if (asprintf(&v141, "%s/%s", v43, v44) != -1 && v141)
      {
        if (BOMCopierSourceEntrySetPath(filesystem_entry, v141))
        {
          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4728, "sequester_apple_double", "Could not create set sequester path entry for %s");
LABEL_276:
          BOMCopierSourceEntryFree(filesystem_entry);
          goto LABEL_277;
        }

        free(v141);
        v70 = BOMCopierSourceEntryGetPath(filesystem_entry);
        v71 = v70;
        v143[0] = 0;
        v143[1] = v143;
        v143[2] = 0x2000000000;
        v143[3] = 0;
        v142[0] = 0;
        v142[1] = v142;
        v142[2] = 0x2000000000;
        v142[3] = 0;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 0x40000000;
        *&buf[16] = __add_sequester_entry_block_invoke;
        v146 = &unk_278D13400;
        v149 = a1;
        v150 = &v139;
        v147 = v143;
        v148 = v142;
        v151 = filesystem_entry;
        if (v70)
        {
          v72 = strlen(v70);
          __s = 0;
          if (v72 == asprintf(&__s, "%s", v71))
          {
            v73 = __s;
            if (__s)
            {
              v138 = v71;
              v74 = strchr(__s, 47);
              if (v74)
              {
                v75 = v74;
                v76 = v73;
                while (1)
                {
                  *v75 = 0;
                  v77 = (*&buf[16])(buf, v76, 0);
                  if (v77)
                  {
                    break;
                  }

                  *v75 = 47;
                  v76 = v75 + 1;
                  v78 = __s;
                  if (v75 + 1 - __s < v72)
                  {
                    v75 = strchr(v75 + 1, 47);
                    if (v75)
                    {
                      continue;
                    }
                  }

                  goto LABEL_260;
                }

                v101 = v77;
                v78 = __s;
              }

              else
              {
                v76 = v73;
                v78 = v73;
LABEL_260:
                if (v76 == &v73[v72] || (v101 = (*&buf[16])(buf, v76, 1), v78 = __s, !v101))
                {
                  free(v78);
LABEL_274:
                  _Block_object_dispose(v142, 8);
                  _Block_object_dispose(v143, 8);
                  goto LABEL_283;
                }
              }

              free(v78);
              v71 = v138;
              if (v101 != -1)
              {
                goto LABEL_274;
              }
            }
          }
        }

        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5141, "add_sequester_entry", "Could not add sequester entry for %s", v71);
        _Block_object_dispose(v142, 8);
        _Block_object_dispose(v143, 8);
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4743, "sequester_apple_double", "Could not create set sequester path entry for %s");
        goto LABEL_276;
      }

      v61 = *__error();
      v62 = __error();
      strerror(*v62);
      BOMCopierErrorCapture(&v139, v61, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4720, "sequester_apple_double", "Could not create sequester path for %s: %s");
    }

    else
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4694, "sequester_apple_double", "Could not retrieve entry path for AppleDouble entry");
    }

LABEL_277:
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3526, "filter_next_source_entry", "Could not sequester AppleDouble entry", v136);
    goto LABEL_283;
  }

  if (*(a1 + 96) == 1)
  {
    v45 = *(a1 + 24);
    if (v45 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v45, OS_LOG_TYPE_DEFAULT, "Unsequestering __MACOSX entry", buf, 2u);
    }

    v46 = BOMCopierSourceEntryGetPath(filesystem_entry);
    if (v46)
    {
      v47 = v46;
      v48 = strlen(v46);
      if (*v47 == 46)
      {
        v49 = 0;
        v50 = ".";
        v51 = 10;
        v52 = "./__MACOSX";
      }

      else
      {
        v50 = "";
        v49 = 1;
        v51 = 8;
        v52 = "__MACOSX";
      }

      if (v48 < v51 || strncmp(v47, v52, v51))
      {
        goto LABEL_160;
      }

      *buf = 0;
      if (asprintf(buf, "%s%s", v50, &v47[v51 + v49]) == -1 || !*buf)
      {
        v99 = *__error();
        v100 = __error();
        strerror(*v100);
        BOMCopierErrorCapture(&v139, v99, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4801, "unsequester_apple_double", "Could not created adjusted path for %s: %s");
      }

      else
      {
        v83 = BOMCopierSourceEntrySetPath(filesystem_entry, *buf);
        free(*buf);
        if (!v83)
        {
          goto LABEL_160;
        }

        v84 = __error();
        strerror(*v84);
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4811, "unsequester_apple_double", "Could not set adjusted path %s: %s");
      }
    }

    else
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4764, "unsequester_apple_double", "Could not retrieve entry path for AppleDouble entry");
    }

    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3543, "filter_next_source_entry", "Could not unsequester AppleDouble file", v137);
    goto LABEL_166;
  }

LABEL_160:
  if (*(a1 + 71) == 1)
  {
    v64 = *(a1 + 24);
    if (v64 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v64, OS_LOG_TYPE_DEFAULT, "Deferring AppleDouble entry", buf, 2u);
    }

    if (push_replay_stack(a1, filesystem_entry, 2, &v139))
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3557, "filter_next_source_entry", "Could not push AppleDouble onto the replay stack", v135);
      goto LABEL_166;
    }

    goto LABEL_283;
  }

  if (*(a1 + 80))
  {
    v66 = BOMCopierSourceEntryGetPath(filesystem_entry);
    v143[0] = 0;
    asprintf(v143, "%s%s", v66, *(a1 + 80));
    v67 = v143[0];
    if (!v143[0])
    {
      v79 = __error();
      strerror(*v79);
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3579, "filter_next_source_entry", "Could not constructed adjusted AppleDouble path: %s");
      goto LABEL_283;
    }

    v68 = *(a1 + 24);
    if (v68 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v69 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = v69;
      *&buf[12] = 2080;
      *&buf[14] = v66;
      _os_log_impl(&dword_241C0E000, v68, OS_LOG_TYPE_DEFAULT, "Appending suffix %s to %s", buf, 0x16u);
      v67 = v143[0];
    }

    if (BOMCopierSourceEntrySetPath(filesystem_entry, v67))
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3588, "filter_next_source_entry", "Could not set appended entry path for AppleDouble file", v135);
      goto LABEL_283;
    }

    free(v143[0]);
  }

  if (Type == 8)
  {
    if (*(a1 + 72) == 1)
    {
      v85 = *(a1 + 24);
      if (v85 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v85, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble replay entry", buf, 2u);
      }

      if (synthesize_replay_apple_double(a1, filesystem_entry, &v139))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3608, "filter_next_source_entry", "Could not replay AppleDouble file", v135);
        goto LABEL_166;
      }
    }

    goto LABEL_221;
  }

LABEL_205:
  if (*(a1 + 91) != 1 || Type != 9)
  {
    if (*(a1 + 92) != 1 || Type != 6)
    {
LABEL_221:
      v91 = filesystem_entry;
      goto LABEL_222;
    }

    v92 = *(a1 + 24);
    if (v92 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v92, OS_LOG_TYPE_DEFAULT, "Synthesizing replay directory entry", buf, 2u);
    }

    v93 = BOMCopierSourceEntryGetPath(filesystem_entry);
    v94 = BOMCopierSourceEntryNew(6, &v139);
    if (v94)
    {
      v91 = v94;
      if (BOMCopierSourceEntrySetPath(v94, v93))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4465, "synthesize_replay_directory", "Could not set the path for the directory entry");
      }

      else if (copy_entry_metadata(filesystem_entry, v91, &v139))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4474, "synthesize_replay_directory", "Could not copy metadata from the source entry to its directory doppleganger");
      }

      else if (BOMCopierSourceEntrySetMode(v91, 16877))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4483, "synthesize_replay_directory", "Could not set the mode for the directory entry");
      }

      else if (BOMCopierSourceEntrySetUserID(v91, *(a1 + 32)))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4492, "synthesize_replay_directory", "Could not set the user ID for the directory entry");
      }

      else if (BOMCopierSourceEntrySetGroupID(v91, *(a1 + 36)))
      {
        BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4501, "synthesize_replay_directory", "Could not set the group ID for the directory entry");
      }

      else
      {
        v130 = BOMCopierSourceEntryNew(19, &v139);
        if (v130)
        {
          v131 = v130;
          if (BOMCopierSourceEntrySetPath(v130, v93))
          {
            BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4526, "synthesize_replay_directory", "Could not copy entry path from the source entry to its replay directory");
          }

          else if (copy_entry_metadata(filesystem_entry, v131, &v139))
          {
            BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4536, "synthesize_replay_directory", "Could not copy metadata from the source entry to its replay directory");
          }

          else
          {
            if (!push_replay_stack(a1, v131, 3, &v139))
            {
              v134 = *(a1 + 24);
              if (v134 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                *&buf[4] = v93;
                _os_log_impl(&dword_241C0E000, v134, OS_LOG_TYPE_DEFAULT, "Synthesized replay directory from %s", buf, 0xCu);
              }

              if (!consume_source_entry(filesystem_entry, &v139))
              {
                goto LABEL_222;
              }

              BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4563, "synthesize_replay_directory", "Could not consume the source entry");
LABEL_282:
              BOMCopierSourceEntryFree(filesystem_entry);
              BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3666, "filter_next_source_entry", "Could not synthesize replay directory", v135);
              goto LABEL_283;
            }

            BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4546, "synthesize_replay_directory", "Could not push the synthetic replay directory onto the replay stack");
          }

          BOMCopierSourceEntryFree(v131);
        }

        else
        {
          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4517, "synthesize_replay_directory", "Could not create BOMCopierSourceEntry for replay directory");
        }
      }

      v97 = v91;
    }

    else
    {
      BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4456, "synthesize_replay_directory", "Could create a directory entry");
      v97 = 0;
    }

    BOMCopierSourceEntryFree(v97);
    goto LABEL_282;
  }

  v86 = *(a1 + 24);
  if (v86 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241C0E000, v86, OS_LOG_TYPE_DEFAULT, "Synthesizing replay symlink entry", buf, 2u);
  }

  v87 = BOMCopierSourceEntryGetPath(filesystem_entry);
  SymlinkTarget = BOMCopierSourceEntryGetSymlinkTarget(filesystem_entry);
  v89 = strlen(SymlinkTarget);
  v90 = BOMCopierSourceEntryNew(8, &v139);
  if (!v90)
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4333, "synthesize_replay_symlink", "Could create a regular file entry");
    v96 = 0;
LABEL_254:
    BOMCopierSourceEntryFree(v96);
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3637, "filter_next_source_entry", "Could not synthesize replay symlink", v135);
    goto LABEL_283;
  }

  v91 = v90;
  if (BOMCopierSourceEntrySetPath(v90, v87))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4341, "synthesize_replay_symlink", "Could not set the path for the regular file entry");
LABEL_253:
    v96 = v91;
    goto LABEL_254;
  }

  if (BOMCopierSourceEntrySetData(v91, SymlinkTarget, v89))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4349, "synthesize_replay_symlink", "Could not set the data for the regular file entry");
    goto LABEL_253;
  }

  if (copy_entry_metadata(filesystem_entry, v91, &v139))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4357, "synthesize_replay_symlink", "Could not copy metadata from the symlink entry to its regular file doppleganger");
    goto LABEL_253;
  }

  if (BOMCopierSourceEntrySetMode(v91, 33188))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4365, "synthesize_replay_symlink", "Could not set the mode for the regular file entry");
    goto LABEL_253;
  }

  v102 = BOMCopierSourceEntryNew(18, &v139);
  if (!v102)
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4381, "synthesize_replay_symlink", "Could create a post order symlink entry");
    goto LABEL_253;
  }

  v103 = v102;
  if (BOMCopierSourceEntrySetPath(v102, v87))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4389, "synthesize_replay_symlink", "Could not set the path for the post order symlink entry");
    goto LABEL_253;
  }

  if (copy_entry_metadata(filesystem_entry, v103, &v139))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4397, "synthesize_replay_symlink", "Could not copy metadata from the symlink entry to its replay symlink");
    goto LABEL_253;
  }

  if (BOMCopierSourceEntrySetSymlinkTarget(v103, SymlinkTarget))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4405, "synthesize_replay_symlink", "Could not set the path for the post order symlink entry");
    goto LABEL_253;
  }

  if (push_replay_stack(a1, v103, 1, &v139))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4413, "synthesize_replay_symlink", "Could not push the synthetic post-order symlink");
    goto LABEL_253;
  }

  v133 = *(a1 + 24);
  if (v133 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v87;
    _os_log_impl(&dword_241C0E000, v133, OS_LOG_TYPE_DEFAULT, "Synthesizing replay symlink from %s", buf, 0xCu);
  }

  if (consume_source_entry(filesystem_entry, &v139))
  {
    BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4428, "synthesize_replay_symlink", "Could not consume the symlink entry");
    v96 = filesystem_entry;
    goto LABEL_254;
  }

LABEL_222:
  if (*(a1 + 89) == 1)
  {
    v95 = BOMCopierSourceEntryGetType(v91);
    if (v95 == 14 || v95 == 16 || v95 == 15 && is_apple_double(v91))
    {
      if (Type == 16)
      {
        if (push_replay_stack(a1, v91, 1, &v139))
        {
          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3712, "filter_next_source_entry", "Could not push the extra symlink entry onto the replay stack", v135);
        }

        goto LABEL_283;
      }

      if (Type != 15)
      {
        if (Type == 14)
        {
          if (push_replay_stack(a1, v91, 3, &v139))
          {
            BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3699, "filter_next_source_entry", "Could not push the extra directory entry onto the replay stack", v135);
          }
        }

        else
        {
          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3751, "filter_next_source_entry", "Cannot convert %u to replay entry");
        }

        goto LABEL_283;
      }

      if (*(a1 + 90) == 1)
      {
        v98 = *(a1 + 24);
        if (v98 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v98, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble replay entry from extra AppleDouble entry", buf, 2u);
        }

        if (synthesize_replay_apple_double(a1, v91, &v139))
        {
          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3729, "filter_next_source_entry", "Could not replay AppleDouble file");
        }

        else
        {
          v104 = *(a1 + 24);
          if (v104 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241C0E000, v104, OS_LOG_TYPE_DEFAULT, "Consuming extra AppleDouble entry", buf, 2u);
          }

          if (!consume_source_entry(v91, &v139))
          {
            goto LABEL_283;
          }

          BOMCopierErrorCapture(&v139, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3739, "filter_next_source_entry", "Could not consume the source entry");
        }

        v65 = v91;
        goto LABEL_167;
      }
    }
  }

LABEL_286:
  if (*(a1 + 98) == 1 && *(a1 + 99) == 1 && BOMCopierSourceEntryGetSize(v91) > *(a1 + 280))
  {
    v105 = BOMCopierSourceEntryNew(8, a2);
    if (!v105)
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4583, "synthesize_inject_apple_double", "Could create a regular file entry");
LABEL_344:
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2509, "next_source_entry", "Could not create AppleDouble injection entry", v135);
      goto LABEL_345;
    }

    v106 = v105;
    v107 = malloc_type_malloc(0xFFuLL, 0xF57C1C47uLL);
    if (!v107)
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4598, "synthesize_inject_apple_double", "Could not create last path component");
LABEL_343:
      BOMCopierSourceEntryFree(v106);
      goto LABEL_344;
    }

    v108 = v107;
    if (basename_r(*(a1 + 104), v107))
    {
      v109 = malloc_type_malloc(0x400uLL, 0x4F85E3BuLL);
      if (v109)
      {
        v110 = v109;
        if (dirname_r(*(a1 + 104), v109))
        {
          *buf = 0;
          asprintf(buf, "%s/._%s", v110, v108);
          v111 = *buf;
          if (*buf)
          {
            free(v110);
            free(v108);
            if (BOMCopierSourceEntrySetPath(v106, v111))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4650, "synthesize_inject_apple_double", "Could not set insert entry path");
              v112 = *buf;
LABEL_342:
              free(v112);
              goto LABEL_343;
            }

            free(*buf);
            if (BOMCopierSourceEntrySetData(v106, &inject_apple_double_bytes, 0xA4uLL))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4664, "synthesize_inject_apple_double", "Could not set the data for the regular file entry");
              goto LABEL_343;
            }

            if (copy_entry_metadata(v91, v106, a2))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4672, "synthesize_inject_apple_double", "Could not copy metadata from the symlink entry to its regular file doppleganger");
              goto LABEL_343;
            }

            if (push_preempt_stack(a1, v91, a2))
            {
              BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2524, "next_source_entry", "Could not push source entry onto the preempty stack", v135);
              goto LABEL_345;
            }

            v132 = *(a1 + 24);
            if (v132 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_241C0E000, v132, OS_LOG_TYPE_DEFAULT, "Injecting AppleDouble between segmented files", buf, 2u);
            }

            v91 = v106;
            goto LABEL_298;
          }

          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4637, "synthesize_inject_apple_double", "Could not create insert entry path");
        }

        else
        {
          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4626, "synthesize_inject_apple_double", "Could not get parent path");
        }

        free(v108);
        v112 = v110;
        goto LABEL_342;
      }

      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4617, "synthesize_inject_apple_double", "Could not create parent path");
    }

    else
    {
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4608, "synthesize_inject_apple_double", "Could not get last path component");
    }

    v112 = v108;
    goto LABEL_342;
  }

  if (!v91)
  {
    if (*(a1 + 116) == 1)
    {
      if (*(a1 + 368))
      {
        if (!*(a1 + 376) && populate_sequester_stack(a1, a2))
        {
          BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2557, "next_source_entry", "Could not populate sequester stack");
          goto LABEL_346;
        }

        v123 = *(a1 + 24);
        if (v123 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v123, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the sequester stack", buf, 2u);
        }

        v124 = BOMStackPop(*(a1 + 376));
        if (v124)
        {
          v91 = v124;
          goto LABEL_298;
        }
      }

      if (!*(a1 + 344) && !*(a1 + 352) && !*(a1 + 360))
      {
        goto LABEL_346;
      }

      v127 = *(a1 + 24);
      if (v127 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241C0E000, v127, OS_LOG_TYPE_DEFAULT, "Retrieving entry from the replay stacks", buf, 2u);
      }

      v91 = pop_replay_stack(a1);
      if (!v91)
      {
        goto LABEL_347;
      }

      goto LABEL_298;
    }

LABEL_346:
    v91 = 0;
    goto LABEL_347;
  }

LABEL_298:
  if (*(a1 + 273) == 1)
  {
    v113 = BOMCopierSourceEntryGetPath(v91);
    Size = BOMCopierSourceEntryGetSize(v91);
    v115 = *(a1 + 288);
    if (v115)
    {
      if (!strcmp(v113, *(a1 + 288)) && *(a1 + 280) == *(a1 + 296))
      {
        v116 = *(a1 + 24);
        if (v116 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241C0E000, v116, OS_LOG_TYPE_DEFAULT, "Marking segmented file entry", buf, 2u);
        }

        BOMCopierSourceEntrySetSegmentedFile(v91, 1);
        v115 = *(a1 + 288);
      }

      free(v115);
      *(a1 + 288) = 0;
    }

    v117 = strdup(v113);
    *(a1 + 288) = v117;
    if (!v117)
    {
      v125 = *__error();
      v126 = __error();
      strerror(*v126);
      BOMCopierErrorCapture(a2, v125, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2673, "next_source_entry", "Could not duplicate entry path: %s");
      goto LABEL_345;
    }

    *(a1 + 296) = Size;
  }

  *(a1 + 99) = 0;
  v118 = *(a1 + 104);
  if (v118)
  {
    free(v118);
    *(a1 + 104) = 0;
  }

  if (*(a1 + 98) == 1 && BOMCopierSourceEntryGetSize(v91) > *(a1 + 280))
  {
    *(a1 + 99) = 1;
    v119 = BOMCopierSourceEntryGetPath(v91);
    v120 = strdup(v119);
    *(a1 + 104) = v120;
    if (!v120)
    {
      v121 = *__error();
      v122 = __error();
      strerror(*v122);
      BOMCopierErrorCapture(a2, v121, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2718, "next_source_entry", "Could not duplicate entry path: %s");
LABEL_345:
      BOMCopierSourceEntryFree(v91);
      goto LABEL_346;
    }
  }

LABEL_347:
  v128 = *MEMORY[0x277D85DE8];
  return v91;
}

unsigned int *next_filesystem_entry(uint64_t a1, char *a2, _BYTE *a3, uint64_t *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 160);
  if (!v6)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2745, "next_filesystem_entry", "The BOMCopierSource does not have an open FTS handle");
    goto LABEL_22;
  }

  v8 = *(a1 + 64) ^ 1;
  if (*(a1 + 384))
  {
    v8 |= 2u;
  }

  if (*(a1 + 385))
  {
    v8 |= 8u;
  }

  if (*(a1 + 386))
  {
    v8 |= 4u;
  }

  if (*(a1 + 387))
  {
    v8 |= 0x10u;
  }

  if (*(a1 + 388))
  {
    v8 |= 0x20u;
  }

  if (*(a1 + 389))
  {
    v9 = v8 | 0x40;
  }

  else
  {
    v9 = v8;
  }

  if (a2)
  {
    filesystem_entry = BOMCopierSourceEntryNewFromPath(a2, v9, a4);
    if (!filesystem_entry)
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2800, "next_filesystem_entry", "Could not create BOMCopierSourceEntry from redirect path %s", a2);
      goto LABEL_23;
    }

    if (synthesize_filesystem_stuff())
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2808, "next_filesystem_entry", "Could not synthesize filesystem stuff");
LABEL_19:
      v11 = filesystem_entry;
LABEL_20:
      BOMCopierSourceEntryFree(v11);
LABEL_22:
      filesystem_entry = 0;
      goto LABEL_23;
    }

    v20 = *(a1 + 24);
    if (v20 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
    {
      v37.f_bsize = 136315138;
      *&v37.f_iosize = a2;
      _os_log_impl(&dword_241C0E000, v20, OS_LOG_TYPE_DEFAULT, "Entry created from redirect path %s", &v37, 0xCu);
    }
  }

  else
  {
    v15 = fts_read(v6);
    if (v15)
    {
      v16 = v15;
      if (v15->fts_statp->st_dev != *(a1 + 172))
      {
        bzero(&v37, 0x878uLL);
        if (statfs(*(v16 + 48), &v37))
        {
          v17 = *__error();
          v18 = *(v16 + 48);
          v19 = __error();
          strerror(*v19);
          BOMCopierErrorCapture(a4, v17, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2853, "next_filesystem_entry", "Could not statfs %s: %s");
          goto LABEL_22;
        }

        *(a1 + 176) = (v37.f_flags & 8) == 0;
        *(a1 + 172) = **(v16 + 96);
      }

      v22 = *(a1 + 24);
      if (v22 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37.f_bsize) = 0;
        _os_log_impl(&dword_241C0E000, v22, OS_LOG_TYPE_DEFAULT, "Creating source entry from FTS entry", &v37, 2u);
      }

      v23 = BOMCopierSourceEntryNewFromFTSENT(v16, v9, a4);
      if (!v23)
      {
        if (*a1)
        {
          v24 = *(v16 + 48);
          *&v37.f_bsize = 0;
          v37.f_blocks = v24;
          v37.f_bfree = 0;
          LODWORD(v37.f_bfree) = *__error();
          if (a4)
          {
            v25 = *a4;
            *&v37.f_bsize = v25;
            if (v25)
            {
              LODWORD(v37.f_bfree) = BOMCopierErrorGetCode(v25);
            }
          }

          v26 = *(a1 + 24);
          if (v26 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_241C0E000, v26, OS_LOG_TYPE_DEFAULT, "Could not create FTS entry. Calling error handler", buf, 2u);
          }

          *(a1 + 16) = (*a1)(a1, *(a1 + 8), &v37);
        }

        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2902, "next_filesystem_entry", "Could not create BOMCopierSourceEntry from FTS entry");
        goto LABEL_22;
      }

      filesystem_entry = v23;
      BOMCopierSourceEntrySetHonorsSetuid(v23, *(a1 + 176));
      if (*(v16 + 86))
      {
        if (adjust_filesystem_entry_path(a1, v16, filesystem_entry, a4))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3006, "next_filesystem_entry", "Could not adjust entry path");
          goto LABEL_19;
        }

        if (*(a1 + 88) != 1 || !is_apple_double(filesystem_entry))
        {
          if (!synthesize_filesystem_stuff())
          {
            goto LABEL_23;
          }

          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3038, "next_filesystem_entry", "Could not synthesize filesystem stuff");
          goto LABEL_19;
        }

        v30 = *(a1 + 24);
        if (v30 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v37.f_bsize) = 0;
          _os_log_impl(&dword_241C0E000, v30, OS_LOG_TYPE_DEFAULT, "Consuming AppleDouble entry", &v37, 2u);
        }

        if (consume_source_entry(filesystem_entry, a4))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3022, "next_filesystem_entry", "Could not consume the source entry");
          goto LABEL_19;
        }

        v35 = *(a1 + 24);
        if (v35 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v37.f_bsize) = 0;
          _os_log_impl(&dword_241C0E000, v35, OS_LOG_TYPE_DEFAULT, "Ignored AppleDouble", &v37, 2u);
        }

        filesystem_entry = next_filesystem_entry(a1, 0, a3, a4);
      }

      else
      {
        if (*(a1 + 400) == 1)
        {
          v27 = *(a1 + 24);
          if (v27 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v37.f_bsize) = 0;
            _os_log_impl(&dword_241C0E000, v27, OS_LOG_TYPE_DEFAULT, "Synthesizing parent entry from FTS root entry", &v37, 2u);
          }

          v28 = BOMCopierSourceEntryNewFromFTSENT(v16, v9, a4);
          if (!v28)
          {
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2928, "next_filesystem_entry", "Could not create parent from FTS entry");
            goto LABEL_19;
          }

          v29 = v28;
          if (adjust_filesystem_entry_path(a1, v16, v28, a4))
          {
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2937, "next_filesystem_entry", "Could not adjust entry path");
            v11 = v29;
            goto LABEL_20;
          }
        }

        else
        {
          v29 = 0;
        }

        v31 = *(v16 + 88);
        if (v31 == 6 || v31 == 1)
        {
          v32 = ".";
        }

        else
        {
          memset(&v37, 0, 255);
          basename_r(*(v16 + 48), &v37);
          v32 = &v37;
        }

        BOMCopierSourceEntrySetPath(filesystem_entry, v32);
        BOMCopierSourceEntrySetRoot(filesystem_entry, 1);
        if (v29)
        {
          v33 = *(v16 + 88);
          v34 = *(a1 + 24);
          if (v33 == 1)
          {
            if (v34 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v37.f_bsize) = 0;
              _os_log_impl(&dword_241C0E000, v34, OS_LOG_TYPE_DEFAULT, "Pushing entry onto the pre-empt stack", &v37, 2u);
            }

            if (!push_preempt_stack(a1, v29, a4))
            {
              goto LABEL_23;
            }

            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2977, "next_filesystem_entry", "Could not push parent entry onto the preempty stack");
          }

          else
          {
            if (v34 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v37.f_bsize) = 0;
              _os_log_impl(&dword_241C0E000, v34, OS_LOG_TYPE_DEFAULT, "Pushing root entry onto the pre-empt stack", &v37, 2u);
            }

            if (!push_preempt_stack(a1, filesystem_entry, a4))
            {
              filesystem_entry = v29;
              goto LABEL_23;
            }

            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 2990, "next_filesystem_entry", "Could not push parent entry onto the preempty stack");
          }

          BOMCopierSourceEntryFree(v29);
          goto LABEL_19;
        }
      }
    }

    else
    {
      fts_close(*(a1 + 160));
      *(a1 + 160) = 0;
      free(*(a1 + 136));
      *(a1 + 136) = 0;
      v21 = *(a1 + 24);
      if (v21 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37.f_bsize) = 0;
        _os_log_impl(&dword_241C0E000, v21, OS_LOG_TYPE_DEFAULT, "FTS exhausted", &v37, 2u);
      }

      filesystem_entry = 0;
      *a3 = 1;
    }
  }

LABEL_23:
  v12 = *MEMORY[0x277D85DE8];
  return filesystem_entry;
}

uint64_t next_data_archive_entry(uint64_t a1, _BYTE *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 304);
  if (!v10)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3268, "next_data_archive_entry", "copier_source->data_archive is NULL");
LABEL_20:
    data_archive_entry = 0;
    goto LABEL_21;
  }

  v12 = 512;
  if (!*(a1 + 272))
  {
    v12 = 0;
  }

  if (*(a1 + 384))
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v23 = 0;
  v14 = data_archive_read_entry(v10, &v23, a3, a4, a5, a6, a7, a8);
  if (!v14)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3290, "next_data_archive_entry", "Could not read next data_archive entry: %s", *(v23 + 4));
    release_error(v23);
    goto LABEL_20;
  }

  v15 = v14;
  type = data_archive_entry_get_type(v14);
  v17 = *(a1 + 24);
  if (v17 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    v18 = data_archive_entry_path(v15);
    if (type > 4)
    {
      v19 = "?";
    }

    else
    {
      v19 = off_278D13420[type];
    }

    *buf = 136315394;
    v25 = v18;
    v26 = 2080;
    v27 = v19;
    _os_log_impl(&dword_241C0E000, v17, OS_LOG_TYPE_DEFAULT, "%s [%s]", buf, 0x16u);
  }

  if (type == 1)
  {
    *a2 = 1;
    data_archive_entry_free(v15);
    goto LABEL_20;
  }

  if (type == 4)
  {
    data_archive_entry_free(v15);
    data_archive_entry = next_data_archive_entry(a1, a2, a3);
  }

  else
  {
    data_archive_entry = BOMCopierSourceEntryNewFromDataArchive(*(a1 + 304), v15, v13, a3);
    data_archive_entry_free(v15);
  }

LABEL_21:
  v21 = *MEMORY[0x277D85DE8];
  return data_archive_entry;
}

uint64_t push_preempt_stack(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 336);
  if (v5 || (v5 = BOMStackNew(), (*(a1 + 336) = v5) != 0))
  {
    BOMStackPush(v5, a2);
    return 0;
  }

  else
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4924, "push_preempt_stack", "Could not create empty preempt stack");
    return 0xFFFFFFFFLL;
  }
}

uint64_t populate_sequester_stack(uint64_t a1, void *a2)
{
  v4 = BOMStackNew();
  *(a1 + 376) = v4;
  if (v4)
  {
    v5 = *(a1 + 368);
    if (*(a1 + 93))
    {
      result = path_tree_node_push(*(a1 + 368), 0, v4, a2);
      if (!result)
      {
        return result;
      }

      v7 = *v5;
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5179, "populate_sequester_stack", "Could not push root node %s onto the stack\n");
    }

    else
    {
      if (!*(v5 + 2))
      {
        return 0;
      }

      v8 = 0;
      while (1)
      {
        v9 = *(v5[2] + 8 * v8);
        if (path_tree_node_push(v9, ".", *(a1 + 376), a2))
        {
          break;
        }

        if (++v8 >= *(v5 + 2))
        {
          return 0;
        }
      }

      v10 = *v9;
      v11 = *v9;
      v12 = *v5;
      BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5195, "populate_sequester_stack", "Could not push child %s of %s onto the stack\n");
    }
  }

  else
  {
    BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5158, "populate_sequester_stack", "Could not create empty sequester stack");
  }

  return 0xFFFFFFFFLL;
}

uint64_t *pop_replay_stack(void *a1)
{
  v2 = a1[43];
  if (!v2 || (result = BOMStackPop(v2)) == 0)
  {
    v4 = a1[44];
    if (!v4 || (result = BOMStackPop(v4)) == 0)
    {
      v5 = a1[45];
      if (!v5)
      {
        return 0;
      }

      result = BOMStackPop(v5);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t synthesize_filesystem_stuff()
{
  v0 = MEMORY[0x28223BE20]();
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v54 = *MEMORY[0x277D85DE8];
  if (*(v0 + 67) == 1 && BOMCopierSourceEntryGetType(v1) != 13)
  {
    v6 = *(v5 + 24);
    if (v6 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v6, OS_LOG_TYPE_DEFAULT, "Synthesizing AppleDouble entry", buf, 2u);
    }

    v7 = (*(v5 + 68) & 1) != 0 || *(v5 + 69) == 1 ? 4980740 : 4980736;
    v8 = v7 | *(v5 + 70);
    ActualPath = BOMCopierSourceEntryGetActualPath(v4);
    if ((copyfile(ActualPath, 0, 0, v8 | 0x10000) & v8) != 0)
    {
      memcpy(buf, "/tmp/.BC.T_XXXXXX", sizeof(buf));
      if (!mktemp(buf))
      {
        v12 = *__error();
        v13 = __error();
        strerror(*v13);
        BOMCopierErrorCapture(v3, v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4015, "synthesize_apple_double", "Could not mktemp %s: %s");
        goto LABEL_15;
      }

      if (copyfile(ActualPath, buf, 0, v8))
      {
        v10 = *__error();
        v11 = __error();
        strerror(*v11);
        BOMCopierErrorCapture(v3, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4022, "synthesize_apple_double", "Could not copyfile %s to %s: %s", ActualPath);
LABEL_15:
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3831, "synthesize_filesystem_stuff", "Could not synthesize the AppleDouble file");
LABEL_40:
        result = 0xFFFFFFFFLL;
        goto LABEL_41;
      }

      v14 = BOMCopierSourceEntryNewFromPath(buf, 0, v3);
      if (!v14)
      {
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4034, "synthesize_apple_double", "Could not create BOMCopierSourceEntry from %s", buf);
        unlink(buf);
        goto LABEL_15;
      }

      v15 = v14;
      Path = BOMCopierSourceEntryGetPath(v4);
      bzero(__s, 0x400uLL);
      bzero(v48, 0x400uLL);
      dirname_r(Path, __s);
      basename_r(Path, v48);
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "%s/%s%s", __s, "._", v48);
      if (BOMCopierSourceEntrySetPath(v15, __str))
      {
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4054, "synthesize_apple_double", "Could not create set path entry for %s");
LABEL_24:
        BOMCopierSourceEntryFree(v15);
        goto LABEL_15;
      }

      if (BOMCopierSourceEntrySetOption(v15, @"DeleteOnFree", *MEMORY[0x277CBED28]))
      {
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4062, "synthesize_apple_double", "Could not set kBOMCopierSourceEntryDeleteOnFree option", v31);
        goto LABEL_24;
      }

      if (push_preempt_stack(v5, v15, v3))
      {
        BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4070, "synthesize_apple_double", "Could not push synthetic AppleDouble entry", v31);
        goto LABEL_24;
      }

      v17 = *(v5 + 24);
      if (v17 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
      {
        v53.st_dev = 136315138;
        *&v53.st_mode = ActualPath;
        _os_log_impl(&dword_241C0E000, v17, OS_LOG_TYPE_DEFAULT, "Synthesized AppleDouble from %s", &v53, 0xCu);
      }
    }
  }

  if (*(v5 + 66) == 1 && BOMCopierSourceEntryGetType(v4) != 13)
  {
    v19 = *(v5 + 24);
    if (v19 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241C0E000, v19, OS_LOG_TYPE_DEFAULT, "Synthesizing resource fork entry", buf, 2u);
    }

    v20 = BOMCopierSourceEntryGetActualPath(v4);
    v32 = 0;
    if (asprintf(&v32, "%s%s", v20, "/..namedfork/rsrc") < 0)
    {
      v24 = *__error();
      v25 = __error();
      strerror(*v25);
      BOMCopierErrorCapture(v3, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3879, "synthesize_resource_fork", "Could not asprintf resource path for %s: %s");
    }

    else
    {
      memset(&v53, 0, sizeof(v53));
      v21 = lstat(v32, &v53);
      free(v32);
      if (v21)
      {
        if (*__error() == 2)
        {
          goto LABEL_30;
        }

        v22 = *__error();
        v23 = __error();
        strerror(*v23);
        BOMCopierErrorCapture(v3, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3892, "synthesize_resource_fork", "Could not lstat resource path for %s: %s");
      }

      else
      {
        if (!v53.st_size)
        {
          goto LABEL_30;
        }

        v27 = BOMCopierSourceEntryNewFromResourceFork(v20, v3);
        if (v27)
        {
          v28 = v27;
          v29 = BOMCopierSourceEntryGetPath(v4);
          bzero(buf, 0x400uLL);
          memset(v48, 0, 255);
          dirname_r(v29, buf);
          basename_r(v29, v48);
          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          *__str = 0u;
          v34 = 0u;
          snprintf(__str, 0xFFuLL, "%s%s", v48, "/..namedfork/rsrc");
          bzero(__s, 0x400uLL);
          snprintf(__s, 0x400uLL, "%s/%s", buf, __str);
          if (BOMCopierSourceEntrySetPath(v28, __s))
          {
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3935, "synthesize_resource_fork", "Could not create set path entry for %s");
          }

          else if (BOMCopierSourceEntrySetParent(v28, buf))
          {
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3943, "synthesize_resource_fork", "Could not create set entry parent for %s");
          }

          else if (BOMCopierSourceEntrySetName(v28, __str))
          {
            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3951, "synthesize_resource_fork", "Could not create set entry name for %s");
          }

          else
          {
            if (!push_preempt_stack(v5, v28, v3))
            {
              v30 = *(v5 + 24);
              if (v30 && os_log_type_enabled(*(v5 + 24), OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 136315138;
                v50 = v20;
                _os_log_impl(&dword_241C0E000, v30, OS_LOG_TYPE_DEFAULT, "Synthesized resource fork from %s", v49, 0xCu);
              }

              goto LABEL_30;
            }

            BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3959, "synthesize_resource_fork", "Could not push synthetic resource fork entry");
          }

          BOMCopierSourceEntryFree(v28);
        }

        else
        {
          *buf = v53;
          BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3914, "synthesize_resource_fork", "Could not create BOMCopierSourceEntry from %s");
        }
      }
    }

    BOMCopierErrorCapture(v3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3853, "synthesize_filesystem_stuff", "Could not discover resource fork");
    goto LABEL_40;
  }

LABEL_30:
  result = 0;
LABEL_41:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t adjust_filesystem_entry_path(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = ".";
  if (*(a1 + 93))
  {
    v6 = "";
  }

  v7 = (*(a2 + 48) + *(a1 + 152) - *(a1 + 144) + *(a1 + 93));
  __s = 0;
  v8 = asprintf(&__s, "%s%s", v6, v7);
  if (!__s || v8 < 0)
  {
    v10 = *__error();
    v11 = __error();
    v12 = strerror(*v11);
    BOMCopierErrorCapture(a4, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3784, "adjust_filesystem_entry_path", "Could not asprintf the entry_path: %s", v12);
    return 1;
  }

  else if (BOMCopierSourceEntrySetPath(a3, __s))
  {
    v9 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 3797, "adjust_filesystem_entry_path", "Could not set the entry path");
    free(__s);
  }

  else
  {
    free(__s);
    return 0;
  }

  return v9;
}

char *is_apple_double(void *a1)
{
  Type = BOMCopierSourceEntryGetType(a1);
  if (Type != 15 && Type != 8)
  {
    return 0;
  }

  result = BOMCopierSourceEntryGetName(a1);
  if (!result)
  {
    return result;
  }

  if (*result == 46)
  {
    return (result[1] == 95);
  }

  else
  {
    return 0;
  }
}

uint64_t consume_source_entry(unsigned int *a1, void *a2)
{
  v4 = BOMCopierSourceEntrySkip(a1, 0, 0, a2);
  if (v4)
  {
    BOMCopierErrorCapture(a2, v4, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4090, "consume_source_entry", "Could not skip source entry");
  }

  else
  {
    BOMCopierSourceEntryFree(a1);
  }

  return v4;
}

uint64_t push_replay_stack(void *a1, uint64_t a2, int a3, void *a4)
{
  if (a3 == 3)
  {
    v7 = a1[45];
    if (!v7)
    {
      v7 = BOMStackNew();
      a1[45] = v7;
      if (!v7)
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4981, "push_replay_stack", "Could not create empty replay directory stack");
        return 0xFFFFFFFFLL;
      }
    }

LABEL_11:
    BOMStackPush(v7, a2);
    return 0;
  }

  if (a3 != 2)
  {
    v7 = a1[43];
    if (!v7)
    {
      v7 = BOMStackNew();
      a1[43] = v7;
      if (!v7)
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4951, "push_replay_stack", "Could not create empty replay symlink stack");
        return 0xFFFFFFFFLL;
      }
    }

    goto LABEL_11;
  }

  v7 = a1[44];
  if (v7)
  {
    goto LABEL_11;
  }

  v7 = BOMStackNew();
  a1[44] = v7;
  if (v7)
  {
    goto LABEL_11;
  }

  BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4966, "push_replay_stack", "Could not create empty replay AppleDouble stack");
  return 0xFFFFFFFFLL;
}

uint64_t synthesize_replay_apple_double(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = BOMCopierSourceEntryNew(17, a3);
  if (!v6)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4232, "synthesize_replay_apple_double", "Could not create BOMCopierSourceEntry for replay AppleDouble file");
LABEL_19:
    result = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v7 = v6;
  v8 = BOMCopierSourceEntryGetName(a2) + 2;
  v9 = strdup(v8);
  if (!v9)
  {
    v13 = __error();
    strerror(*v13);
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4248, "synthesize_replay_apple_double", "Could not duplicate %s: %s");
    goto LABEL_18;
  }

  v10 = v9;
  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = strlen(v11);
    v10[strlen(v10) - v12] = 0;
  }

  if (BOMCopierSourceEntrySetAppleDoubleTarget(v7, v10))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4265, "synthesize_replay_apple_double", "Could not create set AppleDouble target for replay AppleDouble file");
    free(v10);
LABEL_18:
    BOMCopierSourceEntryFree(v7);
    goto LABEL_19;
  }

  Path = BOMCopierSourceEntryGetPath(a2);
  v15 = *(a1 + 24);
  if (v15 && os_log_type_enabled(*(a1 + 24), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = Path;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&dword_241C0E000, v15, OS_LOG_TYPE_DEFAULT, "Synthesizing replay AppleDouble from %s to %s", buf, 0x16u);
  }

  free(v10);
  if (BOMCopierSourceEntrySetPath(v7, Path))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4280, "synthesize_replay_apple_double", "Could not set entry path for replay AppleDouble file");
    goto LABEL_18;
  }

  if (copy_entry_metadata(a2, v7, a3))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4288, "synthesize_replay_apple_double", "Could not copy metadata from the source entry to its replay apple double");
    goto LABEL_18;
  }

  result = push_replay_stack(a1, v7, 2, a3);
  if (result)
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4296, "synthesize_replay_apple_double", "Could not push the synthetic replay AppleDouble");
    goto LABEL_18;
  }

LABEL_20:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __add_sequester_entry_block_invoke(uint64_t a1, const char *a2, int a3)
{
  v5 = *(*(a1 + 32) + 8);
  if (!*(v5 + 24))
  {
    v18 = strlen(a2);
    v19 = *(a1 + 48);
    if (*(v19 + 93))
    {
      v20 = "__MACOSX";
    }

    else
    {
      v20 = ".";
    }

    if (!strncmp(a2, v20, v18))
    {
      v21 = *(v19 + 368);
      if (v21)
      {
        result = 0;
        *(v5 + 24) = v21;
        return result;
      }

      *(*(*(a1 + 32) + 8) + 24) = path_tree_node_create(a2, *(a1 + 56));
      v23 = *(*(*(a1 + 32) + 8) + 24);
      if (v23)
      {
        result = 0;
        *(*(a1 + 48) + 368) = v23;
        return result;
      }

      BOMCopierErrorCapture(*(a1 + 56), 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5086, "add_sequester_entry_block_invoke", "Could not create root path tree node");
    }

    else
    {
      BOMCopierErrorCapture(*(a1 + 56), 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5076, "add_sequester_entry_block_invoke", "I was expecting %s not %s");
    }

    return 0xFFFFFFFFLL;
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  v7 = *(a1 + 32);
  v8 = *(*(v7 + 8) + 24);
  if (*(v8 + 8))
  {
    v9 = 0;
    do
    {
      v10 = *(*(a1 + 40) + 8);
      if (*(v10 + 24))
      {
        break;
      }

      v11 = *(*(v8 + 16) + 8 * v9);
      if (!strncmp(a2, *v11, 0xFFuLL))
      {
        *(v10 + 24) = v11;
        v7 = *(a1 + 32);
      }

      ++v9;
      v8 = *(*(v7 + 8) + 24);
    }

    while (v9 < *(v8 + 8));
  }

  v12 = *(a1 + 40);
  v13 = *(*(v12 + 8) + 24);
  if (v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + 56);
  if (a2)
  {
    v15 = path_tree_node_create(a2, *(a1 + 56));
    if (!v15)
    {
      BOMCopierErrorCapture(v14, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5390, "path_tree_node_add_child", "Could not create child node for %s\n", a2);
      goto LABEL_26;
    }

    v16 = *(v8 + 8);
    v17 = malloc_type_realloc(*(v8 + 16), 8 * (v16 + 1), 0x2BF6FEB6uLL);
    if (v17)
    {
      v17[v16] = v15;
      *(v8 + 8) = v16 + 1;
      *(v8 + 16) = v17;
      goto LABEL_26;
    }

    v24 = __error();
    BOMCopierErrorCapture(v14, *v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5402, "path_tree_node_add_child", "Could not reallocate new children list\n");
    path_tree_node_release(v15);
  }

  else
  {
    BOMCopierErrorCapture(*(a1 + 56), 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5382, "path_tree_node_add_child", "child_name is NULL");
  }

  v15 = 0;
LABEL_26:
  *(*(*(a1 + 40) + 8) + 24) = v15;
  v12 = *(a1 + 40);
  v13 = *(*(v12 + 8) + 24);
  if (!v13)
  {
    v25 = **(*(*(a1 + 32) + 8) + 24);
    BOMCopierErrorCapture(*(a1 + 56), 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5121, "add_sequester_entry_block_invoke", "Could not add child %s to %s");
    return 0xFFFFFFFFLL;
  }

LABEL_27:
  if (a3)
  {
    *(v13 + 24) = *(a1 + 64);
    v12 = *(a1 + 40);
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = *(*(v12 + 8) + 24);
  return result;
}

void *path_tree_node_create(const char *a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5320, "path_tree_node_create", "name is NULL");
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10B0040ECAA58F3uLL);
  if (!v4)
  {
    v9 = __error();
    BOMCopierErrorCapture(a2, *v9, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5327, "path_tree_node_create", "Could not allocate node");
    return v4;
  }

  v5 = strdup(a1);
  *v4 = v5;
  if (!v5)
  {
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    BOMCopierErrorCapture(a2, v6, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5334, "path_tree_node_create", "Could not strdup %s: %s", a1, v8);
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t copy_entry_metadata(uint64_t a1, uint64_t a2, void *a3)
{
  BOMCopierSourceEntryGetPath(a1);
  BOMCopierSourceEntryGetPath(a2);
  Mode = BOMCopierSourceEntryGetMode(a1);
  if (BOMCopierSourceEntrySetMode(a2, Mode))
  {
    BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4839, "copy_entry_metadata", "Could not set mode for entry %s");
  }

  else
  {
    UserID = BOMCopierSourceEntryGetUserID(a1);
    if (BOMCopierSourceEntrySetUserID(a2, UserID))
    {
      BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4848, "copy_entry_metadata", "Could not set uid for entry %s");
    }

    else
    {
      GroupID = BOMCopierSourceEntryGetGroupID(a1);
      if (BOMCopierSourceEntrySetGroupID(a2, GroupID))
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4857, "copy_entry_metadata", "Could not set gid for entry %s");
      }

      else
      {
        v12 = 0uLL;
        if (BOMCopierSourceEntryGetAccessTime(a1, &v12))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4866, "copy_entry_metadata", "Could not get access time for entry %s");
        }

        else if (BOMCopierSourceEntrySetAccessTime(a2, v12, *(&v12 + 1)))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4873, "copy_entry_metadata", "Could not set access time for entry %s");
        }

        else
        {
          v11 = 0uLL;
          if (BOMCopierSourceEntryGetModificationTime(a1, &v11))
          {
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4882, "copy_entry_metadata", "Could not get modification time for entry %s");
          }

          else if (BOMCopierSourceEntrySetModificationTime(a2, v11, *(&v11 + 1)))
          {
            BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4889, "copy_entry_metadata", "Could not set modification time for entry %s");
          }

          else
          {
            v10 = 0uLL;
            if (BOMCopierSourceEntryGetStatusTime(a1, &v10))
            {
              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4898, "copy_entry_metadata", "Could not get status time for entry %s");
            }

            else
            {
              result = BOMCopierSourceEntrySetStatusTime(a2, v10, *(&v10 + 1));
              if (!result)
              {
                return result;
              }

              BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 4905, "copy_entry_metadata", "Could not set status time for entry %s");
            }
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t path_tree_node_push(uint64_t *a1, const char *a2, char *a3, void *a4)
{
  __s = 0;
  v8 = *a1;
  if (a2)
  {
    asprintf(&__s, "%s/%s");
  }

  else
  {
    v18 = *a1;
    asprintf(&__s, "%s");
  }

  if (__s)
  {
    if (*(a1 + 2))
    {
      v9 = 0;
      while (!path_tree_node_push(*(a1[2] + 8 * v9), __s, a3, a4))
      {
        if (++v9 >= *(a1 + 2))
        {
          goto LABEL_9;
        }
      }

      v13 = **(a1[2] + 8 * v9);
      v19 = *a1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5449, "path_tree_node_push", "Could not push child %s of %s onto the stack\n");
      goto LABEL_21;
    }

LABEL_9:
    v10 = a1[3];
    if (v10)
    {
LABEL_10:
      BOMStackPush(a3, v10);
      free(__s);
      return 0;
    }

    v14 = BOMCopierSourceEntryNew(6, a4);
    if (v14)
    {
      v10 = v14;
      if (BOMCopierSourceEntrySetPath(v14, __s))
      {
        v15 = *a1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5470, "path_tree_node_push", "Could not path for source entry of %s\n");
      }

      else
      {
        if (!BOMCopierSourceEntrySetMode(v10, 16893))
        {
          goto LABEL_10;
        }

        v17 = *a1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5479, "path_tree_node_push", "Could not mode for source entry of %s\n");
      }

      BOMCopierSourceEntryFree(v10);
    }

    else
    {
      v16 = *a1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5462, "path_tree_node_push", "Could not create source entry for %s\n");
    }

LABEL_21:
    free(__s);
    return 0xFFFFFFFFLL;
  }

  v12 = __error();
  BOMCopierErrorCapture(a4, *v12, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSource.c", 5439, "path_tree_node_push", "Could not create node path for %s and %s\n", a2, *a1);
  return 0xFFFFFFFFLL;
}

char *BOMNewPathKey(unsigned int a1, char *__s, void *a3)
{
  v3 = 0;
  if (__s && a3)
  {
    v7 = strlen(__s);
    v8 = BOM_malloc(v7 + 5);
    v3 = v8;
    if (v8)
    {
      *a3 = v7 + 5;
      *v8 = bswap32(a1);
      strlcpy(v8 + 4, __s, v7 + 1);
    }

    else
    {
      v9 = *MEMORY[0x277D85DF8];
      v10 = __error();
      v11 = strerror(*v10);
      fprintf(v9, "malloc: %s\n", v11);
    }
  }

  return v3;
}

_DWORD *BOMNewPathValue(unsigned int a1, unsigned int a2, void *a3)
{
  if (!a3)
  {
    return 0;
  }

  result = BOM_malloc(8uLL);
  if (result)
  {
    *a3 = 8;
    *result = bswap32(a1);
    result[1] = bswap32(a2);
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v7, "malloc: %s\n", v9);
    return 0;
  }

  return result;
}

unsigned int *BOMPathIDFromPathKey(unsigned int *result)
{
  if (result)
  {
    return bswap32(*result);
  }

  return result;
}

uint64_t BOMBlockIDFromPathValue(uint64_t result)
{
  if (result)
  {
    return bswap32(*(result + 4));
  }

  return result;
}

char *BOMCopierDestinationNew(char *__s, const __CFDictionary *a2, void *a3)
{
  v196 = *MEMORY[0x277D85DE8];
  if (!(__s | a2))
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 621, "BOMCopierDestinationNew", "path and options are NULL");
LABEL_324:
    v6 = 0;
    goto LABEL_325;
  }

  if (__s && strlen(__s) >= 0x400)
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 630, "BOMCopierDestinationNew", "maximum path length exceeded: %ld");
    goto LABEL_324;
  }

  v6 = malloc_type_calloc(1uLL, 0x170uLL, 0x10B004067826777uLL);
  if (!v6)
  {
    v24 = __error();
    BOMCopierErrorCapture(a3, *v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 644, "BOMCopierDestinationNew", "Could not allocate empty BOMCopierDestination");
    goto LABEL_325;
  }

  *(v6 + 2) = geteuid();
  *(v6 + 124) = 0x10000;
  *(v6 + 36) = -1;
  *(v6 + 29) = 0;
  v6[297] = 1;
  *(v6 + 82) = -1;
  v7 = BOMHardLinkTableNew();
  *(v6 + 9) = v7;
  if (!v7)
  {
    v25 = *__error();
    BOMCopierErrorCapture(a3, v25, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 662, "BOMCopierDestinationNew", "Could not create BOMHardLinkTable");
    goto LABEL_323;
  }

  *(v6 + 4) = -1;
  if (!geteuid())
  {
    v6[302] = 1;
  }

  if (a2)
  {
    TypeID = CFBooleanGetTypeID();
    Value = CFDictionaryGetValue(a2, @"useFilesystemCache");
    if (Value)
    {
      v10 = Value;
      if (TypeID != CFGetTypeID(Value))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2782, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseFilesystemCacheKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      if (CFEqual(v10, *MEMORY[0x277CBED10]) == 1)
      {
        v6[40] = 1;
      }
    }

    v11 = CFDictionaryGetValue(a2, @"applySourcePermissions");
    if (v11)
    {
      v12 = v11;
      if (TypeID != CFGetTypeID(v11))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2797, "parse_copier_destination_options", "kBOMCopierDestinationOptionApplySourcePermissionsKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      v6[43] = CFEqual(v12, *MEMORY[0x277CBED28]) != 0;
    }

    v13 = CFDictionaryGetValue(a2, @"createArchive");
    if (v13)
    {
      if (TypeID != CFGetTypeID(v13))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2809, "parse_copier_destination_options", "kBOMCopierDestinationOptionCreateArchiveKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      *(v6 + 11) = 1;
    }

    v14 = CFNumberGetTypeID();
    v15 = CFDictionaryGetValue(a2, @"libarchiveFormat");
    if (v15)
    {
      v16 = v15;
      if (v14 != CFGetTypeID(v15))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2823, "parse_copier_destination_options", "kBOMCopierDestinationOptionLibarchiveFormatKey must be a CFNumberRef");
        goto LABEL_323;
      }

      valuePtr[0].st_dev = -1;
      if (!CFNumberGetValue(v16, kCFNumberSInt32Type, valuePtr))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2831, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
        goto LABEL_323;
      }

      *(v6 + 31) = valuePtr[0].st_dev;
    }

    v17 = CFDictionaryGetValue(a2, @"libarchiveFilter");
    if (v17)
    {
      v18 = v17;
      if (v14 != CFGetTypeID(v17))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2843, "parse_copier_destination_options", "kBOMCopierDestinationOptionLibarchiveFilterKey must be a CFNumberRef");
        goto LABEL_323;
      }

      valuePtr[0].st_dev = -1;
      if (!CFNumberGetValue(v18, kCFNumberSInt32Type, valuePtr))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2851, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
        goto LABEL_323;
      }

      *(v6 + 32) = valuePtr[0].st_dev;
    }

    v19 = CFDictionaryGetValue(a2, @"createAppleArchive");
    if (v19)
    {
      if (TypeID != CFGetTypeID(v19))
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2863, "parse_copier_destination_options", "kBOMCopierDestinationOptionCreateAppleArchiveKey must be a CFBooleanRef");
        goto LABEL_323;
      }

      *(v6 + 11) = 2;
    }

    v20 = CFStringGetTypeID();
    v21 = CFDictionaryGetValue(a2, @"compressAppleArchive");
    if (!v21)
    {
      goto LABEL_59;
    }

    v22 = v21;
    if (v20 == CFGetTypeID(v21))
    {
      if (CFEqual(v22, @"none") == 1)
      {
        v23 = 0;
      }

      else if (CFEqual(v22, @"lz4") == 1)
      {
        v23 = 256;
      }

      else if (CFEqual(v22, @"zlib") == 1)
      {
        v23 = 1285;
      }

      else if (CFEqual(v22, @"lzma") == 1)
      {
        v23 = 774;
      }

      else if (CFEqual(v22, @"lzfse") == 1)
      {
        v23 = 2049;
      }

      else
      {
        if (CFEqual(v22, @"lzbitmap") != 1)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2911, "parse_copier_destination_options", "Unsupported AppleArchive compression algorithm");
          goto LABEL_323;
        }

        v23 = 1794;
      }

      *(v6 + 41) = v23;
LABEL_59:
      v26 = CFDictionaryGetValue(a2, @"outputFD");
      if (v26)
      {
        v27 = v26;
        if (v14 != CFGetTypeID(v26))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2921, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputFileDescriptorKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v27, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2929, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 12) = valuePtr[0].st_dev;
      }

      v28 = CFWriteStreamGetTypeID();
      v29 = CFDictionaryGetValue(a2, @"outputStream");
      if (v29)
      {
        v30 = v29;
        if (v28 != CFGetTypeID(v29))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2943, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputCFWriteStreamKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        if (CFWriteStreamGetStatus(v30) != kCFStreamStatusOpen)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2950, "parse_copier_destination_options", "CFWriteStream is not open");
          goto LABEL_323;
        }

        *(v6 + 7) = v30;
      }

      v31 = CFDictionaryGetValue(a2, @"output2Nowhere");
      if (v31)
      {
        v32 = v31;
        if (TypeID != CFGetTypeID(v31))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2962, "parse_copier_destination_options", "kBOMCopierDestinationOptionOutputToNowhereKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        if (CFEqual(v32, *MEMORY[0x277CBED28]) == 1)
        {
          *(v6 + 11) = 3;
        }
      }

      if (CFDictionaryContainsKey(a2, @"archs") == 1)
      {
        memset(valuePtr, 0, 48);
        if (BOMCopierPrepareMatchContext(a2, valuePtr, a3))
        {
          BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2979, "parse_copier_destination_options", "Could not prepare binary matching context");
          goto LABEL_323;
        }

        *(v6 + 48) = valuePtr[0].st_dev;
        *(v6 + 25) = valuePtr[0].st_ino;
      }

      v33 = CFDictionaryGetValue(a2, @"enableAtomicCopies");
      if (v33)
      {
        v34 = v33;
        if (TypeID != CFGetTypeID(v33))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2992, "parse_copier_destination_options", "kBOMCopierDestinationOptionPerformAtomicCopies must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[297] = CFEqual(*MEMORY[0x277CBED28], v34) != 0;
      }

      v35 = CFDictionaryGetValue(a2, @"useDefaultDirectoryPermissions");
      if (v35)
      {
        v36 = v35;
        if (TypeID != CFGetTypeID(v35))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3004, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseDefaultDirectoryPermissions must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[296] = CFEqual(*MEMORY[0x277CBED28], v36) != 0;
      }

      v37 = CFDictionaryGetValue(a2, @"useAppleFSCompression");
      if (v37)
      {
        v38 = v37;
        if (TypeID != CFGetTypeID(v37))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3016, "parse_copier_destination_options", "kBOMCopierDestinationOptionUseAppleFSCompression must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[112] = CFEqual(*MEMORY[0x277CBED28], v38) != 0;
      }

      v39 = CFDictionaryGetValue(a2, @"preserveAppleFSCompression");
      if (v39)
      {
        v40 = v39;
        if (TypeID != CFGetTypeID(v39))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3028, "parse_copier_destination_options", "kBOMCopierDestinationOptionPreserveAppleFSCompression must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[113] = CFEqual(*MEMORY[0x277CBED28], v40) != 0;
      }

      v41 = CFDictionaryGetValue(a2, @"AppleFSCompressionType");
      if (v41)
      {
        v42 = v41;
        if (v14 != CFGetTypeID(v41))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3041, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleFSCompressionType must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v42, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3049, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 29) = valuePtr[0].st_dev;
      }

      v43 = CFDictionaryGetValue(a2, @"AppleFSCompressionFlags");
      if (v43)
      {
        v44 = v43;
        if (v14 != CFGetTypeID(v43))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3061, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleFSCompressionFlags must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v44, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3069, "parse_copier_destination_options", "Could not convert the format number to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        *(v6 + 30) = valuePtr[0].st_dev;
      }

      v45 = CFDictionaryGetValue(a2, @"enforceDestinationEncapsulation");
      if (v45)
      {
        v46 = v45;
        if (TypeID != CFGetTypeID(v45))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3081, "parse_copier_destination_options", "kBOMCopierDestinationOptionEnforceDestinationEncapsulationKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[298] = CFEqual(*MEMORY[0x277CBED28], v46) != 0;
      }

      v47 = CFDictionaryGetValue(a2, @"enforceDestinationLocation");
      if (v47)
      {
        v48 = v47;
        if (TypeID != CFGetTypeID(v47))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3093, "parse_copier_destination_options", "kBOMCopierDestinationOptionEnforceDestinationLocationKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[299] = CFEqual(*MEMORY[0x277CBED28], v48) != 0;
      }

      v49 = CFDictionaryGetValue(a2, @"keepBinaries");
      if (v49)
      {
        v50 = v49;
        if (TypeID != CFGetTypeID(v49))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3105, "parse_copier_destination_options", "kBOMCopierDestinationKeepBinariesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[307] = CFEqual(*MEMORY[0x277CBED28], v50) != 0;
      }

      v51 = CFDictionaryGetValue(a2, @"keptFileList");
      if (v51)
      {
        v52 = v51;
        if (v20 != CFGetTypeID(v51))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3117, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileListKey must be a CFStringRef");
          goto LABEL_323;
        }

        v53 = CFStringGetLength(v52) + 1;
        v54 = malloc_type_calloc(1uLL, v53, 0x81EC8F95uLL);
        *(v6 + 40) = v54;
        if (!v54)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3127, "parse_copier_destination_options", "Could not allocate %ld bytes for path");
          goto LABEL_323;
        }

        if (!CFStringGetCString(v52, v54, v53, 0x8000100u))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3134, "parse_copier_destination_options", "Could not convert enumeration_bom_path string to C string");
          goto LABEL_323;
        }
      }

      v55 = CFDictionaryGetValue(a2, @"keepFilePattern");
      if (v55)
      {
        v56 = v55;
        if (v20 != CFGetTypeID(v55))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3144, "parse_copier_destination_options", "kBOMCopierDestinationKeepFilePatternKey must be a CFStringRef");
          goto LABEL_323;
        }

        v57 = CFStringGetLength(v56) + 1;
        buffer = malloc_type_calloc(1uLL, v57, 0xC98F3F83uLL);
        if (!buffer)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3154, "parse_copier_destination_options", "Could not allocate %ld bytes for pattern");
          goto LABEL_323;
        }

        if (CFStringGetCString(v56, buffer, v57, 0x8000100u))
        {
          v58 = malloc_type_malloc(0x20uLL, 0x10700404B019E81uLL);
          *(v6 + 42) = v58;
          if (v58)
          {
            if (regcomp(v58, buffer, 5))
            {
              v59 = *__error();
              v60 = __error();
              v61 = strerror(*v60);
              BOMCopierErrorCapture(a3, v59, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3177, "parse_copier_destination_options", "Could not compile regular expression from %s: %s", buffer, v61);
              v62 = buffer;
LABEL_140:
              free(v62);
              goto LABEL_323;
            }

            free(buffer);
            goto LABEL_142;
          }

          v63 = *__error();
          BOMCopierErrorCapture(a3, v63, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3169, "parse_copier_destination_options", "Could not allocate regular expression");
        }

        else
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3161, "parse_copier_destination_options", "Could not convert enumeration_bom_path string to C string");
        }

        v62 = buffer;
        goto LABEL_140;
      }

LABEL_142:
      v64 = CFDictionaryGetValue(a2, @"keptFileDirectory");
      if (v64)
      {
        v65 = v64;
        if (v20 != CFGetTypeID(v64))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3190, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileDirectoryKey must be a CFStringRef");
          goto LABEL_323;
        }

        v66 = CFStringGetLength(v65) + 1;
        v67 = malloc_type_calloc(1uLL, v66, 0x63F44015uLL);
        *(v6 + 43) = v67;
        if (!v67)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3200, "parse_copier_destination_options", "Could not allocate %ld bytes for kept file directory");
          goto LABEL_323;
        }

        if (!CFStringGetCString(v65, v67, v66, 0x8000100u))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3207, "parse_copier_destination_options", "Could not convert kept_file_directory string to C string");
          goto LABEL_323;
        }
      }

      v68 = CFDictionaryGetValue(a2, @"balanceKeptFiles");
      if (v68)
      {
        v69 = v68;
        if (TypeID != CFGetTypeID(v68))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3217, "parse_copier_destination_options", "kBOMCopierDestinationBalanceKeptFilesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v70 = CFEqual(*MEMORY[0x277CBED28], v69);
        v6[352] = v70 != 0;
        if (v70)
        {
          *(v6 + 89) = 100;
        }
      }

      v71 = CFDictionaryGetValue(a2, @"keptFileBalanceLimit");
      if (v71)
      {
        v72 = v71;
        if (v14 != CFGetTypeID(v71))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3234, "parse_copier_destination_options", "kBOMCopierDestinationKeptFileBalanceLimitKey must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v72, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3242, "parse_copier_destination_options", "Could not convert the kept file balance limit to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        if (valuePtr[0].st_dev <= 0)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3248, "parse_copier_destination_options", "%d is out of range for kept file balance limit");
          goto LABEL_323;
        }

        *(v6 + 89) = valuePtr[0].st_dev;
      }

      v73 = CFDictionaryGetValue(a2, @"zlibCompressionLevel");
      if (v73)
      {
        v74 = v73;
        if (v14 != CFGetTypeID(v73))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3261, "parse_copier_destination_options", "kBOMCopierDestinationOptionZlibCompressionLevel must be a CFNumberRef");
          goto LABEL_323;
        }

        valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v74, kCFNumberSInt32Type, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3269, "parse_copier_destination_options", "Could not convert the zlib compression level to kCFNumberSInt32Type");
          goto LABEL_323;
        }

        if ((valuePtr[0].st_dev - 10) <= 0xFFFFFFF4)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3275, "parse_copier_destination_options", "%d is out of range for Zlib compression");
          goto LABEL_323;
        }

        *(v6 + 36) = valuePtr[0].st_dev;
      }

      v75 = CFDictionaryGetValue(a2, @"symlinkTreatment");
      if (v75)
      {
        v76 = v75;
        if (CFGetTypeID(v75) != v20)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3291, "parse_copier_destination_options", "kBOMCopierDestinationOptionSymlinkTreatmentKey is not a CFStringRef");
          goto LABEL_323;
        }

        if (CFEqual(v76, @"unlink"))
        {
          v77 = 1;
        }

        else if (CFEqual(v76, @"follow"))
        {
          v77 = 2;
        }

        else
        {
          if (!CFEqual(v76, @"error"))
          {
            BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3306, "parse_copier_destination_options", "Unknown value for kBOMCopierOptionSymlinkTreatmentKey");
            goto LABEL_323;
          }

          v77 = 0;
        }

        *(v6 + 70) = v77;
      }

      v78 = CFDictionaryGetValue(a2, @"persistRestrictedFlags");
      if (v78)
      {
        v79 = v78;
        if (TypeID != CFGetTypeID(v78))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3316, "parse_copier_destination_options", "kBOMCopierDestinationPersistRestrictedFlags must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[303] = CFEqual(*MEMORY[0x277CBED28], v79) != 0;
      }

      v80 = CFDictionaryGetValue(a2, @"preserveRestrictedFlags");
      if (v80)
      {
        v81 = v80;
        if (TypeID != CFGetTypeID(v80))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3328, "parse_copier_destination_options", "kBOMCopierDestinationPreserveRestrictedFlags must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[302] = CFEqual(*MEMORY[0x277CBED28], v81) != 0;
      }

      v82 = CFDictionaryGetValue(a2, @"persistRootless");
      if (v82)
      {
        v83 = v82;
        if (TypeID != CFGetTypeID(v82))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3340, "parse_copier_destination_options", "kBOMCopierDestinationOptionPersistRootlessExtendedAttribute must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[301] = CFEqual(*MEMORY[0x277CBED28], v83) != 0;
      }

      v84 = CFDictionaryGetValue(a2, @"initialInode");
      if (v84)
      {
        v85 = v84;
        if (v14 != CFGetTypeID(v84))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3352, "parse_copier_destination_options", "kBOMCopierDestinationOptionInitialInodeKey must be a CFNumberRef");
          goto LABEL_323;
        }

        *&valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v85, kCFNumberLongLongType, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3360, "parse_copier_destination_options", "Could not convert kBOMCopierDestinationOptionInitialInodeKey to kCFNumberLongLongType");
          goto LABEL_323;
        }

        *(v6 + 8) = *&valuePtr[0].st_dev;
      }

      v86 = CFDictionaryGetValue(a2, @"skipTerminator");
      if (v86)
      {
        v87 = v86;
        if (TypeID != CFGetTypeID(v86))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3372, "parse_copier_destination_options", "kBOMCopierDestinationOptionSkipCPIOTerminatorKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[148] = CFEqual(*MEMORY[0x277CBED28], v87) != 0;
      }

      v88 = CFDictionaryGetValue(a2, @"segmentFileSize");
      if (v88)
      {
        v89 = v88;
        if (v14 != CFGetTypeID(v88))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3384, "parse_copier_destination_options", "kBOMCopierDestinationOptionSegmentFileSizeKey must be a CFNumberRef");
          goto LABEL_323;
        }

        *&valuePtr[0].st_dev = -1;
        if (!CFNumberGetValue(v89, kCFNumberLongLongType, valuePtr))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3392, "parse_copier_destination_options", "Could not convert kBOMCopierDestinationOptionSegmentFileSizeKey to kCFNumberLongLongType");
          goto LABEL_323;
        }

        *(v6 + 19) = *&valuePtr[0].st_dev;
      }

      v90 = CFDictionaryGetValue(a2, @"appleDoubleMergeACLs");
      if (v90)
      {
        v91 = v90;
        if (TypeID != CFGetTypeID(v90))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3404, "parse_copier_destination_options", "kBOMCopierDestinationOptionAppleDoubleMergeACLsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[160] = CFEqual(*MEMORY[0x277CBED28], v91) != 0;
      }

      v92 = CFDictionaryGetValue(a2, @"cloneFiles");
      if (v92)
      {
        v93 = v92;
        if (TypeID != CFGetTypeID(v92))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3416, "parse_copier_destination_options", "kBOMCopierDestinationOptionCloneFilesKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[304] = CFEqual(*MEMORY[0x277CBED28], v93) != 0;
      }

      v94 = CFDictionaryGetValue(a2, @"removeSetuidPermissions");
      if (v94)
      {
        v95 = v94;
        if (TypeID != CFGetTypeID(v94))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3428, "parse_copier_destination_options", "kBOMCopierDestinationOptionRemoveSetuidPermissionsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[305] = CFEqual(*MEMORY[0x277CBED28], v95) != 0;
      }

      v96 = CFDictionaryGetValue(a2, @"removeExecutablePermissions");
      if (v96)
      {
        v97 = v96;
        if (TypeID != CFGetTypeID(v96))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3440, "parse_copier_destination_options", "kBOMCopierDestinationOptionRemoveExecutablePermissionsKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[306] = CFEqual(*MEMORY[0x277CBED28], v97) != 0;
      }

      v98 = CFDictionaryGetValue(a2, @"setStaticContent");
      if (v98)
      {
        v99 = v98;
        if (TypeID != CFGetTypeID(v98))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3452, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetStaticContentKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[41] = CFEqual(*MEMORY[0x277CBED28], v99) != 0;
      }

      v100 = CFDictionaryGetValue(a2, @"setSingleWriter");
      if (v100)
      {
        v101 = v100;
        if (TypeID != CFGetTypeID(v100))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3464, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetSingleWriterKey must be a CFBooleanRef");
          goto LABEL_323;
        }

        v6[42] = CFEqual(*MEMORY[0x277CBED28], v101) != 0;
      }

      v102 = CFDictionaryGetValue(a2, @"setDataProtectionClass");
      if (v102)
      {
        v103 = v102;
        if (v20 != CFGetTypeID(v102))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3476, "parse_copier_destination_options", "kBOMCopierDestinationOptionSetDataProtectionClassKey must be a CFStringRef");
          goto LABEL_323;
        }

        v104 = CFEqual(v103, @"A");
        v105 = 1;
        if (v104 != 1)
        {
          if (CFEqual(v103, @"B") == 1)
          {
            v105 = 2;
          }

          else if (CFEqual(v103, @"C") == 1)
          {
            v105 = 3;
          }

          else
          {
            if (CFEqual(v103, @"D") != 1)
            {
              BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3494, "parse_copier_destination_options", "Unsupported data protection class");
              goto LABEL_323;
            }

            v105 = 4;
          }
        }

        *(v6 + 4) = v105;
        v6[12] = 1;
      }

      v106 = CFDataGetTypeID();
      v107 = CFDictionaryGetValue(a2, @"applyProvenance");
      if (v107)
      {
        v108 = v107;
        if (v106 != CFGetTypeID(v107))
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3508, "parse_copier_destination_options", "kBOMCopierDestinationOptionApplyProvenanceKey must be a CFDataRef");
          goto LABEL_323;
        }

        Length = CFDataGetLength(v108);
        if (!Length)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3516, "parse_copier_destination_options", "kBOMCopierOptionApplyProvenanceKey has an invalid size");
          goto LABEL_323;
        }

        v110 = Length;
        v111 = malloc_type_malloc(Length, 0x6F1A1495uLL);
        if (!v111)
        {
          v188 = *__error();
          BOMCopierErrorCapture(a3, v188, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 3523, "parse_copier_destination_options", "Could not allocate provenance data buffer");
          goto LABEL_323;
        }

        v112 = v111;
        BytePtr = CFDataGetBytePtr(v108);
        memcpy(v112, BytePtr, v110);
        *(v6 + 3) = v112;
        *(v6 + 4) = v110;
      }

      goto LABEL_249;
    }

    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 2877, "parse_copier_destination_options", "kBOMCopierDestinationOptionCompressAppleArchiveKey must be a CFStringRef");
LABEL_323:
    BOMCopierDestinationFree(v6);
    goto LABEL_324;
  }

LABEL_249:
  v114 = *(v6 + 11);
  if (v114 > 1)
  {
    if (v114 == 2)
    {
      if (__s)
      {
        v123 = AAFileStreamOpenWithPath(__s, 1537, 0x1A4u);
        *(v6 + 21) = v123;
        if (!v123)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1063, "BOMCopierDestinationNew", "Could not create AppleArchive byte stream at %s\n");
          goto LABEL_323;
        }
      }

      else if (*(v6 + 7))
      {
        v126 = AACustomByteStreamOpen();
        *(v6 + 21) = v126;
        if (!v126)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1079, "BOMCopierDestinationNew", "Could not create custom AppleArchive byte stream at %s\n");
          goto LABEL_323;
        }

        AACustomByteStreamSetData(v126, v6);
        AACustomByteStreamSetCloseProc(*(v6 + 21), apple_archive_close_callback_0);
        AACustomByteStreamSetWriteProc(*(v6 + 21), apple_archive_write_callback);
        v123 = *(v6 + 21);
      }

      else
      {
        v134 = *(v6 + 12);
        if (v134 == -1)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1091, "BOMCopierDestinationNew", "No output file descriptor\n");
          goto LABEL_323;
        }

        v123 = AAFileStreamOpenWithFD(v134, 0);
        *(v6 + 21) = v123;
        if (!v123)
        {
          BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1099, "BOMCopierDestinationNew", "Could not create AppleArchive byte stream from file descriptor\n");
          goto LABEL_323;
        }
      }

      v135 = AACompressionOutputStreamOpen(v123, *(v6 + 41), 0x100000uLL, 0, 0);
      *(v6 + 22) = v135;
      if (!v135)
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1118, "BOMCopierDestinationNew", "Could not create AppleArchive compression stream\n");
        goto LABEL_323;
      }

      v136 = AAEncodeArchiveOutputStreamOpen(v135, 0, 0, 0, 0);
      *(v6 + 23) = v136;
      if (!v136)
      {
        BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1132, "BOMCopierDestinationNew", "Could not create AppleArchive encoder\n");
        goto LABEL_323;
      }
    }

    else if (v114 == 3 && __s)
    {
      BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1143, "BOMCopierDestinationNew", "I expect path to be NULL for nowhere destinations");
      goto LABEL_323;
    }
  }

  else if (v114)
  {
    if (v114 == 1)
    {
      v115 = archive_write_new();
      *(v6 + 17) = v115;
      if (!v115)
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 902, "BOMCopierDestinationNew", "Could not create archive");
        goto LABEL_323;
      }

      v116 = *(v6 + 31);
      v117 = archive_write_set_format();
      v118 = *(v6 + 17);
      if (v117)
      {
        v119 = archive_errno();
        strerror(v119);
        BOMCopierErrorCapture(a3, v117, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 910, "BOMCopierDestinationNew", "Could not set archive format: %s");
        goto LABEL_323;
      }

      v129 = *(v6 + 32);
      v130 = archive_write_add_filter();
      if (v130)
      {
        v131 = v130;
        v132 = *(v6 + 17);
        v133 = archive_errno();
        strerror(v133);
        BOMCopierErrorCapture(a3, v131, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 918, "BOMCopierDestinationNew", "Could not set archive filter: %s");
        goto LABEL_323;
      }

      if (*(v6 + 32) == 1 && *(v6 + 36) != -1)
      {
        snprintf(valuePtr, 0xFFuLL, "%d", *(v6 + 36));
        v138 = *(v6 + 17);
        v139 = archive_write_set_filter_option();
        if (v139)
        {
          v140 = v139;
          v141 = *(v6 + 17);
          v142 = archive_errno();
          strerror(v142);
          BOMCopierErrorCapture(a3, v140, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 937, "BOMCopierDestinationNew", "Could not set zlib compression level %s: %s");
          goto LABEL_323;
        }
      }

      if (*(v6 + 31) == 327680 && *(v6 + 36) != -1)
      {
        snprintf(valuePtr, 0xFFuLL, "%d", *(v6 + 36));
        v143 = *(v6 + 17);
        v144 = archive_write_set_format_option();
        if (v144)
        {
          v145 = v144;
          v146 = *(v6 + 17);
          v147 = archive_errno();
          strerror(v147);
          BOMCopierErrorCapture(a3, v145, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 954, "BOMCopierDestinationNew", "Could not set PKZip compression level %s: %s (%d)", valuePtr);
          goto LABEL_323;
        }
      }

      if (*(v6 + 8))
      {
        snprintf(valuePtr, 0xFFuLL, "%lld", *(v6 + 8));
        v154 = *(v6 + 17);
        v155 = archive_write_set_format_option();
        if (v155)
        {
          v156 = v155;
          v157 = *(v6 + 17);
          v158 = archive_errno();
          strerror(v158);
          BOMCopierErrorCapture(a3, v156, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 971, "BOMCopierDestinationNew", "Could not set cpio starting inode %s: %s");
          goto LABEL_323;
        }
      }

      if (v6[148] == 1)
      {
        v159 = *(v6 + 17);
        v160 = archive_write_set_format_option();
        if (v160)
        {
          v161 = v160;
          v162 = *(v6 + 17);
          v163 = archive_errno();
          strerror(v163);
          BOMCopierErrorCapture(a3, v161, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 984, "BOMCopierDestinationNew", "Could not enable cpio skip trailer %s");
          goto LABEL_323;
        }
      }

      if (__s)
      {
        v164 = *(v6 + 17);
        v165 = archive_write_open_filename();
        if (v165)
        {
          v166 = v165;
          v167 = *(v6 + 17);
          v168 = archive_errno();
          strerror(v168);
          BOMCopierErrorCapture(a3, v166, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 999, "BOMCopierDestinationNew", "Could not archive_write_open_filename %s: %s\n");
          goto LABEL_323;
        }
      }

      else
      {
        if (!*(v6 + 7))
        {
          if (*(v6 + 12) == -1)
          {
            BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1036, "BOMCopierDestinationNew", "No output file descriptor\n", v189);
          }

          else
          {
            v183 = *(v6 + 17);
            v184 = archive_write_open_fd();
            if (!v184)
            {
              goto LABEL_325;
            }

            v185 = v184;
            v186 = *(v6 + 17);
            v187 = archive_errno();
            strerror(v187);
            BOMCopierErrorCapture(a3, v185, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1044, "BOMCopierDestinationNew", "Could not archive_write_open_fd %s: %s\n");
          }

          goto LABEL_323;
        }

        v174 = *(v6 + 17);
        v175 = archive_write_open2();
        if (v175)
        {
          v176 = v175;
          v177 = *(v6 + 17);
          v178 = archive_errno();
          strerror(v178);
          BOMCopierErrorCapture(a3, v176, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 1028, "BOMCopierDestinationNew", "Could not archive_write_open2 %s: %s\n");
          goto LABEL_323;
        }
      }
    }
  }

  else
  {
    memset(&v193, 0, sizeof(v193));
    v120 = stat(__s, &v193);
    if (v120)
    {
      v121 = v120;
      if (*__error() != 2)
      {
        v127 = *__error();
        v128 = __error();
        strerror(*v128);
        BOMCopierErrorCapture(a3, v127, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 711, "BOMCopierDestinationNew", "Could not stat %s: %s");
        goto LABEL_323;
      }

      v6[284] = 0;
      if (dirname_r(__s, valuePtr) != valuePtr)
      {
        v122 = __error();
        strerror(*v122);
        BOMCopierErrorCapture(a3, v121, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 767, "BOMCopierDestinationNew", "Could not dirname %s: %s");
        goto LABEL_323;
      }

      if (basename_r(__s, v194) != v194)
      {
        v137 = __error();
        strerror(*v137);
        BOMCopierErrorCapture(a3, v121, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 777, "BOMCopierDestinationNew", "Could not basename %s: %s");
        goto LABEL_323;
      }

      if (make_path(0, valuePtr, a3))
      {
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 785, "BOMCopierDestinationNew", "Could not make the parent_path %s");
        goto LABEL_323;
      }

      v171 = realpath_DARWIN_EXTSN(valuePtr, 0);
      if (!v171)
      {
        v179 = __error();
        strerror(*v179);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 793, "BOMCopierDestinationNew", "Could not realpath %s: %s");
        goto LABEL_323;
      }

      v172 = v171;
      v192 = 0;
      v191 = 0;
      if (get_volume_state(v171, &v191, a3))
      {
        v173 = __error();
        strerror(*v173);
        BOMCopierErrorCapture(a3, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 814, "BOMCopierDestinationNew", "Could not get volume state for %s: %s");
        goto LABEL_323;
      }

      if (v6[12] == 1)
      {
        v6[12] = v191;
      }

      v6[20] = HIBYTE(v191);
      v6[300] = v192;
      asprintf(v6 + 36, "%s/%s", v172, v194);
      free(v172);
      if (!*(v6 + 36))
      {
        v182 = __error();
        strerror(*v182);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 839, "BOMCopierDestinationNew", "Could not construct resolve path from %s and %s: %s", v172);
        goto LABEL_323;
      }
    }

    else
    {
      v6[285] = (v193.st_mode & 0xF000) == 0x4000;
      if (v6[299] == 1)
      {
        memset(valuePtr, 0, 144);
        if (lstat(__s, valuePtr))
        {
          v124 = *__error();
          v125 = __error();
          strerror(*v125);
          BOMCopierErrorCapture(a3, v124, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 733, "BOMCopierDestinationNew", "Could not stat %s: %s");
          goto LABEL_323;
        }

        if ((valuePtr[0].st_mode & 0xF000) == 0xA000 && valuePtr[0].st_dev != v193.st_dev)
        {
          v169 = *__error();
          v170 = __error();
          strerror(*v170);
          BOMCopierErrorCapture(a3, v169, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 742, "BOMCopierDestinationNew", "%s exists on a different device from its target");
          goto LABEL_323;
        }
      }

      v6[284] = 1;
      v148 = realpath_DARWIN_EXTSN(__s, 0);
      if (!v148)
      {
        v153 = __error();
        strerror(*v153);
        BOMCopierErrorCapture(a3, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 849, "BOMCopierDestinationNew", "Could not realpath %s: %s");
        goto LABEL_323;
      }

      *(v6 + 36) = v148;
      BYTE2(valuePtr[0].st_dev) = 0;
      LOWORD(valuePtr[0].st_dev) = 0;
      volume_state = get_volume_state(v148, valuePtr, a3);
      if (volume_state)
      {
        v150 = volume_state;
        v151 = *(v6 + 36);
        v152 = __error();
        strerror(*v152);
        BOMCopierErrorCapture(a3, v150, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierDestination.c", 872, "BOMCopierDestinationNew", "Could not get volume state for %s: %s");
        goto LABEL_323;
      }

      if (v6[12] == 1)
      {
        v6[12] = valuePtr[0].st_dev;
      }

      v6[20] = BYTE1(valuePtr[0].st_dev);
      v6[300] = BYTE2(valuePtr[0].st_dev);
    }
  }

LABEL_325:
  v180 = *MEMORY[0x277D85DE8];
  return v6;
}

void BOMCopierDestinationFree(unsigned int *a1)
{
  if (a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 45);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 43);
    if (v4)
    {
      free(v4);
    }

    if (*(a1 + 42))
    {
      MEMORY[0x245CFC780]();
      free(*(a1 + 42));
    }

    v5 = a1[82];
    if (v5 != -1)
    {
      close(v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      free(v6);
    }

    v7 = *(a1 + 36);
    if (v7)
    {
      free(v7);
    }

    v8 = *(a1 + 25);
    if (v8)
    {
      v9 = a1[48];
      if (v9)
      {
        v10 = 0;
        v11 = 16;
        do
        {
          v12 = *(*(a1 + 25) + v11);
          if (v12)
          {
            free(v12);
            v9 = a1[48];
          }

          ++v10;
          v11 += 32;
        }

        while (v10 < v9);
        v8 = *(a1 + 25);
      }

      free(v8);
    }

    v13 = *(a1 + 23);
    if (v13)
    {
      v14 = AAArchiveStreamClose(v13);
      if (v14)
      {
        v15 = *MEMORY[0x277D85DF8];
        v31 = v14;
        v16 = "Could not close AppleArchive encoder: %d\n";
LABEL_36:
        v22 = v15;
LABEL_37:
        fprintf(v22, v16, v31);
        return;
      }
    }

    v17 = *(a1 + 22);
    if (v17)
    {
      v18 = AAByteStreamClose(v17);
      if (v18)
      {
        v15 = *MEMORY[0x277D85DF8];
        v31 = v18;
        v16 = "Could not close AppleArchive compression stream: %d\n";
        goto LABEL_36;
      }
    }

    v20 = *(a1 + 21);
    if (v20)
    {
      v21 = AAByteStreamClose(v20);
      if (v21)
      {
        v15 = *MEMORY[0x277D85DF8];
        v31 = v21;
        v16 = "Could not close AppleArchive byte stream: %d\n";
        goto LABEL_36;
      }
    }

    if (*(a1 + 17))
    {
      if (archive_write_close())
      {
        v23 = *MEMORY[0x277D85DF8];
        v24 = *(a1 + 17);
        v25 = archive_errno();
        v31 = strerror(v25);
        v16 = "Could not close archive %s\n";
LABEL_43:
        v22 = v23;
        goto LABEL_37;
      }

      v26 = *(a1 + 17);
      if (archive_write_free())
      {
        v23 = *MEMORY[0x277D85DF8];
        v27 = *(a1 + 17);
        v28 = archive_errno();
        v31 = strerror(v28);
        v16 = "Could not free archive: %s\n";
        goto LABEL_43;
      }
    }

    v29 = *(a1 + 13);
    if (v29)
    {
      BOMCopierDataAnalyzerFree(v29);
      *(a1 + 13) = 0;
    }

    v30 = *(a1 + 9);
    if (v30)
    {
      BOMHardLinkTableFree(v30);
    }

    free(a1);
  }

  else
  {
    v19 = *MEMORY[0x277D85DF8];

    fwrite("copier_destination is NULL", 0x1AuLL, 1uLL, v19);
  }
}