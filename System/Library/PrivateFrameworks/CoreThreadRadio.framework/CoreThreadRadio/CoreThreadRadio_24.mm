uint64_t mbedtls_ssl_flight_transmit(uint64_t a1)
{
  if (*(*(a1 + 104) + 8) == 1)
  {
    while (1)
    {
      while (1)
      {
LABEL_5:
        if (!*(*(a1 + 104) + 784))
        {
          v21 = mbedtls_ssl_flush_output(a1);
          if (v21)
          {
            return v21;
          }

          else
          {
            if (mbedtls_ssl_is_handshake_over(a1))
            {
              *(*(a1 + 104) + 8) = 3;
            }

            else
            {
              *(*(a1 + 104) + 8) = 2;
              mbedtls_ssl_set_timer(a1, *(*(a1 + 104) + 772));
            }

            return 0;
          }
        }

        v13 = *(*(a1 + 104) + 784);
        v9 = 0;
        if (*(v13 + 16) == 22)
        {
          v9 = **v13 == 20;
        }

        v12 = *(a1 + 304) == 1;
        if (v9 && *(*(a1 + 104) + 792) == *v13 + 12)
        {
          v15 = ssl_swap_epochs(a1);
          if (v15)
          {
            return v15;
          }
        }

        remaining_payload_in_datagram = ssl_get_remaining_payload_in_datagram(a1);
        if ((remaining_payload_in_datagram & 0x80000000) != 0)
        {
          return remaining_payload_in_datagram;
        }

        if (*(v13 + 16) == 20)
        {
          break;
        }

        v11 = *(v13 + 8) - 12;
        v10 = *(*(a1 + 104) + 792) - (*v13 + 12);
        if (remaining_payload_in_datagram >= 0xC && (remaining_payload_in_datagram != 12 || *(v13 + 8) == 12))
        {
          if (v11 - v10 <= (remaining_payload_in_datagram - 12))
          {
            v8 = v11 - v10;
          }

          else
          {
            v8 = remaining_payload_in_datagram - 12;
          }

          v4 = *(a1 + 352);
          v5 = *v13;
          __memcpy_chk();
          *(*(a1 + 352) + 6) = BYTE2(v10);
          *(*(a1 + 352) + 7) = BYTE1(v10);
          *(*(a1 + 352) + 8) = v10;
          *(*(a1 + 352) + 9) = BYTE2(v8);
          *(*(a1 + 352) + 10) = BYTE1(v8);
          *(*(a1 + 352) + 11) = v8;
          v6 = *(a1 + 352);
          __memcpy_chk();
          *(a1 + 368) = v8 + 12;
          *(a1 + 360) = *(v13 + 16);
          *(*(a1 + 104) + 792) += v8;
LABEL_33:
          if (*(*(a1 + 104) + 792) >= *v13 + *(v13 + 8))
          {
            if (*(v13 + 24))
            {
              *(*(a1 + 104) + 784) = *(v13 + 24);
              *(*(a1 + 104) + 792) = **(v13 + 24) + 12;
            }

            else
            {
              *(*(a1 + 104) + 784) = 0;
              *(*(a1 + 104) + 792) = 0;
            }
          }

          v20 = mbedtls_ssl_write_record(a1, v12);
          if (v20)
          {
            return v20;
          }
        }

        else
        {
          if (v9)
          {
            v18 = ssl_swap_epochs(a1);
            if (v18)
            {
              return v18;
            }
          }

          v19 = mbedtls_ssl_flush_output(a1);
          if (v19)
          {
            return v19;
          }
        }
      }

      if (remaining_payload_in_datagram)
      {
        v1 = *(a1 + 352);
        v2 = *v13;
        v3 = *(v13 + 8);
        __memcpy_chk();
        *(a1 + 368) = *(v13 + 8);
        *(a1 + 360) = *(v13 + 16);
        *(*(a1 + 104) + 792) += *(v13 + 8);
        goto LABEL_33;
      }

      v17 = mbedtls_ssl_flush_output(a1);
      if (v17)
      {
        return v17;
      }
    }
  }

  *(*(a1 + 104) + 784) = *(*(a1 + 104) + 776);
  *(*(a1 + 104) + 792) = **(*(a1 + 104) + 776) + 12;
  v14 = ssl_swap_epochs(a1);
  if (!v14)
  {
    *(*(a1 + 104) + 8) = 1;
    goto LABEL_5;
  }

  return v14;
}

uint64_t ssl_swap_epochs(void *a1)
{
  if (a1[15] != *(a1[13] + 808))
  {
    v4 = a1[15];
    a1[15] = *(a1[13] + 808);
    *(a1[13] + 808) = v4;
    v6 = a1[48];
    v1 = a1[13];
    __memcpy_chk();
    v2 = a1[13];
    __memcpy_chk();
    mbedtls_ssl_update_out_pointers(a1, a1[15]);
  }

  return 0;
}

uint64_t ssl_get_remaining_payload_in_datagram(uint64_t a1)
{
  v3 = 0x4000;
  output_max_frag_len = mbedtls_ssl_get_output_max_frag_len(a1);
  if (output_max_frag_len < 0x4000)
  {
    v3 = output_max_frag_len;
  }

  if (v3 > *(a1 + 376))
  {
    v4 = v3 - *(a1 + 376);
    remaining_space_in_datagram = ssl_get_remaining_space_in_datagram(a1);
    if ((remaining_space_in_datagram & 0x80000000) != 0)
    {
      return remaining_space_in_datagram;
    }

    else
    {
      v5 = remaining_space_in_datagram;
      record_expansion = mbedtls_ssl_get_record_expansion(a1);
      if ((record_expansion & 0x80000000) != 0)
      {
        return record_expansion;
      }

      else if (v5 > record_expansion)
      {
        v6 = v5 - record_expansion;
        if (v6 >= v4)
        {
          LODWORD(v6) = v4;
        }

        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_write_record(uint64_t a1, _BOOL4 a2)
{
  v13 = *(a1 + 368);
  v9 = *(a1 + 12);
  v2 = *(a1 + 328) + 1;
  v3 = *(*a1 + 9);
  mbedtls_ssl_write_version();
  v4 = *(a1 + 320);
  __memcpy_chk();
  v21 = *(a1 + 336);
  __memcpy_chk();
  if (*(a1 + 120))
  {
    memset(__b, 0, sizeof(__b));
    __b[2] = *(a1 + 344);
    __b[3] = 16429 - (*(a1 + 344) - *(a1 + 312));
    __b[5] = *(a1 + 368);
    __b[4] = *(a1 + 352) - __b[2];
    __b[0] = **(a1 + 320);
    v5 = *(*a1 + 9);
    mbedtls_ssl_write_version();
    LOBYTE(__b[1]) = *(a1 + 360);
    v14 = mbedtls_ssl_encrypt_buf(a1, *(a1 + 120), __b, *(*a1 + 40), *(*a1 + 48));
    if (v14)
    {
      return v14;
    }

    if (__b[4])
    {
      return -27648;
    }

    *(a1 + 360) = LOBYTE(__b[1]);
    v13 = __b[5];
    *(a1 + 368) = __b[5];
    v20 = *(a1 + 336);
    __memcpy_chk();
  }

  v10 = v13 + mbedtls_ssl_out_hdr_len(a1);
  if (*(*a1 + 9) == 1)
  {
    remaining_space_in_datagram = ssl_get_remaining_space_in_datagram(a1);
    if ((remaining_space_in_datagram & 0x80000000) != 0)
    {
      return remaining_space_in_datagram;
    }

    if (v10 > remaining_space_in_datagram)
    {
      return -27648;
    }
  }

  **(a1 + 328) = *(a1 + 360);
  *(a1 + 376) += v10;
  *(a1 + 328) += v10;
  mbedtls_ssl_update_out_pointers(a1, *(a1 + 120));
  for (i = 8; i > mbedtls_ssl_ep_len(a1); --i)
  {
    v6 = i - 1;
    v7 = *(a1 + 384 + v6) + 1;
    *(a1 + 384 + v6) = v7;
    if (v7)
    {
      break;
    }
  }

  if (i == mbedtls_ssl_ep_len(a1))
  {
    return -27520;
  }

  else
  {
    if (*(*a1 + 9) == 1 && !a2)
    {
      remaining_payload_in_datagram = ssl_get_remaining_payload_in_datagram(a1);
      if ((remaining_payload_in_datagram & 0x80000000) != 0)
      {
        return remaining_payload_in_datagram;
      }

      a2 = remaining_payload_in_datagram == 0;
    }

    if (a2 && (v17 = mbedtls_ssl_flush_output(a1)) != 0)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_ssl_recv_flight_completed(uint64_t a1)
{
  mbedtls_ssl_flight_free(*(*(a1 + 104) + 776));
  *(*(a1 + 104) + 776) = 0;
  *(*(a1 + 104) + 784) = 0;
  *(*(a1 + 104) + 800) = *(*(a1 + 104) + 768);
  *(*(a1 + 104) + 624) = 0;
  mbedtls_ssl_buffering_free(a1);
  result = mbedtls_ssl_set_timer(a1, 0);
  if (*(a1 + 224) == 22 && **(a1 + 208) == 20)
  {
    *(*(a1 + 104) + 8) = 3;
  }

  else
  {
    *(*(a1 + 104) + 8) = 0;
  }

  return result;
}

void mbedtls_ssl_buffering_free(uint64_t a1)
{
  if (*(a1 + 104))
  {
    ssl_free_buffered_record(a1);
    for (i = 0; i < 4; ++i)
    {
      ssl_buffering_free_slot(a1, i);
    }
  }
}

uint64_t mbedtls_ssl_send_flight_completed(uint64_t a1)
{
  ssl_reset_retransmit_timeout(a1);
  result = mbedtls_ssl_set_timer(a1, *(*(a1 + 104) + 772));
  if (*(a1 + 224) == 22 && **(a1 + 208) == 20)
  {
    *(*(a1 + 104) + 8) = 3;
  }

  else
  {
    *(*(a1 + 104) + 8) = 2;
  }

  return result;
}

uint64_t mbedtls_ssl_start_handshake_msg(uint64_t a1, char a2, void *a3, void *a4)
{
  *a3 = *(a1 + 352) + 4;
  *a4 = 16380;
  *(a1 + 360) = 22;
  **(a1 + 352) = a2;
  return 0;
}

uint64_t mbedtls_ssl_write_handshake_msg_ext(uint64_t a1, int a2, _BOOL4 a3)
{
  v10 = *(a1 + 368) - 4;
  v9 = **(a1 + 352);
  if (*(a1 + 360) == 22 || *(a1 + 360) == 20)
  {
    if (*(a1 + 360) == 22 && !v9 || *(a1 + 104))
    {
      if (*(*a1 + 9) == 1 && *(a1 + 104) && *(*(a1 + 104) + 8) == 1)
      {
        return -27648;
      }

      else
      {
        if (*(a1 + 368) <= 0x4000uLL)
        {
          if (*(a1 + 360) == 22)
          {
            *(*(a1 + 352) + 1) = BYTE2(v10);
            *(*(a1 + 352) + 2) = BYTE1(v10);
            *(*(a1 + 352) + 3) = v10;
            if (*(*a1 + 9) == 1)
            {
              if ((0x4000 - *(a1 + 368)) < 8)
              {
                return -28928;
              }

              v3 = *(a1 + 352) + 12;
              v4 = *(a1 + 352);
              __memmove_chk();
              *(a1 + 368) += 8;
              if (v9)
              {
                v19 = *(a1 + 352) + 4;
                v18 = bswap32(*(*(a1 + 104) + 764)) >> 16;
                __memcpy_chk();
                ++*(*(a1 + 104) + 764);
              }

              else
              {
                *(*(a1 + 352) + 4) = 0;
                *(*(a1 + 352) + 5) = 0;
              }

              v5 = *(a1 + 352);
              __memset_chk();
              v6 = *(a1 + 352) + 9;
              v7 = *(a1 + 352);
              __memcpy_chk();
            }

            if (v9)
            {
              if (a2)
              {
                v11 = (*(*(a1 + 104) + 24))(a1, *(a1 + 352), *(a1 + 368));
                if (v11)
                {
                  return v11;
                }
              }
            }
          }

          if (*(*a1 + 9) == 1 && (*(a1 + 360) != 22 || v9))
          {
            v12 = ssl_flight_append(a1);
            if (v12)
            {
              return v12;
            }
          }

          else
          {
            v13 = mbedtls_ssl_write_record(a1, a3);
            if (v13)
            {
              return v13;
            }
          }

          return 0;
        }

        return -27648;
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

uint64_t ssl_flight_append(uint64_t a1)
{
  v8 = mbedtls_calloc();
  if (v8)
  {
    v1 = *(a1 + 368);
    v2 = mbedtls_calloc();
    *v8 = v2;
    if (v2)
    {
      v3 = *v8;
      v4 = *(a1 + 352);
      v5 = *(a1 + 368);
      __memcpy_chk();
      *(v8 + 8) = *(a1 + 368);
      *(v8 + 16) = *(a1 + 360);
      *(v8 + 24) = 0;
      if (*(*(a1 + 104) + 776))
      {
          ;
        }

        *(i + 24) = v8;
      }

      else
      {
        *(*(a1 + 104) + 776) = v8;
      }

      return 0;
    }

    else
    {
      mbedtls_free();
      return -32512;
    }
  }

  else
  {
    return -32512;
  }
}

uint64_t ssl_get_remaining_space_in_datagram(uint64_t a1)
{
  v3 = *(a1 + 376);
  maximum_datagram_size = ssl_get_maximum_datagram_size(a1);
  if (v3 <= maximum_datagram_size)
  {
    return (maximum_datagram_size - v3);
  }

  else
  {
    return -27648;
  }
}

uint64_t mbedtls_ssl_ep_len(uint64_t a1)
{
  if (*(*a1 + 9) == 1)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_prepare_handshake_record(void *a1)
{
  v3 = a1[29];
  if (v3 < mbedtls_ssl_hs_hdr_len(a1))
  {
    return -29184;
  }

  v2 = mbedtls_ssl_hs_hdr_len(a1);
  a1[35] = v2 + ssl_get_hs_total_len(a1);
  if (*(*a1 + 9) != 1)
  {
    if (a1[29] < a1[35])
    {
      return -28800;
    }

    return 0;
  }

  v4 = bswap32(*(a1[26] + 4)) >> 16;
  if (ssl_check_hs_header(a1))
  {
    return -29184;
  }

  if (!a1[13] || (mbedtls_ssl_is_handshake_over(a1) || v4 == *(a1[13] + 768)) && (!mbedtls_ssl_is_handshake_over(a1) || *a1[26] == 1))
  {
    if (ssl_hs_is_proper_fragment(a1))
    {
      return -25728;
    }

    return 0;
  }

  if (v4 <= *(a1[13] + 768))
  {
    if (v4 == *(a1[13] + 800) - 1 && *a1[26] != 3 && (v5 = mbedtls_ssl_resend(a1)) != 0)
    {
      return v5;
    }

    else
    {
      return -25984;
    }
  }

  else
  {
    return -25728;
  }
}

uint64_t ssl_check_hs_header(uint64_t a1)
{
  hs_total_len = ssl_get_hs_total_len(a1);
  hs_frag_off = ssl_get_hs_frag_off(a1);
  hs_frag_len = ssl_get_hs_frag_len(a1);
  if (hs_frag_off <= hs_total_len)
  {
    if (hs_frag_len <= hs_total_len - hs_frag_off)
    {
      if ((hs_frag_len + 12) > *(a1 + 232))
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
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_update_handshake_status(void *a1)
{
  v4 = a1[13];
  if (!mbedtls_ssl_is_handshake_over(a1) && v4 && (v5 = (*(a1[13] + 24))(a1, a1[26], a1[35])) != 0)
  {
    return v5;
  }

  else
  {
    if (*(*a1 + 9) == 1 && a1[13])
    {
      ++*(v4 + 768);
      ssl_buffering_free_slot(a1, 0);
      v3 = 0;
      v2 = v4 + 632;
      while ((v3 + 1) < 4)
      {
        *v2 = *(v2 + 24);
        *(v2 + 16) = *(v2 + 40);
        ++v3;
        v2 += 24;
      }

      __memset_chk();
    }

    return 0;
  }
}

uint64_t ssl_buffering_free_slot(uint64_t result, unsigned __int8 a2)
{
  v3 = *(result + 104);
  v2 = v3 + 632 + 24 * a2;
  if (a2 < 4u && (*v2 & 1) == 1)
  {
    *(v3 + 616) -= *(v2 + 16);
    mbedtls_zeroize_and_free(*(v2 + 8), *(v2 + 16));
    return __memset_chk();
  }

  return result;
}

uint64_t mbedtls_ssl_dtls_replay_reset(uint64_t result)
{
  *(result + 264) = 0;
  *(result + 272) = 0;
  return result;
}

uint64_t mbedtls_ssl_dtls_replay_check(void *a1)
{
  six_bytes = ssl_load_six_bytes((a1[22] + 2));
  if (*(*a1 + 13))
  {
    if (six_bytes <= a1[33])
    {
      v3 = a1[33] - six_bytes;
      if (v3 < 0x40)
      {
        v1 = a1[33] - six_bytes;
        if ((a1[34] & (1 << v3)) != 0)
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
        return -1;
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

unint64_t mbedtls_ssl_dtls_replay_update(void *a1)
{
  result = ssl_load_six_bytes((a1[22] + 2));
  if (*(*a1 + 13))
  {
    if (result <= a1[33])
    {
      v3 = a1[33] - result;
      if (v3 < 0x40)
      {
        a1[34] |= 1 << v3;
      }
    }

    else
    {
      v4 = result - a1[33];
      if (v4 < 0x40)
      {
        v2 = result - a1[33];
        a1[34] <<= v4;
        a1[34] |= 1uLL;
      }

      else
      {
        a1[34] = 1;
      }

      a1[33] = result;
    }
  }

  return result;
}

uint64_t mbedtls_ssl_read_record(uint64_t a1, int a2)
{
  if (*(a1 + 292))
  {
    *(a1 + 292) = 0;
    return 0;
  }

  do
  {
    v5 = ssl_consume_current_message(a1);
    if (v5)
    {
      return v5;
    }

    if (!ssl_record_is_in_progress(a1))
    {
      v4 = 0;
      if (*(*a1 + 9) == 1 && !ssl_next_record_is_in_datagram(a1))
      {
        v4 = ssl_load_buffered_message(a1) == 0;
      }

      if (!v4)
      {
        next_record = ssl_get_next_record(a1);
        if (next_record == -25984)
        {
          goto LABEL_16;
        }

        if (next_record)
        {
          return next_record;
        }
      }
    }

    next_record = mbedtls_ssl_handle_message_type(a1);
    if (next_record == -25728)
    {
      v7 = ssl_buffer_message(a1);
      if (v7)
      {
        return v7;
      }

      next_record = -25984;
    }

LABEL_16:
    v3 = 1;
    if (next_record != -26240)
    {
      v3 = next_record == -25984;
    }
  }

  while (v3);
  if (!next_record)
  {
    if (*(a1 + 224) == 22 && a2 == 1)
    {
      updated = mbedtls_ssl_update_handshake_status(a1);
      if (updated)
      {
        return updated;
      }
    }

    return 0;
  }

  return next_record;
}

uint64_t ssl_consume_current_message(void *a1)
{
  if (!a1[35])
  {
    if (a1[27])
    {
      return 0;
    }

    a1[29] = 0;
    return 0;
  }

  if (!a1[27])
  {
    if (a1[35] >= a1[29])
    {
      a1[29] = 0;
    }

    else
    {
      a1[29] -= a1[35];
      v1 = a1[26];
      v2 = a1[26] + a1[35];
      v3 = a1[29];
      __memmove_chk();
    }

    a1[35] = 0;
    return 0;
  }

  return -27648;
}

uint64_t ssl_load_buffered_message(uint64_t a1)
{
  v7 = *(a1 + 104);
  v6 = 0;
  if (v7)
  {
    if (*(a1 + 8) == 10 || *(a1 + 8) == 12)
    {
      if (*(v7 + 624))
      {
        *(a1 + 224) = 20;
        *(a1 + 232) = 1;
        **(a1 + 208) = 1;
        *(a1 + 240) = 0;
        *(a1 + 256) = 0;
        *(v7 + 624) = 0;
      }

      else
      {
        return -1;
      }
    }

    else if ((*(v7 + 632) & 1) == 1 && ((*(v7 + 632) >> 2) & 1) == 1)
    {
      v5 = (*(*(v7 + 640) + 2) << 8) | (*(*(v7 + 640) + 1) << 16) | *(*(v7 + 640) + 3);
      if ((v5 + 12) > 0x4000)
      {
        return -27648;
      }

      *(a1 + 224) = 22;
      *(a1 + 280) = v5 + 12;
      *(a1 + 232) = v5 + 12;
      v1 = *(a1 + 208);
      v2 = *(v7 + 640);
      v3 = *(a1 + 280);
      __memcpy_chk();
      return 0;
    }

    else
    {
      return -1;
    }

    return v6;
  }

  return -1;
}

uint64_t ssl_get_next_record(uint64_t a1)
{
  memset(__b, 0, sizeof(__b));
  buffered_record = ssl_load_buffered_record(a1);
  if (buffered_record)
  {
    return buffered_record;
  }

  else
  {
    v1 = mbedtls_ssl_in_hdr_len(a1);
    input = mbedtls_ssl_fetch_input(a1, v1);
    if (input)
    {
      return input;
    }

    else
    {
      v8 = ssl_parse_record_header(a1, *(a1 + 184), *(a1 + 240), __b);
      if (v8)
      {
        if (*(*a1 + 9) != 1)
        {
          return v8;
        }

        if (v8 == -25728)
        {
          v9 = ssl_buffer_future_record(a1, __b);
          if (v9)
          {
            return v9;
          }

          v8 = -26368;
        }

        if (v8 == -26368)
        {
          *(a1 + 256) = __b[3];
        }

        else
        {
          *(a1 + 256) = 0;
          *(a1 + 240) = 0;
        }

        return -25984;
      }

      else
      {
        if (*(*a1 + 9) == 1)
        {
          *(a1 + 256) = __b[3];
          v2 = *(a1 + 256);
          v3 = *(a1 + 240);
        }

        else
        {
          v10 = mbedtls_ssl_fetch_input(a1, __b[3]);
          if (v10)
          {
            return v10;
          }

          *(a1 + 240) = 0;
        }

        v11 = ssl_prepare_record_content(a1, __b);
        if (v11)
        {
          if (*(*a1 + 9) == 1)
          {
            if (v11 == -29056)
            {
              if (*(a1 + 8) == 11 || *(a1 + 8) == 13)
              {
                return -29056;
              }

              else if (*(*a1 + 180) && (v4 = *(a1 + 16) + 1, *(a1 + 16) = v4, v4 >= *(*a1 + 180)))
              {
                return -29056;
              }

              else
              {
                *(a1 + 256) = 0;
                *(a1 + 240) = 0;
                return -25984;
              }
            }

            else
            {
              return v11;
            }
          }

          else
          {
            return v11;
          }
        }

        else
        {
          mbedtls_ssl_update_in_pointers(a1);
          *(a1 + 200) = *(a1 + 192) + 2;
          *(a1 + 224) = LOBYTE(__b[1]);
          **(a1 + 184) = __b[1];
          *(a1 + 208) = __b[2] + __b[4];
          *(a1 + 232) = __b[5];
          v14 = *(a1 + 192);
          __memcpy_chk();
          return 0;
        }
      }
    }
  }
}

uint64_t mbedtls_ssl_handle_message_type(void *a1)
{
  if (*(a1 + 56) == 22 && (v2 = mbedtls_ssl_prepare_handshake_record(a1)) != 0)
  {
    return v2;
  }

  else
  {
    if (*(a1 + 56) != 20)
    {
      goto LABEL_15;
    }

    if (a1[29] != 1)
    {
      return -29184;
    }

    if (*a1[26] != 1)
    {
      return -29184;
    }

    if (*(*a1 + 9) != 1 || *(a1 + 2) == 10 || *(a1 + 2) == 12)
    {
LABEL_15:
      if (*(a1 + 56) != 21)
      {
        if (*(*a1 + 9) == 1)
        {
          if (*(a1 + 56) == 23 && !mbedtls_ssl_is_handshake_over(a1))
          {
            return -26240;
          }

          if (a1[13] && mbedtls_ssl_is_handshake_over(a1))
          {
            mbedtls_ssl_handshake_wrapup_free_hs_transform(a1);
          }
        }

        return 0;
      }

      if (a1[29] == 2)
      {
        if (*a1[26] == 2)
        {
          return -30592;
        }

        else if (*a1[26] != 1 || *(a1[26] + 1))
        {
          if (*a1[26] == 1 && *(a1[26] + 1) == 100)
          {
            return 0;
          }

          else
          {
            return -26240;
          }
        }

        else
        {
          return -30848;
        }
      }

      else
      {
        return -29184;
      }
    }

    else if (a1[13])
    {
      return -25728;
    }

    else
    {
      return -26368;
    }
  }
}

uint64_t ssl_buffer_message(uint64_t a1)
{
  v19 = 0;
  v18 = *(a1 + 104);
  if (v18)
  {
    v9 = *(a1 + 224);
    if (v9 == 20)
    {
      *(v18 + 624) = 1;
    }

    else if (v9 == 22)
    {
      v16 = bswap32(*(*(a1 + 208) + 4)) >> 16;
      v14 = *(a1 + 280) - 12;
      if (v16 < *(*(a1 + 104) + 768))
      {
        return -27648;
      }

      v17 = v16 - *(*(a1 + 104) + 768);
      if (v17 < 4)
      {
        v15 = (v18 + 632 + 24 * v17);
        if (*v15)
        {
          if (memcmp(*(v15 + 1), *(a1 + 208), 4uLL))
          {
            return v19;
          }

          goto LABEL_23;
        }

        *v15 = *v15 & 0xFD | (2 * ssl_hs_is_proper_fragment(a1));
        if (v14 + 12 <= 0x4000)
        {
          if (*(v18 + 616) > 0x8000uLL)
          {
            return -27648;
          }

          reassembly_buffer_size = ssl_get_reassembly_buffer_size(v14, (*v15 >> 1) & 1);
          v13 = reassembly_buffer_size;
          if (reassembly_buffer_size <= 0x8000 - *(v18 + 616))
          {
LABEL_19:
            *(v15 + 1) = mbedtls_calloc();
            if (!*(v15 + 1))
            {
              return -32512;
            }

            *(v15 + 2) = v13;
            v2 = *(v15 + 1);
            v3 = *(a1 + 208);
            __memcpy_chk();
            v4 = *(v15 + 1);
            __memset_chk();
            v5 = *(v15 + 1) + 9;
            v6 = *(v15 + 1);
            __memcpy_chk();
            *v15 = *v15 & 0xFE | 1;
            *(v18 + 616) += v13;
LABEL_23:
            if ((*v15 & 4) == 0)
            {
              v10 = *(v15 + 1) + 12;
              hs_frag_off = ssl_get_hs_frag_off(a1);
              hs_frag_len = ssl_get_hs_frag_len(a1);
              v7 = *(a1 + 208);
              __memcpy_chk();
              if ((*v15 & 2) != 0)
              {
                ssl_bitmask_set(v10 + v14, hs_frag_off, hs_frag_len);
                *v15 = *v15 & 0xFB | (4 * (ssl_bitmask_check(v10 + v14, v14) == 0));
              }

              else
              {
                *v15 = *v15 & 0xFB | 4;
              }
            }

            return v19;
          }

          if (!v17)
          {
            if (ssl_buffer_make_space(a1, reassembly_buffer_size))
            {
              return -27136;
            }

            goto LABEL_19;
          }
        }
      }
    }

    return v19;
  }

  return 0;
}

uint64_t mbedtls_ssl_send_alert_message(uint64_t a1, char a2, char a3)
{
  if (a1 && *a1)
  {
    if (*(a1 + 376))
    {
      return mbedtls_ssl_flush_output(a1);
    }

    else
    {
      *(a1 + 360) = 21;
      *(a1 + 368) = 2;
      **(a1 + 352) = a2;
      *(*(a1 + 352) + 1) = a3;
      v4 = mbedtls_ssl_write_record(a1, 1);
      if (v4)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t mbedtls_ssl_write_change_cipher_spec(uint64_t a1)
{
  *(a1 + 360) = 20;
  *(a1 + 368) = 1;
  **(a1 + 352) = 1;
  ++*(a1 + 8);
  v2 = mbedtls_ssl_write_handshake_msg(a1);
  if (v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_parse_change_cipher_spec(uint64_t a1)
{
  record = mbedtls_ssl_read_record(a1, 1);
  if (record)
  {
    return record;
  }

  else
  {
    if (*(a1 + 224) == 20)
    {
      *(a1 + 112) = *(a1 + 136);
      *(a1 + 72) = *(a1 + 96);
      if (*(*a1 + 9) == 1)
      {
        mbedtls_ssl_dtls_replay_reset(a1);
        v1 = *(a1 + 248) + 1;
        *(a1 + 248) = v1;
        if (!v1)
        {
          return -27520;
        }
      }

      else
      {
        v2 = *(a1 + 176);
        __memset_chk();
      }

      mbedtls_ssl_update_in_pointers(a1);
      ++*(a1 + 8);
      return 0;
    }

    mbedtls_ssl_send_alert_message(a1, 2, 10);
    return -30464;
  }
}

void *mbedtls_ssl_update_in_pointers(void *result)
{
  if (*(*result + 9) == 1)
  {
    result[22] = result[23] + 3;
    result[24] = result[22] + 8;
    result[25] = result[24] + 2;
  }

  else
  {
    result[22] = result[23] - 8;
    result[24] = result[23] + 3;
    result[25] = result[23] + 5;
  }

  result[26] = result[25];
  return result;
}

void *mbedtls_ssl_reset_in_out_pointers(void *a1)
{
  if (*(*a1 + 9) == 1)
  {
    a1[41] = a1[39];
    a1[23] = a1[21];
  }

  else
  {
    a1[40] = a1[39];
    a1[41] = a1[39] + 8;
    a1[23] = a1[21] + 8;
  }

  mbedtls_ssl_update_out_pointers(a1, 0);
  return mbedtls_ssl_update_in_pointers(a1);
}

uint64_t mbedtls_ssl_get_bytes_avail(uint64_t a1)
{
  if (*(a1 + 216))
  {
    return *(a1 + 232);
  }

  else
  {
    return 0;
  }
}

BOOL mbedtls_ssl_check_pending(uint64_t a1)
{
  if (*(a1 + 292) == 1)
  {
    return 1;
  }

  else if (*(*a1 + 9) == 1 && *(a1 + 240) > *(a1 + 256))
  {
    return 1;
  }

  else
  {
    return *(a1 + 280) && *(a1 + 280) < *(a1 + 232) || *(a1 + 216) != 0;
  }
}

uint64_t mbedtls_ssl_get_record_expansion(uint64_t a1)
{
  v5 = *(a1 + 120);
  v4 = mbedtls_ssl_out_hdr_len(a1);
  if (v5)
  {
    cipher_mode = mbedtls_cipher_get_cipher_mode((v5 + 10));
    if (cipher_mode == 2)
    {
      block_size = mbedtls_cipher_get_block_size((v5 + 10));
      v6 = v5[3] + block_size + block_size;
    }

    else
    {
      if ((cipher_mode - 6) > 2 && cipher_mode != 11)
      {
        return -27648;
      }

      v6 = *v5;
    }

    return (v4 + v6);
  }

  return v4;
}

uint64_t mbedtls_cipher_get_cipher_mode(uint64_t a1)
{
  if (*a1)
  {
    return HIBYTE(*(*a1 + 8)) >> 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_read(uint64_t a1, uint64_t a2, size_t a3)
{
  if (a1 && *a1)
  {
    if (*(*a1 + 9) == 1)
    {
      v4 = mbedtls_ssl_flush_output(a1);
      if (v4)
      {
        return v4;
      }

      if (*(a1 + 104))
      {
        if (*(*(a1 + 104) + 8) == 1)
        {
          v5 = mbedtls_ssl_flight_transmit(a1);
          if (v5)
          {
            return v5;
          }
        }
      }
    }

    if (*(a1 + 8) == 27 || (v6 = mbedtls_ssl_handshake(a1), v6 == -27392) || !v6)
    {
      while (1)
      {
        if (*(a1 + 216))
        {
          return ssl_read_application_data(a1, a2, a3);
        }

        if (*(a1 + 160) && (*(a1 + 160))(*(a1 + 144)) == -1)
        {
          mbedtls_ssl_set_timer(a1, *(*a1 + 168));
        }

        record = mbedtls_ssl_read_record(a1, 1);
        if (record)
        {
          if (record == -29312)
          {
            return 0;
          }

          else
          {
            return record;
          }
        }

        if (!*(a1 + 232) && *(a1 + 224) == 23)
        {
          v8 = mbedtls_ssl_read_record(a1, 1);
          if (v8)
          {
            break;
          }
        }

        switch(*(a1 + 224))
        {
          case 0x16:
            v9 = ssl_handle_hs_message_post_handshake(a1);
            if (v9)
            {
              return v9;
            }

            break;
          case 0x15:
            return -26880;
          case 0x17:
            *(a1 + 216) = *(a1 + 208);
            if (mbedtls_ssl_is_handshake_over(a1))
            {
              mbedtls_ssl_set_timer(a1, 0);
            }

            break;
          default:
            return -30464;
        }
      }

      if (v8 == -29312)
      {
        return 0;
      }

      else
      {
        return v8;
      }
    }

    else
    {
      return v6;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_handle_hs_message_post_handshake(uint64_t a1)
{
  if (*(a1 + 12) > 0x303u)
  {
    return -27648;
  }

  else
  {
    return ssl_tls12_handle_hs_message_post_handshake(a1);
  }
}

size_t ssl_read_application_data(uint64_t a1, uint64_t a2, size_t a3)
{
  if (a3 >= *(a1 + 232))
  {
    v5 = *(a1 + 232);
  }

  else
  {
    v5 = a3;
  }

  if (a3)
  {
    v3 = *(a1 + 216);
    __memcpy_chk();
    *(a1 + 232) -= v5;
  }

  mbedtls_platform_zeroize(*(a1 + 216), v5);
  if (*(a1 + 232))
  {
    *(a1 + 216) += v5;
  }

  else
  {
    *(a1 + 216) = 0;
    *(a1 + 292) = 0;
  }

  return v5;
}

uint64_t mbedtls_ssl_write(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *a1)
  {
    if (*(a1 + 8) == 27 || (v4 = mbedtls_ssl_handshake(a1)) == 0)
    {
      return ssl_write_real(a1, a2, a3);
    }

    else
    {
      return v4;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_write_real(uint64_t a1, uint64_t a2, unint64_t a3)
{
  max_out_record_payload = mbedtls_ssl_get_max_out_record_payload(a1);
  if ((max_out_record_payload & 0x80000000) == 0)
  {
    if (a3 > max_out_record_payload)
    {
      if (*(*a1 + 9) == 1)
      {
        return -28928;
      }

      a3 = max_out_record_payload;
    }

    if (*(a1 + 376))
    {
      v6 = mbedtls_ssl_flush_output(a1);
      if (v6)
      {
        return v6;
      }
    }

    else
    {
      *(a1 + 368) = a3;
      *(a1 + 360) = 23;
      if (a3)
      {
        v3 = *(a1 + 352);
        __memcpy_chk();
      }

      v7 = mbedtls_ssl_write_record(a1, 1);
      if (v7)
      {
        return v7;
      }
    }

    return a3;
  }

  return max_out_record_payload;
}

uint64_t mbedtls_ssl_close_notify(void *a1)
{
  if (a1 && *a1)
  {
    if (mbedtls_ssl_is_handshake_over(a1) && (v2 = mbedtls_ssl_send_alert_message(a1, 1, 0)) != 0)
    {
      return v2;
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

char *mbedtls_ssl_transform_free(char *result)
{
  v1 = result;
  if (result)
  {
    mbedtls_cipher_free(result + 80);
    mbedtls_cipher_free(v1 + 160);
    return mbedtls_platform_zeroize(v1, 0xF0uLL);
  }

  return result;
}

uint64_t mbedtls_ssl_set_inbound_transform(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = a2;
  v2 = *(a1 + 176);
  return __memset_chk();
}

void ssl_free_buffered_record(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    if (v2[91])
    {
      v2[77] -= v2[92];
      v1 = v2[91];
      mbedtls_free();
      v2[91] = 0;
    }
  }
}

uint64_t mbedtls_ssl_read_version(unsigned __int16 *a1, int a2)
{
  v4 = bswap32(*a1) >> 16;
  if (a2 == 1)
  {
    if (v4 == 65279)
    {
      v2 = 514;
    }

    else
    {
      v2 = 513;
    }

    return ~(v4 - v2);
  }

  return v4;
}

uint64_t mbedtls_ssl_handle_pending_alert(uint64_t a1)
{
  if (*(a1 + 296))
  {
    v2 = mbedtls_ssl_send_alert_message(a1, 2, *(a1 + 297));
    if (v2 != -26752)
    {
      *(a1 + 296) = 0;
    }

    if (v2)
    {
      return v2;
    }

    else
    {
      return *(a1 + 300);
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_pend_fatal_alert(uint64_t result, char a2, int a3)
{
  *(result + 296) = 1;
  *(result + 297) = a2;
  *(result + 300) = a3;
  return result;
}

uint64_t ssl_get_maximum_datagram_size(uint64_t a1)
{
  current_mtu = mbedtls_ssl_get_current_mtu(a1);
  if (current_mtu && current_mtu < 0x402D)
  {
    return current_mtu;
  }

  else
  {
    return 16429;
  }
}

uint64_t ssl_check_record_type(char a1)
{
  if (a1 == 22 || a1 == 21 || a1 == 20 || a1 == 23)
  {
    return 0;
  }

  else
  {
    return -29184;
  }
}

uint64_t mbedtls_ssl_dtls_record_replay_check(void *a1, uint64_t a2)
{
  v3 = a1[22];
  a1[22] = a2;
  LODWORD(result) = mbedtls_ssl_dtls_replay_check(a1);
  a1[22] = v3;
  return result;
}

uint64_t ssl_get_reassembly_buffer_size(unint64_t a1, int a2)
{
  v3 = a1 + 12;
  if (a2)
  {
    v3 += a1 / 8 + (a1 % 8 != 0);
  }

  return v3;
}

uint64_t ssl_buffer_make_space(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 104);
  ssl_free_buffered_record(a1);
  if (a2 > 0x8000 - *(v3 + 616))
  {
    for (i = 3; (i & 0x80000000) == 0; --i)
    {
      ssl_buffering_free_slot(a1, i);
      if (a2 <= 0x8000 - *(v3 + 616))
      {
        return 0;
      }
    }

    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t ssl_bitmask_set(uint64_t result, unint64_t a2, unint64_t a3)
{
  v7 = a2;
  v6 = a3;
  v5 = 8 - a2 % 8;
  if (a2 % 8)
  {
    v3 = a2 / 8;
    if (a3 <= v5)
    {
      while (v6)
      {
        *(result + v3) |= 1 << (v5 - v6--);
      }

      return result;
    }

    v7 = a2 + v5;
    v6 = a3 - v5;
    while (v5)
    {
      *(result + v3) |= 1 << --v5;
    }
  }

  v4 = v6 % 8;
  if (v6 % 8)
  {
    while (v4)
    {
      *(result + (v7 + v6) / 8) |= 1 << (8 - v4--);
    }
  }

  return __memset_chk();
}

uint64_t ssl_bitmask_check(uint64_t a1, unint64_t a2)
{
  for (i = 0; i < a2 / 8; ++i)
  {
    if (*(a1 + i) != 255)
    {
      return -1;
    }
  }

  for (j = 0; j < a2 % 8; ++j)
  {
    if ((*(a1 + a2 / 8) & (1 << (7 - j))) == 0)
    {
      return -1;
    }
  }

  return 0;
}

uint64_t ssl_load_buffered_record(uint64_t a1)
{
  v5 = *(a1 + 104);
  if (*(*a1 + 9) == 1)
  {
    if (v5)
    {
      v4 = *(v5 + 736);
      v3 = *(v5 + 744);
      if (*(v5 + 728))
      {
        if (!ssl_next_record_is_in_datagram(a1))
        {
          if (v3 == *(a1 + 248))
          {
            if (v4 > 16429 - (*(a1 + 184) - *(a1 + 168)))
            {
              return -27648;
            }

            v1 = *(a1 + 184);
            __memcpy_chk();
            *(a1 + 240) = v4;
            *(a1 + 256) = 0;
            ssl_free_buffered_record(a1);
          }

          return 0;
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
    return 0;
  }
}

uint64_t ssl_buffer_future_record(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 104);
  if (v7)
  {
    if (*(a2 + 8) == 22 && !*(v7 + 728) && *(a2 + 24) <= (0x8000 - *(v7 + 616)))
    {
      *(v7 + 744) = *(a1 + 248) + 1;
      *(v7 + 736) = *(a2 + 24);
      v2 = *(v7 + 736);
      *(v7 + 728) = mbedtls_calloc();
      if (*(v7 + 728))
      {
        v3 = *(v7 + 728);
        v4 = *(a2 + 16);
        v5 = *(a2 + 24);
        __memcpy_chk();
        *(v7 + 616) += *(a2 + 24);
      }
    }
  }

  return 0;
}

uint64_t ssl_prepare_record_content(void *a1, uint64_t a2)
{
  if (a1[14])
  {
    v7 = *(a2 + 8);
    v8 = mbedtls_ssl_decrypt_buf(a1, a1[14], a2);
    if (v8)
    {
      return v8;
    }

    v2 = *(a2 + 8);
    if (*(a2 + 40))
    {
      *(a1 + 72) = 0;
    }

    else
    {
      if (*(a1 + 3) == 771 && *(a2 + 8) != 23)
      {
        return -29184;
      }

      if (++*(a1 + 72) > 3)
      {
        return -29056;
      }
    }

    if (*(*a1 + 9) != 1)
    {
      for (i = 8; i > mbedtls_ssl_ep_len(a1); --i)
      {
        v3 = i - 1;
        v4 = *(a1[22] + v3) + 1;
        *(a1[22] + v3) = v4;
        if (v4)
        {
          break;
        }
      }

      if (i == mbedtls_ssl_ep_len(a1))
      {
        return -27520;
      }
    }
  }

  if (*(*a1 + 9) == 1)
  {
    mbedtls_ssl_dtls_replay_update(a1);
  }

  if (*(a2 + 40) > 0x4000uLL)
  {
    return -29184;
  }

  else
  {
    return 0;
  }
}

uint64_t ssl_tls12_handle_hs_message_post_handshake(uint64_t a1)
{
  if (*(*a1 + 8) || !**(a1 + 208) && (v2 = *(a1 + 280), v2 == mbedtls_ssl_hs_hdr_len(a1)))
  {
    if (*(*a1 + 8) != 1 || **(a1 + 208) == 1)
    {
      v3 = mbedtls_ssl_send_alert_message(a1, 1, 100);
      if (v3)
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }

    else if (*(*a1 + 9) == 1)
    {
      return 0;
    }

    else
    {
      return -30464;
    }
  }

  else if (*(*a1 + 9) == 1)
  {
    return 0;
  }

  else
  {
    return -30464;
  }
}

uint64_t mbedtls_ssl_session_copy(uint64_t a1, uint64_t a2)
{
  mbedtls_ssl_session_free(a1);
  __memcpy_chk();
  if (!*(a2 + 104))
  {
    return 0;
  }

  v2 = *(a2 + 112);
  *(a1 + 104) = mbedtls_calloc();
  if (*(a1 + 104))
  {
    v3 = *(a1 + 104);
    v4 = *(a2 + 104);
    v5 = *(a2 + 112);
    __memcpy_chk();
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 112) = *(a2 + 112);
    return 0;
  }

  return -32512;
}

void *mbedtls_ssl_session_free(void *result)
{
  v1 = result;
  if (result)
  {
    ssl_clear_peer_cert(result);
    return mbedtls_platform_zeroize(v1, 0x80uLL);
  }

  return result;
}

uint64_t mbedtls_ssl_tls_prf(int a1, _BYTE *a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a1 == 2)
  {
    return tls_prf_sha256(a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return -28800;
  }
}

uint64_t mbedtls_ssl_get_extension_id(int a1)
{
  switch(a1)
  {
    case 0:
      v2 = 1;
      break;
    case 1:
      v2 = 2;
      break;
    case 4:
      v2 = 23;
      break;
    case 5:
      v2 = 3;
      break;
    case 10:
      v2 = 4;
      break;
    case 11:
      v2 = 24;
      break;
    case 13:
      v2 = 5;
      break;
    case 14:
      v2 = 6;
      break;
    case 15:
      v2 = 7;
      break;
    case 16:
      v2 = 8;
      break;
    case 18:
      v2 = 9;
      break;
    case 19:
      v2 = 10;
      break;
    case 20:
      v2 = 11;
      break;
    case 21:
      v2 = 12;
      break;
    case 22:
      v2 = 25;
      break;
    case 23:
      v2 = 26;
      break;
    case 28:
      v2 = 28;
      break;
    case 35:
      v2 = 27;
      break;
    case 41:
      v2 = 13;
      break;
    case 42:
      v2 = 14;
      break;
    case 43:
      v2 = 15;
      break;
    case 44:
      v2 = 16;
      break;
    case 45:
      v2 = 17;
      break;
    case 47:
      v2 = 18;
      break;
    case 48:
      v2 = 19;
      break;
    case 49:
      v2 = 20;
      break;
    case 50:
      v2 = 21;
      break;
    case 51:
      v2 = 22;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

uint64_t mbedtls_ssl_optimize_checksum(uint64_t result, uint64_t a2)
{
  if (*(a2 + 17) != 10)
  {
    *(*(result + 104) + 24) = ssl_update_checksum_sha256;
  }

  return result;
}

uint64_t mbedtls_ssl_add_hs_hdr_to_checksum(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4[0] = a2;
  v4[1] = BYTE2(a3);
  v4[2] = BYTE1(a3);
  v4[3] = a3;
  return (*(*(a1 + 104) + 24))(a1, v4, 4);
}

uint64_t mbedtls_ssl_add_hs_msg_to_checksum(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = mbedtls_ssl_add_hs_hdr_to_checksum(a1, a2, a4);
  if (v5)
  {
    return v5;
  }

  else
  {
    return (*(*(a1 + 104) + 24))(a1, a3, a4);
  }
}

uint64_t mbedtls_ssl_reset_checksum(uint64_t a1)
{
  mbedtls_md_free((*(a1 + 104) + 832));
  v1 = *(a1 + 104);
  mbedtls_md_init();
  v4 = *(a1 + 104);
  v2 = mbedtls_md_info_from_type(9);
  v5 = mbedtls_md_setup(v4 + 832, v2, 0);
  if (v5)
  {
    return v5;
  }

  else
  {
    v6 = mbedtls_md_starts((*(a1 + 104) + 832));
    if (v6)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_ssl_transform_init()
{
  __memset_chk();
  mbedtls_cipher_init();
  return mbedtls_cipher_init();
}

uint64_t mbedtls_ssl_setup(_DWORD **a1, _DWORD *a2)
{
  *a1 = a2;
  v5 = ssl_conf_check(a1);
  if (!v5)
  {
    *(a1 + 3) = **a1;
    a1[39] = 0;
    a1[21] = mbedtls_calloc();
    if (a1[21])
    {
      a1[39] = mbedtls_calloc();
      if (a1[39])
      {
        mbedtls_ssl_reset_in_out_pointers(a1);
        v6 = ssl_handshake_init(a1);
        if (!v6)
        {
          return 0;
        }
      }

      else
      {
        v6 = -32512;
      }
    }

    else
    {
      v6 = -32512;
    }

    v2 = a1[21];
    mbedtls_free();
    v3 = a1[39];
    mbedtls_free();
    *a1 = 0;
    a1[21] = 0;
    a1[39] = 0;
    a1[23] = 0;
    a1[22] = 0;
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
    a1[41] = 0;
    a1[40] = 0;
    a1[42] = 0;
    a1[43] = 0;
    a1[44] = 0;
    return v6;
  }

  return v5;
}

uint64_t ssl_conf_check(_DWORD **a1)
{
  v2 = ssl_conf_version_check(a1);
  if (v2)
  {
    return v2;
  }

  else if (*(*a1 + 5))
  {
    return 0;
  }

  else
  {
    return -29696;
  }
}

uint64_t ssl_handshake_init(uint64_t a1)
{
  if (*(a1 + 136))
  {
    mbedtls_ssl_transform_free(*(a1 + 136));
  }

  if (*(a1 + 96))
  {
    mbedtls_ssl_session_free(*(a1 + 96));
  }

  if (*(a1 + 104))
  {
    mbedtls_ssl_handshake_free(a1);
  }

  if (!*(a1 + 136))
  {
    *(a1 + 136) = mbedtls_calloc();
  }

  if (!*(a1 + 96))
  {
    *(a1 + 96) = mbedtls_calloc();
  }

  if (!*(a1 + 104))
  {
    *(a1 + 104) = mbedtls_calloc();
  }

  if (*(a1 + 104) && *(a1 + 136) && *(a1 + 96))
  {
    v4 = *(a1 + 96);
    mbedtls_ssl_session_init();
    ssl_handshake_params_init(*(a1 + 104));
    v5 = *(a1 + 136);
    mbedtls_ssl_transform_init();
    v12 = mbedtls_ssl_reset_checksum(a1);
    if (!v12)
    {
      if (*(*a1 + 9) == 1)
      {
        *(*(a1 + 104) + 808) = *(a1 + 120);
        if (*(*a1 + 8))
        {
          *(*(a1 + 104) + 8) = 2;
        }

        else
        {
          *(*(a1 + 104) + 8) = 0;
        }

        mbedtls_ssl_set_timer(a1, 0);
      }

      if (*(*a1 + 152))
      {
        v10 = *(*a1 + 152);
          ;
        }

        v9 = mbedtls_calloc();
        if (!v9)
        {
          return -32512;
        }

        for (j = 0; j < i; ++j)
        {
          tls_id_from_ecp_group_id = mbedtls_ssl_get_tls_id_from_ecp_group_id(*(v10 + 4 * j));
          if (!tls_id_from_ecp_group_id)
          {
            mbedtls_free();
            return -24192;
          }

          *(v9 + 2 * j) = tls_id_from_ecp_group_id;
        }

        *(v9 + 2 * i) = 0;
        *(*(a1 + 104) + 56) = v9;
        *(*(a1 + 104) + 9) = 1;
      }

      else
      {
        *(*(a1 + 104) + 56) = *(*a1 + 160);
        *(*(a1 + 104) + 9) = 0;
      }

      return 0;
    }

    return v12;
  }

  else
  {
    v1 = *(a1 + 104);
    mbedtls_free();
    *(a1 + 104) = 0;
    v2 = *(a1 + 136);
    mbedtls_free();
    *(a1 + 136) = 0;
    v3 = *(a1 + 96);
    mbedtls_free();
    *(a1 + 96) = 0;
    return -32512;
  }
}

void mbedtls_ssl_session_reset_msg_layer(uint64_t a1)
{
  mbedtls_ssl_set_timer(a1, 0);
  mbedtls_ssl_reset_in_out_pointers(a1);
  *(a1 + 216) = 0;
  *(a1 + 288) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 280) = 0;
  *(a1 + 292) = 0;
  *(a1 + 112) = 0;
  *(a1 + 256) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  v1 = *(a1 + 168);
  __memset_chk();
  *(a1 + 296) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  v2 = *(a1 + 312);
  __memset_chk();
  __memset_chk();
  *(a1 + 120) = 0;
  mbedtls_ssl_dtls_replay_reset(a1);
  if (*(a1 + 128))
  {
    mbedtls_ssl_transform_free(*(a1 + 128));
    v3 = *(a1 + 128);
    mbedtls_free();
    *(a1 + 128) = 0;
  }
}

uint64_t mbedtls_ssl_session_reset_int(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = **a1;
  mbedtls_ssl_session_reset_msg_layer(a1);
  *(a1 + 424) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a1 + 88))
  {
    mbedtls_ssl_session_free(*(a1 + 88));
    v1 = *(a1 + 88);
    mbedtls_free();
    *(a1 + 88) = 0;
  }

  v2 = *(a1 + 408);
  mbedtls_free();
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  v4 = ssl_handshake_init(a1);
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_conf_handshake_timeout(uint64_t result, int a2, int a3)
{
  *(result + 172) = a2;
  *(result + 176) = a3;
  return result;
}

uint64_t mbedtls_ssl_conf_verify(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 80) = a2;
  *(result + 88) = a3;
  return result;
}

uint64_t mbedtls_ssl_conf_rng(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 40) = a2;
  *(result + 48) = a3;
  return result;
}

uint64_t mbedtls_ssl_conf_dbg(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

void *mbedtls_ssl_set_bio(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result[8] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

uint64_t mbedtls_ssl_set_timer_cb(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[18] = a2;
  a1[19] = a3;
  a1[20] = a4;
  return mbedtls_ssl_set_timer(a1, 0);
}

void *mbedtls_ssl_conf_session_cache(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[9] = a2;
  result[7] = a3;
  result[8] = a4;
  return result;
}

uint64_t mbedtls_ssl_set_session(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 96) && !*(*a1 + 8))
  {
    if (**(a1 + 104) == 1)
    {
      return -28800;
    }

    else
    {
      v3 = mbedtls_ssl_session_copy(*(a1 + 96), a2);
      if (v3)
      {
        return v3;
      }

      else
      {
        **(a1 + 104) = 1;
        return 0;
      }
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_append_key_cert(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = mbedtls_calloc();
    if (v5)
    {
      *v5 = a2;
      v5[1] = a3;
      v5[2] = 0;
      if (*a1)
      {
          ;
        }

        *(i + 16) = v5;
      }

      else
      {
        *a1 = v5;
      }

      return 0;
    }

    else
    {
      return -32512;
    }
  }

  else
  {
    ssl_key_cert_free(*a1);
    *a1 = 0;
    return 0;
  }
}

uint64_t mbedtls_ssl_conf_ca_chain(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 136) = a2;
  *(result + 144) = a3;
  return result;
}

uint64_t mbedtls_ssl_set_verify(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t mbedtls_ssl_set_hs_ecjpake_password(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1[13] && *a1)
  {
    if (a2 && a3)
    {
      if (*(*a1 + 8) == 1)
      {
        return mbedtls_ecjpake_setup(a1[13] + 72, 1u, 9, 3, a2, a3);
      }

      else
      {
        return mbedtls_ecjpake_setup(a1[13] + 72, 0, 9, 3, a2, a3);
      }
    }

    else
    {
      return -28928;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t mbedtls_ssl_get_mode_from_transform(uint64_t a1)
{
  cipher_mode = mbedtls_cipher_get_cipher_mode(a1 + 80);
  base_mode = mbedtls_ssl_get_base_mode(cipher_mode);
  return mbedtls_ssl_get_actual_mode(base_mode);
}

uint64_t mbedtls_ssl_get_base_mode(int a1)
{
  if (a1 == 6 || a1 == 8 || a1 == 11)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_get_mode_from_ciphersuite(uint64_t a1)
{
  base_mode = 0;
  v3 = mbedtls_cipher_info_from_type(*(a1 + 16));
  if (v3)
  {
    mode = mbedtls_cipher_info_get_mode(v3);
    base_mode = mbedtls_ssl_get_base_mode(mode);
  }

  return mbedtls_ssl_get_actual_mode(base_mode);
}

uint64_t mbedtls_cipher_info_get_mode(uint64_t a1)
{
  if (a1)
  {
    return HIBYTE(*(a1 + 8)) >> 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_conf_curves(uint64_t result, uint64_t a2)
{
  *(result + 152) = a2;
  *(result + 160) = 0;
  return result;
}

uint64_t mbedtls_ssl_conf_groups(uint64_t result, uint64_t a2)
{
  *(result + 152) = 0;
  *(result + 160) = a2;
  return result;
}

uint64_t mbedtls_ssl_set_hostname(uint64_t a1, const char *a2)
{
  v5 = 0;
  if (!a2 || (v5 = strlen(a2), v5 <= 0xFF))
  {
    if (*(a1 + 400))
    {
      v2 = strlen(*(a1 + 400));
      mbedtls_zeroize_and_free(*(a1 + 400), v2);
    }

    if (a2)
    {
      *(a1 + 400) = mbedtls_calloc();
      if (!*(a1 + 400))
      {
        return -32512;
      }

      v3 = *(a1 + 400);
      __memcpy_chk();
      *(*(a1 + 400) + v5) = 0;
    }

    else
    {
      *(a1 + 400) = 0;
    }

    return 0;
  }

  return -28928;
}

uint64_t mbedtls_ssl_conf_max_frag_len(uint64_t a1, unsigned __int8 a2)
{
  if (a2 < 5u && ssl_mfl_code_to_length(a2) <= 0x4000)
  {
    *(a1 + 12) = a2;
    return 0;
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_mfl_code_to_length(int a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        return 512;
      case 2:
        return 1024;
      case 3:
        return 2048;
      case 4:
        return 4096;
      default:
        return 0x4000;
    }
  }

  else
  {
    return 0x4000;
  }
}

uint64_t mbedtls_ssl_set_export_keys_cb(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 432) = a2;
  *(result + 440) = a3;
  return result;
}

uint64_t mbedtls_ssl_get_verify_result(uint64_t a1)
{
  if (*(a1 + 88))
  {
    return *(*(a1 + 88) + 124);
  }

  else if (*(a1 + 96))
  {
    return *(*(a1 + 96) + 124);
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_get_ciphersuite_id_from_ssl(uint64_t a1)
{
  if (a1 && *(a1 + 88))
  {
    return *(*(a1 + 88) + 8);
  }

  else
  {
    return 0;
  }
}

const char *mbedtls_ssl_get_ciphersuite(uint64_t a1)
{
  if (a1 && *(a1 + 88))
  {
    return mbedtls_ssl_get_ciphersuite_name(*(*(a1 + 88) + 8));
  }

  else
  {
    return 0;
  }
}

const char *mbedtls_ssl_get_version(_DWORD *a1)
{
  if (*(*a1 + 9) == 1)
  {
    if (a1[3] == 771)
    {
      return "DTLSv1.2";
    }

    else
    {
      return "unknown (DTLS)";
    }
  }

  else
  {
    v2 = a1[3];
    if (v2 == 771)
    {
      return "TLSv1.2";
    }

    else if (v2 == 772)
    {
      return "TLSv1.3";
    }

    else
    {
      return "unknown";
    }
  }
}

unint64_t mbedtls_ssl_get_input_max_frag_len(uint64_t a1)
{
  v4 = 0x4000;
  if (!*(*a1 + 8) && *(a1 + 8) >= 6)
  {
    return ssl_mfl_code_to_length(*(*a1 + 12));
  }

  if (*(a1 + 80))
  {
    v2 = ssl_mfl_code_to_length(**(a1 + 80));
    if (v2 < 0x4000)
    {
      v4 = v2;
    }
  }

  if (*(a1 + 96))
  {
    v3 = ssl_mfl_code_to_length(**(a1 + 96));
    if (v3 < v4)
    {
      return v3;
    }
  }

  return v4;
}

unint64_t mbedtls_ssl_get_output_max_frag_len(unsigned __int8 **a1)
{
  v2 = ssl_mfl_code_to_length((*a1)[12]);
  if (a1[10] && ssl_mfl_code_to_length(*a1[10]) < v2)
  {
    v2 = ssl_mfl_code_to_length(*a1[10]);
  }

  if (a1[12] && ssl_mfl_code_to_length(*a1[12]) < v2)
  {
    return ssl_mfl_code_to_length(*a1[12]);
  }

  return v2;
}

uint64_t mbedtls_ssl_get_current_mtu(uint64_t a1)
{
  if (!*(*a1 + 8) && (*(a1 + 8) == 1 || *(a1 + 8) == 2))
  {
    return 0;
  }

  if (!*(a1 + 104) || !*(*(a1 + 104) + 824))
  {
    return *(a1 + 392);
  }

  if (!*(a1 + 392))
  {
    return *(*(a1 + 104) + 824);
  }

  if (*(a1 + 392) < *(*(a1 + 104) + 824))
  {
    return *(a1 + 392);
  }

  else
  {
    return *(*(a1 + 104) + 824);
  }
}

uint64_t mbedtls_ssl_get_max_out_record_payload(uint64_t a1)
{
  v5 = 0x4000;
  output_max_frag_len = mbedtls_ssl_get_output_max_frag_len(a1);
  if (output_max_frag_len < 0x4000)
  {
    v5 = output_max_frag_len;
  }

  if (*(a1 + 120) && *(*(a1 + 120) + 72) == 772)
  {
    v5 = 16 * (v5 / 0x10) - 1;
  }

  if (!mbedtls_ssl_get_current_mtu(a1))
  {
    return v5;
  }

  current_mtu = mbedtls_ssl_get_current_mtu(a1);
  record_expansion = mbedtls_ssl_get_record_expansion(a1);
  if ((record_expansion & 0x80000000) == 0)
  {
    if (current_mtu <= record_expansion)
    {
      return -28800;
    }

    if (v5 > current_mtu - record_expansion)
    {
      LODWORD(v5) = current_mtu - record_expansion;
    }

    return v5;
  }

  return record_expansion;
}

unint64_t mbedtls_ssl_get_max_in_record_payload(uint64_t a1)
{
  v3 = 0x4000;
  input_max_frag_len = mbedtls_ssl_get_input_max_frag_len(a1);
  if (input_max_frag_len < 0x4000)
  {
    return input_max_frag_len;
  }

  return v3;
}

uint64_t mbedtls_ssl_get_peer_cert(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 88);
  }

  return 0;
}

uint64_t mbedtls_ssl_get_session(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && a1[11] && !*(*a1 + 8))
  {
    if (*(a1[11] + 1) == 1)
    {
      return -28800;
    }

    else
    {
      v3 = mbedtls_ssl_session_copy(a2, a1[11]);
      if (v3)
      {
        return v3;
      }

      else
      {
        *(a1[11] + 1) = 1;
        return 0;
      }
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_session_save(uint64_t a1, char a2, _BYTE *a3, unint64_t a4, unint64_t *a5)
{
  v7 = 0;
  if (a1)
  {
    if (!a2)
    {
      v7 = 5;
      if (a4 >= 5)
      {
        __memcpy_chk();
        a3 += 5;
      }
    }

    v8 = v7 + 4;
    if (v8 > a4)
    {
      v6 = 0;
    }

    else
    {
      *a3 = *(a1 + 4);
      a3[1] = *(a1 + 2);
      v15 = bswap32(*(a1 + 8)) >> 16;
      __memcpy_chk();
      a3 += 4;
      v6 = a4 - v8;
    }

    if (*(a1 + 4) == 771)
    {
      v9 = v8 + ssl_tls12_session_save(a1, a3, v6);
      *a5 = v9;
      if (v9 <= a4)
      {
        return 0;
      }

      else
      {
        return -27136;
      }
    }

    else
    {
      return -28800;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t mbedtls_ssl_session_load(void *a1, unsigned __int8 *a2, unint64_t a3)
{
  v4 = ssl_session_load(a1, 0, a2, a3);
  if (v4)
  {
    mbedtls_ssl_session_free(a1);
  }

  return v4;
}

uint64_t ssl_session_load(uint64_t a1, char a2, unsigned __int8 *a3, unint64_t a4)
{
  __s1 = a3;
  v5 = &a3[a4];
  if (a1)
  {
    if (!a2)
    {
      if (a4 < 5)
      {
        return -28928;
      }

      if (memcmp(a3, &ssl_serialized_session_header, 5uLL))
      {
        return -24320;
      }

      __s1 += 5;
    }

    if ((v5 - __s1) >= 4)
    {
      *(a1 + 4) = *__s1 | 0x300;
      *(a1 + 2) = __s1[1];
      *(a1 + 8) = bswap32(*(__s1 + 1)) >> 16;
      __s1a = __s1 + 4;
      if (*(a1 + 4) == 771)
      {
        return ssl_tls12_session_load(a1, __s1a, v5 - __s1a);
      }

      else
      {
        return -28928;
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

uint64_t mbedtls_ssl_handshake_step(uint64_t a1)
{
  if (a1 && *a1 && *(a1 + 104) && *(a1 + 8) != 27)
  {
    v3 = ssl_prepare_handshake_step(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      v4 = mbedtls_ssl_handle_pending_alert(a1);
      if (!v4)
      {
        v4 = -28928;
        if (!*(*a1 + 8))
        {
          v2 = *(a1 + 8);
          if (v2)
          {
            if (v2 == 1)
            {
              v4 = mbedtls_ssl_write_client_hello(a1);
            }

            else
            {
              v4 = mbedtls_ssl_handshake_client_step(a1);
            }
          }

          else
          {
            *(a1 + 8) = 1;
            v4 = 0;
          }
        }

        if (*(*a1 + 8) == 1)
        {
          v4 = mbedtls_ssl_handshake_server_step(a1);
        }

        if (v4 && *(a1 + 296))
        {
          return mbedtls_ssl_handle_pending_alert(a1);
        }
      }

      return v4;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t ssl_prepare_handshake_step(void *a1)
{
  v2 = mbedtls_ssl_flush_output(a1);
  if (v2)
  {
    return v2;
  }

  else if (*(*a1 + 9) == 1 && *(a1[13] + 8) == 1 && (v3 = mbedtls_ssl_flight_transmit(a1)) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_handshake(uint64_t a1)
{
  v2 = 0;
  if (a1 && *a1)
  {
    if (*(*a1 + 9) != 1 || *(a1 + 152) && *(a1 + 160))
    {
      do
      {
        if (*(a1 + 8) == 27)
        {
          break;
        }

        v2 = mbedtls_ssl_handshake_step(a1);
      }

      while (!v2);
      return v2;
    }

    else
    {
      return -28928;
    }
  }

  else
  {
    return -28928;
  }
}

void *mbedtls_ssl_handshake_free(void *result)
{
  v6 = result;
  v5 = result[13];
  if (v5)
  {
    if (*(result[13] + 9))
    {
      v1 = *(v5 + 56);
      mbedtls_free();
    }

    *(v5 + 56) = 0;
    mbedtls_md_free((v5 + 832));
    mbedtls_ecjpake_free(v5 + 72);
    v2 = *(v5 + 568);
    mbedtls_free();
    *(v5 + 568) = 0;
    *(v5 + 576) = 0;
    v3 = *(v5 + 584);
    mbedtls_free();
    mbedtls_pk_free((v5 + 600));
    v4 = *(v5 + 752);
    mbedtls_free();
    mbedtls_ssl_flight_free(*(v5 + 776));
    mbedtls_ssl_buffering_free(v6);
    return mbedtls_platform_zeroize(v5, 0x3E8uLL);
  }

  return result;
}

void ssl_clear_peer_cert(uint64_t a1)
{
  if (*(a1 + 104))
  {
    v1 = *(a1 + 104);
    mbedtls_free();
    *(a1 + 104) = 0;
    *(a1 + 120) = 0;
    *(a1 + 112) = 0;
  }
}

void **mbedtls_ssl_free(void **result)
{
  v8 = result;
  if (result)
  {
    if (result[39])
    {
      mbedtls_zeroize_and_free(result[39], 0x402DuLL);
      v8[39] = 0;
    }

    if (v8[21])
    {
      mbedtls_zeroize_and_free(v8[21], 0x402DuLL);
      v8[21] = 0;
    }

    if (v8[16])
    {
      mbedtls_ssl_transform_free(v8[16]);
      v1 = v8[16];
      mbedtls_free();
    }

    if (v8[13])
    {
      mbedtls_ssl_handshake_free(v8);
      v2 = v8[13];
      mbedtls_free();
      mbedtls_ssl_transform_free(v8[17]);
      v3 = v8[17];
      mbedtls_free();
      mbedtls_ssl_session_free(v8[12]);
      v4 = v8[12];
      mbedtls_free();
    }

    if (v8[11])
    {
      mbedtls_ssl_session_free(v8[11]);
      v5 = v8[11];
      mbedtls_free();
    }

    if (v8[50])
    {
      v6 = strlen(v8[50]);
      mbedtls_zeroize_and_free(v8[50], v6);
    }

    v7 = v8[51];
    mbedtls_free();
    return mbedtls_platform_zeroize(v8, 0x1C8uLL);
  }

  return result;
}

uint64_t mbedtls_ssl_config_defaults(uint64_t a1, int a2, char a3, int a4)
{
  mbedtls_ssl_conf_endpoint(a1, a2);
  mbedtls_ssl_conf_transport(a1, a3);
  if (!a2)
  {
    *(a1 + 10) = 2;
  }

  *(a1 + 96) = ssl_cookie_write_dummy;
  *(a1 + 104) = ssl_cookie_check_dummy;
  *(a1 + 13) = 1;
  *(a1 + 14) = 1;
  *(a1 + 15) = 0;
  *(a1 + 172) = 1000;
  *(a1 + 176) = 60000;
  *(a1 + 4) = 771;
  *a1 = 771;
  if (a4 == 2)
  {
    *(a1 + 16) = &ssl_preset_suiteb_ciphersuites;
    *(a1 + 120) = &mbedtls_x509_crt_profile_suiteb;
    *(a1 + 152) = 0;
    *(a1 + 160) = &ssl_preset_suiteb_groups;
  }

  else
  {
    *(a1 + 16) = mbedtls_ssl_list_ciphersuites();
    *(a1 + 120) = &mbedtls_x509_crt_profile_default;
    *(a1 + 152) = 0;
    *(a1 + 160) = &ssl_preset_default_groups;
  }

  return 0;
}

void ssl_key_cert_free(uint64_t a1)
{
  while (a1)
  {
    v1 = *(a1 + 16);
    mbedtls_free();
    a1 = v1;
  }
}

uint64_t mbedtls_ssl_sig_from_pk_alg(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else if (a1 == 2 || a1 == 4)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_md_alg_from_hash(char a1)
{
  if (a1 == 4)
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_hash_from_md_alg(int a1)
{
  if (a1 == 9)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_check_curve_tls_id(void *a1, __int16 a2)
{
  groups = mbedtls_ssl_get_groups(a1);
  if (groups)
  {
    while (*groups)
    {
      if (*groups == a2)
      {
        return 0;
      }

      ++groups;
    }

    return -1;
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_check_curve(void *a1, int a2)
{
  tls_id_from_ecp_group_id = mbedtls_ssl_get_tls_id_from_ecp_group_id(a2);
  if (tls_id_from_ecp_group_id)
  {
    return mbedtls_ssl_check_curve_tls_id(a1, tls_id_from_ecp_group_id);
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_get_tls_id_from_ecp_group_id(int a1)
{
  for (i = 0; *(&tls_id_match_table + 3 * i + 1); ++i)
  {
    if (*(&tls_id_match_table + 3 * i + 1) == a1)
    {
      return *(&tls_id_match_table + 6 * i);
    }
  }

  return 0;
}

uint64_t mbedtls_ssl_get_psa_curve_info_from_tls_id(unsigned __int16 a1, _WORD *a2, void *a3)
{
  for (i = 0; ; ++i)
  {
    if (!*(&tls_id_match_table + 6 * i))
    {
      return -134;
    }

    if (*(&tls_id_match_table + 6 * i) == a1)
    {
      break;
    }
  }

  if (a2)
  {
    *a2 = *(&tls_id_match_table + 12 * i + 8) | 0x7100;
  }

  if (a3)
  {
    *a3 = *(&tls_id_match_table + 6 * i + 5);
  }

  return 0;
}

uint64_t mbedtls_ssl_get_ecp_group_id_from_tls_id(unsigned __int16 a1)
{
  for (i = 0; *(&tls_id_match_table + 6 * i); ++i)
  {
    if (*(&tls_id_match_table + 6 * i) == a1)
    {
      return *(&tls_id_match_table + 3 * i + 1);
    }
  }

  return 0;
}

uint64_t mbedtls_ssl_check_cert_usage(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v9 = 0;
  v8 = 0;
  if (a3 == 1)
  {
    v7 = *(a2 + 18);
    if (!*(a2 + 18))
    {
      goto LABEL_15;
    }

    if (v7 == 1)
    {
      goto LABEL_13;
    }

    if ((v7 - 2) <= 2)
    {
      v4 = mbedtls_x509_crt_check_key_usage(a1, 128);
      goto LABEL_18;
    }

    switch(v7)
    {
      case 6:
      case 5:
        goto LABEL_15;
      case 7:
LABEL_13:
        v4 = mbedtls_x509_crt_check_key_usage(a1, 32);
        goto LABEL_18;
      case 8:
        goto LABEL_15;
      case 10:
      case 9:
        v4 = mbedtls_x509_crt_check_key_usage(a1, 8);
        goto LABEL_18;
      case 11:
LABEL_15:
        v4 = mbedtls_x509_crt_check_key_usage(a1, 0);
        goto LABEL_18;
    }
  }

  else
  {
    v8 = 128;
  }

  v4 = mbedtls_x509_crt_check_key_usage(a1, v8);
LABEL_18:
  if (v4)
  {
    *a4 |= 0x800u;
    v9 = -1;
  }

  if (a3 == 1)
  {
    v5 = mbedtls_x509_crt_check_extended_key_usage(a1, "+\x06\x01\x05\x05\a\x03\x01", 8uLL);
  }

  else
  {
    v5 = mbedtls_x509_crt_check_extended_key_usage(a1, "+\x06\x01\x05\x05\a\x03\x02", 8uLL);
  }

  if (v5)
  {
    *a4 |= 0x1000u;
    return -1;
  }

  return v9;
}

uint64_t mbedtls_ssl_get_handshake_transcript(uint64_t a1, int a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2 == 9)
  {
    return ssl_get_handshake_transcript_sha256(a1, a3, a4, a5);
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_get_handshake_transcript_sha256(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  if (a3 >= 0x20)
  {
    mbedtls_md_init();
    v4 = mbedtls_md_info_from_type(9);
    v7 = mbedtls_md_setup(v6, v4, 0);
    if (!v7)
    {
      v7 = mbedtls_md_clone(v6, *(v11 + 104) + 832);
      if (!v7)
      {
        v7 = mbedtls_md_finish(v6);
        if (!v7)
        {
          *v8 = 32;
        }
      }
    }

    mbedtls_md_free(v6);
    return v7;
  }

  else
  {
    return -27648;
  }
}

uint64_t mbedtls_ssl_derive_keys(uint64_t a1)
{
  v1 = *(*(*(a1 + 104) + 16) + 17);
  v5 = ssl_set_handshake_prfs(*(a1 + 104));
  if (v5)
  {
    return v5;
  }

  else
  {
    v6 = ssl_compute_master(*(a1 + 104), *(a1 + 96) + 56);
    if (v6)
    {
      return v6;
    }

    else
    {
      memcpy(__dst, (*(a1 + 104) + 896), sizeof(__dst));
      v2 = *(a1 + 104);
      __memcpy_chk();
      v3 = *(a1 + 104);
      __memcpy_chk();
      mbedtls_platform_zeroize(__dst, 0x40uLL);
      v7 = ssl_tls12_populate_transform(*(a1 + 136), *(*(a1 + 96) + 8), (*(a1 + 96) + 56), *(*(a1 + 104) + 48), *(a1 + 104) + 896, *(a1 + 12), *(*a1 + 8), a1);
      if (v7)
      {
        return v7;
      }

      else
      {
        mbedtls_platform_zeroize((*(a1 + 104) + 896), 0x40uLL);
        return 0;
      }
    }
  }
}

uint64_t ssl_set_handshake_prfs(void *a1)
{
  a1[6] = tls_prf_sha256;
  a1[4] = ssl_calc_verify_tls_sha256;
  a1[5] = ssl_calc_finished_tls_sha256;
  return 0;
}

uint64_t ssl_compute_master(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    return 0;
  }

  else
  {
    v3 = (*(a1 + 48))(a1 + 960, *(a1 + 992), "master secret", a1 + 896, 64, a2, 48);
    if (v3)
    {
      return v3;
    }

    else
    {
      mbedtls_platform_zeroize((a1 + 960), 0x20uLL);
      return 0;
    }
  }
}

uint64_t ssl_tls12_populate_transform(uint64_t a1, int a2, _BYTE *a3, uint64_t (*a4)(_BYTE *a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7), uint64_t a5, int a6, int a7, uint64_t a8)
{
  *(a1 + 72) = a6;
  v21 = mbedtls_ssl_ciphersuite_from_id(a2);
  if (v21)
  {
    mode_from_ciphersuite = mbedtls_ssl_get_mode_from_ciphersuite(v21);
    if (mode_from_ciphersuite == 3)
    {
      if ((v21[19] & 2) != 0)
      {
        v8 = 8;
      }

      else
      {
        v8 = 16;
      }

      *(a1 + 32) = v8;
    }

    v19 = mbedtls_cipher_info_from_type(v21[16]);
    if (!v19)
    {
      return -28928;
    }

    if (!mbedtls_md_info_from_type(v21[17]))
    {
      return -28928;
    }

    v25 = a4(a3, 48uLL, "key expansion", a5, 64, v34, 256uLL);
    if (v25)
    {
      return v25;
    }

    v22 = mbedtls_cipher_info_get_key_bitlen(v19) / 8;
    if (mode_from_ciphersuite != 3)
    {
      return -27648;
    }

    *(a1 + 24) = 0;
    *(a1 + 8) = 12;
    if (mbedtls_cipher_info_get_mode(v19) == 11)
    {
      *(a1 + 16) = 12;
    }

    else
    {
      *(a1 + 16) = 4;
    }

    *a1 = *(a1 + 8) - *(a1 + 16) + *(a1 + 32);
    if (a7)
    {
      if (a7 != 1)
      {
        v26 = -27648;
LABEL_36:
        mbedtls_platform_zeroize(v34, 0x100uLL);
        return v26;
      }

      v24 = &v34[v22];
      v23 = v34;
      if (*(a1 + 16))
      {
        v15 = *(a1 + 16);
      }

      else
      {
        v16 = *(a1 + 8);
      }
    }

    else
    {
      v24 = v34;
      v23 = &v34[v22];
      if (*(a1 + 16))
      {
        v17 = *(a1 + 16);
      }

      else
      {
        v18 = *(a1 + 8);
      }
    }

    __memcpy_chk();
    __memcpy_chk();
    if (*(a8 + 432))
    {
      v13 = *(a8 + 432);
      v14 = *(a8 + 440);
      type = tls_prf_get_type(a4);
      v13(v14, 0, a3, 48, a5 + 32, a5, type);
    }

    v26 = mbedtls_cipher_setup((a1 + 80), v19);
    if (!v26)
    {
      v26 = mbedtls_cipher_setup((a1 + 160), v19);
      if (!v26)
      {
        key_bitlen = mbedtls_cipher_info_get_key_bitlen(v19);
        v26 = mbedtls_cipher_setkey(a1 + 80, v24, key_bitlen, 1u);
        if (!v26)
        {
          v11 = mbedtls_cipher_info_get_key_bitlen(v19);
          v26 = mbedtls_cipher_setkey(a1 + 160, v23, v11, 0);
        }
      }
    }

    goto LABEL_36;
  }

  return -28928;
}

uint64_t mbedtls_ssl_set_calc_verify_md(uint64_t a1, int a2)
{
  if (a2 == 4)
  {
    *(*(a1 + 104) + 32) = ssl_calc_verify_tls_sha256;
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t mbedtls_ssl_write_certificate(uint64_t a1)
{
  if (mbedtls_ssl_ciphersuite_uses_srv_cert(*(*(a1 + 104) + 16)))
  {
    return -27648;
  }

  else
  {
    ++*(a1 + 8);
    return 0;
  }
}

uint64_t mbedtls_ssl_parse_certificate(uint64_t a1)
{
  if (mbedtls_ssl_ciphersuite_uses_srv_cert(*(*(a1 + 104) + 16)))
  {
    return -27648;
  }

  else
  {
    ++*(a1 + 8);
    return 0;
  }
}

void mbedtls_ssl_handshake_wrapup_free_hs_transform(uint64_t a1)
{
  mbedtls_ssl_handshake_free(a1);
  v1 = *(a1 + 104);
  mbedtls_free();
  *(a1 + 104) = 0;
  if (*(a1 + 128))
  {
    mbedtls_ssl_transform_free(*(a1 + 128));
    v2 = *(a1 + 128);
    mbedtls_free();
  }

  *(a1 + 128) = *(a1 + 136);
  *(a1 + 136) = 0;
}

void mbedtls_ssl_handshake_wrapup(void *a1)
{
  v2 = *a1[13];
  if (a1[11])
  {
    mbedtls_ssl_session_free(a1[11]);
    v1 = a1[11];
    mbedtls_free();
  }

  a1[11] = a1[12];
  a1[12] = 0;
  if (*(*a1 + 64) && *(a1[11] + 16) && !v2)
  {
    (*(*a1 + 64))(*(*a1 + 72), a1[11] + 24, *(a1[11] + 16), a1[11]);
  }

  if (*(*a1 + 9) == 1 && *(a1[13] + 776))
  {
    mbedtls_ssl_set_timer(a1, 0);
  }

  else
  {
    mbedtls_ssl_handshake_wrapup_free_hs_transform(a1);
  }

  *(a1 + 2) = 27;
}

uint64_t mbedtls_ssl_write_finished(uint64_t a1)
{
  mbedtls_ssl_update_out_pointers(a1, *(a1 + 136));
  (*(*(a1 + 104) + 40))(a1, *(a1 + 352) + 4, *(*a1 + 8));
  *(a1 + 368) = 16;
  *(a1 + 360) = 22;
  **(a1 + 352) = 20;
  if (**(a1 + 104))
  {
    if (!*(*a1 + 8))
    {
      *(a1 + 8) = 15;
    }

    if (*(*a1 + 8) == 1)
    {
      *(a1 + 8) = 10;
    }
  }

  else
  {
    ++*(a1 + 8);
  }

  if (*(*a1 + 9) == 1)
  {
    *(*(a1 + 104) + 808) = *(a1 + 120);
    v1 = *(a1 + 104) + 816;
    __memcpy_chk();
    __memset_chk();
    for (i = 2; i; --i)
    {
      v2 = i - 1;
      v3 = *(a1 + 384 + v2) + 1;
      *(a1 + 384 + v2) = v3;
      if (v3)
      {
        break;
      }
    }

    if (!i)
    {
      return -27520;
    }
  }

  else
  {
    __memset_chk();
  }

  *(a1 + 120) = *(a1 + 136);
  *(a1 + 80) = *(a1 + 96);
  if (*(*a1 + 9) == 1)
  {
    mbedtls_ssl_send_flight_completed(a1);
  }

  v6 = mbedtls_ssl_write_handshake_msg(a1);
  if (v6)
  {
    return v6;
  }

  else if (*(*a1 + 9) == 1 && (v7 = mbedtls_ssl_flight_transmit(a1)) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_ssl_parse_finished(uint64_t a1)
{
  (*(*(a1 + 104) + 40))(a1, v7, *(*a1 + 8) ^ 1u);
  record = mbedtls_ssl_read_record(a1, 1);
  if (!record)
  {
    if (*(a1 + 224) == 22 && **(a1 + 208) == 20)
    {
      v4 = *(a1 + 280);
      if (v4 == mbedtls_ssl_hs_hdr_len(a1) + 12)
      {
        v3 = *(a1 + 208);
        v1 = mbedtls_ssl_hs_hdr_len(a1);
        if (mbedtls_ct_memcmp(v3 + v1, v7, 0xCuLL))
        {
          mbedtls_ssl_send_alert_message(a1, 2, 51);
          record = -28160;
        }

        else
        {
          if (**(a1 + 104))
          {
            if (!*(*a1 + 8))
            {
              *(a1 + 8) = 10;
            }

            if (*(*a1 + 8) == 1)
            {
              *(a1 + 8) = 15;
            }
          }

          else
          {
            ++*(a1 + 8);
          }

          if (*(*a1 + 9) == 1)
          {
            mbedtls_ssl_recv_flight_completed(a1);
          }
        }
      }

      else
      {
        mbedtls_ssl_send_alert_message(a1, 2, 50);
        record = -29440;
      }
    }

    else
    {
      mbedtls_ssl_send_alert_message(a1, 2, 10);
      record = -30464;
    }
  }

  mbedtls_platform_zeroize(v7, 0xCuLL);
  return record;
}

uint64_t mbedtls_ssl_get_key_exchange_md_tls1_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, int a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = mbedtls_md_info_from_type(a6);
  *v13 = mbedtls_md_get_size(v7);
  mbedtls_md_init();
  v9 = mbedtls_md_setup(v8, v7, 0);
  if (!v9)
  {
    v9 = mbedtls_md_starts(v8);
    if (!v9)
    {
      v9 = mbedtls_md_update(v8, *(v15 + 104) + 896, 0x40uLL);
      if (!v9)
      {
        v9 = mbedtls_md_update(v8, v12, v11);
        if (!v9)
        {
          v9 = mbedtls_md_finish(v8);
        }
      }
    }
  }

  mbedtls_md_free(v8);
  if (v9)
  {
    mbedtls_ssl_send_alert_message(v15, 2, 80);
  }

  return v9;
}

uint64_t mbedtls_ssl_validate_ciphersuite(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    if (*(a2 + 20) <= a4 && *(a2 + 22) >= a3)
    {
      if (*(a2 + 18) == 11 && mbedtls_ecjpake_check(*(a1 + 104) + 72))
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
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t ssl_conf_version_check(_DWORD **a1)
{
  if (mbedtls_ssl_conf_is_tls12_only(*a1))
  {
    return 0;
  }

  else
  {
    return -24192;
  }
}

BOOL mbedtls_ssl_conf_is_tls12_only(_DWORD *a1)
{
  v2 = 0;
  if (a1[1] == 771)
  {
    return *a1 == 771;
  }

  return v2;
}

void *ssl_handshake_params_init(uint64_t a1)
{
  __memset_chk();
  mbedtls_md_init();
  *(a1 + 24) = ssl_update_checksum_start;
  mbedtls_ecjpake_init((a1 + 72));
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  return mbedtls_pk_init((a1 + 600));
}

uint64_t ssl_update_checksum_start(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = mbedtls_md_update(*(a1 + 104) + 832, a2, a3);
  if (v4)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t ssl_tls12_session_save(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v9 = a2;
  if (a3 >= 0x55)
  {
    *a2 = *(a1 + 16);
    __memcpy_chk();
    __memcpy_chk();
    v12 = bswap32(*(a1 + 124));
    __memcpy_chk();
    v9 += 85;
  }

  if (*(a1 + 104))
  {
    v7 = *(a1 + 112) + 87;
    if (v7 <= a3)
    {
      *v9 = *(a1 + 120);
      v9[1] = *(a1 + 112);
      v3 = *(a1 + 104);
      v4 = *(a1 + 112);
      __memcpy_chk();
      v9 += *(a1 + 112) + 2;
    }
  }

  else
  {
    v7 = 87;
    if (a3 >= 0x57)
    {
      *v9 = 0;
      v5 = v9 + 1;
      v9 += 2;
      *v5 = 0;
    }
  }

  v8 = v7 + 1;
  if (v8 <= a3)
  {
    *v9 = *a1;
  }

  return v8;
}

uint64_t ssl_tls12_session_load(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v10 = &a2[a3];
  if (a3 >= 0x55)
  {
    *(a1 + 16) = *a2;
    __memcpy_chk();
    v12 = a2 + 33;
    __memcpy_chk();
    *(a1 + 124) = bswap32(*(v12 + 12));
    v13 = v12 + 52;
    *(a1 + 104) = 0;
    if ((v10 - v13) >= 2)
    {
      *(a1 + 120) = *v13;
      v3 = v13 + 1;
      v14 = v13 + 2;
      *(a1 + 112) = *v3;
      if (*(a1 + 112))
      {
        v9 = mbedtls_md_info_from_type(*(a1 + 120));
        if (!v9)
        {
          return -28928;
        }

        v8 = *(a1 + 112);
        if (v8 != mbedtls_md_get_size(v9))
        {
          return -28928;
        }

        if (*(a1 + 112) > (v10 - v14))
        {
          return -28928;
        }

        v4 = *(a1 + 112);
        *(a1 + 104) = mbedtls_calloc();
        if (!*(a1 + 104))
        {
          return -32512;
        }

        v5 = *(a1 + 104);
        v6 = *(a1 + 112);
        __memcpy_chk();
        v14 += *(a1 + 112);
      }

      if (v10 == v14)
      {
        return -28928;
      }

      else
      {
        *a1 = *v14;
        if (v14 + 1 == v10)
        {
          return 0;
        }

        else
        {
          return -28928;
        }
      }
    }

    else
    {
      return -28928;
    }
  }

  else
  {
    return -28928;
  }
}

uint64_t tls_prf_generic(int a1, _BYTE *a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  v19 = 0;
  i = 0;
  j = 0;
  v16 = 0;
  size = 0;
  v14 = 0;
  v13 = 0;
  memset(v11, 0, sizeof(v11));
  mbedtls_md_init();
  v12 = mbedtls_md_info_from_type(v27);
  if (v12)
  {
    size = mbedtls_md_get_size(v12);
    v13 = size + strlen(v24) + v22;
    v14 = mbedtls_calloc();
    if (v14)
    {
      v19 = strlen(v24);
      __memcpy_chk();
      __memcpy_chk();
      v19 += v22;
      v10 = mbedtls_md_setup(v11, v12, 1);
      if (!v10)
      {
        v10 = mbedtls_md_hmac_starts(v11, v26, v25);
        if (!v10)
        {
          v10 = mbedtls_md_hmac_update(v11, v14 + size, v19);
          if (!v10)
          {
            v10 = mbedtls_md_hmac_finish(v11);
            if (!v10)
            {
              for (i = 0; i < v20; i += size)
              {
                v10 = mbedtls_md_hmac_reset(v11);
                if (v10)
                {
                  break;
                }

                v10 = mbedtls_md_hmac_update(v11, v14, size + v19);
                if (v10)
                {
                  break;
                }

                v10 = mbedtls_md_hmac_finish(v11);
                if (v10)
                {
                  break;
                }

                v10 = mbedtls_md_hmac_reset(v11);
                if (v10)
                {
                  break;
                }

                v10 = mbedtls_md_hmac_update(v11, v14, size);
                if (v10)
                {
                  break;
                }

                v10 = mbedtls_md_hmac_finish(v11);
                if (v10)
                {
                  break;
                }

                if (i + size <= v20)
                {
                  v9 = size;
                }

                else
                {
                  v9 = v20 % size;
                }

                v16 = v9;
                for (j = 0; j < v16; ++j)
                {
                  *(v21 + i + j) = v29[j];
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v10 = -32512;
    }

    mbedtls_md_free(v11);
    if (v14)
    {
      mbedtls_platform_zeroize(v14, v13);
    }

    mbedtls_platform_zeroize(v29, 0x20uLL);
    mbedtls_free();
    return v10;
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_calc_finished_tls_generic(void *a1, uint64_t a2, void *a3, size_t a4, uint64_t a5, int a6)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = a6;
  v14 = 12;
  v13 = 0;
  v12 = -110;
  v11 = a2;
  memset(v10, 0, sizeof(v10));
  mbedtls_md_init();
  v9 = v20[12];
  if (!v9)
  {
    v9 = v20[11];
  }

  v6 = "client finished";
  if (v15)
  {
    v6 = "server finished";
  }

  v13 = v6;
  v7 = mbedtls_md_info_from_ctx(v11);
  v12 = mbedtls_md_setup(v10, v7, 0);
  if (!v12)
  {
    v12 = mbedtls_md_clone(v10, v11);
    if (!v12)
    {
      v12 = mbedtls_md_finish(v10);
      if (!v12)
      {
        (*(v20[13] + 48))(v9 + 56, 48, v13, v18, v17, v16, v14);
        mbedtls_platform_zeroize(v18, v17);
      }
    }
  }

  mbedtls_md_free(v10);
  return v12;
}

uint64_t ssl_calc_verify_tls_legacy(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = -110;
  memset(v8, 0, sizeof(v8));
  mbedtls_md_init();
  v4 = mbedtls_md_info_from_ctx(v12);
  v9 = mbedtls_md_setup(v8, v4, 0);
  if (!v9)
  {
    v9 = mbedtls_md_clone(v8, v12);
    if (!v9)
    {
      v9 = mbedtls_md_finish(v8);
      if (!v9)
      {
        v5 = mbedtls_md_info_from_ctx(v12);
        size = mbedtls_md_get_size(v5);
        *v10 = size;
      }
    }
  }

  mbedtls_md_free(v8);
  return v9;
}

uint64_t tls_prf_get_type(uint64_t (*a1)(_BYTE *a1, unint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7))
{
  if (a1 == tls_prf_sha256)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_get_serial(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  if (a2 - *a1 >= 1)
  {
    if (**a1 == 130 || **a1 == 2)
    {
      v3 = (*a1)++;
      *a3 = *v3;
      len = mbedtls_asn1_get_len(a1, a2, (a3 + 8));
      if (len)
      {
        return mbedtls_error_add(-8832, len);
      }

      else
      {
        *(a3 + 16) = *a1;
        *a1 += *(a3 + 8);
        return 0;
      }
    }

    else
    {
      return mbedtls_error_add(-8832, -98);
    }
  }

  else
  {
    return mbedtls_error_add(-8832, -96);
  }
}

uint64_t mbedtls_x509_get_alg_null(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  alg_null = mbedtls_asn1_get_alg_null(a1, a2, a3);
  if (alg_null)
  {
    return mbedtls_error_add(-8960, alg_null);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_get_alg(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, _DWORD *a4)
{
  alg = mbedtls_asn1_get_alg(a1, a2, a3, a4);
  if (alg)
  {
    return mbedtls_error_add(-8960, alg);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_get_name(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  tag = -110;
  v6 = 0;
LABEL_2:
  tag = mbedtls_asn1_get_tag(v10, v9, &v6, 49);
  if (tag)
  {
    tag = mbedtls_error_add(-9088, tag);
  }

  else
  {
    v5 = &(*v10)[v6];
    while (1)
    {
      tag = x509_get_attr_type_value(v10, v5, v8);
      if (tag)
      {
        break;
      }

      if (*v10 == v5)
      {
        if (*v10 == v9)
        {
          return 0;
        }

        *(v8 + 48) = mbedtls_calloc();
        if (!*(v8 + 48))
        {
          tag = -10368;
          break;
        }

        v8 = *(v8 + 48);
        goto LABEL_2;
      }

      *(v8 + 56) = 1;
      *(v8 + 48) = mbedtls_calloc();
      if (!*(v8 + 48))
      {
        tag = -10368;
        break;
      }

      v8 = *(v8 + 48);
    }
  }

  mbedtls_asn1_free_named_data_list_shallow(*(a3 + 48));
  *(a3 + 48) = 0;
  return tag;
}

uint64_t x509_get_attr_type_value(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  tag = -110;
  v8 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v8, 48);
  if (tag)
  {
    return mbedtls_error_add(-9088, tag);
  }

  v11 = &(*v12)[v8];
  if (v11 - *v12 < 1)
  {
    return mbedtls_error_add(-9088, -96);
  }

  v7 = v10;
  *v10 = **v12;
  v3 = mbedtls_asn1_get_tag(v12, v11, (v7 + 8), 6);
  tag = v3;
  if (v3)
  {
    return mbedtls_error_add(-9088, tag);
  }

  *(v7 + 16) = *v12;
  *v12 += *(v7 + 8);
  if (v11 - *v12 < 1)
  {
    return mbedtls_error_add(-9088, -96);
  }

  if (**v12 != 30 && **v12 != 12 && **v12 != 20 && **v12 != 19 && **v12 != 22 && **v12 != 28 && **v12 != 3)
  {
    return mbedtls_error_add(-9088, -98);
  }

  v6 = v10 + 24;
  v4 = (*v12)++;
  *v6 = *v4;
  tag = mbedtls_asn1_get_len(v12, v11, (v6 + 8));
  if (tag)
  {
    return mbedtls_error_add(-9088, tag);
  }

  *(v6 + 16) = *v12;
  *v12 += *(v6 + 8);
  if (*v12 == v11)
  {
    *(v10 + 48) = 0;
    return 0;
  }

  else
  {
    return mbedtls_error_add(-9088, -102);
  }
}

uint64_t mbedtls_x509_get_time(char **a1, uint64_t a2, unsigned int *a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  len = -110;
  v6 = 0;
  if (a2 - *a1 >= 1)
  {
    v4 = **v10;
    if (v4 == 23)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 24)
      {
        return mbedtls_error_add(-9216, -98);
      }

      v5 = 4;
    }

    ++*v10;
    len = mbedtls_asn1_get_len(v10, v9, &v6);
    if (len)
    {
      return mbedtls_error_add(-9216, len);
    }

    else if (v6 == v5 + 10 || v6 == v5 + 11 && (*v10)[v6 - 1] == 90)
    {
      *v10 += v6;
      return x509_parse_time(&(*v10)[-v6], v8, v5);
    }

    else
    {
      return -9216;
    }
  }

  else
  {
    return mbedtls_error_add(-9216, -96);
  }
}

uint64_t x509_parse_time(unsigned __int8 *a1, unsigned int *a2, uint64_t a3)
{
  v8 = a1;
  *a2 = x509_parse2_int(a1);
  if ((*a2 & 0x80000000) == 0)
  {
    if (a3 == 4)
    {
      v5 = 100 * *a2;
      v8 += 2;
      *a2 = x509_parse2_int(v8);
      if ((*a2 & 0x80000000) != 0)
      {
        return -9216;
      }
    }

    else
    {
      if (*a2 >= 50)
      {
        v3 = 1900;
      }

      else
      {
        v3 = 2000;
      }

      v5 = v3;
    }

    *a2 += v5;
    a2[1] = x509_parse2_int(v8 + 2);
    a2[2] = x509_parse2_int(v8 + 4);
    a2[3] = x509_parse2_int(v8 + 6);
    a2[4] = x509_parse2_int(v8 + 8);
    a2[5] = x509_parse2_int(v8 + 10);
    return x509_date_is_valid(a2);
  }

  return -9216;
}

uint64_t mbedtls_x509_get_sig(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = -110;
  v6 = 0;
  if (a2 - *a1 < 1)
  {
    return mbedtls_error_add(-9344, -96);
  }

  else
  {
    v5 = **v10;
    bitstring_null = mbedtls_asn1_get_bitstring_null(v10, v9, &v6);
    v7 = bitstring_null;
    if (bitstring_null)
    {
      return mbedtls_error_add(-9344, v7);
    }

    else
    {
      *v8 = v5;
      *(v8 + 8) = v6;
      *(v8 + 16) = *v10;
      *v10 += v6;
      return 0;
    }
  }
}

uint64_t mbedtls_x509_get_sig_alg(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  if (*a5)
  {
    return -10240;
  }

  else
  {
    sig_alg = mbedtls_oid_get_sig_alg(a1, a3, a4);
    if (sig_alg)
    {
      return mbedtls_error_add(-9728, sig_alg);
    }

    else if (*a2 != 5 && *a2 || *(a2 + 8))
    {
      return -8960;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_x509_get_ext(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v5 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, (a3 + 8), a4 | 0xA0u);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else
  {
    *v8 = v7 | 0xA0;
    *(v8 + 16) = *v10;
    v9 = &(*v10)[*(v8 + 8)];
    tag = mbedtls_asn1_get_tag(v10, v9, &v5, 48);
    if (tag)
    {
      return mbedtls_error_add(-9472, tag);
    }

    else if (v9 == &(*v10)[v5])
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-9472, -102);
    }
  }
}

uint64_t mbedtls_x509_dn_gets(char *a1, size_t a2, uint64_t a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  attr_short_name = -110;
  i = 0;
  v35 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  __c_1 = 0;
  __c = 0;
  v27 = 0;
  v25 = 0;
  memset(__b, 0, sizeof(__b));
  v26 = v38;
  v20 = v40;
  v34 = v39;
  while (v26)
  {
    if (*(v26 + 16))
    {
      if (v26 != v38)
      {
        if (v27)
        {
          v3 = __snprintf_chk(v20, v34, 0, 0xFFFFFFFFFFFFFFFFLL, " + ");
        }

        else
        {
          v3 = __snprintf_chk(v20, v34, 0, 0xFFFFFFFFFFFFFFFFLL, ", ");
        }

        attr_short_name = v3;
        if (v3 < 0 || attr_short_name >= v34)
        {
          return -10624;
        }

        v34 -= attr_short_name;
        v20 += attr_short_name;
      }

      v18 = 0;
      if (*(v26 + 24) != 12)
      {
        v18 = 0;
        if (*(v26 + 24) != 19)
        {
          v18 = *(v26 + 24) != 22;
        }
      }

      v19 = v18;
      attr_short_name = mbedtls_oid_get_attr_short_name(v26, &v25);
      if (attr_short_name)
      {
        attr_short_name = mbedtls_oid_get_numeric_string(v20, v34, v26);
        if (attr_short_name <= 0)
        {
          if (attr_short_name == -11)
          {
            return -10624;
          }

          attr_short_name = __snprintf_chk(v20, v34, 0, 0xFFFFFFFFFFFFFFFFLL, "??=");
        }

        else
        {
          v34 -= attr_short_name;
          v20 += attr_short_name;
          attr_short_name = __snprintf_chk(v20, v34, 0, 0xFFFFFFFFFFFFFFFFLL, "=");
          v19 = 1;
        }
      }

      else
      {
        attr_short_name = __snprintf_chk(v20, v34, 0, 0xFFFFFFFFFFFFFFFFLL, "%s=", v25);
      }

      if (attr_short_name < 0 || attr_short_name >= v34)
      {
        return -10624;
      }

      v34 -= attr_short_name;
      v21 = &v20[attr_short_name];
      if (v19)
      {
        __b[0] = 35;
        __c_1 = &v31;
        attr_short_name = mbedtls_asn1_write_len(&__c_1, v30, *(v26 + 32));
        if (attr_short_name < 0)
        {
          return -110;
        }

        v33 = attr_short_name;
        v4 = *(v26 + 24);
        attr_short_name = mbedtls_asn1_write_tag(&__c_1, v30, *(v26 + 24));
        if (attr_short_name < 0)
        {
          return -110;
        }

        v32 = attr_short_name;
        v31 = 6 - v33 - attr_short_name;
        i = 0;
        v35 = 1;
        while (i < v33 + v32)
        {
          if (v35 + 1 >= 0xFF)
          {
            return -10624;
          }

          __c = v30[v31 + i];
          v22 = __c & 0xF;
          v5 = nibble_to_hex_digit(__c >> 4);
          v6 = v35++;
          __b[v6] = v5;
          v7 = nibble_to_hex_digit(v22);
          v8 = v35++;
          __b[v8] = v7;
          ++i;
        }

        for (i = 0; i < *(v26 + 32); ++i)
        {
          if (v35 + 1 >= 0xFF)
          {
            return -10624;
          }

          __c = *(*(v26 + 40) + i);
          v23 = __c & 0xF;
          v9 = nibble_to_hex_digit(__c >> 4);
          v10 = v35++;
          __b[v10] = v9;
          v11 = nibble_to_hex_digit(v23);
          v12 = v35++;
          __b[v12] = v11;
        }
      }

      else
      {
        i = 0;
        v35 = 0;
        while (i < *(v26 + 32))
        {
          if (v35 >= 0xFF)
          {
            return -10624;
          }

          __c = *(*(v26 + 40) + i);
          if (!__c)
          {
            return -9088;
          }

          if (strchr(",=+<>;\, __c) || !i && strchr("# "", __c) || i == *(v26 + 32) - 1 && __c == 32)
          {
            if (v35 + 1 >= 0xFF)
            {
              return -10624;
            }

            v13 = v35++;
            __b[v13] = 92;
          }

          if (__c >= 0x20u && __c < 0x7Fu)
          {
            __b[v35] = __c;
          }

          else
          {
            if (v35 + 3 >= 0xFF)
            {
              return -10624;
            }

            v14 = v35++;
            __b[v14] = 92;
            v24 = __c & 0xF;
            v15 = nibble_to_hex_digit(__c >> 4);
            v16 = v35++;
            __b[v16] = v15;
            __b[v35] = nibble_to_hex_digit(v24);
          }

          ++i;
          ++v35;
        }
      }

      __b[v35] = 0;
      attr_short_name = __snprintf_chk(v21, v34, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", __b);
      if (attr_short_name < 0 || attr_short_name >= v34)
      {
        return -10624;
      }

      v34 -= attr_short_name;
      v20 = &v21[attr_short_name];
      v27 = *(v26 + 56);
      v26 = *(v26 + 48);
    }

    else
    {
      v26 = *(v26 + 48);
    }
  }

  return (v39 - v34);
}

uint64_t nibble_to_hex_digit(int a1)
{
  if (a1 >= 10)
  {
    return (a1 + 55);
  }

  else
  {
    return (a1 + 48);
  }
}

uint64_t mbedtls_x509_serial_gets(char *a1, unint64_t a2, uint64_t a3)
{
  v12 = a2;
  v7 = a2;
  if (*(a3 + 8) > 0x20uLL)
  {
    v5 = 28;
  }

  else
  {
    v5 = *(a3 + 8);
  }

  for (i = 0; i < v5; ++i)
  {
    if (i || v5 <= 1 || **(a3 + 16))
    {
      v3 = ":";
      if (i >= v5 - 1)
      {
        v3 = "";
      }

      v9 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%02X%s", *(*(a3 + 16) + i), v3);
      if (v9 < 0 || v9 >= v7)
      {
        return -10624;
      }

      v7 -= v9;
      a1 += v9;
    }
  }

  if (v5 == *(a3 + 8))
  {
    return (v12 - v7);
  }

  v10 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "....");
  if ((v10 & 0x80000000) == 0 && v10 < v7)
  {
    LODWORD(v7) = v7 - v10;
    return (v12 - v7);
  }

  return -10624;
}

uint64_t mbedtls_x509_sig_alg_gets(char *a1, size_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  sig_alg_desc = -110;
  v9 = a1;
  v8 = a2;
  v7 = 0;
  sig_alg_desc = mbedtls_oid_get_sig_alg_desc(a3, &v7);
  if (sig_alg_desc)
  {
    sig_alg_desc = __snprintf_chk(v9, v8, 0, 0xFFFFFFFFFFFFFFFFLL, "???");
  }

  else
  {
    sig_alg_desc = __snprintf_chk(v9, v8, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", v7);
  }

  if (sig_alg_desc < 0 || sig_alg_desc >= v8)
  {
    return -10624;
  }

  else
  {
    v8 -= sig_alg_desc;
    v9 += sig_alg_desc;
    return (v15 - v8);
  }
}

uint64_t mbedtls_x509_key_size_helper(char *a1, size_t a2, const char *a3)
{
  v4 = __snprintf_chk(a1, a2, 0, 0xFFFFFFFFFFFFFFFFLL, "%s key size", a3);
  if (v4 < 0 || v4 >= a2)
  {
    return -10624;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_time_cmp(_DWORD *a1, _DWORD *a2)
{
  if (((32 * a1[1]) | (*a1 << 9) | a1[2]) == ((32 * a2[1]) | (*a2 << 9) | a2[2]))
  {
    return (((a1[4] << 6) | (a1[3] << 12) | a1[5]) - ((a2[4] << 6) | (a2[3] << 12) | a2[5]));
  }

  else
  {
    return (((32 * a1[1]) | (*a1 << 9) | a1[2]) - ((32 * a2[1]) | (*a2 << 9) | a2[2]));
  }
}

uint64_t mbedtls_x509_get_subject_alt_name_ext(unint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  len = -110;
  v9 = 0;
  v8 = a3;
  while (*v13 < v12)
  {
    v5 = 0uLL;
    v6 = 0;
    memset(__b, 0, sizeof(__b));
    LODWORD(v5) = *(*v13)++;
    len = mbedtls_asn1_get_len(v13, v12, &v9);
    if (len)
    {
      return mbedtls_error_add(-9472, len);
    }

    v6 = *v13;
    *(&v5 + 1) = v9;
    if ((v5 & 0xC0) != 0x80)
    {
      return mbedtls_error_add(-9472, -98);
    }

    len = mbedtls_x509_parse_subject_alt_name(&v5, __b);
    if (len && len != -8320)
    {
      mbedtls_asn1_sequence_free(*(v11 + 24));
      *(v11 + 24) = 0;
      return len;
    }

    mbedtls_x509_free_subject_alt_name(__b);
    if (*(v8 + 16))
    {
      if (*(v8 + 24))
      {
        return -9472;
      }

      *(v8 + 24) = mbedtls_calloc();
      if (!*(v8 + 24))
      {
        return mbedtls_error_add(-9472, -106);
      }

      v8 = *(v8 + 24);
    }

    v3 = v8;
    *v8 = v5;
    *(v3 + 16) = v6;
    *v13 += *(&v5 + 1);
  }

  *(v8 + 24) = 0;
  if (*v13 == v12)
  {
    return 0;
  }

  else
  {
    return mbedtls_error_add(-9472, -102);
  }
}

uint64_t mbedtls_x509_parse_subject_alt_name(_DWORD *a1, _DWORD *a2)
{
  v9 = a1;
  v8 = a2;
  other_name = -110;
  v3 = *a1 & 0xDF;
  switch(v3)
  {
    case 128:
      memset(__b, 0, 0x48uLL);
      other_name = x509_get_other_name(v9, __b);
      if (other_name)
      {
        return other_name;
      }

      __memset_chk();
      *v8 = 0;
      __memcpy_chk();
      return 0;
    case 129:
      __memset_chk();
      *v8 = 1;
      __memcpy_chk();
      return 0;
    case 130:
      __memset_chk();
      *v8 = 2;
      __memcpy_chk();
      return 0;
    case 132:
      v5 = 0;
      v4 = *(v9 + 2);
      __memset_chk();
      *v8 = 4;
      other_name = mbedtls_asn1_get_tag(&v4, &v4[*(v9 + 1)], &v5, 48);
      if (other_name)
      {
        return other_name;
      }

      other_name = mbedtls_x509_get_name(&v4, &v4[v5], (v8 + 2));
      if (other_name)
      {
        return other_name;
      }

      return 0;
    case 134:
      __memset_chk();
      *v8 = 6;
      __memcpy_chk();
      return 0;
    case 135:
      __memset_chk();
      *v8 = 7;
      if (*(v9 + 1) != 4 && *(v9 + 1) != 16)
      {
        return -10240;
      }

      __memcpy_chk();
      return 0;
  }

  return -8320;
}

void mbedtls_x509_free_subject_alt_name(uint64_t a1)
{
  if (*a1 == 4)
  {
    mbedtls_asn1_free_named_data_list_shallow(*(a1 + 56));
  }
}

uint64_t mbedtls_x509_get_subject_alt_name(unint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else if (*v8 + v4 == v7)
  {
    return mbedtls_x509_get_subject_alt_name_ext(v8, v7, v6);
  }

  else
  {
    return mbedtls_error_add(-9472, -102);
  }
}

uint64_t mbedtls_x509_get_ns_cert_type(unsigned __int8 **a1, uint64_t a2, _BYTE *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  bitstring = -110;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  bitstring = mbedtls_asn1_get_bitstring(a1, a2, v4);
  if (bitstring)
  {
    return mbedtls_error_add(-9472, bitstring);
  }

  else if (v4[0])
  {
    if (v4[0] == 1)
    {
      *v7 = *v5;
      return 0;
    }

    else
    {
      return mbedtls_error_add(-9472, -100);
    }
  }

  else
  {
    *v7 = 0;
    return 0;
  }
}

uint64_t mbedtls_x509_get_key_usage(unsigned __int8 **a1, uint64_t a2, _DWORD *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  bitstring = -110;
  i = 0;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  bitstring = mbedtls_asn1_get_bitstring(a1, a2, v5);
  if (bitstring)
  {
    return mbedtls_error_add(-9472, bitstring);
  }

  else if (v5[0])
  {
    *v9 = 0;
    for (i = 0; ; ++i)
    {
      v4 = 0;
      if (i < v5[0])
      {
        v4 = i < 4;
      }

      if (!v4)
      {
        break;
      }

      *v9 |= *(v6 + i) << (8 * i);
    }

    return 0;
  }

  else
  {
    *v9 = 0;
    return 0;
  }
}

uint64_t x509_get_other_name(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  tag = 0;
  v9 = 0;
  v8 = *(a1 + 16);
  v7 = &v8[*(a1 + 8)];
  HIDWORD(__n[0]) = 0;
  if ((*a1 & 0xDF) == 0x80)
  {
    tag = mbedtls_asn1_get_tag(&v8, v7, &v9, 6);
    if (!tag)
    {
      LODWORD(__n[0]) = 6;
      __s2 = v8;
      __n[1] = v9;
      v4 = 1;
      if (v9 == 8)
      {
        v4 = memcmp("+\x06\x01\x05\x05\a\b\x04", v8, 8uLL) != 0;
      }

      if (v4)
      {
        return -8320;
      }

      v2 = v11;
      *v11 = *__n;
      *(v2 + 16) = __s2;
      v8 += v9;
      tag = mbedtls_asn1_get_tag(&v8, v7, &v9, 160);
      if (!tag)
      {
        if (v7 != &v8[v9])
        {
          return mbedtls_error_add(-9472, -102);
        }

        tag = mbedtls_asn1_get_tag(&v8, v7, &v9, 48);
        if (!tag)
        {
          if (v7 != &v8[v9])
          {
            return mbedtls_error_add(-9472, -102);
          }

          tag = mbedtls_asn1_get_tag(&v8, v7, &v9, 6);
          if (!tag)
          {
            *(v11 + 24) = 6;
            *(v11 + 40) = v8;
            *(v11 + 32) = v9;
            v8 += v9;
            tag = mbedtls_asn1_get_tag(&v8, v7, &v9, 4);
            if (!tag)
            {
              *(v11 + 48) = 4;
              *(v11 + 64) = v8;
              *(v11 + 56) = v9;
              v8 += v9;
              if (v8 == v7)
              {
                return 0;
              }

              return mbedtls_error_add(-9472, -102);
            }
          }
        }
      }
    }

    return mbedtls_error_add(-9472, tag);
  }

  return -10240;
}

uint64_t mbedtls_x509_info_subject_alt_name(char **a1, size_t *a2, _DWORD *a3, const char *a4)
{
  v45 = a1;
  v44 = a2;
  v43 = a3;
  v42 = a4;
  numeric_string = -110;
  i = 0;
  v39 = *a2;
  v38 = *a1;
  v37 = a3;
  memset(__b, 0, sizeof(__b));
  v35 = 0;
  while (1)
  {
    while (1)
    {
      if (!v37)
      {
        *v38 = 0;
        *v44 = v39;
        *v45 = v38;
        return 0;
      }

      v30 = __b;
      memset(__b, 0, sizeof(__b));
      v35 = mbedtls_x509_parse_subject_alt_name(v37, __b);
      if (!v35)
      {
        break;
      }

      if (v35 == -8320)
      {
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    <unsupported>", v42);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
      }

      else
      {
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    <malformed>", v42);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
      }

      v37 = *(v37 + 3);
    }

    v29 = __b[0];
    if (!LODWORD(__b[0]))
    {
      v34 = &__b[1];
      numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    otherName :", v42);
      if (numeric_string < 0 || numeric_string >= v39)
      {
        return -10624;
      }

      v39 -= numeric_string;
      v38 += numeric_string;
      v4 = v34[1];
      v28 = 1;
      if (v4 == 8)
      {
        v28 = memcmp("+\x06\x01\x05\x05\a\b\x04", v34[2], v34[1]) != 0;
      }

      if (!v28)
      {
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s        hardware module name :", v42);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s            hardware type          : ", v42);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
        numeric_string = mbedtls_oid_get_numeric_string(v38, v39, (v34 + 3));
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s            hardware serial number : ", v42);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
        for (i = 0; i < v34[7]; ++i)
        {
          numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "%02X", *(v34[8] + i));
          if (numeric_string < 0 || numeric_string >= v39)
          {
            return -10624;
          }

          v39 -= numeric_string;
          v38 += numeric_string;
        }
      }

      goto LABEL_107;
    }

    if (v29 == 2 || v29 == 1)
    {
      v33 = "dNSName";
      v32 = "rfc822Name";
      v25 = v38;
      v26 = v39;
      v27 = v42;
      if (LODWORD(__b[0]) == 2)
      {
        v24 = v33;
      }

      else
      {
        v24 = v32;
      }

      numeric_string = __snprintf_chk(v25, v26, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    %s : ", v27, v24);
      if (numeric_string < 0 || numeric_string >= v39)
      {
        return -10624;
      }

      v39 -= numeric_string;
      v38 += numeric_string;
      if (__b[2] >= v39)
      {
        if (v39)
        {
          *v38 = 0;
        }

        return -10624;
      }

LABEL_55:
      __memcpy_chk();
      v38 += __b[2];
      v39 -= __b[2];
      goto LABEL_107;
    }

    if (v29 == 4)
    {
      break;
    }

    if (v29 == 6)
    {
      numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    uniformResourceIdentifier : ", v42);
      if (numeric_string < 0 || numeric_string >= v39)
      {
        return -10624;
      }

      v39 -= numeric_string;
      v38 += numeric_string;
      if (__b[2] >= v39)
      {
        if (v39)
        {
          *v38 = 0;
        }

        return -10624;
      }

      goto LABEL_55;
    }

    if (v29 == 7)
    {
      numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    %s : ", v42, "iPAddress");
      if (numeric_string < 0 || numeric_string >= v39)
      {
        return -10624;
      }

      v39 -= numeric_string;
      v38 += numeric_string;
      if (__b[2] >= v39)
      {
        if (v39)
        {
          *v38 = 0;
        }

        return -10624;
      }

      v31 = __b[3];
      if (__b[2] == 4)
      {
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "%u.%u.%u.%u", *v31, v31[1], v31[2], v31[3]);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
      }

      else
      {
        if (__b[2] != 16)
        {
          if (v39)
          {
            *v38 = 0;
          }

          return -10240;
        }

        v5 = *v31;
        v6 = v31[1];
        v7 = v31[2];
        v8 = v31[3];
        v9 = v31[4];
        v10 = v31[5];
        v11 = v31[6];
        v12 = v31[7];
        v13 = v31[8];
        v14 = v31[9];
        v15 = v31[10];
        v16 = v31[11];
        v17 = v31[12];
        v18 = v31[13];
        v19 = v31[14];
        v20 = v31[15];
        v23[16] = v23;
        numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "%X%X:%X%X:%X%X:%X%X:%X%X:%X%X:%X%X:%X%X", v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
        if (numeric_string < 0 || numeric_string >= v39)
        {
          return -10624;
        }

        v39 -= numeric_string;
        v38 += numeric_string;
      }
    }

    else
    {
      numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    <unsupported>", v42);
      if (numeric_string < 0 || numeric_string >= v39)
      {
        return -10624;
      }

      v39 -= numeric_string;
      v38 += numeric_string;
    }

LABEL_107:
    mbedtls_x509_free_subject_alt_name(__b);
    v37 = *(v37 + 3);
  }

  numeric_string = __snprintf_chk(v38, v39, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s    directoryName : ", v42);
  if (numeric_string < 0 || numeric_string >= v39)
  {
    mbedtls_x509_free_subject_alt_name(__b);
  }

  if (numeric_string < 0 || numeric_string >= v39)
  {
    return -10624;
  }

  v39 -= numeric_string;
  v38 += numeric_string;
  v21 = mbedtls_x509_dn_gets(v38, v39, &__b[1]);
  numeric_string = v21;
  if ((v21 & 0x80000000) == 0)
  {
    v38 += numeric_string;
    v39 -= numeric_string;
    goto LABEL_107;
  }

  mbedtls_x509_free_subject_alt_name(__b);
  if (v39)
  {
    *v38 = 0;
  }

  return numeric_string;
}

uint64_t mbedtls_x509_info_cert_type(char **a1, unint64_t *a2, char a3)
{
  v6 = *a2;
  v5 = *a1;
  v4 = "";
  if ((a3 & 0x80) == 0)
  {
LABEL_6:
    if ((a3 & 0x40) != 0)
    {
      v8 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sSSL Server", v4);
      if (v8 < 0 || v8 >= v6)
      {
        return -10624;
      }

      v6 -= v8;
      v5 += v8;
      v4 = ", ";
    }

    if ((a3 & 0x20) != 0)
    {
      v9 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sEmail", v4);
      if (v9 < 0 || v9 >= v6)
      {
        return -10624;
      }

      v6 -= v9;
      v5 += v9;
      v4 = ", ";
    }

    if ((a3 & 0x10) != 0)
    {
      v10 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sObject Signing", v4);
      if (v10 < 0 || v10 >= v6)
      {
        return -10624;
      }

      v6 -= v10;
      v5 += v10;
      v4 = ", ";
    }

    if ((a3 & 8) != 0)
    {
      v11 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sReserved", v4);
      if (v11 < 0 || v11 >= v6)
      {
        return -10624;
      }

      v6 -= v11;
      v5 += v11;
      v4 = ", ";
    }

    if ((a3 & 4) != 0)
    {
      v12 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sSSL CA", v4);
      if (v12 < 0 || v12 >= v6)
      {
        return -10624;
      }

      v6 -= v12;
      v5 += v12;
      v4 = ", ";
    }

    if ((a3 & 2) != 0)
    {
      v13 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sEmail CA", v4);
      if (v13 < 0 || v13 >= v6)
      {
        return -10624;
      }

      v6 -= v13;
      v5 += v13;
      v4 = ", ";
    }

    if (a3)
    {
      v14 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sObject Signing CA", v4);
      if (v14 < 0 || v14 >= v6)
      {
        return -10624;
      }

      v6 -= v14;
      v5 += v14;
    }

    *a2 = v6;
    *a1 = v5;
    return 0;
  }

  v7 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sSSL Client", "");
  if ((v7 & 0x80000000) == 0 && v7 < v6)
  {
    v6 -= v7;
    v5 += v7;
    v4 = ", ";
    goto LABEL_6;
  }

  return -10624;
}

uint64_t mbedtls_x509_info_key_usage(char **a1, unint64_t *a2, __int16 a3)
{
  v6 = *a2;
  v5 = *a1;
  v4 = "";
  if ((a3 & 0x80) == 0)
  {
LABEL_6:
    if ((a3 & 0x40) != 0)
    {
      v8 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sNon Repudiation", v4);
      if (v8 < 0 || v8 >= v6)
      {
        return -10624;
      }

      v6 -= v8;
      v5 += v8;
      v4 = ", ";
    }

    if ((a3 & 0x20) != 0)
    {
      v9 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sKey Encipherment", v4);
      if (v9 < 0 || v9 >= v6)
      {
        return -10624;
      }

      v6 -= v9;
      v5 += v9;
      v4 = ", ";
    }

    if ((a3 & 0x10) != 0)
    {
      v10 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sData Encipherment", v4);
      if (v10 < 0 || v10 >= v6)
      {
        return -10624;
      }

      v6 -= v10;
      v5 += v10;
      v4 = ", ";
    }

    if ((a3 & 8) != 0)
    {
      v11 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sKey Agreement", v4);
      if (v11 < 0 || v11 >= v6)
      {
        return -10624;
      }

      v6 -= v11;
      v5 += v11;
      v4 = ", ";
    }

    if ((a3 & 4) != 0)
    {
      v12 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sKey Cert Sign", v4);
      if (v12 < 0 || v12 >= v6)
      {
        return -10624;
      }

      v6 -= v12;
      v5 += v12;
      v4 = ", ";
    }

    if ((a3 & 2) != 0)
    {
      v13 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sCRL Sign", v4);
      if (v13 < 0 || v13 >= v6)
      {
        return -10624;
      }

      v6 -= v13;
      v5 += v13;
      v4 = ", ";
    }

    if (a3)
    {
      v14 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sEncipher Only", v4);
      if (v14 < 0 || v14 >= v6)
      {
        return -10624;
      }

      v6 -= v14;
      v5 += v14;
      v4 = ", ";
    }

    if (a3 < 0)
    {
      v15 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sDecipher Only", v4);
      if (v15 < 0 || v15 >= v6)
      {
        return -10624;
      }

      v6 -= v15;
      v5 += v15;
    }

    *a2 = v6;
    *a1 = v5;
    return 0;
  }

  v7 = __snprintf_chk(v5, v6, 0, 0xFFFFFFFFFFFFFFFFLL, "%sDigital Signature", "");
  if ((v7 & 0x80000000) == 0 && v7 < v6)
  {
    v6 -= v7;
    v5 += v7;
    v4 = ", ";
    goto LABEL_6;
  }

  return -10624;
}

uint64_t x509_parse2_int(unsigned __int8 *a1)
{
  v4 = *a1 - 48;
  v3 = a1[1] - 48;
  if (v4 >= 0xA || v3 >= 0xA)
  {
    return -1;
  }

  else
  {
    return 10 * v4 + v3;
  }
}

uint64_t x509_date_is_valid(unsigned int *a1)
{
  v5 = a1[1];
  switch(v5)
  {
    case 1u:
      goto LABEL_13;
    case 2u:
      v6 = *a1;
      v4 = 1;
      if ((*a1 & 3) == 0)
      {
        v3 = 0;
        if (!(v6 % 0x64))
        {
          v3 = v6 % 0x190 != 0;
        }

        v4 = v3;
      }

      if (v4)
      {
        v1 = 28;
      }

      else
      {
        v1 = 29;
      }

      v7 = v1;
      goto LABEL_24;
    case 3u:
      goto LABEL_13;
    case 4u:
      goto LABEL_14;
  }

  if (v5 != 5)
  {
    switch(v5)
    {
      case 6u:
        goto LABEL_14;
      case 8u:
      case 7u:
        goto LABEL_13;
      case 9u:
LABEL_14:
        v7 = 30;
        goto LABEL_24;
    }

    if (v5 != 10)
    {
      if (v5 != 11)
      {
        if (v5 != 12)
        {
          return -9216;
        }

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

LABEL_13:
  v7 = 31;
LABEL_24:
  if (a1[2] - 1 >= v7 || *a1 > 0x270F || a1[3] > 0x17 || a1[4] > 0x3B || a1[5] > 0x3B)
  {
    return -9216;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_crt_parse_der_internal(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *, void, unsigned __int8 *, unsigned __int8 *), uint64_t a6)
{
  v10 = a1;
  v9 = 0;
  if (a1 && a2)
  {
    while (1)
    {
      v8 = 0;
      if (*(v10 + 56))
      {
        v8 = *(v10 + 736) != 0;
      }

      if (!v8)
      {
        break;
      }

      v9 = v10;
      v10 = *(v10 + 736);
    }

    if (*(v10 + 56) && !*(v10 + 736))
    {
      *(v10 + 736) = mbedtls_calloc();
      if (!*(v10 + 736))
      {
        return -10368;
      }

      v9 = v10;
      v6 = *(v10 + 736);
      mbedtls_x509_crt_init();
      v10 = *(v10 + 736);
    }

    v11 = x509_crt_parse_der_core(v10, a2, a3, a4, a5, a6);
    if (v11)
    {
      if (v9)
      {
        *(v9 + 736) = 0;
      }

      if (v10 != a1)
      {
        mbedtls_free();
      }

      return v11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -10240;
  }
}

uint64_t mbedtls_x509_crt_parse(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    return mbedtls_x509_crt_parse_der(a1, a2, a3);
  }

  else
  {
    return -10240;
  }
}

uint64_t mbedtls_x509_crt_info(char *a1, size_t a2, const char *a3, uint64_t a4)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = -110;
  v14 = a1;
  v15 = a2;
  if (a4)
  {
    v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "%scert. version     : %d\n", v18, *(v17 + 56));
    if (v16 < 0 || v16 >= v15)
    {
      return -10624;
    }

    else
    {
      v15 -= v16;
      v14 += v16;
      v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "%sserial number     : ", v18);
      if (v16 < 0 || v16 >= v15)
      {
        return -10624;
      }

      else
      {
        v15 -= v16;
        v14 += v16;
        v16 = mbedtls_x509_serial_gets(v14, v15, v17 + 64);
        if (v16 < 0 || v16 >= v15)
        {
          return -10624;
        }

        else
        {
          v15 -= v16;
          v14 += v16;
          v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%sissuer name       : ", v18);
          if (v16 < 0 || v16 >= v15)
          {
            return -10624;
          }

          else
          {
            v15 -= v16;
            v14 += v16;
            v16 = mbedtls_x509_dn_gets(v14, v15, v17 + 160);
            if (v16 < 0 || v16 >= v15)
            {
              return -10624;
            }

            else
            {
              v15 -= v16;
              v14 += v16;
              v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%ssubject name      : ", v18);
              if (v16 < 0 || v16 >= v15)
              {
                return -10624;
              }

              else
              {
                v15 -= v16;
                v14 += v16;
                v16 = mbedtls_x509_dn_gets(v14, v15, v17 + 224);
                if (v16 < 0 || v16 >= v15)
                {
                  return -10624;
                }

                else
                {
                  v15 -= v16;
                  v14 += v16;
                  v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%sissued  on        : %04d-%02d-%02d %02d:%02d:%02d", v18, *(v17 + 288), *(v17 + 292), *(v17 + 296), *(v17 + 300), *(v17 + 304), *(v17 + 308));
                  if (v16 < 0 || v16 >= v15)
                  {
                    return -10624;
                  }

                  else
                  {
                    v15 -= v16;
                    v14 += v16;
                    v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%sexpires on        : %04d-%02d-%02d %02d:%02d:%02d", v18, *(v17 + 312), *(v17 + 316), *(v17 + 320), *(v17 + 324), *(v17 + 328), *(v17 + 332));
                    if (v16 < 0 || v16 >= v15)
                    {
                      return -10624;
                    }

                    else
                    {
                      v15 -= v16;
                      v14 += v16;
                      v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%ssigned using      : ", v18);
                      if (v16 < 0 || v16 >= v15)
                      {
                        return -10624;
                      }

                      else
                      {
                        v15 -= v16;
                        v14 += v16;
                        v16 = mbedtls_x509_sig_alg_gets(v14, v15, v17 + 88, *(v17 + 724), *(v17 + 720), *(v17 + 728));
                        if (v16 < 0 || v16 >= v15)
                        {
                          return -10624;
                        }

                        else
                        {
                          v15 -= v16;
                          v14 += v16;
                          name = mbedtls_pk_get_name(v17 + 360);
                          v5 = mbedtls_x509_key_size_helper(v22, 0x12uLL, name);
                          v16 = v5;
                          if (v5)
                          {
                            return v16;
                          }

                          else
                          {
                            bitlen = mbedtls_pk_get_bitlen(v17 + 360);
                            v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%s%-18s: %d bits", v18, v22, bitlen);
                            if (v16 < 0 || v16 >= v15)
                            {
                              return -10624;
                            }

                            else
                            {
                              v15 -= v16;
                              v14 += v16;
                              if ((*(v17 + 640) & 0x100) != 0)
                              {
                                v7 = "true";
                                if (!*(v17 + 644))
                                {
                                  v7 = "false";
                                }

                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%sbasic constraints : CA=%s", v18, v7);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                if (*(v17 + 648) > 0)
                                {
                                  v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, ", max_pathlen=%d", *(v17 + 648) - 1);
                                  if (v16 < 0 || v16 >= v15)
                                  {
                                    return -10624;
                                  }

                                  v15 -= v16;
                                  v14 += v16;
                                }
                              }

                              if ((*(v17 + 640) & 0x20) != 0)
                              {
                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%ssubject alt name  :", v18);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                v8 = mbedtls_x509_info_subject_alt_name(&v14, &v15, (v17 + 448), v18);
                                v16 = v8;
                                if (v8)
                                {
                                  return v16;
                                }
                              }

                              if ((*(v17 + 640) & 0x10000) != 0)
                              {
                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%scert. type        : ", v18);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                v9 = mbedtls_x509_info_cert_type(&v14, &v15, *(v17 + 688));
                                v16 = v9;
                                if (v9)
                                {
                                  return v16;
                                }
                              }

                              if ((*(v17 + 640) & 4) != 0)
                              {
                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%skey usage         : ", v18);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                v10 = mbedtls_x509_info_key_usage(&v14, &v15, *(v17 + 652));
                                v16 = v10;
                                if (v10)
                                {
                                  return v16;
                                }
                              }

                              if ((*(v17 + 640) & 0x800) != 0)
                              {
                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%sext key usage     : ", v18);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                v11 = x509_info_ext_key_usage(&v14, &v15, v17 + 656);
                                v16 = v11;
                                if (v11)
                                {
                                  return v16;
                                }
                              }

                              if ((*(v17 + 640) & 8) != 0)
                              {
                                v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n%scertificate policies : ", v18);
                                if (v16 < 0 || v16 >= v15)
                                {
                                  return -10624;
                                }

                                v15 -= v16;
                                v14 += v16;
                                v12 = x509_info_cert_policies(&v14, &v15, v17 + 608);
                                v16 = v12;
                                if (v12)
                                {
                                  return v16;
                                }
                              }

                              v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\n");
                              if (v16 < 0 || v16 >= v15)
                              {
                                return -10624;
                              }

                              else
                              {
                                v15 -= v16;
                                v14 += v16;
                                return (v19 - v15);
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
    v16 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "\nCertificate is uninitialised!\n");
    if (v16 < 0 || v16 >= v15)
    {
      return -10624;
    }

    else
    {
      v14 += v16;
      return (v19 - (v15 - v16));
    }
  }
}

uint64_t x509_info_ext_key_usage(char **a1, unint64_t *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -110;
  v8 = 0;
  v7 = *a2;
  v6 = *a1;
  v5 = a3;
  v4 = "";
  while (v5)
  {
    if (mbedtls_oid_get_extended_key_usage(v5, &v8))
    {
      v8 = "???";
    }

    v9 = __snprintf_chk(v6, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", v4, v8);
    if (v9 < 0 || v9 >= v7)
    {
      return -10624;
    }

    v7 -= v9;
    v6 += v9;
    v4 = ", ";
    v5 = *(v5 + 24);
  }

  *v11 = v7;
  *v12 = v6;
  return 0;
}

uint64_t x509_info_cert_policies(char **a1, unint64_t *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = -110;
  v8 = 0;
  v7 = *a2;
  v6 = *a1;
  v5 = a3;
  v4 = "";
  while (v5)
  {
    if (mbedtls_oid_get_certificate_policies(v5, &v8))
    {
      v8 = "???";
    }

    v9 = __snprintf_chk(v6, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s", v4, v8);
    if (v9 < 0 || v9 >= v7)
    {
      return -10624;
    }

    v7 -= v9;
    v6 += v9;
    v4 = ", ";
    v5 = *(v5 + 24);
  }

  *v11 = v7;
  *v12 = v6;
  return 0;
}

uint64_t mbedtls_x509_crt_verify_info(char *a1, unint64_t a2, const char *a3, int a4)
{
  v12 = a2;
  v5 = a2;
  for (i = &x509_crt_verify_strings; i[1]; i += 2)
  {
    if ((a4 & *i) != 0)
    {
      v8 = __snprintf_chk(a1, v5, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s\n", a3, i[1]);
      if (v8 < 0 || v8 >= v5)
      {
        return -10624;
      }

      v5 -= v8;
      a1 += v8;
      a4 ^= *i;
    }
  }

  if (!a4)
  {
    return (v12 - v5);
  }

  v9 = __snprintf_chk(a1, v5, 0, 0xFFFFFFFFFFFFFFFFLL, "%sUnknown reason (this should not happen)\n", a3);
  if ((v9 & 0x80000000) == 0 && v9 < v5)
  {
    LODWORD(v5) = v5 - v9;
    return (v12 - v5);
  }

  return -10624;
}

uint64_t mbedtls_x509_crt_check_key_usage(uint64_t a1, int a2)
{
  if ((*(a1 + 640) & 4) != 0)
  {
    if ((*(a1 + 652) & 0xFFFF7FFE & a2 & 0xFFFF7FFE) == (a2 & 0xFFFF7FFE))
    {
      if ((*(a1 + 652) & 0x8001 | a2 & 0x8001) == (a2 & 0x8001))
      {
        return 0;
      }

      else
      {
        return -10240;
      }
    }

    else
    {
      return -10240;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_crt_check_extended_key_usage(uint64_t a1, const void *a2, size_t a3)
{
  if ((*(a1 + 640) & 0x800) != 0)
  {
    for (i = a1 + 656; i; i = *(i + 24))
    {
      if (*(i + 8) == a3 && !memcmp(*(i + 16), a2, a3))
      {
        return 0;
      }

      v4 = 1;
      if (*(i + 8) == 4)
      {
        v4 = memcmp(&unk_10044AF60, *(i + 16), *(i + 8)) != 0;
      }

      if (!v4)
      {
        return 0;
      }
    }

    return -10240;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_x509_crt_parse_cn_inet_pton(char *a1, void *a2)
{
  if (strchr(a1, 58))
  {
    if (x509_inet_pton_ipv6(a1, a2))
    {
      return 0;
    }

    else
    {
      return 16;
    }
  }

  else if (x509_inet_pton_ipv4(a1, a2))
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

uint64_t x509_inet_pton_ipv4(const char *a1, void *a2)
{
  if (inet_pton(2, a1, a2) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t x509_inet_pton_ipv6(const char *a1, void *a2)
{
  if (inet_pton(30, a1, a2) == 1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t x509_crt_verify_restartable_ca_cb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, char *a7, _DWORD *a8, uint64_t (*a9)(uint64_t, void, void, int *), uint64_t a10, uint64_t a11)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = a5;
  v21 = a6;
  v20 = a7;
  v19 = a8;
  v18 = a9;
  v17 = a10;
  v16 = a11;
  v15 = -110;
  type = 0;
  memset(__b, 0, sizeof(__b));
  *v19 = 0;
  v12 = 0;
  x509_crt_verify_chain_reset(__b);
  if (v21)
  {
    if (v20)
    {
      x509_crt_verify_name(v26, v20, &v12);
    }

    type = mbedtls_pk_get_type((v26 + 360));
    if (x509_profile_check_pk_alg(v21, type))
    {
      v12 |= 0x8000u;
    }

    if (x509_profile_check_key(v21, (v26 + 360)))
    {
      v12 |= 0x10000u;
    }

    v15 = x509_crt_verify_chain(v26, v25, v24, v23, v22, v21, __b, v16);
    if (!v15)
    {
      __b[2] |= v12;
      v15 = x509_crt_merge_flags_with_cb(v19, __b, v18, v17);
    }
  }

  else
  {
    v15 = -10240;
  }

  if (v15 == -9984)
  {
    v15 = -12288;
  }

  if (v15)
  {
    *v19 = -1;
    return v15;
  }

  else if (*v19)
  {
    return -9984;
  }

  else
  {
    return 0;
  }
}

void mbedtls_x509_crt_free(void *a1)
{
  v2 = a1;
  while (v2)
  {
    mbedtls_pk_free(v2 + 45);
    mbedtls_asn1_free_named_data_list_shallow(v2[26]);
    mbedtls_asn1_free_named_data_list_shallow(v2[34]);
    mbedtls_asn1_sequence_free(v2[85]);
    mbedtls_asn1_sequence_free(v2[59]);
    mbedtls_asn1_sequence_free(v2[79]);
    mbedtls_asn1_sequence_free(v2[69]);
    if (v2[3] && *v2)
    {
      mbedtls_zeroize_and_free(v2[3], v2[2]);
    }

    v1 = v2;
    v2 = v2[92];
    mbedtls_platform_zeroize(v1, 0x2E8uLL);
    if (v1 != a1)
    {
      mbedtls_free();
    }
  }
}

uint64_t mbedtls_x509_crt_get_ca_istrue(uint64_t a1)
{
  if ((*(a1 + 640) & 0x100) != 0)
  {
    return *(a1 + 644);
  }

  else
  {
    return -9472;
  }
}

uint64_t x509_crt_parse_der_core(void *a1, unsigned __int8 *a2, uint64_t a3, int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *, void, unsigned __int8 *, unsigned __int8 *), uint64_t a6)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  tag = -110;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v16 = 0;
  __n = 0;
  __s1 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v10 = 0;
  v11 = 0;
  __s2 = 0;
  if (!a1 || !v28)
  {
    return -10240;
  }

  v21 = v28;
  v22 = v27;
  v20 = &v28[v27];
  tag = mbedtls_asn1_get_tag(&v21, &v28[v27], &v22, 48);
  if (tag)
  {
    mbedtls_x509_crt_free(v29);
    return -8576;
  }

  v19 = &v21[v22];
  v20 = &v21[v22];
  v29[2] = &v21[v22] - v28;
  if (v26)
  {
    v6 = v29[2];
    v21 = mbedtls_calloc();
    v29[3] = v21;
    if (!v29[3])
    {
      return -10368;
    }

    v7 = v29[3];
    v8 = v29[2];
    __memcpy_chk();
    *v29 = 1;
    v21 += v29[2] - v22;
    v19 = &v21[v22];
    v20 = &v21[v22];
  }

  else
  {
    v29[3] = v28;
    *v29 = 0;
  }

  v29[6] = v21;
  tag = mbedtls_asn1_get_tag(&v21, v20, &v22, 48);
  if (tag)
  {
    mbedtls_x509_crt_free(v29);
    return mbedtls_error_add(-8576, tag);
  }

  v20 = &v21[v22];
  v29[5] = &v21[v22 - v29[6]];
  tag = x509_get_version(&v21, v20, v29 + 14);
  if (tag)
  {
    goto LABEL_40;
  }

  tag = mbedtls_x509_get_serial(&v21, v20, (v29 + 8));
  if (tag)
  {
    goto LABEL_40;
  }

  tag = mbedtls_x509_get_alg(&v21, v20, (v29 + 11), &v16);
  if (tag)
  {
    goto LABEL_40;
  }

  if ((v29[7] & 0x80000000) != 0 || *(v29 + 14) > 2)
  {
    mbedtls_x509_crt_free(v29);
    return -9600;
  }

  ++*(v29 + 14);
  tag = mbedtls_x509_get_sig_alg((v29 + 11), &v16, v29 + 180, v29 + 181, v29 + 91);
  if (tag)
  {
    goto LABEL_40;
  }

  v29[16] = v21;
  tag = mbedtls_asn1_get_tag(&v21, v20, &v22, 48);
  if (tag)
  {
LABEL_22:
    mbedtls_x509_crt_free(v29);
    return mbedtls_error_add(-8576, tag);
  }

  tag = mbedtls_x509_get_name(&v21, &v21[v22], (v29 + 20));
  if (tag)
  {
    goto LABEL_40;
  }

  v29[15] = &v21[-v29[16]];
  tag = x509_get_dates(&v21, v20, v29 + 72, v29 + 78);
  if (tag)
  {
    goto LABEL_40;
  }

  v29[19] = v21;
  tag = mbedtls_asn1_get_tag(&v21, v20, &v22, 48);
  if (tag)
  {
    goto LABEL_22;
  }

  if (v22)
  {
    tag = mbedtls_x509_get_name(&v21, &v21[v22], (v29 + 28));
    if (tag)
    {
      goto LABEL_40;
    }
  }

  v29[18] = &v21[-v29[19]];
  v29[44] = v21;
  tag = mbedtls_pk_parse_subpubkey(&v21, v20, v29 + 45);
  if (tag)
  {
    goto LABEL_40;
  }

  v29[43] = &v21[-v29[44]];
  if (*(v29 + 14) == 2 || *(v29 + 14) == 3)
  {
    tag = x509_get_uid(&v21, v20, (v29 + 47), 1);
    if (tag)
    {
      goto LABEL_40;
    }
  }

  if ((*(v29 + 14) == 2 || *(v29 + 14) == 3) && (tag = x509_get_uid(&v21, v20, (v29 + 50), 2)) != 0 || *(v29 + 14) == 3 && (tag = x509_get_crt_ext(&v21, v20, v29, v25, v24)) != 0)
  {
LABEL_40:
    mbedtls_x509_crt_free(v29);
    return tag;
  }

  if (v21 == v20)
  {
    v20 = v19;
    tag = mbedtls_x509_get_alg(&v21, v19, &v10, &v13);
    if (tag)
    {
      goto LABEL_44;
    }

    if (v29[12] != v11 || memcmp(v29[13], __s2, v29[12]) || v16 != v13 || __n != v14 || __n && memcmp(__s1, v15, __n))
    {
      mbedtls_x509_crt_free(v29);
      return -9856;
    }

    tag = mbedtls_x509_get_sig(&v21, v20, (v29 + 87));
    if (tag)
    {
LABEL_44:
      mbedtls_x509_crt_free(v29);
      return tag;
    }

    else if (v21 == v20)
    {
      return 0;
    }

    else
    {
      mbedtls_x509_crt_free(v29);
      return mbedtls_error_add(-8576, -102);
    }
  }

  else
  {
    mbedtls_x509_crt_free(v29);
    return mbedtls_error_add(-8576, -102);
  }
}

uint64_t x509_get_version(unsigned __int8 **a1, unsigned __int8 *a2, int *a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 160);
  if (tag)
  {
    if (tag == -98)
    {
      *v6 = 0;
      return 0;
    }

    else
    {
      return mbedtls_error_add(-8576, tag);
    }
  }

  else
  {
    v7 = &(*v8)[v4];
    tag = mbedtls_asn1_get_int(v8, v7, v6);
    if (tag)
    {
      return mbedtls_error_add(-8704, tag);
    }

    else if (*v8 == v7)
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-8704, -102);
    }
  }
}

uint64_t x509_get_dates(char **a1, char *a2, unsigned int *a3, unsigned int *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  tag = -110;
  v5 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v5, 48);
  if (tag)
  {
    return mbedtls_error_add(-9216, tag);
  }

  else
  {
    v9 = &(*v10)[v5];
    tag = mbedtls_x509_get_time(v10, v9, v8);
    if (tag)
    {
      return tag;
    }

    else
    {
      tag = mbedtls_x509_get_time(v10, v9, v7);
      if (tag)
      {
        return tag;
      }

      else if (*v10 == v9)
      {
        return 0;
      }

      else
      {
        return mbedtls_error_add(-9216, -102);
      }
    }
  }
}

uint64_t x509_get_uid(unsigned __int8 **a1, uint64_t a2, uint64_t a3, int a4)
{
  if (*a1 == a2)
  {
    return 0;
  }

  else
  {
    *a3 = **a1;
    tag = mbedtls_asn1_get_tag(a1, a2, (a3 + 8), a4 | 0xA0u);
    if (tag)
    {
      if (tag == -98)
      {
        return 0;
      }

      else
      {
        return mbedtls_error_add(-8576, tag);
      }
    }

    else
    {
      *(a3 + 16) = *a1;
      *a1 += *(a3 + 8);
      return 0;
    }
  }
}

uint64_t x509_get_crt_ext(unint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *, void, unsigned __int8 *, unsigned __int8 *), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  ext = -110;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  if (*a1 == a2)
  {
    return 0;
  }

  else
  {
    ext = mbedtls_x509_get_ext(v20, v19, v18 + 424, 3);
    if (ext)
    {
      return ext;
    }

    else
    {
      v19 = (*(v18 + 440) + *(v18 + 432));
      while (*v20 < v19)
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v7 = 0;
        v6 = 0;
        ext = mbedtls_asn1_get_tag(v20, v19, &v14, 48);
        if (ext)
        {
          return mbedtls_error_add(-9472, ext);
        }

        v13 = &(*v20)[v14];
        if ((ext = mbedtls_asn1_get_tag(v20, v13, &v9, 6)) != 0)
        {
          return mbedtls_error_add(-9472, ext);
        }

        LODWORD(v8) = 6;
        v10 = *v20;
        *v20 += v9;
        if ((ext = mbedtls_asn1_get_BOOL(v20, v13, &v7)) != 0 && ext != -98)
        {
          return mbedtls_error_add(-9472, ext);
        }

        if ((ext = mbedtls_asn1_get_tag(v20, v13, &v14, 4)) != 0)
        {
          return mbedtls_error_add(-9472, ext);
        }

        v12 = *v20;
        v11 = &(*v20)[v14];
        if (v11 != v13)
        {
          return mbedtls_error_add(-9472, -102);
        }

        ext = mbedtls_oid_get_x509_ext_type(&v8, &v6);
        if (ext)
        {
          if (v17)
          {
            ext = v17(v16, v18, &v8, v7, *v20, v11);
            if (ext && v7)
            {
              return ext;
            }

            *v20 = v11;
          }

          else
          {
            *v20 = v11;
            if (v7)
            {
              return mbedtls_error_add(-9472, -98);
            }
          }
        }

        else
        {
          if ((*(v18 + 640) & v6) != 0)
          {
            return -9472;
          }

          *(v18 + 640) |= v6;
          switch(v6)
          {
            case 1:
              ext = x509_get_authority_key_id(v20, v11, v18 + 504);
              if (ext)
              {
                return ext;
              }

              break;
            case 2:
              ext = x509_get_subject_key_id(v20, v13, v18 + 480);
              if (ext)
              {
                return ext;
              }

              break;
            case 4:
              ext = mbedtls_x509_get_key_usage(v20, v11, (v18 + 652));
              if (ext)
              {
                return ext;
              }

              break;
            case 8:
              ext = x509_get_certificate_policies(v20, v11, v18 + 608);
              if (ext && (ext != -8320 || !v17 || v17(v16, v18, &v8, v7, v12, v11)))
              {
                if (v7)
                {
                  return ext;
                }

                if (ext != -8320)
                {
                  return ext;
                }
              }

              break;
            case 0x20:
              ext = mbedtls_x509_get_subject_alt_name(v20, v11, v18 + 448);
              if (ext)
              {
                return ext;
              }

              break;
            case 0x100:
              ext = x509_get_basic_constraints(v20, v11, (v18 + 644), (v18 + 648));
              if (ext)
              {
                return ext;
              }

              break;
            case 0x800:
              ext = x509_get_ext_key_usage(v20, v11, v18 + 656);
              if (ext)
              {
                return ext;
              }

              break;
            case 0x10000:
              ext = mbedtls_x509_get_ns_cert_type(v20, v11, (v18 + 688));
              if (ext)
              {
                return ext;
              }

              break;
            default:
              if (v7)
              {
                return -8320;
              }

              *v20 = v11;
              break;
          }
        }
      }

      if (*v20 != v19)
      {
        return mbedtls_error_add(-9472, -102);
      }

      return 0;
    }
  }
}

uint64_t x509_get_basic_constraints(unsigned __int8 **a1, unsigned __int8 *a2, int *a3, int *a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  tag = -110;
  v5 = 0;
  *a3 = 0;
  *v7 = 0;
  tag = mbedtls_asn1_get_tag(v10, v9, &v5, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  if (*v10 == v9)
  {
    return 0;
  }

  else
  {
    tag = mbedtls_asn1_get_BOOL(v10, v9, v8);
    if (tag)
    {
      if (tag == -98)
      {
        tag = mbedtls_asn1_get_int(v10, v9, v8);
      }

      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      if (*v8)
      {
        *v8 = 1;
      }
    }

    if (*v10 == v9)
    {
      return 0;
    }

    else
    {
      tag = mbedtls_asn1_get_int(v10, v9, v7);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      if (*v10 == v9)
      {
        if (*v7 == 0x7FFFFFFF)
        {
          return mbedtls_error_add(-9472, -100);
        }

        else
        {
          ++*v7;
          return 0;
        }
      }

      else
      {
        return mbedtls_error_add(-9472, -102);
      }
    }
  }
}

uint64_t x509_get_ext_key_usage(_BYTE **a1, _BYTE *a2, uint64_t a3)
{
  sequence_of = mbedtls_asn1_get_sequence_of(a1, a2, a3, 6u);
  if (sequence_of)
  {
    return mbedtls_error_add(-9472, sequence_of);
  }

  else if (*(a3 + 16))
  {
    return 0;
  }

  else
  {
    return mbedtls_error_add(-9472, -100);
  }
}

uint64_t x509_get_subject_key_id(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 4);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else
  {
    *(v6 + 8) = v4;
    *v6 = 4;
    *(v6 + 16) = *v8;
    *v8 += v4;
    if (*v8 == v7)
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-9472, -102);
    }
  }
}

uint64_t x509_get_authority_key_id(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v4, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  if (&(*v8)[v4] != v7)
  {
    return mbedtls_error_add(-9472, -102);
  }

  tag = mbedtls_asn1_get_tag(v8, v7, &v4, 128);
  if (tag)
  {
    if (tag != -98)
    {
      return mbedtls_error_add(-9472, tag);
    }
  }

  else
  {
    *(v6 + 8) = v4;
    *(v6 + 16) = *v8;
    *v6 = 4;
    *v8 += v4;
  }

  if (*v8 < v7)
  {
    tag = mbedtls_asn1_get_tag(v8, v7, &v4, 161);
    if (tag)
    {
      return mbedtls_error_add(-9472, tag);
    }

    tag = mbedtls_x509_get_subject_alt_name_ext(v8, &(*v8)[v4], v6 + 24);
    if (tag)
    {
      return tag;
    }

    tag = mbedtls_asn1_get_tag(v8, v7, &v4, 130);
    if (tag)
    {
      return mbedtls_error_add(-9472, tag);
    }

    *(v6 + 64) = v4;
    *(v6 + 72) = *v8;
    *(v6 + 56) = 2;
    *v8 += v4;
  }

  if (*v8 == v7)
  {
    return 0;
  }

  else
  {
    return -9574;
  }
}

uint64_t x509_get_certificate_policies(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  tag = 0;
  v10 = 0;
  v9 = 0;
  v8 = a3;
  tag = mbedtls_asn1_get_tag(a1, a2, &v9, 48);
  if (tag)
  {
    return mbedtls_error_add(-9472, tag);
  }

  else
  {
    if (&(*v14)[v9] != v13 || !v9)
    {
      return mbedtls_error_add(-9472, -102);
    }

    while (*v14 < v13)
    {
      tag = mbedtls_asn1_get_tag(v14, v13, &v9, 48);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      v5 = &(*v14)[v9];
      tag = mbedtls_asn1_get_tag(v14, v5, &v9, 6);
      if (tag)
      {
        return mbedtls_error_add(-9472, tag);
      }

      __n = v9;
      __s2 = *v14;
      v4 = 1;
      if (v9 == 4)
      {
        v4 = memcmp(&unk_10044AF65, __s2, 4uLL) != 0;
      }

      if (v4)
      {
        v10 = -8320;
      }

      if (*(v8 + 16))
      {
        if (*(v8 + 24))
        {
          return -9472;
        }

        *(v8 + 24) = mbedtls_calloc();
        if (!*(v8 + 24))
        {
          return mbedtls_error_add(-9472, -106);
        }

        v8 = *(v8 + 24);
      }

      *v8 = 6;
      *(v8 + 16) = __s2;
      *(v8 + 8) = __n;
      *v14 += v9;
      if (*v14 < v5)
      {
        tag = mbedtls_asn1_get_tag(v14, v5, &v9, 48);
        if (tag)
        {
          return mbedtls_error_add(-9472, tag);
        }

        *v14 += v9;
      }

      if (*v14 != v5)
      {
        return mbedtls_error_add(-9472, -102);
      }
    }

    *(v8 + 24) = 0;
    if (*v14 == v13)
    {
      return v10;
    }

    else
    {
      return mbedtls_error_add(-9472, -102);
    }
  }
}

uint64_t x509_crt_verify_chain_reset(uint64_t result)
{
  for (i = 0; i < 0xA; ++i)
  {
    *(result + 16 * i) = 0;
    *(result + 16 * i + 8) = -1;
  }

  *(result + 160) = 0;
  return result;
}

unint64_t x509_crt_verify_name(uint64_t a1, char *a2, _DWORD *a3)
{
  result = strlen(a2);
  v5 = result;
  if ((*(a1 + 640) & 0x20) != 0)
  {
    result = x509_crt_check_san(a1 + 448, a2, result);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    for (i = a1 + 224; i; i = *(i + 48))
    {
      v4 = 1;
      if (*(i + 8) == 3)
      {
        result = memcmp("U\x04\x03", *(i + 16), *(i + 8));
        v4 = result != 0;
      }

      if (!v4)
      {
        result = x509_crt_check_cn(i + 24, a2, v5);
        if (!result)
        {
          return result;
        }
      }
    }
  }

  *a3 |= 4u;
  return result;
}

uint64_t x509_profile_check_pk_alg(uint64_t a1, int a2)
{
  if (a2)
  {
    if ((*(a1 + 4) & (1 << (a2 - 1))) != 0)
    {
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

uint64_t x509_profile_check_key(uint64_t a1, unsigned int **a2)
{
  type = mbedtls_pk_get_type(a2);
  if (type == 1 || type == 6)
  {
    if (mbedtls_pk_get_bitlen(a2) >= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else if (type == 4 || type == 2 || type == 3)
  {
    ec_group_id = mbedtls_pk_get_ec_group_id(a2);
    if (ec_group_id)
    {
      if ((*(a1 + 8) & (1 << (ec_group_id - 1))) != 0)
      {
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
    return -1;
  }
}

uint64_t x509_crt_verify_chain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = a7;
  v18 = a8;
  parent = -110;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v10 = 0;
  v14 = a1;
  v9 = 0;
  v12 = 0;
  v11 = 0;
  while (1)
  {
    v15 = v19 + 16 * *(v19 + 160);
    *v15 = v14;
    *(v15 + 8) = 0;
    ++*(v19 + 160);
    v16 = (v15 + 8);
    if (v11)
    {
      return 0;
    }

    if (x509_profile_check_md_alg(v20, *(v14 + 720)))
    {
      *v16 |= 0x4000u;
    }

    if (x509_profile_check_pk_alg(v20, *(v14 + 724)))
    {
      *v16 |= 0x8000u;
    }

    if (*(v19 + 160) == 1 && !x509_crt_check_ee_locally_trusted(v14, v24))
    {
      return 0;
    }

    parent = x509_crt_find_parent(v14, v24, &v13, &v12, &v10, *(v19 + 160) - 1, v9);
    if (!v13)
    {
      *v16 |= 8u;
      return 0;
    }

    if (*(v19 + 160) != 1 && !x509_name_cmp(v14 + 160, v14 + 224))
    {
      ++v9;
    }

    if (!v12 && *(v19 + 160) > 8u)
    {
      break;
    }

    if (!v10)
    {
      *v16 |= 8u;
    }

    if (x509_profile_check_key(v20, (v13 + 360)))
    {
      *v16 |= 0x10000u;
    }

    v14 = v13;
    v13 = 0;
    v11 = v12;
    v10 = 0;
  }

  return -12288;
}

uint64_t x509_crt_merge_flags_with_cb(_DWORD *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void, int *), uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = -110;
  i = 0;
  v6 = 0;
  for (i = *(a2 + 160); i; --i)
  {
    v5 = v11 + 16 * (i - 1);
    v6 = *(v5 + 8);
    if (v10)
    {
      v8 = v10(v9, *v5, (i - 1), &v6);
      if (v8)
      {
        return v8;
      }
    }

    *v12 |= v6;
  }

  return 0;
}

uint64_t x509_crt_check_san(uint64_t a1, char *a2, unint64_t a3)
{
  v7 = 0;
  v6 = 0;
  for (i = a1; i; i = *(i + 24))
  {
    v4 = *i & 0x1F;
    switch(v4)
    {
      case 2:
        if (!x509_crt_check_cn(i, a2, a3))
        {
          return 0;
        }

        break;
      case 6:
        v6 = 1;
        break;
      case 7:
        v7 = 1;
        break;
    }
  }

  if (!v7 || x509_crt_check_san_ip(a1, a2))
  {
    if (!v6 || x509_crt_check_san_uri(a1, a2, a3))
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

uint64_t x509_crt_check_cn(uint64_t a1, const char *a2, unint64_t a3)
{
  if (*(a1 + 8) != a3 || x509_memcasecmp(a2, *(a1 + 16), a3))
  {
    if (x509_check_wildcard(a2, a1))
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

uint64_t x509_crt_check_san_ip(uint64_t a1, char *a2)
{
  __n = mbedtls_x509_crt_parse_cn_inet_pton(a2, __s2);
  if (__n)
  {
    for (i = a1; i; i = *(i + 24))
    {
      if ((*i & 0x1F) == 7 && *(i + 8) == __n && !memcmp(*(i + 16), __s2, __n))
      {
        return 0;
      }
    }

    return -1;
  }

  else
  {
    return -1;
  }
}

uint64_t x509_crt_check_san_uri(uint64_t a1, const void *a2, size_t a3)
{
  while (a1)
  {
    if ((*a1 & 0x1F) == 6 && *(a1 + 8) == a3 && !memcmp(*(a1 + 16), a2, a3))
    {
      return 0;
    }

    a1 = *(a1 + 24);
  }

  return -1;
}

uint64_t x509_memcasecmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  for (i = 0; i < a3; ++i)
  {
    v4 = *(a1 + i) ^ *(a2 + i);
    if (v4 && (v4 != 32 || (*(a1 + i) < 0x61u || *(a1 + i) > 0x7Au) && (*(a1 + i) < 0x41u || *(a1 + i) > 0x5Au)))
    {
      return -1;
    }
  }

  return 0;
}

uint64_t x509_check_wildcard(const char *a1, uint64_t a2)
{
  v4 = 0;
  v3 = strlen(a1);
  if (*(a2 + 8) >= 3uLL && **(a2 + 16) == 42 && *(*(a2 + 16) + 1) == 46)
  {
    for (i = 0; i < v3; ++i)
    {
      if (a1[i] == 46)
      {
        v4 = i;
        break;
      }
    }

    if (v4)
    {
      if (v3 - v4 != *(a2 + 8) - 1 || x509_memcasecmp(*(a2 + 16) + 1, &a1[v4], *(a2 + 8) - 1))
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
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t x509_profile_check_md_alg(_DWORD *a1, int a2)
{
  if (a2)
  {
    if ((*a1 & (1 << (a2 - 1))) != 0)
    {
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

uint64_t x509_crt_check_ee_locally_trusted(uint64_t a1, uint64_t a2)
{
  if (x509_name_cmp(a1 + 160, a1 + 224))
  {
    return -1;
  }

  else
  {
    for (i = a2; i; i = *(i + 736))
    {
      if (*(a1 + 16) == *(i + 16) && !memcmp(*(a1 + 24), *(i + 24), *(a1 + 16)))
      {
        return 0;
      }
    }

    return -1;
  }
}

uint64_t x509_crt_find_parent(uint64_t a1, uint64_t a2, uint64_t *a3, int *a4, _BOOL4 *a5, int a6, int a7)
{
  for (*a4 = 1; ; *a4 = 0)
  {
    v8 = *a4 ? a2 : *(a1 + 736);
    x509_crt_find_parent_in(a1, v8, a3, a5, *a4, a6, a7);
    if (*a3 || !*a4)
    {
      break;
    }
  }

  if (!*a3)
  {
    *a4 = 0;
    *a5 = 0;
  }

  return 0;
}

uint64_t x509_name_cmp(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v3 = 1;
    if (!a1)
    {
      v3 = a2 != 0;
    }

    if (!v3)
    {
      break;
    }

    if (!a1 || !a2)
    {
      return -1;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || memcmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
    {
      return -1;
    }

    if (x509_string_cmp(a1 + 24, a2 + 24))
    {
      return -1;
    }

    if (*(a1 + 56) != *(a2 + 56))
    {
      return -1;
    }

    a1 = *(a1 + 48);
    a2 = *(a2 + 48);
  }

  return 0;
}

uint64_t x509_crt_find_parent_in(uint64_t a1, uint64_t a2, uint64_t *a3, _BOOL4 *a4, int a5, int a6, int a7)
{
  while (a2)
  {
    if (!x509_crt_check_parent(a1, a2, a5) && (*(a2 + 648) <= 0 || *(a2 + 648) >= (a6 + 1 - a7)))
    {
      v8 = x509_crt_check_signature(a1, a2) == 0;
      if (!a5 || v8)
      {
        *a3 = a2;
        *a4 = v8;
        break;
      }
    }

    a2 = *(a2 + 736);
  }

  if (!a2)
  {
    *a3 = 0;
    *a4 = 0;
  }

  return 0;
}

uint64_t x509_crt_check_parent(uint64_t a1, uint64_t a2, int a3)
{
  if (x509_name_cmp(a1 + 160, a2 + 224))
  {
    return -1;
  }

  else
  {
    v4 = 1;
    if (a3)
    {
      v4 = *(a2 + 56) >= 3;
    }

    if (!v4 || *(a2 + 644))
    {
      if (v4 && mbedtls_x509_crt_check_key_usage(a2, 4))
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
      return -1;
    }
  }
}

uint64_t x509_crt_check_signature(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_md_info_from_type(*(a1 + 720));
  size = mbedtls_md_get_size(v3);
  if (mbedtls_md(v3, *(a1 + 48), *(a1 + 40), v8))
  {
    return -1;
  }

  else if (mbedtls_pk_can_do(a2 + 360, *(a1 + 724)))
  {
    return mbedtls_pk_verify_ext(*(a1 + 724), *(a1 + 728), a2 + 360, *(a1 + 720), v8, size, *(a1 + 712), *(a1 + 704));
  }

  else
  {
    return -1;
  }
}

uint64_t x509_string_cmp(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && !memcmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
  {
    return 0;
  }

  else if ((*a1 == 12 || *a1 == 19) && (*a2 == 12 || *a2 == 19) && *(a1 + 8) == *(a2 + 8) && !x509_memcasecmp(*(a1 + 16), *(a2 + 16), *(a2 + 8)))
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

ot::Cli::Interpreter *ot::Cli::Interpreter::Interpreter(ot::Cli::Interpreter *this, ot::Instance *a2, int (*a3)(void *, const char *, char *), void *a4)
{
  ot::Cli::OutputImplementer::OutputImplementer(this, a3, a4);
  ot::Cli::Utils::Utils(this + 2, a2, this);
  *(this + 56) = 0;
  *(this + 57) = 0;
  ot::TimerMilliContext::TimerMilliContext((this + 64), a2, ot::Cli::Interpreter::HandleTimer, this);
  ot::Cli::Dataset::Dataset(this + 12, a2, this);
  ot::Cli::NetworkData::NetworkData(this + 112, a2, this);
  ot::Cli::UdpExample::UdpExample(this + 136, a2, this);
  ot::Cli::Dataset::Dataset(this + 29, a2, this);
  ot::Cli::Dataset::Dataset(this + 31, a2, this);
  ot::Cli::Coap::Coap(this + 264, a2, this);
  ot::Cli::Dataset::Dataset(this + 48, a2, this);
  ot::Cli::Dataset::Dataset(this + 50, a2, this);
  ot::Cli::Dataset::Dataset(this + 52, a2, this);
  ot::Cli::Dataset::Dataset(this + 54, a2, this);
  ot::Cli::LinkMetrics::LinkMetrics(this + 456, a2, this);
  ot::Cli::PingSender::PingSender(this + 504, a2, this);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((this + 16));
  otThreadSetDiscoveryRequestCallback(InstancePtr, ot::Cli::Interpreter::HandleDiscoveryRequest, this);
  v5 = ot::Cli::Utils::GetInstancePtr((this + 16));
  otDiagSetOutputCallback(v5, ot::Cli::Interpreter::HandleDiagOutput, this);
  ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(this + 4);
  v6 = ot::Cli::Utils::GetInstancePtr((this + 16));
  otDiagSetOutputCallback(v6, ot::Cli::Interpreter::HandleDiagOutput, this);
  ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(this + 4);
  ot::Cli::Interpreter::OutputPrompt(this);
  return this;
}

{
  ot::Cli::Interpreter::Interpreter(this, a2, a3, a4);
  return this;
}

void *ot::Cli::Utils::Utils(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

ot::TimerMilliContext *ot::TimerMilliContext::TimerMilliContext(ot::TimerMilliContext *this, ot::Instance *a2, void (*a3)(ot::Timer *), void *a4)
{
  ot::TimerMilliContext::TimerMilliContext(this, a2, a3, a4);
  return this;
}

{
  ot::TimerMilli::TimerMilli(this, a2, a3);
  result = this;
  *(this + 3) = a4;
  return result;
}

void *ot::Cli::Dataset::Dataset(void *a1, uint64_t a2, uint64_t a3)
{
  ot::Cli::Dataset::Dataset(a1, a2, a3);
  return a1;
}

{
  ot::Cli::Utils::Utils(a1, a2, a3);
  return a1;
}

void ot::Cli::Interpreter::HandleDiscoveryRequest()
{
  ot::Cli::Interpreter::HandleDiscoveryRequest();
}

{
  ;
}

void *ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::Cli::Utils::ClearAllBytes<ot::Cli::Interpreter::UserCommandsEntry [1]>(result);
}

void ot::Cli::Interpreter::OutputPrompt(ot::Cli::Interpreter *this)
{
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
  ot::Cli::Utils::OutputFormat((this + 16), "%s", "> ");
  ot::Cli::OutputImplementer::SetEmittingCommandOutput(this);
}

void ot::Cli::Interpreter::OutputResult(_BYTE *a1, int a2)
{
  if (a1[57])
  {
    if (a2)
    {
      v2 = otThreadErrorToString(a2);
      ot::Cli::Utils::OutputLine((a1 + 16), "Error %u: %s", a2, v2);
    }
  }

  else
  {
    if ((a1[56] & 1) == 0)
    {
      __assert_rtn("OutputResult", "cli.cpp", 201, "mCommandIsPending");
    }

    if (a2 != 36)
    {
      if (a2)
      {
        v3 = otThreadErrorToString(a2);
        ot::Cli::Utils::OutputLine((a1 + 16), "Error %u: %s", a2, v3);
      }

      ot::Cli::Utils::OutputLine((a1 + 16), "Done");
      a1[56] = 0;
      ot::TimerMilli::Stop((a1 + 64));
      ot::Cli::Interpreter::OutputPrompt(a1);
    }
  }
}

uint64_t ot::Cli::Interpreter::Process<1714215925ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  memset(__b, 0, sizeof(__b));
  ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v2);
  InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
  ArgsLength = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, v3);
  return otDiagProcessCmd(InstancePtr, ArgsLength, __b);
}

uint64_t ot::Cli::Interpreter::Process<30363746172521848ull>(uint64_t a1, const char **a2)
{
  v5 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    VersionString = otGetVersionString();
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", VersionString);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(a2, "api"))
  {
    ot::Cli::Utils::OutputLine((a1 + 16), "%u", 431);
  }

  else
  {
    return 35;
  }

  return v5;
}

uint64_t ot::Cli::Interpreter::Process<492159295119ull>(uint64_t a1, ot::Utils::CmdLineParser::Arg *a2)
{
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otInstanceReset(InstancePtr);
  }

  return 35;
}

void ot::Cli::Interpreter::ProcessLine(ot::Cli::Interpreter *this, ot *a2)
{
  v4 = 0;
  if (!a2)
  {
    __assert_rtn("ProcessLine", "cli.cpp", 322, "aBuf != nullptr");
  }

  if ((*(this + 57) & 1) == 0)
  {
    if (*(this + 56))
    {
      ot::Utils::CmdLineParser::Arg::Clear(v6);
      goto LABEL_17;
    }

    *(this + 56) = 1;
    if (ot::StringLength(a2, 0x280) > 639)
    {
      v4 = 6;
      goto LABEL_17;
    }
  }

  v4 = ot::Utils::CmdLineParser::ParseCmd(a2, v6, 0x20);
  if (!v4)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty(v6))
    {
      *(this + 56) = 0;
    }

    else if (*(this + 57) & 1) == 0 && (ot::Cli::Utils::LogInput((this + 16), v6), InstancePtr = ot::Cli::Utils::GetInstancePtr((this + 16)), (otDiagIsEnabled(InstancePtr)) && ot::Utils::CmdLineParser::Arg::operator!=(v6, "diag") && ot::Utils::CmdLineParser::Arg::operator!=(v6, "factoryreset"))
    {
      ot::Cli::Utils::OutputLine((this + 16), "under diagnostics mode, execute 'diag stop' before running any other commands.");
      v4 = 13;
    }

    else
    {
      v4 = ot::Cli::Interpreter::ProcessCommand(this, v6);
    }
  }

LABEL_17:
  if (!v4 && ot::Utils::CmdLineParser::Arg::IsEmpty(v6))
  {
    if ((*(this + 56) & 1) == 0)
    {
      ot::Cli::Interpreter::OutputPrompt(this);
    }
  }

  else
  {
    ot::Cli::Interpreter::OutputResult(this, v4);
  }
}

void *ot::Utils::CmdLineParser::Arg::Clear(void *this)
{
  *this = 0;
  return this;
}

{
  return ot::Utils::CmdLineParser::Arg::Clear(this);
}

void ot::Cli::Utils::LogInput(ot::Cli::Utils *this, const ot::Utils::CmdLineParser::Arg *a2)
{
  ;
}

{
  ot::Cli::Utils::LogInput(this, a2);
}

BOOL ot::Utils::CmdLineParser::Arg::operator!=(const char **a1, const char *a2)
{
  return !ot::Utils::CmdLineParser::Arg::operator==(a1, a2);
}

{
  return ot::Utils::CmdLineParser::Arg::operator!=(a1, a2);
}

uint64_t ot::Cli::Interpreter::ProcessCommand(ot::Cli::Interpreter *this, const char **a2)
{
  v18 = this;
  v17 = a2;
  v16 = 0;
  CString = ot::Utils::CmdLineParser::Arg::GetCString(a2);
  v15 = ot::BinarySearch::Find<char *,ot::Cli::Utils::CommandEntry<ot::Cli::Interpreter>,(unsigned short)121>(&CString, &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands, v2, v3, v4, v5);
  if (v15)
  {
    v9 = *(v15 + 1);
    v6 = *(v15 + 2);
    v10 = (this + (v6 >> 1));
    if (v6)
    {
      return (*(*v10 + v9))(v10, v17 + 1);
    }

    else
    {
      return v9(v10, v17 + 1);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v17, "help"))
  {
    ot::Cli::Utils::OutputCommandTable<ot::Cli::Interpreter,(unsigned short)121>(this + 16, &ot::Cli::Interpreter::ProcessCommand(ot::Utils::CmdLineParser::Arg *)::kCommands);
    for (i = this + 32; i != this + 56; i += 24)
    {
      for (j = 0; j < i[8]; ++j)
      {
        ot::Cli::Utils::OutputLine((this + 16), "%s", *(*i + 16 * j));
      }
    }
  }

  else
  {
    return ot::Cli::Interpreter::ProcessUserCommands(this, v17);
  }

  return v16;
}

uint64_t ot::Cli::Interpreter::ProcessUserCommands(ot::Cli::Interpreter *this, ot::Utils::CmdLineParser::Arg *a2)
{
  v11 = 35;
  v10 = this + 32;
  v9 = this + 56;
  while (v10 != v9)
  {
    for (i = 0; i < v10[8]; ++i)
    {
      if (ot::Utils::CmdLineParser::Arg::operator==(a2, *(*v10 + 16 * i)))
      {
        memset(__b, 0, sizeof(__b));
        ot::Utils::CmdLineParser::Arg::CopyArgsToStringArray(a2, __b, v2);
        v6 = *(*v10 + 16 * i + 8);
        v7 = *(v10 + 2);
        ArgsLength = ot::Utils::CmdLineParser::Arg::GetArgsLength(a2, v3);
        v11 = v6(v7, (ArgsLength - 1), &__b[8]);
        break;
      }
    }

    v10 += 24;
  }

  return v11;
}

uint64_t ot::Cli::Interpreter::SetUserCommands(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = 1;
  for (i = a1 + 32; i != a1 + 56; i += 24)
  {
    if (!*i)
    {
      *i = a2;
      *(i + 8) = a3;
      *(i + 16) = a4;
      return 0;
    }
  }

  return v6;
}

uint64_t ot::Cli::Interpreter::Process<24833ull>(uint64_t a1, const char **a2)
{
  v15 = a1;
  v14 = a2;
  Id = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "port"))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    UdpPort = otBorderAgentGetUdpPort(InstancePtr);
    ot::Cli::Utils::OutputLine((a1 + 16), "%hu", UdpPort);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "state"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    State = otBorderAgentGetState(v4);
    v6 = ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(State, ot::Cli::Interpreter::Process<24833ull>(ot::Utils::CmdLineParser::Arg *)::kStateStrings, "unknown");
    ot::Cli::Utils::OutputLine((a1 + 16), "%s", v6);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v14, "id"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v14 + 1)))
    {
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      Id = otBorderAgentGetId(v8, v16);
      if (!Id)
      {
        ot::Cli::Utils::OutputBytesLine<(unsigned char)16>((a1 + 16), v16);
      }
    }

    else
    {
      v12 = 16;
      Id = ot::Utils::CmdLineParser::Arg::ParseAsHexString(v14 + 1, &v12, v16, v7);
      if (!Id)
      {
        if (v12 == 16)
        {
          v9 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
          return otBorderAgentSetId(v9, v16);
        }

        else
        {
          return 7;
        }
      }
    }
  }

  else
  {
    return 35;
  }

  return Id;
}

uint64_t ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  if (a1 >= 3u)
  {
    return a3;
  }

  else
  {
    return *(a2 + 8 * a1);
  }
}

{
  return ot::Cli::Utils::Stringify<otBorderAgentState,(unsigned short)3>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine(a1, a2, 0x10u);
}

{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)16>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString(ot::Utils::CmdLineParser **this, char *a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  return ot::Utils::CmdLineParser::ParseAsHexString(*this, a2, a3, a4);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(this, a2, a3, a4);
}

uint64_t ot::Cli::Utils::ProcessGetSet<char const*>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned int (*a4)(uint64_t, uint64_t))
{
  v6 = ot::Cli::Utils::ProcessGet<char const*>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<char const*>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<char const*>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<6337360ull>(uint64_t a1, const char **a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "iid"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      FixedDuaInterfaceIdentifier = otThreadGetFixedDuaInterfaceIdentifier(InstancePtr);
      if (FixedDuaInterfaceIdentifier)
      {
        ot::Cli::Utils::OutputBytesLine<(unsigned char)8>((a1 + 16), FixedDuaInterfaceIdentifier);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v10 + 1, "clear"))
    {
      v3 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otThreadSetFixedDuaInterfaceIdentifier(v3, 0);
    }

    else
    {
      v9 = ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(v10 + 1, v7);
      if (!v9)
      {
        v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        return otThreadSetFixedDuaInterfaceIdentifier(v4, v7);
      }
    }
  }

  else
  {
    return 35;
  }

  return v9;
}

uint64_t ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine(a1, a2, 8u);
}

{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, a2);
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(ot::Utils::CmdLineParser **a1, char *a2)
{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString(a1, a2, 8u);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsHexString<(unsigned short)8>(a1, a2);
}

uint64_t ot::Cli::Interpreter::Process<13711823289570935762ull>(uint64_t a1, const char **a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageGetBufferInfo(InstancePtr, v11);
    ot::Cli::Utils::OutputLine((a1 + 16), "total: %u", v11[0]);
    ot::Cli::Utils::OutputLine((a1 + 16), "free: %u", v11[1]);
    ot::Cli::Utils::OutputLine((a1 + 16), "max-used: %u", v11[2]);
    for (i = &ot::Cli::Interpreter::Process<13711823289570935762ull>(ot::Utils::CmdLineParser::Arg *)::kBufferInfoNames; i != ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableTitles; i += 2)
    {
      v6 = i[1];
      v7 = *(v11 + *i);
      v8 = *(&v11[1] + *i);
      v3 = ot::ToUlong(*(&v11[2] + *i));
      ot::Cli::Utils::OutputLine((a1 + 16), "%s: %u %u %lu", v6, v7, v8, v3);
    }
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v13, "reset"))
  {
    v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    otMessageResetBufferInfo(v4);
  }

  else
  {
    return 7;
  }

  return v12;
}

uint64_t ot::Cli::Interpreter::Process<11512677311266953430ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v10 = a1;
  v9 = a2;
  CcaEnergyDetectThreshold = 0;
  v7 = 0;
  if (ot::Utils::CmdLineParser::Arg::IsEmpty(a2))
  {
    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    CcaEnergyDetectThreshold = otPlatRadioGetCcaEnergyDetectThreshold(InstancePtr, &v7);
    if (!CcaEnergyDetectThreshold)
    {
      ot::Cli::Utils::OutputLine((a1 + 16), "%d dBm", v7);
    }
  }

  else
  {
    CcaEnergyDetectThreshold = ot::Utils::CmdLineParser::Arg::ParseAsInt8(v9, &v7, v2);
    if (!CcaEnergyDetectThreshold)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      return otPlatRadioSetCcaEnergyDetectThreshold(v4, v7);
    }
  }

  return CcaEnergyDetectThreshold;
}

uint64_t ot::Utils::CmdLineParser::Arg::ParseAsInt8(ot::Utils::CmdLineParser **this, signed __int8 *a2, unsigned __int8 *a3)
{
  return ot::Utils::CmdLineParser::ParseAsInt8(*this, a2, a3);
}

{
  return ot::Utils::CmdLineParser::Arg::ParseAsInt8(this, a2, a3);
}

uint64_t ot::Cli::Interpreter::Process<29803101196888419ull>(uint64_t a1, const char **a2)
{
  v33 = a1;
  v32 = a2;
  v31 = 0;
  if (ot::Utils::CmdLineParser::Arg::operator==(a2, "supported"))
  {
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    SupportedChannelMask = otPlatRadioGetSupportedChannelMask();
    v3 = ot::ToUlong(SupportedChannelMask);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%lx", v3);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v32, "preferred"))
  {
    ot::Cli::Utils::GetInstancePtr((a1 + 16));
    PreferredChannelMask = otPlatRadioGetPreferredChannelMask();
    v5 = ot::ToUlong(PreferredChannelMask);
    ot::Cli::Utils::OutputLine((a1 + 16), "0x%lx", v5);
  }

  else if (ot::Utils::CmdLineParser::Arg::operator==(v32, "manager"))
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v32 + 1)))
    {
      InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      RequestedChannel = otChannelManagerGetRequestedChannel(InstancePtr);
      ot::Cli::Utils::OutputLine((a1 + 16), "channel: %u", RequestedChannel);
      v8 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      AutoChannelSelectionEnabled = otChannelManagerGetAutoChannelSelectionEnabled(v8);
      ot::Cli::Utils::OutputLine((a1 + 16), "auto: %d", AutoChannelSelectionEnabled & 1);
      v10 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (otChannelManagerGetAutoChannelSelectionEnabled(v10))
      {
        v11 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        SupportedChannels = otChannelManagerGetSupportedChannels(v11);
        ot::Mac::ChannelMask::ChannelMask(v30, SupportedChannels);
        v13 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        FavoredChannels = otChannelManagerGetFavoredChannels(v13);
        ot::Mac::ChannelMask::ChannelMask(v29, FavoredChannels);
        v15 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        Delay = otChannelManagerGetDelay(v15);
        ot::Cli::Utils::OutputLine((a1 + 16), "delay: %u", Delay);
        v17 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        AutoChannelSelectionInterval = otChannelManagerGetAutoChannelSelectionInterval(v17);
        v19 = ot::ToUlong(AutoChannelSelectionInterval);
        ot::Cli::Utils::OutputLine((a1 + 16), "interval: %lu", v19);
        v20 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        CcaFailureRateThreshold = otChannelManagerGetCcaFailureRateThreshold(v20);
        ot::Cli::Utils::OutputLine((a1 + 16), "cca threshold: 0x%04x", CcaFailureRateThreshold);
        ot::Mac::ChannelMask::ToString(v30, v35);
        v22 = ot::String<(unsigned short)45>::AsCString(v35);
        ot::Cli::Utils::OutputLine((a1 + 16), "supported: %s", v22);
        ot::Mac::ChannelMask::ToString(v29, v34);
        v23 = ot::String<(unsigned short)45>::AsCString(v34);
        ot::Cli::Utils::OutputLine((a1 + 16), "favored: %s", v23);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "change"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned char>((a1 + 16), v32 + 2, otChannelManagerRequestChannelChange);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "auto"))
    {
      v28 = 0;
      v31 = ot::Utils::CmdLineParser::Arg::ParseAsBool(v32 + 2, &v28, v24);
      if (!v31)
      {
        v25 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
        otChannelManagerSetAutoChannelSelectionEnabled(v25);
      }
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "delay"))
    {
      return ot::Cli::Utils::ProcessGetSet<unsigned short>((a1 + 16), (v32 + 2), otChannelManagerGetDelay, otChannelManagerSetDelay);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "interval"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetAutoChannelSelectionInterval);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "supported"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetSupportedChannels);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "favored"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned int>((a1 + 16), v32 + 2, otChannelManagerSetFavoredChannels);
    }

    else if (ot::Utils::CmdLineParser::Arg::operator==(v32 + 1, "threshold"))
    {
      return ot::Cli::Utils::ProcessSet<unsigned short>((a1 + 16), v32 + 2, otChannelManagerSetCcaFailureRateThreshold);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return ot::Cli::Utils::ProcessGetSet<unsigned char>((a1 + 16), v32, otLinkGetChannel, otLinkSetChannel);
  }

  return v31;
}

uint64_t ot::String<(unsigned short)45>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)45>::AsCString(a1);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned char>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned short>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned short>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned short>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned int>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned int>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned int>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessSet<unsigned short>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser **a2, unsigned __int8 *a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  v7 = 0;
  v8 = ot::Utils::CmdLineParser::Arg::ParseAs<unsigned short>(a2, &v7, a3);
  if (!v8)
  {
    if (ot::Utils::CmdLineParser::Arg::IsEmpty((v10 + 1)))
    {
      v5 = v9;
      InstancePtr = ot::Cli::Utils::GetInstancePtr(a1);
      return (v5)(InstancePtr, v7);
    }

    else
    {
      return 7;
    }
  }

  return v8;
}

{
  return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a3);
}

{
  return ot::Cli::Utils::ProcessSet<unsigned short>(a1, a2, a3);
}

uint64_t ot::Cli::Utils::ProcessGetSet<unsigned char>(ot::Cli::Utils *a1, ot::Utils::CmdLineParser::Arg *a2, uint64_t (*a3)(uint64_t), unsigned __int8 *a4)
{
  v6 = ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a4);
  }

  return v6;
}

{
  v6 = ot::Cli::Utils::ProcessGet<unsigned char>(a1, a2, a3);
  if (v6)
  {
    return ot::Cli::Utils::ProcessSet<unsigned char>(a1, a2, a4);
  }

  return v6;
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned char>(a1, a2, a3, a4);
}

{
  return ot::Cli::Utils::ProcessGetSet<unsigned char>(a1, a2, a3, a4);
}

uint64_t ot::Cli::Interpreter::Process<424622705244ull>(uint64_t a1, ot::Utils::CmdLineParser **a2)
{
  v21 = a1;
  v20 = a2;
  ChildInfoById = 0;
  v18 = 0;
  v17 = ot::Utils::CmdLineParser::Arg::operator==(a2, "table");
  if (v17 || ot::Utils::CmdLineParser::Arg::operator==(v20, "list"))
  {
    if (v17)
    {
      ot::Cli::Utils::OutputTableHeader<(unsigned char)14>((a1 + 16), ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableTitles, ot::Cli::Interpreter::Process<424622705244ull>(ot::Utils::CmdLineParser::Arg *)::kChildTableColumnWidths);
    }

    InstancePtr = ot::Cli::Utils::GetInstancePtr((a1 + 16));
    MaxAllowedChildren = otThreadGetMaxAllowedChildren(InstancePtr);
    for (i = 0; i < MaxAllowedChildren; ++i)
    {
      v4 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      if (!otThreadGetChildInfoByIndex(v4, i, v22) && (v37 & 8) == 0)
      {
        if (v17)
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %3u ", v26);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| 0x%04x ", v25);
          v5 = ot::ToUlong(v23);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %10lu ", v5);
          v6 = ot::ToUlong(v24);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %10lu ", v6);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v28);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %4u ", v27);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", v37 & 1);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 2) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%1d", (v37 & 4) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "|%3u", v32);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %1d ", (v37 & 0x10) != 0);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v30);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| %5u ", v31);
          ot::Cli::Utils::OutputFormat((a1 + 16), "| ");
          ot::Cli::Utils::OutputExtAddress((a1 + 16), v22);
          ot::Cli::Utils::OutputLine((a1 + 16), " |");
        }

        else
        {
          ot::Cli::Utils::OutputFormat((a1 + 16), "%u ", v26);
        }
      }
    }

    ot::Cli::Utils::OutputNewLine((a1 + 16));
  }

  else
  {
    ChildInfoById = ot::Utils::CmdLineParser::Arg::ParseAsUint16(v20, &v18, v2);
    if (!ChildInfoById)
    {
      v7 = ot::Cli::Utils::GetInstancePtr((a1 + 16));
      ChildInfoById = otThreadGetChildInfoById(v7, v18, v22);
      if (!ChildInfoById)
      {
        ot::Cli::Utils::OutputLine((a1 + 16), "Child ID: %u", v26);
        ot::Cli::Utils::OutputLine((a1 + 16), "Rloc: %04x", v25);
        ot::Cli::Utils::OutputFormat((a1 + 16), "Ext Addr: ");
        ot::Cli::Utils::OutputExtAddressLine((a1 + 16), v22);
        v16 = v16 & 0xFE | v37 & 1;
        v16 = v16 & 0xFD | (2 * ((v37 & 2) != 0));
        v16 = v16 & 0xFB | (4 * ((v37 & 2) != 0));
        v8 = ot::Cli::Utils::LinkModeToString(&v16, v15);
        ot::Cli::Utils::OutputLine((a1 + 16), "Mode: %s", v8);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Synchronized: %d ", (v37 & 0x10) != 0);
        ot::Cli::Utils::OutputLine((a1 + 16), "Net Data: %u", v27);
        v9 = ot::ToUlong(v23);
        ot::Cli::Utils::OutputLine((a1 + 16), "Timeout: %lu", v9);
        v10 = ot::ToUlong(v24);
        ot::Cli::Utils::OutputLine((a1 + 16), "Age: %lu", v10);
        ot::Cli::Utils::OutputLine((a1 + 16), "Link Quality In: %u", v28);
        ot::Cli::Utils::OutputLine((a1 + 16), "RSSI: %d", v29);
        ot::Cli::Utils::OutputLine((a1 + 16), "Supervision Interval: %d", v31);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Channel:%d", v33);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Timeout:%d", v34);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Period:%d", v35);
        ot::Cli::Utils::OutputLine((a1 + 16), "CSL Phase:%d", v36);
      }
    }
  }

  return ChildInfoById;
}

uint64_t ot::Cli::Utils::OutputTableHeader<(unsigned char)14>(ot::Cli::Utils *a1, const char *const *a2, const unsigned __int8 *a3)
{
  return ot::Cli::Utils::OutputTableHeader(a1, 0xEu, a2, a3);
}

{
  return ot::Cli::Utils::OutputTableHeader<(unsigned char)14>(a1, a2, a3);
}

ot::Cli::Utils *ot::Cli::Utils::OutputExtAddress(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytes<(unsigned char)8>(a1, a2);
}

{
  return ot::Cli::Utils::OutputExtAddress(a1, a2);
}

uint64_t ot::Cli::Utils::OutputExtAddressLine(ot::Cli::Utils *a1, const unsigned __int8 *a2)
{
  return ot::Cli::Utils::OutputBytesLine<(unsigned char)8>(a1, a2);
}

{
  return ot::Cli::Utils::OutputExtAddressLine(a1, a2);
}