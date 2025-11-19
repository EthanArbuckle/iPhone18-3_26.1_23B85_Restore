uint64_t HTTPConnectionInitResponseEx(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  HTTPHeader_InitResponseEx(*(a1 + 304) + 24, *(a1 + 48), a2, 0, a3, a6, a7, a8);
  v9 = time(0);
  v10 = HTTPMakeDateString(v9, v18, 0x40uLL);
  if (*v10)
  {
    HTTPHeader_SetField((*(a1 + 304) + 24), "Date", "%s", v11, v12, v13, v14, v15, v10);
  }

  v16 = *(a1 + 96);
  if (!v16 || (result = v16(a1, *(a1 + 304), *(a1 + 40)), !result))
  {
    result = 0;
    *(*(a1 + 304) + 8528) = 0;
  }

  return result;
}

unint64_t chacha20_poly1305_final(unsigned int *__s, int8x16_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!*(__s + 248) && (*(__s + 29) & 0xFLL) != 0)
  {
    poly1305_update(__s + 34, kZero64, 16 - (*(__s + 29) & 0xFLL));
  }

  v6 = chacha20_final(__s, a2);
  if (v6)
  {
    poly1305_update(__s + 34, a2, v6);
    v7 = *(__s + 30) + v6;
    *(__s + 30) = v7;
  }

  else
  {
    v7 = *(__s + 30);
  }

  if ((v7 & 0xF) != 0)
  {
    poly1305_update(__s + 34, kZero64, 16 - (v7 & 0xF));
    v7 = *(__s + 30);
  }

  v8 = *(__s + 29);
  LOWORD(v10) = v8;
  BYTE2(v10) = BYTE2(v8);
  HIBYTE(v10) = BYTE3(v8);
  v11 = BYTE4(v8);
  v12 = BYTE5(v8);
  v13 = BYTE6(v8);
  v14 = HIBYTE(v8);
  v15 = v7;
  poly1305_update(__s + 34, &v10, 0x10uLL);
  poly1305_final((__s + 34), a3);
  return v6;
}

unint64_t chacha20_poly1305_encrypt(uint64_t a1, int8x16_t *a2, unint64_t a3, int8x16_t *a4)
{
  if (!*(a1 + 248))
  {
    if ((*(a1 + 232) & 0xFLL) != 0)
    {
      poly1305_update((a1 + 136), kZero64, 16 - (*(a1 + 232) & 0xFLL));
    }

    *(a1 + 248) = 1;
  }

  v8 = chacha20_update(a1, a2, a3, a4);
  if (v8)
  {
    poly1305_update((a1 + 136), a4, v8);
    *(a1 + 240) += v8;
  }

  return v8;
}

uint64_t HTTPHeader_SetFieldV(char *__s, char *a2, uint64_t a3, const char *a4)
{
  v26[1] = a4;
  result = *(__s + 2119);
  if (!result)
  {
    v6 = *(__s + 1024);
    if ((v6 - 0x2000) < 0xFFFFFFFFFFFFE003)
    {
      result = 4294960551;
      goto LABEL_19;
    }

    v25 = 0;
    v26[0] = 0;
    if (HTTPGetHeaderField(__s, v6, a2, v26, 0, 0, 0, &v25))
    {
      v13 = SNPrintF(&__s[v6], 0x2000 - v6, "%s: %V\r\n", v8, v9, v10, v11, v12, a2);
      if (v13 >= 1 && v13 < 0x2000 - v6)
      {
        v15 = v13;
        result = 0;
        *(__s + 1024) += v15;
        return result;
      }

      goto LABEL_17;
    }

    v16 = MemPrintF(0, 0, "%s: %V\r\n", v8, v9, v10, v11, v12, a2);
    if (v16 < 1)
    {
      result = 4294960579;
LABEL_19:
      if (!*(__s + 2119))
      {
        *(__s + 2119) = result;
      }

      return result;
    }

    v22 = v6 - (v25 - v26[0]) + v16;
    if (v22 >> 13)
    {
LABEL_17:
      result = 4294960545;
      goto LABEL_19;
    }

    v23 = v16;
    v24 = v26[0] - __s;
    if ((v25 - v26[0]) != v16)
    {
      memmove(&v26[0][v16], v25, v6 - (v25 - __s) + 1);
    }

    MemPrintF(&__s[v24], v23, "%s: %V\r\n", v17, v18, v19, v20, v21, a2);
    result = 0;
    *(__s + 1024) = v22;
  }

  return result;
}

uint64_t HTTPHeader_Commit(uint64_t a1)
{
  v1 = *(a1 + 8476);
  if (!v1)
  {
    v2 = *(a1 + 0x2000);
    if (v2 == 4)
    {
      if (*a1 == 36)
      {
LABEL_8:
        v1 = 0;
        *(a1 + 8476) = -6721;
        return v1;
      }
    }

    else
    {
      if (!v2)
      {
        return 4294960551;
      }

      if ((v2 - 8190) < 0xFFFFFFFFFFFFE000)
      {
        return 4294960545;
      }
    }

    *(a1 + v2) = 2573;
    v3 = v2 + 2;
    *(a1 + v3) = 0;
    *(a1 + 0x2000) = v3;
    goto LABEL_8;
  }

  return v1;
}

uint64_t HTTPMessageWriteMessage(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  result = a2(a1 + 9616, a1 + 9624);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 9728) & 0x80000000) != 0)
  {
    return 0;
  }

  while (2)
  {
    v7 = *(a1 + 9736);
    if (v7 < 1)
    {
      return 0;
    }

    if (v7 >= *(a1 + 8536))
    {
      v8 = *(a1 + 8536);
    }

    else
    {
      v8 = *(a1 + 9736);
    }

    while (1)
    {
      v9 = read(*(a1 + 9728), *(a1 + 8520), v8);
      if (v9 > 0)
      {
        break;
      }

      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result)
        {
          return result;
        }

        break;
      }
    }

    *(a1 + 9736) -= v9;
    *(a1 + 9584) = *(a1 + 8520);
    *(a1 + 9592) = v9;
    *(a1 + 9624) = 1;
    *(a1 + 9616) = a1 + 9584;
    result = (a2)(a1 + 9616, a1 + 9624, a3);
    if (!result)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t _NetTransportWriteV(const iovec **a1, int *a2, int32x4_t *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3 + 1024;
  v5 = &a3[1047].u32[2];
  v6 = (&a3[1047].u64[1] + 2);
  v40 = a3 + 1024;
  v41 = &a3[1111].i8[10];
  v7 = *a1;
  v8 = &(*a1)[*a2];
  i32 = a3[1132].i32;
  v10 = a3[1113].i64[0];
  v38 = &a3[1047].i8[10];
  v39 = &a3[1047].u32[2];
  while (1)
  {
    while (1)
    {
      v11 = a3[1113].i64[1];
      v12 = v11 - v10;
      if (v11 == v10)
      {
        break;
      }

      v45 = v10;
      v46 = v11 - v10;
      v42 = &v45;
      v43 = 1;
      result = SocketWriteData(a3->i32[0], &v42, &v43);
      v10 = (a3[1113].i64[0] + v12 - v46);
      a3[1113].i64[0] = v10;
      if (result)
      {
        goto LABEL_34;
      }
    }

    if (v7 >= v8)
    {
      break;
    }

    v14 = 0;
    v15 = v6;
    v16 = v7;
    while (1)
    {
      iov_len = v16->iov_len;
      if (v41 - v15 < iov_len)
      {
        break;
      }

      v14 += iov_len;
      v15 = (v15 + iov_len);
      if (++v16 >= v8)
      {
        goto LABEL_11;
      }
    }

    v42 = v16;
    v14 += v41 - v15;
    if (!v14)
    {
      goto LABEL_33;
    }

LABEL_14:
    chacha20_poly1305_init_64x64(a3 + 1114, a3[1130].i32, i32);
    v4[23].i16[4] = v14;
    poly1305_update(&a3[1122].u32[2], v5, 2uLL);
    a3[1128].i64[1] += 2;
    if (v7 >= v8)
    {
      v21 = 16762;
    }

    else
    {
      v18 = v6;
      p_iov_len = &v7->iov_len;
      v20 = v18;
      v21 = 16762;
      while (1)
      {
        v22 = v8;
        v7 = (p_iov_len - 1);
        v23 = *(p_iov_len - 1);
        v24 = v41 - v18;
        i64 = a3[1114].i64;
        if (v41 - v18 < *p_iov_len)
        {
          break;
        }

        v26 = chacha20_poly1305_encrypt(i64, v23, *p_iov_len, v20);
        v27 = p_iov_len + 2;
        v18 = (v18 + *p_iov_len);
        v21 += v26;
        v20 = &a3->i8[v21];
        v8 = v22;
        v28 = (p_iov_len + 1) >= v22;
        p_iov_len += 2;
        if (v28)
        {
          v7 = (v27 - 1);
          goto LABEL_22;
        }
      }

      v29 = chacha20_poly1305_encrypt(i64, v23, v41 - v18, v20);
      v30 = *p_iov_len - v24;
      *(p_iov_len - 1) += v24;
      *p_iov_len = v30;
      v21 += v29;
      v8 = v22;
LABEL_22:
      v5 = v39;
      v4 = v40;
      v6 = v38;
    }

    v31 = chacha20_poly1305_final(&a3[1114], &a3->i8[v21], &v44);
    v32 = &a3->i8[v31 + v21];
    if ((v31 + v21) > 17786 || v32 != &v6->i8[v14])
    {
      result = 4294960534;
      goto LABEL_34;
    }

    v34 = 0;
    *v32 = v44;
    do
    {
      v35 = (*(i32 + v34))++ + 1;
      if ((v35 & 0x100) == 0)
      {
        break;
      }

      v28 = v34++ >= 7;
    }

    while (!v28);
    a3[1113].i64[0] = v5;
    a3[1113].i64[1] = (v32 + 16);
    v10 = v5;
  }

  v14 = 0;
  v16 = v7;
LABEL_11:
  v42 = v16;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_33:
  result = 0;
LABEL_34:
  *a1 = v7;
  *a2 = (v8 - v7) >> 4;
  return result;
}

uint64_t SocketWriteData(int a1, const iovec **a2, int *a3)
{
  if (!*a3)
  {
    return 0;
  }

  while (1)
  {
    v6 = writev(a1, *a2, *a3);
    if ((v6 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  if (!v6)
  {
    return 0;
  }

  return UpdateIOVec(a2, a3, v6);
}

uint64_t HTTPHeader_InitResponseEx(uint64_t a1, const char *a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "HTTP/1.1";
  }

  if (a4)
  {
    if (a5)
    {
LABEL_6:
      v11 = SNPrintF(a1, 0x2000, "%s %u %s (%d)\r\n", a4, a5, a6, a7, a8, v10);
      goto LABEL_9;
    }
  }

  else
  {
    a4 = HTTPGetReasonPhrase(a3);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v11 = SNPrintF(a1, 0x2000, "%s %u %s\r\n", a4, a5, a6, a7, a8, v10);
LABEL_9:
  if (v11 - 0x2000 < 0xFFFFE001)
  {
    v12 = 4294960545;
  }

  else
  {
    v12 = 0;
    *(a1 + 0x2000) = v11;
  }

  *(a1 + 8476) = v12;
  return v12;
}

const char *HTTPGetReasonPhrase(int a1)
{
  if (a1 <= 299)
  {
    if (a1 > 203)
    {
      if (a1 <= 207)
      {
        if (a1 > 205)
        {
          if (a1 == 206)
          {
            return "Partial Content";
          }

          else
          {
            return "Multi-Status";
          }
        }

        else if (a1 == 204)
        {
          return "No Content";
        }

        else
        {
          return "Reset Content";
        }
      }

      if (a1 > 225)
      {
        if (a1 == 226)
        {
          return "IM Used";
        }

        if (a1 == 250)
        {
          return "Low on Storage Space";
        }
      }

      else
      {
        if (a1 == 208)
        {
          return "Already Reported";
        }

        if (a1 == 210)
        {
          return "Content Different";
        }
      }
    }

    else
    {
      if (a1 > 199)
      {
        if (a1 > 201)
        {
          if (a1 == 202)
          {
            return "Accepted";
          }

          else
          {
            return "Non-Authoritative Information";
          }
        }

        else if (a1 == 200)
        {
          return "OK";
        }

        else
        {
          return "Created";
        }
      }

      if (a1 > 101)
      {
        if (a1 == 102)
        {
          return "Processing";
        }

        if (a1 == 103)
        {
          return "Checkpoint";
        }
      }

      else
      {
        if (a1 == 100)
        {
          return "Continue";
        }

        if (a1 == 101)
        {
          return "Switching Protocols";
        }
      }
    }

    return "";
  }

  if (a1 > 550)
  {
    if (a1 <= 597)
    {
      if (a1 == 551)
      {
        return "Option Not Supported";
      }

      if (a1 == 553)
      {
        return "Proxy Unavailable";
      }
    }

    else
    {
      switch(a1)
      {
        case 598:
          return "Network Read Timeout";
        case 599:
          return "Network Connect Timeout";
        case 999:
          return "Request Denied";
      }
    }

    return "";
  }

  switch(a1)
  {
    case 300:
      result = "Multiple Choices";
      break;
    case 301:
      result = "Moved Permanently";
      break;
    case 302:
      result = "Found";
      break;
    case 303:
      result = "See Other";
      break;
    case 304:
      result = "Not Modified";
      break;
    case 305:
      result = "Use Proxy";
      break;
    case 306:
      result = "Switch Proxy";
      break;
    case 307:
      result = "Temporary Redirect";
      break;
    case 308:
      result = "Permanent Redirect";
      break;
    case 330:
      result = "Moved Location";
      break;
    case 350:
      result = "Going Away";
      break;
    case 351:
      result = "Load Balancing";
      break;
    case 400:
      result = "Bad Request";
      break;
    case 401:
      result = "Unauthorized";
      break;
    case 402:
      result = "Payment Required";
      break;
    case 403:
      result = "Forbidden";
      break;
    case 404:
      result = "Not Found";
      break;
    case 405:
      result = "Method Not Allowed";
      break;
    case 406:
      result = "Not Acceptable";
      break;
    case 407:
      result = "Proxy Authentication Required";
      break;
    case 408:
      result = "Request Timeout";
      break;
    case 409:
      result = "Conflict";
      break;
    case 410:
      result = "Gone";
      break;
    case 411:
      result = "Length Required";
      break;
    case 412:
      result = "Precondition Failed";
      break;
    case 413:
      result = "Request Entity Too Large";
      break;
    case 414:
      result = "Request URI Too Long";
      break;
    case 415:
      result = "Unsupported Media Type";
      break;
    case 416:
      result = "Requested Range Not Satisfiable";
      break;
    case 417:
    case 423:
      result = "Expectation Failed";
      break;
    case 418:
      result = "I'm a teapot";
      break;
    case 419:
      result = "Authentication Timeout";
      break;
    case 420:
      result = "Enhance Your Calm";
      break;
    case 421:
      result = "Not Authoritative";
      break;
    case 422:
      result = "Unprocessable Entity";
      break;
    case 424:
      result = "Failed Dependency";
      break;
    case 425:
      result = "Unordered Collection";
      break;
    case 426:
      result = "Upgrade Required";
      break;
    case 428:
      result = "Precondition Required";
      break;
    case 429:
      result = "Too Many Requests";
      break;
    case 431:
      result = "Request Header Fields Too Large";
      break;
    case 440:
      result = "Login Timeout";
      break;
    case 444:
      result = "No Response";
      break;
    case 449:
      result = "Retry With";
      break;
    case 450:
      result = "Blocked by Parental Controls";
      break;
    case 451:
      result = "Parameter Not Understood";
      break;
    case 452:
      result = "Conference Not Found";
      break;
    case 453:
      result = "Not Enough Bandwidth";
      break;
    case 454:
      result = "Session Not Found";
      break;
    case 455:
      result = "Method Not Valid In This State";
      break;
    case 456:
      result = "Header Field Not Valid";
      break;
    case 457:
      result = "Invalid Range";
      break;
    case 458:
      result = "Parameter Is Read-Only";
      break;
    case 459:
      result = "Aggregate Operation Not Allowed";
      break;
    case 460:
      result = "Only Aggregate Operation Allowed";
      break;
    case 461:
      result = "Unsupported Transport";
      break;
    case 462:
      result = "Destination Unreachable";
      break;
    case 463:
      result = "Destination Prohibited";
      break;
    case 464:
      result = "Data Transport Not Ready Yet";
      break;
    case 465:
      result = "Notification Reason Unknown";
      break;
    case 466:
      result = "Key Management Error";
      break;
    case 470:
      result = "Connection Authorization Required";
      break;
    case 471:
      result = "Connection Credentials not accepted";
      break;
    case 472:
      result = "Failure to establish secure connection";
      break;
    case 475:
      result = "Invalid collblob";
      break;
    case 494:
      result = "Request Header Too Large";
      break;
    case 495:
      result = "Cert Error";
      break;
    case 496:
      result = "No Cert";
      break;
    case 497:
      result = "HTTP to HTTPS";
      break;
    case 498:
      result = "Token expired/invalid";
      break;
    case 499:
      result = "Client Closed Request";
      break;
    case 500:
      result = "Internal Server Error";
      break;
    case 501:
      result = "Not Implemented";
      break;
    case 502:
      result = "Bad Gateway";
      break;
    case 503:
      result = "Service Unavailable";
      break;
    case 504:
      result = "Gateway Timeout";
      break;
    case 505:
      result = "Version Not Supported";
      break;
    case 506:
      result = "Variant Also Negotiates";
      break;
    case 507:
      result = "Insufficient Storage";
      break;
    case 508:
      result = "Loop Detected";
      break;
    case 509:
      result = "Bandwidth Limit Exceeded";
      break;
    case 510:
      result = "Not Extended";
      break;
    case 511:
      result = "Network Authentication Required";
      break;
    case 520:
      result = "Origin Error";
      break;
    case 521:
      result = "Web Server Is Down";
      break;
    case 522:
      result = "Connection timed out";
      break;
    case 523:
      result = "Proxy Declined Request";
      break;
    case 524:
      result = "Timeout occurred";
      break;
    case 525:
      result = "SSL Handshake Failed";
      break;
    case 526:
      result = "Invalid SSL Certificate";
      break;
    default:
      return "";
  }

  return result;
}

const char *HTTPMakeDateString(time_t a1, char *a2, size_t a3)
{
  v8 = a1;
  memset(&v7, 0, sizeof(v7));
  v5 = gmtime_r(&v8, &v7);
  if (!v5)
  {
    return "";
  }

  *a2 = 0;
  strftime(a2, a3, "%a, %d %b %Y %H:%M:%S GMT", v5);
  return a2;
}

uint64_t HTTPMessageSetBody(uint64_t a1, uint64_t a2, const void *a3, size_t size)
{
  result = *(a1 + 8500);
  if (!result)
  {
    result = HTTPMessageSetBodyLength(a1, size);
    if (result)
    {
      if (!*(a1 + 8500))
      {
        *(a1 + 8500) = result;
      }
    }

    else
    {
      if (a3)
      {
        v14 = *(a1 + 8520);
        if (v14 != a3)
        {
          memmove(v14, a3, size);
        }
      }

      HTTPHeader_SetField((a1 + 24), "Content-Length", "%zu", v9, v10, v11, v12, v13, size);
      if (a2)
      {
        HTTPHeader_SetField((a1 + 24), "Content-Type", "%s", v15, v16, v17, v18, v19, a2);
      }

      return 0;
    }
  }

  return result;
}

uint64_t HTTPConnectionSendResponse(uint64_t a1)
{
  v2 = *(a1 + 304);
  v5 = HTTPHeader_Commit(v2 + 24);
  if (!v5)
  {
    LogHTTP(*(a1 + 128), *(a1 + 128), (v2 + 24), *(v2 + 8216), *(v2 + 8520), *(v2 + 8528), v3, v4);
    *(v2 + 9584) = v2 + 24;
    *(v2 + 9592) = *(v2 + 8216);
    *(v2 + 9624) = 1;
    v13 = *(v2 + 8528);
    if (v13)
    {
      *(v2 + 9600) = *(v2 + 8520);
      *(v2 + 9608) = v13;
      *(v2 + 9624) = 2;
    }

    *(v2 + 9616) = v2 + 9584;
    v14 = *(a1 + 288);
    *(a1 + 288) = 2;
    if (v14 == 1)
    {
      _HTTPConnectionRunStateMachine(a1, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return v5;
}

uint64_t HTTPHeader_InitRequestV(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = SNPrintF(a1, 0x2000, "%s%n %n%V%n %s\r\n", a4, a5, a6, a7, a8, a3);
  if (v9 - 0x2000 < 0xFFFFE001)
  {
    result = 4294960545;
  }

  else
  {
    v10 = v9;
    result = 0;
    *(a1 + 8216) = a1;
    *(a1 + 8224) = 0;
    *(a1 + 8240) = a1;
    *(a1 + 8248) = 0;
    *(a1 + 0x2000) = v10;
  }

  *(a1 + 8476) = result;
  return result;
}

uint64_t HTTPMessageSetClientMessageType(uint64_t a1, char *__s1)
{
  v3 = strdup(__s1);
  if (!v3)
  {
    return 4294960568;
  }

  v4 = v3;
  v5 = *(a1 + 9776);
  if (v5)
  {
    free(v5);
  }

  result = 0;
  *(a1 + 9776) = v4;
  return result;
}

void _HTTPClientRunStateMachine(char *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (cf + 560);
  v140 = *MEMORY[0x1E69E9840];
  v10 = "void _HTTPClientRunStateMachine(HTTPClientRef)";
  v11 = "Request start: CID 0x%08X, Peer %s, TimeoutSecs %d\n";
  v12 = MEMORY[0x1E69E9710];
LABEL_2:
  for (i = *(cf + 43); ; i = 0)
  {
    if (i != 2)
    {
      if (i <= 4)
      {
        if (i <= 2)
        {
          if (i)
          {
            if (i == 1)
            {
              return;
            }

            goto LABEL_209;
          }

          v25 = *v9;
          if (!*v9)
          {
            if (*(cf + 66))
            {
              v22 = 4294960573;
              goto LABEL_220;
            }

            if ((cf[84] & 0x10) == 0)
            {
              return;
            }

            if (!*(cf + 33))
            {
              if (cf[216])
              {
                cf[216] = 0;
                dispatch_resume(*(cf + 26));
              }

              return;
            }

            v26 = 7;
LABEL_165:
            *(cf + 43) = v26;
            goto LABEL_2;
          }

          if ((*(cf + 50) & 0x80000000) == 0)
          {
            if (!*(cf + 26))
            {
              CFRetain(cf);
              _HTTPClientConnectHandler(*(cf + 50), 0, cf, v111, v112, v113, v114, v115);
              return;
            }

            v26 = 2;
            goto LABEL_165;
          }

          v107 = *(cf + 21);
          v108 = (v107 >> 1) & 0x1F0 | v107 & 0xF | (((v107 >> 10) & 3) << 11) | (v107 >> 1) & 0x4000;
          v109 = *(v25 + 9632);
          if (v109 == -1)
          {
            v110 = *(v25 + 9640);
            if (v110 < 1)
            {
              v116 = *(cf + 36);
              v117 = v116 < 1;
              v118 = 1000000000 * v116;
              if (v117)
              {
                v109 = -1;
              }

              else
              {
                v109 = v118;
              }
            }

            else
            {
              v109 = 1000000000 * v110;
            }
          }

          v119 = *(cf + 12);
          if (*v119 <= 50)
          {
            if (*v119 != -1)
            {
LABEL_237:
              LogPrintF(v119, "void _HTTPClientRunStateMachine(HTTPClientRef)", 0x32u, "Connect start: CID 0x%08X, Peer %s, Flags 0x%X, TimeoutNs %llu\n", a5, a6, a7, a8, *(cf + 42));
              v107 = *(cf + 21);
              goto LABEL_239;
            }

            v120 = _LogCategory_Initialize(v119, 0x32u);
            v107 = *(cf + 21);
            if (v120)
            {
              v119 = *(cf + 12);
              goto LABEL_237;
            }
          }

LABEL_239:
          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v135 = 160;
          v124 = *(cf + 9);
          v125 = *(cf + 20);
          v126 = v108;
          v127 = v109;
          v128 = -1;
          v129 = *(cf + 184);
          v130 = _HTTPClientConnectHandler;
          v131 = cf;
          v121 = *(cf + 13);
          v132 = *(cf + 2);
          v133 = v121;
          v134 = *(cf + 11);
          if ((v107 & 0x10000) != 0)
          {
            snprintf(__str, 0x20uLL, "CID 0x%08X", *(cf + 42));
            *&v136 = __str;
            v108 |= 0x400u;
            v126 = v108;
          }

          if (*(cf + 20))
          {
            *(&v139 + 1) = *(cf + 20);
            v126 = v108 | 0x400;
          }

          v19 = AsyncConnection_ConnectEx(cf + 22, &v124);
          if (!v19)
          {
            CFRetain(cf);
            *(cf + 43) = 1;
            return;
          }

LABEL_244:
          v22 = v19;
          goto LABEL_220;
        }

        if (i == 3)
        {
          v27 = *v9;
          if (!*v9)
          {
            goto LABEL_219;
          }

          v34 = HTTPMessageWriteMessage(*v9, *(cf + 64), *(cf + 60));
          v35 = _HTTPClientHandleIOError(cf, v34, 0);
          if (v35 == 35)
          {
            return;
          }

          v22 = v35;
          if (v35)
          {
            goto LABEL_220;
          }

          LogHTTP(*(cf + 12), *(cf + 12), (v27 + 24), *(v27 + 8216), *(v27 + 8520), *(v27 + 8528), a7, a8);
          v40 = *(cf + 12);
          if (*v40 <= 50)
          {
            if (*v40 == -1)
            {
              if (_LogCategory_Initialize(*(cf + 12), 0x32u))
              {
                v41 = v10;
                v42 = v11;
                v40 = *(cf + 12);
                goto LABEL_58;
              }
            }

            else
            {
              v41 = v10;
              v42 = v11;
LABEL_58:
              v43 = *(cf + 42);
              if (*(v27 + 9776) && IsAppleInternalBuild_sOnce != -1)
              {
                dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
              }

              v10 = v41;
              LogPrintF(v40, v41, 0x32u, "Request written: CID 0x%08X, Header %zu bytes, Body %zu bytes%?{end}, Type %'s\n", v36, v37, v38, v39, v43);
              v11 = v42;
              v12 = MEMORY[0x1E69E9710];
            }
          }

          v81 = *(cf + 58);
          if (v81)
          {
            v81(v27 + 24, *(v27 + 8216), *(v27 + 8520), *(v27 + 8528), *(cf + 57));
          }

          v82 = *(v27 + 8216);
          if (v82 == 4)
          {
            if (*(v27 + 24) == 36)
            {
              v83 = 6;
            }

            else
            {
              v83 = 4;
            }
          }

          else
          {
            v83 = 4;
          }

          *(cf + 43) = v83;
          if (*(cf + 6) && *(cf + 19) && *(cf + 16))
          {
            v84 = *(v27 + 9560);
            if (!v84)
            {
              v84 = malloc_type_calloc(1uLL, 0x2120uLL, 0x10500401E8B2D2AuLL);
              *(v27 + 9560) = v84;
              if (!v84)
              {
                goto LABEL_250;
              }

              v82 = *(v27 + 8216);
            }

            memcpy(v84, (v27 + 24), v82);
            *(*(v27 + 9560) + 0x2000) = *(v27 + 8216);
            v85 = *(v27 + 9568);
            if (v85)
            {
              free(v85);
              *(v27 + 9568) = 0;
            }

            *(v27 + 9576) = 0;
            v86 = *(v27 + 8528);
            if (v86)
            {
              v87 = *(v27 + 8520);
              if (v87 == *(v27 + 9552))
              {
                *(v27 + 9568) = v87;
                *(v27 + 8520) = 0;
                *(v27 + 9552) = 0;
              }

              else
              {
                v88 = malloc_type_malloc(v86, 0x100004077774924uLL);
                *(v27 + 9568) = v88;
                if (!v88)
                {
LABEL_250:
                  v22 = 4294960568;
                  goto LABEL_220;
                }

                memcpy(v88, *(v27 + 8520), *(v27 + 8528));
                v86 = *(v27 + 8528);
              }

              *(v27 + 9576) = v86;
            }
          }

LABEL_179:
          HTTPMessageReset(v27);
          goto LABEL_2;
        }

        v27 = *v9;
        if (!*v9)
        {
          goto LABEL_219;
        }

        *(v27 + 8224) = *(cf + 32);
        *(v27 + 8232) = *(cf + 33);
        Message = HTTPMessageReadMessageEx(v27, *(cf + 63), *(cf + 60), a4, a5, a6, a7, a8);
        v19 = _HTTPUpdateExtraData(cf, *(v27 + 8224), *(v27 + 8232));
        if (v19)
        {
          goto LABEL_244;
        }

        *(v27 + 8232) = 0;
        v29 = _HTTPClientHandleIOError(cf, Message, 1);
        if (v29 == 35)
        {
          return;
        }

        v22 = v29;
        if (v29)
        {
          goto LABEL_220;
        }

        v30 = (v27 + 24);
        LogHTTP(*(cf + 12), *(cf + 12), (v27 + 24), *(v27 + 8216), *(v27 + 8520), *(v27 + 8528), a7, a8);
        v31 = *(cf + 59);
        if (v31)
        {
          v31(v27 + 24, *(v27 + 8216), *(v27 + 8520), *(v27 + 8528), *(cf + 57));
        }

        if (*(v27 + 8216) == 4 && *v30 == 36)
        {
          v32 = *(cf + 12);
          if (*v32 <= 50)
          {
            if (*v32 != -1)
            {
              goto LABEL_47;
            }

            if (_LogCategory_Initialize(v32, 0x32u))
            {
              v32 = *(cf + 12);
LABEL_47:
              LogPrintF(v32, v10, 0x32u, "Binary received 1: CID 0x%08X, Header %zu bytes, Body %zu bytes\n", a5, a6, a7, a8, *(cf + 42));
            }
          }

          v93 = *(cf + 6);
          if (v93)
          {
            v93(*(v27 + 8480), *(v27 + 8520), *(v27 + 8528), *(cf + 4));
          }

          goto LABEL_179;
        }

        if ((cf[84] & 0x10) != 0)
        {
          v62 = 0;
          v63 = *(v27 + 8448);
          while (v63 != v62)
          {
            if (*(*(v27 + 8440) + v62) != aEvent10[v62])
            {
              goto LABEL_84;
            }

            if (++v62 == 10)
            {
              goto LABEL_128;
            }
          }

          if (aEvent10[v63])
          {
            goto LABEL_84;
          }

LABEL_128:
          v79 = *(cf + 12);
          if (*v79 <= 50)
          {
            if (*v79 != -1)
            {
              goto LABEL_130;
            }

            if (_LogCategory_Initialize(v79, 0x32u))
            {
              v79 = *(cf + 12);
LABEL_130:
              LogPrintF(v79, v10, 0x32u, "Event received 1: CID 0x%08X, Header %zu bytes, Body %zu bytes\n", a5, a6, a7, a8, *(cf + 42));
            }
          }

          v95 = *(cf + 7);
          if (v95)
          {
            v95(v27, *(cf + 4));
          }

          goto LABEL_179;
        }

LABEL_84:
        v56 = *(cf + 12);
        if (*v56 > 50)
        {
          goto LABEL_156;
        }

        if (*v56 == -1)
        {
          if (!_LogCategory_Initialize(v56, 0x32u))
          {
LABEL_156:
            if (*(v27 + 8456) != 401 || !*(cf + 6) || !*(cf + 19) || !*(cf + 16) || (v89 = *(v27 + 9560)) == 0 || HTTPHeader_Parse(v89) || (v91 = *(v27 + 9560), *(v91 + 8476) = -6721, *(cf + 68) = *(cf + 6), *(cf + 37) = v91, *(cf + 38) = v30, cf[276] = cf[136] == 0, v92 = *(cf + 16), *(cf + 35) = *(cf + 19), *(cf + 36) = v92, HTTPClientAuthorization_Apply((cf + 272), v90, a3, a4, a5, a6, a7, a8)) || HTTPHeader_Commit(*(v27 + 9560)))
            {
              v26 = 6;
              goto LABEL_165;
            }

            memcpy((v27 + 24), *(v27 + 9560), *(*(v27 + 9560) + 0x2000));
            v99 = *(*(v27 + 9560) + 0x2000);
            *(v27 + 8216) = v99;
            v100 = *(v27 + 9552);
            if (v100)
            {
              free(v100);
              v99 = *(v27 + 8216);
            }

            v101 = *(v27 + 9568);
            *(v27 + 9552) = v101;
            *(v27 + 8520) = v101;
            v102 = *(v27 + 9576);
            *(v27 + 8528) = v102;
            *(v27 + 9568) = 0u;
            *(v27 + 9584) = v30;
            *(v27 + 9592) = v99;
            *(v27 + 9624) = 1;
            if (v102)
            {
              *(v27 + 9600) = v101;
              *(v27 + 9608) = v102;
              *(v27 + 9624) = 2;
            }

            *(v27 + 9616) = v27 + 9584;
            *(cf + 43) = 2;
            goto LABEL_2;
          }

          v56 = *(cf + 12);
        }

        LogPrintF(v56, v10, 0x32u, "Response received: CID 0x%08X, Header %zu bytes, Body %zu bytes, Status %d\n", a5, a6, a7, a8, *(cf + 42));
        goto LABEL_156;
      }

      if (i > 6)
      {
        if (i != 7)
        {
          if (i == 8)
          {
            v18 = *(cf + 56);
            if (!v18)
            {
              v19 = HTTPMessageCreate(cf + 56);
              if (v19)
              {
                goto LABEL_244;
              }

              v18 = *(cf + 56);
              *(v18 + 9768) = *(cf + 131);
            }

            *(v18 + 8224) = *(cf + 32);
            *(v18 + 8232) = *(cf + 33);
            v20 = HTTPMessageReadMessageEx(v18, *(cf + 63), *(cf + 60), a4, a5, a6, a7, a8);
            v19 = _HTTPUpdateExtraData(cf, *(v18 + 8224), *(v18 + 8232));
            if (v19)
            {
              goto LABEL_244;
            }

            *(v18 + 8232) = 0;
            v21 = _HTTPClientHandleIOError(cf, v20, 1);
            if (v21 == 35)
            {
              if (*(v18 + 8216))
              {
                return;
              }

              v105 = *(cf + 12);
              if (*v105 <= 40)
              {
                if (*v105 != -1)
                {
                  goto LABEL_215;
                }

                if (_LogCategory_Initialize(v105, 0x28u))
                {
                  v105 = *(cf + 12);
LABEL_215:
                  LogPrintF(v105, "void _HTTPClientRunStateMachine(HTTPClientRef)", 0x28u, "### Ignoring spurious readability notification\n", a5, a6, a7, a8, v122);
                }
              }

              v106 = *(cf + 31);
              if (v106)
              {
                dispatch_source_cancel(*(cf + 31));
                dispatch_release(v106);
                *(cf + 31) = 0;
              }

              *(cf + 43) = 0;
              return;
            }

            v22 = v21;
            if (v21)
            {
              goto LABEL_220;
            }

            LogHTTP(*(cf + 12), *(cf + 12), (v18 + 24), *(v18 + 8216), *(v18 + 8520), *(v18 + 8528), a7, a8);
            v23 = *(cf + 59);
            if (v23)
            {
              v23(v18 + 24, *(v18 + 8216), *(v18 + 8520), *(v18 + 8528), *(cf + 57));
            }

            if (*(v18 + 8216) == 4 && *(v18 + 24) == 36)
            {
              v24 = *(cf + 12);
              if (*v24 > 50)
              {
                goto LABEL_174;
              }

              if (*v24 == -1)
              {
                if (!_LogCategory_Initialize(v24, 0x32u))
                {
LABEL_174:
                  v94 = *(cf + 6);
                  if (v94)
                  {
                    v94(*(v18 + 8480), *(v18 + 8520), *(v18 + 8528), *(cf + 4));
                  }

                  goto LABEL_183;
                }

                v24 = *(cf + 12);
              }

              LogPrintF(v24, v10, 0x32u, "Binary received 2: CID 0x%08X, Header %zu bytes, Body %zu bytes\n", a5, a6, a7, a8, *(cf + 42));
              goto LABEL_174;
            }

            if ((cf[84] & 0x10) == 0)
            {
LABEL_88:
              v57 = *(cf + 12);
              if (*v57 > 50)
              {
                goto LABEL_183;
              }

              if (*v57 == -1)
              {
                if (!_LogCategory_Initialize(v57, 0x32u))
                {
LABEL_183:
                  v97 = *(cf + 56);
                  if (v97)
                  {
                    CFRelease(v97);
                    *(cf + 56) = 0;
                  }

LABEL_185:
                  v98 = *(cf + 31);
                  if (v98)
                  {
                    dispatch_source_cancel(*(cf + 31));
                    dispatch_release(v98);
                    *(cf + 31) = 0;
                  }

                  goto LABEL_187;
                }

                v57 = *(cf + 12);
              }

              LogPrintF(v57, v10, 0x32u, "Event received 3: CID 0x%08X, Header %zu bytes, Body %zu bytes, ignored\n", a5, a6, a7, a8, *(cf + 42));
              goto LABEL_183;
            }

            v64 = 0;
            v65 = *(v18 + 8448);
            while (v65 != v64)
            {
              if (*(*(v18 + 8440) + v64) != aEvent10[v64])
              {
                goto LABEL_88;
              }

              if (++v64 == 10)
              {
                goto LABEL_132;
              }
            }

            if (aEvent10[v65])
            {
              goto LABEL_88;
            }

LABEL_132:
            v80 = *(cf + 12);
            if (*v80 <= 50)
            {
              if (*v80 != -1)
              {
LABEL_134:
                LogPrintF(v80, v10, 0x32u, "Event received 2: CID 0x%08X, Header %zu bytes, Body %zu bytes\n", a5, a6, a7, a8, *(cf + 42));
                goto LABEL_181;
              }

              if (_LogCategory_Initialize(v80, 0x32u))
              {
                v80 = *(cf + 12);
                goto LABEL_134;
              }
            }

LABEL_181:
            v96 = *(cf + 7);
            if (v96)
            {
              v96(v18, *(cf + 4));
            }

            goto LABEL_183;
          }

          if (i == 9)
          {
            v103 = *(cf + 12);
            if (*v103 <= 90)
            {
              if (*v103 == -1)
              {
                if (!_LogCategory_Initialize(v103, 0x5Au))
                {
                  goto LABEL_217;
                }

                v103 = *(cf + 12);
              }

              LogPrintF(v103, "void _HTTPClientRunStateMachine(HTTPClientRef)", 0x5Au, "### Error state: CID 0x%08X\n", a5, a6, a7, a8, *(cf + 42));
            }

LABEL_217:
            v22 = 4294960587;
            goto LABEL_220;
          }

LABEL_209:
          v104 = *(cf + 12);
          if (*v104 <= 90)
          {
            if (*v104 == -1)
            {
              if (!_LogCategory_Initialize(v104, 0x5Au))
              {
                goto LABEL_219;
              }

              v104 = *(cf + 12);
            }

            LogPrintF(v104, "void _HTTPClientRunStateMachine(HTTPClientRef)", 0x5Au, "### Bad state: CID 0x%08X, State %d\n", a5, a6, a7, a8, *(cf + 42));
          }

LABEL_219:
          v22 = 4294960534;
          goto LABEL_220;
        }

        v44 = (*(cf + 42) + 1);
        *(cf + 42) = v44;
        v45 = *(cf + 12);
        if (*v45 > 50)
        {
          goto LABEL_92;
        }

        if (*v45 == -1)
        {
          if (!_LogCategory_Initialize(v45, 0x32u))
          {
            goto LABEL_92;
          }

          v45 = *(cf + 12);
          v44 = *(cf + 42);
        }

        LogPrintF(v45, v10, 0x32u, "Event start: CID 0x%08X, Peer %s\n", a5, a6, a7, a8, v44);
LABEL_92:
        v58 = *(cf + 31);
        if (v58)
        {
          dispatch_source_cancel(*(cf + 31));
          dispatch_release(v58);
          *(cf + 31) = 0;
        }

        if (*(cf + 36) >= 1)
        {
          v59 = dispatch_source_create(v12, 0, 0, *(cf + 2));
          *(cf + 31) = v59;
          if (!v59)
          {
            goto LABEL_246;
          }

          CFRetain(cf);
          dispatch_set_context(*(cf + 31), cf);
          dispatch_source_set_event_handler_f(*(cf + 31), _HTTPClientTimerFiredHandler);
          dispatch_source_set_cancel_handler_f(*(cf + 31), _HTTPClientTimerCanceledHandler);
          v60 = *(cf + 31);
          v61 = dispatch_time(0, 1000000000 * *(cf + 36));
          dispatch_source_set_timer(v60, v61, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
          dispatch_resume(*(cf + 31));
        }

        v26 = 8;
        goto LABEL_165;
      }

      if (i != 5)
      {
        v33 = *v9;
        if (!*v9)
        {
          goto LABEL_219;
        }

        if (*(v33 + 8512))
        {
          shutdown(*(cf + 50), 1);
          v26 = 5;
          goto LABEL_165;
        }

        v54 = *(v33 + 16);
        *v9 = v54;
        if (!v54)
        {
          *(cf + 71) = v9;
        }

        *(v33 + 9648) = 0;
        v55 = *(v33 + 9712);
        if (v55)
        {
          v55(v33);
        }

        CFRelease(v33);
        goto LABEL_185;
      }

      *__str = 0;
      v46 = (*(cf + 63))(&v124, 16, __str, *(cf + 60));
      v47 = _HTTPClientHandleIOError(cf, v46, 1);
      if (v47 == 35)
      {
        return;
      }

      v48 = v47;
      v49 = *__str;
      if (*__str)
      {
        v50 = *(cf + 12);
        if (*v50 <= 50)
        {
          if (*v50 == -1)
          {
            if (!_LogCategory_Initialize(v50, 0x32u))
            {
              goto LABEL_114;
            }

            v50 = *(cf + 12);
            v49 = *__str;
          }

          LogPrintF(v50, v10, 0x32u, "### Read %zu bytes after connection close\n", a5, a6, a7, a8, v49);
        }
      }

LABEL_114:
      if (v48 == -6753)
      {
        goto LABEL_121;
      }

      v69 = *(cf + 12);
      if (*v69 > 50)
      {
        goto LABEL_121;
      }

      if (*v69 == -1)
      {
        if (!_LogCategory_Initialize(v69, 0x32u))
        {
          goto LABEL_121;
        }

        v69 = *(cf + 12);
      }

      LogPrintF(v69, v10, 0x32u, "### Error on wait for close: %#m\n", a5, a6, a7, a8, v48);
LABEL_121:
      v70 = *v9;
      if (!*v9)
      {
        goto LABEL_219;
      }

      v71 = *(v70 + 16);
      *v9 = v71;
      if (!v71)
      {
        *(cf + 71) = v9;
      }

      *(v70 + 9648) = 0;
      v72 = *(v70 + 9712);
      if (v72)
      {
        v72(v70);
      }

      CFRelease(v70);
      _HTTPClientErrorHandler(cf, 4294960544, v73, v74, v75, v76, v77, v78);
LABEL_187:
      *(cf + 43) = 0;
      goto LABEL_2;
    }

    v14 = *(cf + 31);
    if (v14)
    {
      dispatch_source_cancel(*(cf + 31));
      dispatch_release(v14);
      *(cf + 31) = 0;
    }

    v15 = *v9;
    if (!*v9)
    {
      goto LABEL_219;
    }

    if (*(v15 + 9624))
    {
      break;
    }

    *(v15 + 8456) = 200;
    v16 = *(v15 + 16);
    *v9 = v16;
    if (!v16)
    {
      *(cf + 71) = v9;
    }

    *(v15 + 9648) = 0;
    v17 = *(v15 + 9712);
    if (v17)
    {
      v17(v15);
    }

    CFRelease(v15);
    *(cf + 43) = 0;
  }

  *(v15 + 9768) = *(cf + 131);
  v51 = *(v15 + 9644);
  if (v51 <= 0)
  {
    v51 = *(cf + 36);
  }

  v52 = (*(cf + 42) + 1);
  *(cf + 42) = v52;
  v53 = *(cf + 12);
  if (*v53 <= 50)
  {
    if (*v53 != -1)
    {
      goto LABEL_73;
    }

    if (_LogCategory_Initialize(v53, 0x32u))
    {
      v53 = *(cf + 12);
      v52 = *(cf + 42);
LABEL_73:
      LogPrintF(v53, v10, 0x32u, v11, a5, a6, a7, a8, v52);
    }
  }

  if (v51 < 1)
  {
LABEL_112:
    v26 = 3;
    goto LABEL_165;
  }

  v66 = dispatch_source_create(v12, 0, 0, *(cf + 2));
  *(cf + 31) = v66;
  if (v66)
  {
    CFRetain(cf);
    dispatch_set_context(*(cf + 31), cf);
    dispatch_source_set_event_handler_f(*(cf + 31), _HTTPClientTimerFiredHandler);
    dispatch_source_set_cancel_handler_f(*(cf + 31), _HTTPClientTimerCanceledHandler);
    v67 = *(cf + 31);
    v68 = dispatch_time(0, 1000000000 * v51);
    dispatch_source_set_timer(v67, v68, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    dispatch_resume(*(cf + 31));
    goto LABEL_112;
  }

LABEL_246:
  v22 = 4294960596;
LABEL_220:
  _HTTPClientErrorHandler(cf, v22, a3, a4, a5, a6, a7, a8);
}

uint64_t HTTPClientSendMessage(dispatch_queue_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a2 + 8216))
  {
    *(a2 + 9624) = 0;
LABEL_9:
    CFRetain(a2);
    CFRetain(a1);
    *(a2 + 9656) = a1;
    dispatch_async_f(a1[2], a2, _HTTPClientSendMessage);
    return 0;
  }

  v10 = a2 + 24;
  if (*(a2 + 8512))
  {
    HTTPHeader_SetField((a2 + 24), "Connection", "close", a4, a5, a6, a7, a8, v13);
  }

  result = HTTPHeader_Commit(a2 + 24);
  if (!result)
  {
    *(a2 + 9584) = v10;
    *(a2 + 9592) = *(a2 + 8216);
    *(a2 + 9624) = 1;
    v12 = *(a2 + 8528);
    if (v12)
    {
      *(a2 + 9600) = *(a2 + 8520);
      *(a2 + 9608) = v12;
      *(a2 + 9624) = 2;
    }

    *(a2 + 9616) = a2 + 9584;
    goto LABEL_9;
  }

  return result;
}

void _HTTPClientSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 9656);
  *(a1 + 16) = 0;
  **(v8 + 568) = a1;
  *(v8 + 568) = a1 + 16;
  _HTTPClientRunStateMachine(v8, a2, a3, a4, a5, a6, a7, a8);

  CFRelease(v8);
}

uint64_t _HTTPClientHandleIOError(uint64_t a1, uint64_t a2, int a3)
{
  if (a2 > -6767)
  {
    if (a2 != -6766)
    {
      if (a2 != 35)
      {
        return a2;
      }

      v4 = a1;
      if (a3)
      {
LABEL_8:
        v6 = *(v4 + 216);
        v5 = (v4 + 216);
        if (v6)
        {
          v7 = 208;
LABEL_15:
          *v5 = 0;
          dispatch_resume(*(a1 + v7));
          return 35;
        }

        return 35;
      }

LABEL_13:
      v8 = *(v4 + 232);
      v5 = (v4 + 232);
      if (v8)
      {
        v7 = 224;
        goto LABEL_15;
      }

      return 35;
    }

    if (*(a1 + 216))
    {
      *(a1 + 216) = 0;
      dispatch_resume(*(a1 + 208));
    }

LABEL_12:
    v4 = a1;
    goto LABEL_13;
  }

  if (a2 == -6775)
  {
    goto LABEL_12;
  }

  if (a2 == -6774)
  {
    v4 = a1;
    goto LABEL_8;
  }

  return a2;
}

uint64_t _HTTPClientReadHandler(uint64_t a1)
{
  dispatch_suspend(*(a1 + 208));
  *(a1 + 216) = 1;
  v2 = *(a1 + 560);
  if (v2)
  {
    v3 = *(v2 + 9644);
    if (v3 >= 1)
    {
      v4 = *(a1 + 248);
      if (v4)
      {
        v5 = dispatch_time(0, 1000000000 * v3);
        dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      }
    }
  }

  if ((*(a1 + 84) & 0x10) != 0 && !v2 && !*(a1 + 172))
  {
    *(a1 + 172) = 7;
  }

  return _HTTPClientRunStateMachine(a1);
}

uint64_t _HTTPUpdateExtraData(uint64_t a1, void *__src, size_t __len)
{
  if (__len)
  {
    v6 = *(a1 + 256);
    if (*(a1 + 264) == __len)
    {
LABEL_5:
      memmove(v6, __src, __len);
      result = 0;
      *(a1 + 264) = __len;
      return result;
    }

    v6 = malloc_type_realloc(v6, __len, 0x100004077774924uLL);
    if (v6)
    {
      *(a1 + 256) = v6;
      goto LABEL_5;
    }

    return 4294960568;
  }

  else
  {
    v8 = *(a1 + 256);
    if (v8)
    {
      free(v8);
      *(a1 + 256) = 0;
    }

    result = 0;
    *(a1 + 264) = 0;
  }

  return result;
}

uint64_t CryptoHKDF(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v12 = a5;
  v32 = *MEMORY[0x1E69E9840];
  if (a1 == _kCryptoHashDescriptor_SHA512)
  {
    ccsha512_di();
  }

  else
  {
    if (a1 != _kCryptoHashDescriptor_SHA256)
    {
      v27 = 0;
      v17 = 0uLL;
      memset(v26, 0, sizeof(v26));
      v25 = 0;
      if (!a5)
      {
        v12 = *(a1 + 24);
        a4 = &v29;
        __memset_chk();
        v17 = 0uLL;
      }

      v31 = 0;
      __src[19] = v17;
      __src[20] = v17;
      __src[17] = v17;
      __src[18] = v17;
      __src[15] = v17;
      __src[16] = v17;
      __src[13] = v17;
      __src[14] = v17;
      __src[11] = v17;
      __src[12] = v17;
      __src[9] = v17;
      __src[10] = v17;
      __src[7] = v17;
      __src[8] = v17;
      __src[5] = v17;
      __src[6] = v17;
      __src[3] = v17;
      __src[4] = v17;
      __src[1] = v17;
      __src[2] = v17;
      __src[0] = v17;
      CryptoHMACInit(__src, a1, a4, v12);
      (*(*&__src[0] + 8))(__src, a2, a3);
      result = CryptoHMACFinal(__src, v28);
      v19 = *(a1 + 24);
      if (a8 / v19 * v19 == a8)
      {
        v20 = a8 / v19;
      }

      else
      {
        v20 = a8 / v19 + 1;
      }

      if (v20)
      {
        v21 = 0;
        v22 = 0;
        for (i = 1; i <= v20; ++i)
        {
          CryptoHMACInit(v26, a1, v28, v19);
          (*(*&v26[0] + 8))(v26, __src, v21);
          (*(*&v26[0] + 8))(v26, a6, a7);
          v25 = i;
          (*(*&v26[0] + 8))(v26, &v25, 1);
          CryptoHMACFinal(v26, __src);
          if (v20 == i)
          {
            v24 = a8 - v22;
          }

          else
          {
            v24 = *(a1 + 24);
          }

          result = memcpy((a9 + v22), __src, v24);
          v19 = *(a1 + 24);
          v22 += v19;
          v21 = v19;
        }
      }

      return result;
    }

    ccsha256_di();
  }

  return cchkdf();
}

uint64_t UpTicksPerSecond()
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  return UpTicksPerSecond_sTicksPerSecond;
}

uint64_t CUObfuscatedPtr(uint64_t a1)
{
  v3 = a1;
  if (gObfuscateOnce != -1)
  {
    dispatch_once_f(&gObfuscateOnce, 0, _PrintFObfuscateInit);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    LOWORD(result) = 0;
    return result;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  LOWORD(result) = SipHash(gObfuscateKey, &v3, 8);
  return result;
}

uint64_t SocketGetFamily(int a1)
{
  *&v3.sa_len = 0;
  *&v3.sa_data[6] = 0;
  v5 = 0;
  v4 = 0;
  v2 = 28;
  if (getsockname(a1, &v3, &v2) && (!*__error() || *__error()))
  {
    return 0;
  }

  else
  {
    return v3.sa_family;
  }
}

uint64_t SocketSetQoS(int a1, int a2)
{
  if (!a2)
  {
    v12 = 0;
    goto LABEL_17;
  }

  result = 4294960591;
  if (a2 <= 9)
  {
    if (a2 == 1)
    {
      v5 = 32;
      goto LABEL_16;
    }

    if (a2 != 2)
    {
      if (a2 != 3)
      {
        return result;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a2 > 11)
  {
    if (a2 != 12)
    {
      if (a2 != 20)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_14:
    v5 = 128;
    goto LABEL_16;
  }

  if (a2 == 10)
  {
    goto LABEL_14;
  }

LABEL_13:
  v5 = 192;
LABEL_16:
  v12 = v5;
LABEL_17:
  Family = SocketGetFamily(a1);
  if (Family == 30)
  {
    v7 = a1;
    v8 = 41;
    v9 = 36;
  }

  else
  {
    if (Family != 2)
    {
      goto LABEL_24;
    }

    v7 = a1;
    v8 = 0;
    v9 = 3;
  }

  if (setsockopt(v7, v8, v9, &v12, 4u) && *__error())
  {
    __error();
  }

LABEL_24:
  if (a2)
  {
    if (a2 <= 9)
    {
      if (a2 == 1)
      {
        v10 = 200;
        goto LABEL_41;
      }

      if (a2 != 2)
      {
        if (a2 == 3)
        {
LABEL_33:
          v10 = 800;
LABEL_41:
          v11 = v10;
          goto LABEL_42;
        }

        return 4294960591;
      }
    }

    else
    {
      if (a2 <= 11)
      {
        if (a2 == 10)
        {
          v10 = 500;
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      if (a2 != 12)
      {
        if (a2 == 20)
        {
          v10 = 900;
          goto LABEL_41;
        }

        return 4294960591;
      }
    }

    v10 = 700;
    goto LABEL_41;
  }

  v11 = 0;
LABEL_42:
  if (setsockopt(a1, 0xFFFF, 4230, &v11, 4u))
  {
    if (*__error())
    {
      __error();
    }
  }

  return 0;
}

uint64_t AppendPrintF(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13[0] = 0;
  v13[1] = &a9;
  v10 = *a1;
  if (!*a1)
  {
    v10 = "";
  }

  v11 = ASPrintF(v13, "%s%V", a3, a4, a5, a6, a7, a8, v10);
  if ((v11 & 0x80000000) == 0)
  {
    if (*a1)
    {
      free(*a1);
    }

    *a1 = v13[0];
  }

  return v11;
}

uint64_t PrintFWriteHex(uint64_t (**a1)(const char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v83 = a7;
  v8 = a4;
  v86 = 0;
  v9 = 0;
  v88 = 0;
  v97 = *MEMORY[0x1E69E9840];
  if (a5 >= a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = a5;
  }

  v90 = (4 * a3);
  v11 = &v95;
  v12 = &v96;
  while (1)
  {
    v13 = 0;
    v14 = v10 >= 0x10 ? 16 : v10;
    v93 = v12;
    do
    {
      if (v13 && (v13 & 3) == 0)
      {
        *v12++ = 32;
      }

      if (v13 >= v14)
      {
        v15 = 32;
        *v12 = 32;
      }

      else
      {
        *v12 = a0123456789abcd[*(v8 + v13) >> 4];
        v15 = a0123456789abcd[*(v8 + v13) & 0xF];
      }

      v12[1] = v15;
      v12 += 2;
      ++v13;
    }

    while (v13 != 16);
    v16 = 0;
    *v12 = 0;
    do
    {
      if (v10 <= v16)
      {
        LOBYTE(v17) = 32;
      }

      else
      {
        v17 = *(v8 + v16);
        if ((v17 - 32) >= 0x5F)
        {
          LOBYTE(v17) = 94;
        }
      }

      v94[v16++] = v17;
    }

    while (v16 != 16);
    v94[16] = 0;
    if (a5 > 0x10)
    {
      if (v8 == a4)
      {
        v89 = v11;
        v25 = PrintFCore(a1, "%*s", a3, a4, a5, a6, a7, a8, v90);
        if ((v25 & 0x80000000) != 0)
        {
          return v25;
        }

        v26 = PrintFCore(a1, "+%04X: %s |%s| (%zu bytes)", v50, v51, v52, v53, v54, v55, 0);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }

        v49 = v25 + v9;
LABEL_49:
        v9 = (v49 + v26);
        v11 = v89;
        goto LABEL_50;
      }

      if (*(a2 + 24) < 1 || (*v93 == *v11 ? (v27 = *(v93 + 1) == *(v11 + 1)) : (v27 = 0), v27 ? (v28 = *(v93 + 2) == *(v11 + 2)) : (v28 = 0), v28 ? (v29 = *(v93 + 3) == *(v11 + 3)) : (v29 = 0), !v29))
      {
        v26 = (*a1)("\n", 1);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }

        v89 = v11;
        v36 = v9 + 1;
        if (v88 >= 1)
        {
          v9 = PrintFCore(a1, "%*s", v30, v31, v32, v33, v34, v35, v90);
          if ((v9 & 0x80000000) != 0)
          {
            return v9;
          }

          v26 = PrintFCore(a1, "* (%zu more identical bytes, %zu total)\n", v37, v38, v39, v40, v41, v42, v86);
          if ((v26 & 0x80000000) != 0)
          {
            return v26;
          }

          v88 = 0;
          v86 = 0;
          v36 += v9 + v26;
        }

        v9 = PrintFCore(a1, "%*s", v30, v31, v32, v33, v34, v35, v90);
        if ((v9 & 0x80000000) != 0)
        {
          return v9;
        }

        v26 = PrintFCore(a1, "+%04X: %s |%s|", v43, v44, v45, v46, v47, v48, v8 - a4);
        if ((v26 & 0x80000000) != 0)
        {
          return v26;
        }

        v49 = v9 + v36;
        goto LABEL_49;
      }

      ++v88;
      v86 += v14;
    }

    else
    {
      v18 = v11;
      v25 = PrintFCore(a1, "%*s", a3, a4, a5, a6, a7, a8, v90);
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      v26 = PrintFCore(a1, "%s |%s| (%zu bytes)", v19, v20, v21, v22, v23, v24, v93);
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      v9 = (v25 + v9 + v26);
      v11 = v18;
    }

LABEL_50:
    v10 -= v14;
    if (!v10)
    {
      break;
    }

    v8 += v14;
    v12 = v11;
    v11 = v93;
  }

  if (v88 < 1)
  {
    v56 = a1;
LABEL_59:
    if (a5 > a6)
    {
      v26 = (*v56)("\n", 1, v56);
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      v25 = PrintFCore(v56, "%*s", v69, v70, v71, v72, v73, v74, v90);
      if ((v25 & 0x80000000) != 0)
      {
        return v25;
      }

      v26 = PrintFCore(v56, "... %zu more bytes ...", v75, v76, v77, v78, v79, v80, a5 - a6);
      if ((v26 & 0x80000000) != 0)
      {
        return v26;
      }

      v9 = (v9 + v25 + v26 + 1);
    }

    if (v83)
    {
      v81 = (*v56)("\n", 1, v56);
      if (v81 >= 0)
      {
        return (v9 + 1);
      }

      else
      {
        return v81;
      }
    }
  }

  else
  {
    v56 = a1;
    v26 = (*a1)("\n", 1, a1);
    if ((v26 & 0x80000000) != 0)
    {
      return v26;
    }

    v25 = PrintFCore(a1, "%*s", v57, v58, v59, v60, v61, v62, v90);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = PrintFCore(a1, "* (%zu more identical bytes, %zu total)", v63, v64, v65, v66, v67, v68, v86);
      if ((v26 & 0x80000000) == 0)
      {
        v9 = (v9 + v25 + v26 + 1);
        goto LABEL_59;
      }

      return v26;
    }

    return v25;
  }

  return v9;
}

uint64_t UUIDGet(_BYTE *a1)
{
  result = RandomBytes(a1, 0x10uLL);
  a1[6] = a1[6] & 0xF | 0x40;
  a1[8] = a1[8] & 0x3F | 0x80;
  return result;
}

uint64_t PairingSessionDeriveKey(uint64_t a1)
{
  v2 = *(a1 + 96);
  result = 4294960561;
  if (v2 <= 6)
  {
    if (((1 << v2) & 6) != 0)
    {
      if (*(a1 + 128) != 7 || !*(a1 + 768) || !*(a1 + 776))
      {
        return 4294960587;
      }
    }

    else if (((1 << v2) & 0x18) != 0)
    {
      if (*(a1 + 128) != 5)
      {
        return 4294960587;
      }
    }

    else
    {
      if (((1 << v2) & 0x60) == 0)
      {
        return result;
      }

      if (*(a1 + 128) != 3)
      {
        return 4294960587;
      }
    }

    ccsha512_di();
    cchkdf();
    return 0;
  }

  return result;
}

uint64_t CFStringCopyUTF8CString(const __CFString *a1, char **a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = strdup(CStringPtr);
    if (!v5)
    {
      return 4294960568;
    }

LABEL_7:
    result = 0;
    *a2 = v5;
    return result;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v5 = v8;
  v11.location = 0;
  v11.length = Length;
  if (CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen) == Length)
  {
    v5[usedBufLen] = 0;
    goto LABEL_7;
  }

  free(v5);
  return 4294960596;
}

unint64_t UpTicksToSeconds(unint64_t a1)
{
  if (sUpTicksToSecondsOnce != -1)
  {
    dispatch_once_f(&sUpTicksToSecondsOnce, &sUpTicksToSecondsMultiplier, _UpTicksToSecondsInit);
  }

  return (*&sUpTicksToSecondsMultiplier * a1);
}

uint64_t PrintFWriteMultiLineText(uint64_t (**a1)(unsigned __int8 *, int64_t, void), uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  v4 = a3;
  v6 = 0;
  v7 = &a3[a4];
  while (1)
  {
    v8 = v4;
    v9 = v4;
    while (1)
    {
      v10 = *v9;
      if (v10 == 10)
      {
        break;
      }

      if (v10 == 13)
      {
        if ((v9 + 1) < v7 && v9[1] == 10)
        {
          v4 = v9 + 2;
          goto LABEL_12;
        }

        break;
      }

      if (++v9 >= v7)
      {
        v11 = 0;
        v4 = v9;
        goto LABEL_13;
      }
    }

    v4 = v9 + 1;
LABEL_12:
    v11 = 1;
LABEL_13:
    if (v8 >= v9)
    {
      goto LABEL_24;
    }

    v12 = *v8;
    if (v12 != 10 && v12 != 13)
    {
      v14 = *(a2 + 8);
      if (v14)
      {
        break;
      }
    }

LABEL_22:
    v16 = v9 - v8;
    v15 = (*a1)(v8, v16, a1);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    v6 = (v6 + v16);
LABEL_24:
    if (v11)
    {
      v15 = (*a1)("\n", 1, a1);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v6 = (v6 + 1);
    }

    if (v4 >= v7)
    {
      return v6;
    }
  }

  LODWORD(v6) = v6 + 4 * v14;
  while (1)
  {
    v15 = (*a1)("    ", 4, a1);
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

    if (!--v14)
    {
      goto LABEL_22;
    }
  }
}

uint64_t CUXPCEncodeObject(void *a1, const char *a2, void *a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a1;
    v7 = xpc_dictionary_create(0, 0, 0);
    [v5 encodeWithXPCObject:v7];

    xpc_dictionary_set_value(v6, a2, v7);
  }

  return 1;
}

BOOL CUXPCDecodeObject(void *a1, const char *a2, objc_class *a3, id *a4, void *a5)
{
  v9 = xpc_dictionary_get_value(a1, a2);
  v10 = v9;
  if (v9)
  {
    if (MEMORY[0x193B07A70](v9) == MEMORY[0x1E69E9E80])
    {
      v16 = [[a3 alloc] initWithXPCObject:v10 error:a5];
      v17 = v16 != 0;
      if (v16)
      {
        objc_storeStrong(a4, v16);
      }
    }

    else if (a5)
    {
      NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-dict type: '%s'", v11, v12, v13, v14, v15, a2);
      *a5 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

uint64_t PrintFWriteMaskObject(uint64_t (**a1)(unsigned __int8 *, uint64_t, void), const __CFURL *cf)
{
  v2 = cf;
  v59 = 0;
  TypeID = CFGetTypeID(cf);
  if (TypeID == CFURLGetTypeID())
  {
    v2 = CFURLGetString(v2);
    TypeID = CFStringGetTypeID();
  }

  if (TypeID == CFStringGetTypeID())
  {
    v57 = 0;
    v58 = 0;
    v5 = CFStringGetOrCopyCStringUTF8(v2, &v58, &v59, &v57);
    if (!v5)
    {
      v10 = v57;
      v9 = v58;
      if (v57 < 0x24 || StringToUUIDEx(v58, v57, 1, 0, 0, v6, v7, v8))
      {
        if (stricmp_prefix(v9, "http://"))
        {
          if (!stricmp_prefix(v9, "https://"))
          {
            goto LABEL_24;
          }

          if (stricmp_prefix(v9, "mailto:"))
          {
            if (stricmp_prefix(v9, "file:///"))
            {
              if (stricmp_prefix(v9, "tel:"))
              {
                v17 = *v9;
                v18 = 1;
                if ((v17 > 0x2F || ((1 << v17) & 0x881000000000) == 0) && v17 != 126)
                {
                  v19 = 0;
                  v20 = v9;
                  goto LABEL_27;
                }
              }

              else
              {
                v18 = 4;
              }

LABEL_25:
              v38 = (*a1)(v9, v18, a1);
              if ((v38 & 0x80000000) != 0)
              {
                v19 = 0;
                goto LABEL_111;
              }

              v19 = v38;
              v20 = &v9[v18];
              v58 = v20;
LABEL_27:
              if (stricmp_prefix(v20, "www."))
              {
                if (stricmp_prefix(v20, "+1-"))
                {
                  if (stricmp_prefix(v20, "1-") && stricmp_prefix(v20, "+1"))
                  {
                    if (*v20 != 49)
                    {
                      goto LABEL_38;
                    }

                    v39 = 1;
                  }

                  else
                  {
                    v39 = 2;
                  }
                }

                else
                {
                  v39 = 3;
                }
              }

              else
              {
                v39 = 4;
              }

              v40 = (*a1)(v20, v39, a1);
              if (v40 < 0)
              {
                goto LABEL_111;
              }

              v19 = (v40 + v19);
              v20 += v39;
              v58 = v20;
LABEL_38:
              v41 = &v9[v10];
              if ((v41 - v20) >= 2)
              {
                v42 = 2;
              }

              else
              {
                v42 = v41 - v20;
              }

              v43 = (*a1)(v20, v42, a1);
              if (v43 < 0)
              {
                goto LABEL_111;
              }

              v19 = (v43 + v19);
              v44 = &v58[v42];
              v58 = v44;
              v45 = (*a1)("*", 1, a1);
              if (v45 < 0)
              {
                goto LABEL_111;
              }

              v19 = (v45 + v19);
              v46 = strchr(v44, 64);
              v47 = v46;
              if (v46)
              {
                v48 = (*a1)(v46, 1, a1);
                if (v48 < 0)
                {
                  goto LABEL_111;
                }

                v19 = (v48 + v19);
                v44 = v47 + 1;
                v58 = v47 + 1;
              }

              v49 = v41 - v44;
              v57 = v41 - v44;
              v50 = v41 - v44;
              if ((v41 - v44) >= 9)
              {
                v51 = 9;
                if (!memicmp(v41 - 9, "gmail.com", 9))
                {
                  goto LABEL_99;
                }

                v50 = v57;
                if (v57 >= 0xA)
                {
                  v51 = 10;
                  if (!memicmp(&v44[v57 - 10], "icloud.com", 10))
                  {
                    goto LABEL_99;
                  }

                  v50 = v57;
                }

                if (v50 >= 9)
                {
                  v51 = 9;
                  if (!memicmp(&v44[v50 - 9], "yahoo.com", 9))
                  {
                    goto LABEL_99;
                  }

                  v50 = v57;
                }
              }

              if (v50 >= 7)
              {
                v51 = 7;
                if (!memicmp(&v44[v50 - 7], "mac.com", 7))
                {
                  goto LABEL_99;
                }

                v50 = v57;
              }

              if (v50 >= 6)
              {
                v51 = 6;
                if (!memicmp(&v44[v50 - 6], "me.com", 6))
                {
                  goto LABEL_99;
                }

                v50 = v57;
                if (v57 >= 9)
                {
                  v51 = 9;
                  if (!memicmp(&v44[v57 - 9], "apple.com", 9))
                  {
                    goto LABEL_99;
                  }

                  v50 = v57;
                  if (v57 >= 0xF)
                  {
                    v51 = 15;
                    if (!memicmp(&v44[v57 - 15], ".com/index.html", 15))
                    {
                      goto LABEL_99;
                    }

                    v50 = v57;
                  }

                  if (v50 >= 0xB)
                  {
                    v51 = 11;
                    if (!memicmp(&v44[v50 - 11], "/index.html", 11))
                    {
                      goto LABEL_99;
                    }

                    v50 = v57;
                  }

                  if (v50 >= 0xA)
                  {
                    v51 = 10;
                    if (!memicmp(&v44[v50 - 10], "index.html", 10))
                    {
                      goto LABEL_99;
                    }

                    v50 = v57;
                  }
                }
              }

              if (v50 >= 5)
              {
                v51 = 5;
                if (!memicmp(&v44[v50 - 5], ".html", 5))
                {
                  goto LABEL_99;
                }

                v50 = v57;
                if (v57 >= 5)
                {
                  v51 = 5;
                  if (!memicmp(&v44[v57 - 5], ".jpeg", 5))
                  {
                    goto LABEL_99;
                  }

                  v50 = v57;
                }
              }

              if (v50 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v50 - 4], ".com", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".net", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".jpg", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".pdf", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".png", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".txt", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 4)
              {
                goto LABEL_83;
              }

              v51 = 4;
              if (!memicmp(&v44[v57 - 4], ".bin", 4))
              {
                goto LABEL_99;
              }

              if (v57 < 5)
              {
LABEL_83:
                v51 = 0;
                v52 = 0;
LABEL_101:
                if (v49 >= 2)
                {
                  v49 = 2;
                }

                if (v41 == v44)
                {
                  goto LABEL_109;
                }

                if (v47)
                {
                  v54 = (*a1)("*", 1, a1);
                  if (v54 < 0)
                  {
                    goto LABEL_111;
                  }

                  v19 = (v54 + v19);
                }

                v55 = (*a1)(&v41[-v49], v49, a1);
                if ((v55 & 0x80000000) == 0)
                {
                  v19 = (v55 + v19);
LABEL_109:
                  if (v52)
                  {
                    v56 = (*a1)(v41, v51, a1);
                    v19 = (v56 & ~(v56 >> 31)) + v19;
                  }
                }

LABEL_111:
                if (v59)
                {
                  free(v59);
                }

                return v19;
              }

              v51 = 5;
              if (memicmp(&v44[v57 - 5], " iPad", 5))
              {
                if (v57 < 7)
                {
                  goto LABEL_83;
                }

                v51 = 7;
                if (memicmp(&v44[v57 - 7], " iPhone", 7))
                {
                  goto LABEL_83;
                }

                v53 = -7;
LABEL_100:
                v41 += v53;
                v49 = v41 - v44;
                v52 = 1;
                goto LABEL_101;
              }

LABEL_99:
              v53 = -v51;
              goto LABEL_100;
            }

LABEL_24:
            v18 = 8;
            goto LABEL_25;
          }
        }

        v18 = 7;
        goto LABEL_25;
      }

      v5 = PrintFCore(a1, "U<%.4s*%.4s>", v11, v12, v13, v14, v15, v16, v9);
    }

    v19 = v5;
    goto LABEL_111;
  }

  if (TypeID != CFDataGetTypeID())
  {
    return PrintFCore(a1, "<<UNSUPPORTED OBJ: %d>>", v21, v22, v23, v24, v25, v26, TypeID);
  }

  Length = CFDataGetLength(v2);
  if (Length)
  {
    if (Length >= 0x80)
    {
      v34 = 128;
    }

    else
    {
      v34 = Length;
    }

    BytePtr = CFDataGetBytePtr(v2);
    v36 = SipHash(qword_191FFB182, BytePtr, v34) & 0xFFFFFF;
  }

  else
  {
    v36 = 0;
  }

  return PrintFCore(a1, "H<%06x>", v28, v29, v30, v31, v32, v33, v36);
}

unint64_t CFGetHardwareAddress(const __CFString *a1, char *a2, size_t a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!a1)
  {
    v10 = -6705;
    goto LABEL_30;
  }

  v8 = CFGetTypeID(a1);
  if (v8 == CFStringGetTypeID())
  {
    if (CFStringGetCString(a1, buffer, 64, 0x600u))
    {
      if (!a2)
      {
        if (a3 > 8)
        {
          v10 = -6743;
          if (!a4)
          {
            return valuePtr;
          }

          goto LABEL_38;
        }

        a2 = &v18;
      }

      v9 = TextToHardwareAddress(buffer, 0xFFFFFFFFFFFFFFFFLL, a3, a2);
      if (!v9)
      {
        if (a3 != 8)
        {
          if (a3 == 6)
          {
            v10 = 0;
            v11 = (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8);
            v12 = a2[5];
            goto LABEL_24;
          }

          goto LABEL_26;
        }

        v10 = 0;
        v15 = *a2;
        goto LABEL_36;
      }

      v10 = v9;
LABEL_31:
      bzero(a2, a3);
      if (!a4)
      {
        return valuePtr;
      }

      goto LABEL_38;
    }

LABEL_41:
    v10 = -6743;
LABEL_30:
    if (!a2)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v8 == CFNumberGetTypeID())
  {
    CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
    if (a2)
    {
      if (a3 == 8)
      {
        v10 = 0;
        *a2 = bswap64(valuePtr);
        if (!a4)
        {
          return valuePtr;
        }

        goto LABEL_38;
      }

      if (a3 == 6)
      {
        v10 = 0;
        v13 = valuePtr;
        *a2 = BYTE5(valuePtr);
        a2[1] = BYTE4(v13);
        a2[2] = BYTE3(v13);
        a2[3] = BYTE2(v13);
        a2[4] = BYTE1(v13);
        a2[5] = v13;
        if (!a4)
        {
          return valuePtr;
        }

        goto LABEL_38;
      }
    }

LABEL_26:
    v10 = 0;
    if (!a4)
    {
      return valuePtr;
    }

    goto LABEL_38;
  }

  if (v8 != CFDataGetTypeID())
  {
    v10 = -6756;
    goto LABEL_30;
  }

  if (CFDataGetLength(a1) != a3)
  {
    goto LABEL_41;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (a2)
  {
    memcpy(a2, BytePtr, a3);
  }

  if (a3 != 8)
  {
    if (a3 == 6)
    {
      v10 = 0;
      v11 = (*BytePtr << 40) | (BytePtr[1] << 32) | (BytePtr[2] << 24) | (BytePtr[3] << 16) | (BytePtr[4] << 8);
      v12 = BytePtr[5];
LABEL_24:
      valuePtr = v11 | v12;
      if (!a4)
      {
        return valuePtr;
      }

      goto LABEL_38;
    }

    goto LABEL_26;
  }

  v10 = 0;
  v15 = *BytePtr;
LABEL_36:
  valuePtr = bswap64(v15);
LABEL_37:
  if (a4)
  {
LABEL_38:
    *a4 = v10;
  }

  return valuePtr;
}

uint64_t BonjourDevice_GetInt64(const __CFDictionary *a1, const char *a2, int a3, int *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v36 = 0;
  Value = CFDictionaryGetValue(a1, @"txt");
  if (!Value)
  {
    v32 = -6762;
    goto LABEL_38;
  }

  v8 = Value;
  v9 = CFGetTypeID(Value);
  if (v9 != CFDataGetTypeID())
  {
    v32 = -6756;
    goto LABEL_38;
  }

  valueLen = 0;
  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v8);
  ValuePtr = TXTRecordGetValuePtr(Length, BytePtr, a2, &valueLen);
  if (!ValuePtr)
  {
    v32 = -6727;
    goto LABEL_38;
  }

  v13 = valueLen;
  if (valueLen > 0x3FuLL)
  {
    v32 = -6743;
    goto LABEL_38;
  }

  v14 = ValuePtr;
  __memcpy_chk();
  __s[v13] = 0;
  if (strnicmpx(v14, v13, "true") && strnicmpx(v14, valueLen, "yes") && strnicmpx(v14, valueLen, "y") && strnicmpx(v14, valueLen, "on") && strnicmpx(v14, valueLen, "1"))
  {
    if (strnicmpx(v14, valueLen, "false") && strnicmpx(v14, valueLen, "no") && strnicmpx(v14, valueLen, "n") && strnicmpx(v14, valueLen, "off") && strnicmpx(v14, valueLen, "0"))
    {
      HIDWORD(v21) = a3;
      LODWORD(v21) = a3;
      v20 = v21 >> 1;
      if (v20 > 8 || ((0x131u >> v20) & 1) == 0)
      {
        goto LABEL_43;
      }

      if (SNScanF(v14, valueLen, off_1E73A2870[v20], v15, v16, v17, v18, v19, &v36) != 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 1;
  }

  v22 = strchr(__s, 44);
  if (!v22)
  {
    v32 = 0;
    goto LABEL_38;
  }

  v23 = v22;
  v35 = 0;
  if (!strnicmpx(v22 + 1, -1, "true") || !strnicmpx(v23 + 1, -1, "yes") || !strnicmpx(v23 + 1, -1, "y") || !strnicmpx(v23 + 1, -1, "on") || !strnicmpx(v23 + 1, -1, "1"))
  {
    v31 = 0x100000000;
    goto LABEL_36;
  }

  if (!strnicmpx(v23 + 1, -1, "false") || !strnicmpx(v23 + 1, -1, "no") || !strnicmpx(v23 + 1, -1, "n") || !strnicmpx(v23 + 1, -1, "off") || !strnicmpx(v23 + 1, -1, "0"))
  {
    v31 = 0;
    goto LABEL_36;
  }

  HIDWORD(v30) = a3;
  LODWORD(v30) = a3;
  v29 = v30 >> 1;
  if (v29 > 8 || ((0x131u >> v29) & 1) == 0)
  {
LABEL_43:
    v32 = -6705;
    goto LABEL_38;
  }

  if (SNScanF(v23 + 1, 0xFFFFFFFFFFFFFFFFLL, off_1E73A2870[v29], v24, v25, v26, v27, v28, &v35) == 1)
  {
    v31 = v35 << 32;
LABEL_36:
    v32 = 0;
    v36 |= v31;
    goto LABEL_38;
  }

LABEL_48:
  v32 = -6742;
LABEL_38:
  if (a4)
  {
    *a4 = v32;
  }

  return v36;
}

uint64_t TextToHardwareAddress(char *__s, size_t a2, uint64_t a3, _BYTE *a4)
{
  if (__s)
  {
    v5 = a3;
    v6 = __s;
    if (a2 == -1)
    {
      a2 = strlen(__s);
      if (!v5)
      {
        return 0;
      }
    }

    else if (!a3)
    {
      return 0;
    }

    v7 = &v6[a2];
    v8 = MEMORY[0x1E69E9830];
    while (1)
    {
      if (v6 >= v7)
      {
        return 4294960554;
      }

      v9 = 0;
      v10 = 0;
      --v5;
      v11 = v6;
      while (1)
      {
        v13 = *v6++;
        v12 = v13;
        v14 = v13;
        if (v13 - 48 > 9)
        {
          break;
        }

        v9 = v14 + 16 * v9 - 48;
LABEL_17:
        ++v10;
LABEL_18:
        if (v10 <= 1)
        {
          v11 = v6;
          if (v6 < v7)
          {
            continue;
          }
        }

        if (!v10)
        {
          return 4294960554;
        }

        if (a4)
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      if ((*(v8 + 4 * v14 + 60) & 0x10000) != 0)
      {
        break;
      }

      if (!v10)
      {
        if (v12 > 0x3A || ((1 << v12) & 0x400200100000000) == 0)
        {
          return 4294960554;
        }

        v10 = 0;
        goto LABEL_18;
      }

      v6 = v11 + 1;
      if (a4)
      {
LABEL_22:
        *a4++ = v9;
      }

LABEL_23:
      if (!v5)
      {
        return 0;
      }
    }

    v9 = __tolower(v12) + 16 * v9 - 87;
    goto LABEL_17;
  }

  return 4294960591;
}

void _AsyncConnection_Release(void *a1)
{
  if ((*a1)-- == 1)
  {
    _AsyncConnection_Complete(a1, 0, 0xFFFFFFFFLL, 4294960573);
    v4 = a1[14];
    if (v4)
    {
      dispatch_release(v4);
      a1[14] = 0;
    }

    v5 = a1[2];
    if (v5)
    {
      free(v5);
      a1[2] = 0;
    }

    v6 = a1[18];
    if (v6)
    {
      free(v6);
      a1[18] = 0;
    }

    v7 = a1[20];
    if (v7 && (*(v7 + 18) & 4) != 0)
    {
      LogCategory_Remove(v7);
      a1[20] = 0;
    }

    v8 = a1[21];
    if (v8)
    {
      CFRelease(v8);
      a1[21] = 0;
    }

    v9 = a1[1];
    if (v9)
    {
      CFRelease(v9);
    }

    free(a1);
  }
}

void _AsyncConnection_UserRelease(void *a1)
{
  _AsyncConnection_Complete(a1, 0, 0xFFFFFFFFLL, 4294960573);

  _AsyncConnection_Release(a1);
}

uint64_t _AsyncConnection_Complete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  *(a1 + 136) = 0;
  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v5)
  {
    v10 = 32;
    v11 = a3;
    v12 = a4;
    v13 = *(a1 + 128);
    v14 = 0;
    if (a2)
    {
      v14 = *(a2 + 104);
      v5(&v10);
      *(a2 + 104) = v14;
    }

    else
    {
      v5(&v10);
    }
  }

  else if (v6)
  {
    v6(a3, a4, *(a1 + 128));
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    dispatch_source_cancel(*(a1 + 80));
    dispatch_release(v8);
    *(a1 + 80) = 0;
  }

  while (1)
  {
    result = *(a1 + 88);
    if (!result)
    {
      break;
    }

    *(a1 + 88) = *(result + 8);
    _AsyncConnection_ReleaseOperation(result);
  }

  return result;
}

uint64_t StringToSockAddr(unsigned __int8 *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v55 = 0;
  if (!StringToIPv4Address(a1, &v55 + 1, &v55))
  {
    if (a3 >= 0x10)
    {
      *(a2 + 8) = 0;
      *a2 = 528;
      *(a2 + 2) = bswap32(v55) >> 16;
      *(a2 + 4) = bswap32(HIDWORD(v55));
      result = 0;
      if (a4)
      {
        *a4 = 16;
      }

      return result;
    }

    return 4294960553;
  }

  if (a3 < 0x1C)
  {
    return 4294960553;
  }

  if (!a1)
  {
    return 4294960591;
  }

  if (*a1 == 91)
  {
    v8 = a1 + 1;
  }

  else
  {
    v8 = a1;
  }

  *v57 = v8;
  v56 = 0uLL;
  if (*v8 == 58)
  {
    v9 = *++v8;
    *v57 = v8;
    if (v9 != 58)
    {
      return 4294960554;
    }
  }

  v10 = 0;
  v11 = 0;
LABEL_10:
  v12 = 0;
  v13 = &v57[v10 - 16];
  v14 = v8;
  v15 = v11;
  while (2)
  {
    v11 = v15;
    v8 = v14 + 1;
    v16 = 1;
    while (1)
    {
      v17 = *(v8 - 1);
      if ((v17 - 37) <= 0x38 && ((1 << (v17 - 37)) & 0x100000000000401) != 0 || v17 == 0)
      {
        *v57 = v8;
        goto LABEL_35;
      }

      v17 = v17;
      if ((v17 - 97) < 6)
      {
        v17 = v17 - 32;
      }

      v20 = v17 - 48;
      if (v20 >= 0xA && (v17 - 65) > 5)
      {
        break;
      }

      v16 = v12 >> 12;
      if ((v12 >> 12))
      {
        return 4294960586;
      }

      ++v8;
      v12 = (16 * v12) | ParseIPv6Address_kASCIItoHexTable[v20];
    }

    if (v17 == 58)
    {
      if (v16)
      {
        v14 = v8;
        v15 = &v57[v10 - 16];
        if (!v11)
        {
          continue;
        }

        return 4294960554;
      }

      *v57 = v8;
      if (*v8)
      {
        if (v10 <= 0xE)
        {
          v57[v10 - 16] = BYTE1(v12);
          v10 += 2;
          v13[1] = v12;
          goto LABEL_10;
        }

        return 4294960545;
      }

      return 4294960546;
    }

    break;
  }

  *v57 = v8;
  if (v17 == 46 && v10 <= 0xC)
  {
    result = ParseIPv4Address(v14, &v57[v10 - 16], v57);
    if (result)
    {
      return result;
    }

    v13 += 4;
    v8 = ++*v57;
    if (!v11)
    {
      goto LABEL_53;
    }

LABEL_39:
    if (v13 < v57)
    {
      v22 = v13 - v11;
      if (v13 - v11 >= 1)
      {
        v23 = v22 & 0x7FFFFFFF;
        v24 = (v22 + 1) - 1;
        v25 = &v56 + 15;
        v26 = &v11[v23 - 1];
        do
        {
          *v25-- = *v26;
          *v26-- = 0;
          --v24;
        }

        while (v24);
        v8 = *v57;
      }

      goto LABEL_54;
    }

    return 4294960545;
  }

LABEL_35:
  if ((v16 & 1) == 0)
  {
    if (v13 + 2 > v57)
    {
      return 4294960545;
    }

    *v13 = bswap32(v12) >> 16;
    v13 += 2;
  }

  if (v11)
  {
    goto LABEL_39;
  }

LABEL_53:
  if (v13 != v57)
  {
    return 4294960546;
  }

LABEL_54:
  v54 = a4;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = v8 - 1;
LABEL_55:
  while (2)
  {
    v37 = *v36;
    while (1)
    {
      while (v37 == 47)
      {
        if (v33)
        {
          return 4294960554;
        }

        v38 = *++v36;
        v37 = v38;
        if ((v38 - 48) <= 9)
        {
          do
          {
            v34 = v37 + 10 * v34 - 48;
            v39 = *++v36;
            v37 = v39;
          }

          while ((v39 - 48) < 0xA);
        }

        v33 = 1;
        if (v34 > 0x80)
        {
          return 4294960586;
        }
      }

      if (v37 == 93)
      {
        if (v35)
        {
          return 4294960554;
        }

        ++v36;
        v35 = 1;
        goto LABEL_55;
      }

      if (v37 != 58)
      {
        break;
      }

      if (v31)
      {
        return 4294960554;
      }

      v40 = *++v36;
      v37 = v40;
      if ((v40 - 48) <= 9)
      {
        do
        {
          v32 = v37 + 10 * v32 - 48;
          v41 = *++v36;
          v37 = v41;
        }

        while ((v41 - 48) < 0xA);
      }

      v31 = 1;
      if (v32 >= 0x10000)
      {
        return 4294960586;
      }
    }

    if (v37 == 37)
    {
      if (!v30)
      {
        for (i = 0; ; ++i)
        {
          v44 = *++v36;
          v43 = v44;
          v45 = (1 << (v44 - 47)) & 0x400000000801;
          v46 = (v44 - 47) > 0x2E || v45 == 0;
          v47 = !v46 || v43 == 0;
          if (v47 || i == 63)
          {
            break;
          }

          v57[i] = v43;
        }

        v57[i] = 0;
        v29 = if_nametoindex(v57);
        if (v29)
        {
          goto LABEL_92;
        }

        v48 = v57[0];
        if (v57[0] - 48 > 9)
        {
          v29 = 0;
          v49 = v57;
        }

        else
        {
          v29 = 0;
          v49 = v57;
          do
          {
            v29 = v48 + 10 * v29 - 48;
            v50 = *++v49;
            v48 = v50;
          }

          while ((v50 - 48) < 0xA);
        }

        if (!v48 && v49 != v57 && (v49 - v57) < 11)
        {
LABEL_92:
          v30 = 1;
          continue;
        }
      }

      return 4294960554;
    }

    break;
  }

  v51 = v56;
  *v57 = v56;
  if (v30)
  {
    v52 = v29;
  }

  else
  {
    v52 = 0;
  }

  v53 = v55;
  *(a2 + 4) = 0;
  *a2 = 7708;
  if (v31)
  {
    v53 = v32;
  }

  *(a2 + 2) = bswap32(v53) >> 16;
  *(a2 + 8) = v51;
  *(a2 + 24) = v52;
  if (!v54)
  {
    return 0;
  }

  result = 0;
  *v54 = 28;
  return result;
}

__CFString *CUPrintAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __ROR8__(a2, 1);
  if (v8 <= 2)
  {
    switch(v8)
    {
      case 0:
        goto LABEL_15;
      case 1:
        NSPrintF("%.2a", a2, a3, a4, a5, a6, a7, a8, a1);
        goto LABEL_20;
      case 2:
        if (a3)
        {
          NSPrintF("%#.4a", a2, a3, a4, a5, a6, a7, a8, a1);
        }

        else
        {
          NSPrintF("%.4a", a2, a3, a4, a5, a6, a7, a8, a1);
        }

        goto LABEL_20;
    }

LABEL_13:
    if (a1)
    {
      NSPrintF("<< ERROR: Bad Address Size: %zu >>", a2, a3, a4, a5, a6, a7, a8, a2);
      goto LABEL_20;
    }

LABEL_15:
    v9 = @"NULL";
    goto LABEL_21;
  }

  if (v8 == 3)
  {
    if (a3)
    {
      NSPrintF("%#.6a", a2, a3, a4, a5, a6, a7, a8, a1);
    }

    else
    {
      NSPrintF("%.6a", a2, a3, a4, a5, a6, a7, a8, a1);
    }

    goto LABEL_20;
  }

  if (v8 == 4)
  {
    NSPrintF("%.8a", a2, a3, a4, a5, a6, a7, a8, a1);
    goto LABEL_20;
  }

  if (v8 != 8)
  {
    goto LABEL_13;
  }

  NSPrintF("%.16a", a2, a3, a4, a5, a6, a7, a8, a1);
  v9 = LABEL_20:;
LABEL_21:

  return v9;
}

uint64_t SocketSetBufferSize(int a1, int a2, int a3)
{
  v13 = a3;
  result = 4294960591;
  if ((a1 & 0x80000000) == 0 && (a2 - 4099) >= 0xFFFFFFFE)
  {
    v12 = 0;
    if (a3 < 1)
    {
      if (a3 == -1)
      {
        return 0;
      }

      else
      {
        v7 = -a3;
        v11 = 4;
        if (sysctlbyname("kern.ipc.maxsockbuf", &v12, &v11, 0, 0) && (!*__error() || *__error()))
        {
          v12 = 0x40000;
        }

        v8 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        if (v8 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        }

        if (a3)
        {
          v8 = v9;
        }

        v12 = v8;
        do
        {
          result = setsockopt(a1, 0xFFFF, a2, &v12, 4u);
          if (!result)
          {
            break;
          }

          if (*__error())
          {
            result = *__error();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = 4294960596;
          }

          v10 = v12;
          v12 -= 1024;
        }

        while (v10 > 33791);
      }
    }

    else
    {
      result = setsockopt(a1, 0xFFFF, a2, &v13, 4u);
      if (result)
      {
        if (*__error())
        {
          return *__error();
        }

        else
        {
          return 4294960596;
        }
      }
    }
  }

  return result;
}

uint64_t StringToIPv4Address(unsigned __int8 *a1, _DWORD *a2, int *a3)
{
  v16 = a1;
  if (!a1)
  {
    return 4294960591;
  }

  result = ParseIPv4Address(a1, &v15, &v16);
  if (!result)
  {
    v6 = v16;
    v7 = *v16;
    if (v7 == 58)
    {
      v6 = (v16 + 1);
      v8 = v16[1];
      if ((v8 - 48) > 9)
      {
        v9 = 0;
        ++v16;
      }

      else
      {
        v9 = 0;
        do
        {
          v9 = v8 + 10 * v9 - 48;
          v10 = *++v6;
          v8 = v10;
        }

        while ((v10 - 48) < 0xA);
        v16 = v6;
        if (v9 >= 0x10000)
        {
          return 4294960586;
        }
      }
    }

    else
    {
      v9 = 0;
      v8 = *v16;
    }

    if (v8 == 47)
    {
      v11 = v6[1] - 48;
      if (v11 <= 9)
      {
        v12 = 0;
        v13 = v6 + 2;
        do
        {
          v12 = 10 * v12 + v11;
          v14 = *v13++;
          LOBYTE(v11) = v14 - 48;
        }

        while ((v14 - 48) < 0xA);
        if (v12 > 0x20)
        {
          return 4294960586;
        }
      }
    }

    if (a2)
    {
      *a2 = bswap32(v15);
    }

    result = 0;
    if (a3)
    {
      if (v7 == 58)
      {
        result = 0;
        *a3 = v9;
      }
    }
  }

  return result;
}

uint64_t ParseIPv4Address(unsigned __int8 *a1, _BYTE *a2, unsigned __int8 **a3)
{
  *a2 = 0;
  v3 = *a1;
  if (!*a1)
  {
    return 4294960546;
  }

  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    if (v3 - 48 <= 9)
    {
      v4 = 10 * v4 + v3 - 48;
      if (v4 > 255)
      {
        return 4294960586;
      }

      *a2 = v4;
      if (!v5)
      {
        if (v6 > 3)
        {
          return 4294960545;
        }

        ++v6;
      }

      v5 = 1;
      goto LABEL_13;
    }

    if (!v5 || v3 != 46)
    {
      break;
    }

    if (v6 > 3)
    {
      return 4294960554;
    }

    LOBYTE(v4) = 0;
    v5 = 0;
    *++a2 = 0;
LABEL_13:
    v7 = *++a1;
    v3 = v7;
  }

  while (v7);
  if (v6 != 4)
  {
    return 4294960546;
  }

  v8 = 0;
  *a3 = a1;
  return v8;
}

unint64_t BonjourDevice_GetDeviceID(const __CFDictionary *a1, char *a2, int *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"deviceID");
  if (Value)
  {
    if (CFStringGetCString(Value, buffer, 64, 0x600u))
    {
      if (!a2)
      {
        a2 = &v9;
      }

      v6 = TextToHardwareAddress(buffer, 0xFFFFFFFFFFFFFFFFLL, 6, a2);
      if (v6)
      {
        v7 = 0;
      }

      else
      {
        v7 = (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5];
      }
    }

    else
    {
      v7 = 0;
      v6 = -6742;
    }
  }

  else
  {
    v7 = 0;
    v6 = -6762;
  }

  if (a3)
  {
    *a3 = v6;
  }

  return v7;
}

uint64_t BonjourDevice_MergeInfo(uint64_t *a1, CFTypeRef cf)
{
  v4 = *a1;
  if (!*a1)
  {
    CFRetain(cf);
    *a1 = cf;
    return v4;
  }

  TypeID = CFArrayGetTypeID();
  TypedValue = CFDictionaryGetTypedValue(v4, @"services", TypeID, 0);
  v7 = TypedValue;
  if (TypedValue)
  {
    CFRetain(TypedValue);
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  if (!MutableCopy)
  {
    v4 = 4294960568;
    if (!v7)
    {
      return v4;
    }

    goto LABEL_56;
  }

  v9 = MutableCopy;
  CFDictionaryApplyFunction(cf, _CFDictionaryMergeDictionaryApplier, MutableCopy);
  CFDictionaryRemoveValue(v9, @"removedServices");
  v10 = CFArrayGetTypeID();
  v11 = CFDictionaryGetTypedValue(cf, @"services", v10, 0);
  if (v11)
  {
    Mutable = CFArrayCreateMutableCopy(0, 0, v11);
    if (Mutable)
    {
      goto LABEL_7;
    }

LABEL_11:
    v4 = 4294960568;
    v17 = v9;
    goto LABEL_55;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    goto LABEL_11;
  }

LABEL_7:
  theArray = Mutable;
  v13 = CFArrayGetTypeID();
  v14 = CFDictionaryGetTypedValue(cf, @"removedServices", v13, 0);
  v15 = v14;
  if (v14)
  {
    Count = CFArrayGetCount(v14);
  }

  else
  {
    Count = 0;
  }

  cfa = v4;
  v44 = a1;
  v42 = v9;
  if (v11)
  {
    v18 = CFArrayGetCount(v11);
    if (!v7)
    {
      goto LABEL_46;
    }

LABEL_17:
    v47 = CFArrayGetCount(v7);
    if (v47 >= 1)
    {
      v19 = 0;
      v46 = v7;
      do
      {
        v20 = CFDictionaryGetTypeID();
        theDict = CFArrayGetTypedValueAtIndex(v7, v19, v20, 0);
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"domain");
          v22 = CFDictionaryGetValue(theDict, @"ifname");
          if (v18 < 1)
          {
LABEL_32:
            if (Count < 1)
            {
LABEL_44:
              CFArrayAppendValue(theArray, theDict);
            }

            else
            {
              v29 = 0;
              while (1)
              {
                v30 = CFDictionaryGetTypeID();
                TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v15, v29, v30, 0);
                if (TypedValueAtIndex)
                {
                  v32 = TypedValueAtIndex;
                  v33 = CFDictionaryGetValue(TypedValueAtIndex, @"domain");
                  v34 = CFDictionaryGetValue(v32, @"ifname");
                  if ((Value == v33 || Value && v33 && CFEqual(Value, v33)) && (v22 == v34 || v22 && v34 && CFEqual(v22, v34)))
                  {
                    break;
                  }
                }

                if (Count == ++v29)
                {
                  goto LABEL_44;
                }
              }
            }
          }

          else
          {
            v23 = 0;
            while (1)
            {
              v24 = CFDictionaryGetTypeID();
              v25 = CFArrayGetTypedValueAtIndex(v11, v23, v24, 0);
              if (v25)
              {
                v26 = v25;
                v27 = CFDictionaryGetValue(v25, @"domain");
                v28 = CFDictionaryGetValue(v26, @"ifname");
                if ((Value == v27 || Value && v27 && CFEqual(Value, v27)) && (v22 == v28 || v22 && v28 && CFEqual(v22, v28)))
                {
                  break;
                }
              }

              if (v18 == ++v23)
              {
                goto LABEL_32;
              }
            }
          }
        }

        ++v19;
        v7 = v46;
      }

      while (v19 != v47);
    }

    goto LABEL_46;
  }

  v18 = 0;
  if (v7)
  {
    goto LABEL_17;
  }

LABEL_46:
  v17 = theArray;
  CFDictionarySetValue(v42, @"services", theArray);
  v35 = CFArrayGetCount(theArray);
  if (v35 >= 1)
  {
    v36 = v35;
    v37 = 0;
    while (1)
    {
      v38 = CFDictionaryGetTypeID();
      v39 = CFArrayGetTypedValueAtIndex(theArray, v37, v38, 0);
      if (v39)
      {
        v40 = CFDictionaryGetValue(v39, @"p2p");
        if (!v40 || !CFGetInt64(v40, 0))
        {
          break;
        }
      }

      if (v36 == ++v37)
      {
        CFDictionarySetValue(v42, @"p2pOnly", *MEMORY[0x1E695E4D0]);
        goto LABEL_54;
      }
    }
  }

  CFDictionaryRemoveValue(v42, @"p2pOnly");
LABEL_54:
  CFRelease(cfa);
  v4 = 0;
  *v44 = v42;
LABEL_55:
  CFRelease(v17);
  if (v7)
  {
LABEL_56:
    CFRelease(v7);
  }

  return v4;
}

const __CFArray *CFArrayGetTypedValueAtIndex(const __CFArray *result, CFIndex a2, uint64_t a3, int *a4)
{
  if (result)
  {
    result = CFArrayGetValueAtIndex(result, a2);
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      v8 = v7 == a3;
      if (v7 == a3)
      {
        result = v6;
      }

      else
      {
        result = 0;
      }

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = -6756;
      }
    }

    else
    {
      v9 = -6727;
    }
  }

  else
  {
    v9 = -6705;
  }

  if (a4)
  {
    *a4 = v9;
  }

  return result;
}

_BYTE *IPv4AddressToCString(unsigned int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 1;
  v13 = *MEMORY[0x1E69E9840];
  for (i = a3; ; ++i)
  {
    v5 = (a1 >> (-8 * v3));
    v6 = v12;
    do
    {
      *v6++ = (v5 % 0xA) | 0x30;
      v7 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v7);
    while (v6 > v12)
    {
      v8 = *--v6;
      *i++ = v8;
    }

    if (v3 == 4)
    {
      break;
    }

    *i = 46;
    ++v3;
  }

  if (a2 >= 1)
  {
    *i = 58;
    v9 = v12;
    do
    {
      *v9++ = (a2 % 0xA) | 0x30;
      v7 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v7);
    ++i;
    while (v9 > v12)
    {
      v10 = *--v9;
      *i++ = v10;
    }
  }

  *i = 0;
  return a3;
}

const __CFString *CFObjectGetPropertyInt64Sync(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  result = CFObjectCopyProperty(a1, a2, a3, a4, a5, a6, a7);
  if (result)
  {
    v9 = result;
    v10 = CFGetInt64(result, a7);
    CFRelease(v9);
    return v10;
  }

  return result;
}

uint64_t CFObjectCopyProperty(uint64_t a1, dispatch_queue_t queue, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {

    return a3(a1, a4, a5, a6, a7);
  }

  else
  {
    context[0] = a1;
    context[1] = a3;
    context[3] = a5;
    context[2] = a4;
    context[4] = a6;
    v10 = 0;
    v11 = a7;
    dispatch_sync_f(queue, context, _CFObjectCopyProperty);
    return v10;
  }
}

BOOL DeviceOSVersionAtOrLaterEx(int a1, int a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  result = 0;
  v11 = 10000 * a2 + 100 * a3 + a4;
  if (a1 <= 5)
  {
    if ((a1 - 1) < 3)
    {
      return v11 >= a5;
    }

    if (a1 != 4)
    {
      return result;
    }

    return v11 >= a7;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      return v11 >= a9;
    }

    else
    {
      if (a1 != 100)
      {
        return result;
      }

      return v11 >= a6;
    }
  }

  if (a1 != 6)
  {
    if (a1 != 7)
    {
      return result;
    }

    return v11 >= a7;
  }

  return v11 >= a8;
}

id NSDictionaryGetNSArrayOfClass(void *a1, void *a2, uint64_t a3, int *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];
  if (!v8)
  {
    v13 = 0;
    v14 = -6727;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    v13 = 0;
    v14 = -6756;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = v9;
  v14 = 0;
  if (a4)
  {
LABEL_15:
    *a4 = v14;
  }

LABEL_16:

  return v13;
}

unint64_t UpTicksToMicroseconds(unint64_t a1)
{
  if (UpTicksToMicroseconds_sOnce != -1)
  {
    dispatch_once_f(&UpTicksToMicroseconds_sOnce, &UpTicksToMicroseconds_sMultiplier, _UpTicksToMicrosecondsInit);
  }

  return (*&UpTicksToMicroseconds_sMultiplier * a1);
}

uint64_t GestaltProductTypeStringToDeviceClass(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"iPhone"])
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"iPad"])
  {
    v2 = 3;
  }

  else if ([v1 containsString:@"Mac"])
  {
    v2 = 100;
  }

  else if ([v1 hasPrefix:@"AppleTV"])
  {
    v2 = 4;
  }

  else if ([v1 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"HomePod"))
  {
    v2 = 7;
  }

  else if ([v1 hasPrefix:@"Watch"])
  {
    v2 = 6;
  }

  else if ([v1 hasPrefix:@"iPod"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"RealityDevice"])
  {
    v2 = 11;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t CUXPCDecodeBool(void *a1, const char *a2, BOOL *a3, void *a4)
{
  v7 = a1;
  v8 = xpc_dictionary_get_BOOL(v7, a2);
  v9 = v8;
  if (v8)
  {
    *a3 = v8;
LABEL_7:
    v17 = 1;
    goto LABEL_8;
  }

  v10 = xpc_dictionary_get_value(v7, a2);
  v11 = v10;
  if (!v10)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (MEMORY[0x193B07A70](v10) == MEMORY[0x1E69E9E58])
  {
    *a3 = v9;
    goto LABEL_6;
  }

  if (a4)
  {
    *a4 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC non-BOOL type: '%s'", v12, v13, v14, v15, v16, a2);
  }

  v17 = 0;
LABEL_8:

  return v17;
}

BOOL __CUXPCDecodeNSArrayOfClass_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x193B07A70]() == MEMORY[0x1E69E9E80])
  {
    v10 = objc_alloc(*(a1 + 56));
    v11 = *(*(a1 + 40) + 8);
    obj = *(v11 + 40);
    v12 = [v10 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    v13 = v12 != 0;
    if (v12)
    {
      [*(a1 + 32) addObject:v12];
    }
  }

  else
  {
    v15 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960540, "XPC array non-dictionary value: '%s'", v5, v6, v7, v8, v9, *(a1 + 48));
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v13 = 0;
  }

  return v13;
}

uint64_t SetCurrentThreadPriority(integer_t a1)
{
  if (a1 == 0x7FFFFFFF)
  {
    *policy_info = 0;
    v10 = 0;
    get_default = 1;
    policy_infoCnt = 4;
    v1 = MEMORY[0x193B06A90]();
    result = thread_policy_get(v1, 2u, policy_info, &policy_infoCnt, &get_default);
    if (!result)
    {
      v3 = MEMORY[0x193B06A90]();
      return thread_policy_set(v3, 2u, policy_info, 4u);
    }
  }

  else
  {
    policy_infoCnt = 0;
    *policy_info = 0;
    v5 = pthread_self();
    result = pthread_getschedparam(v5, &policy_infoCnt, policy_info);
    if (!result)
    {
      policy_info[0] = a1;
      v6 = pthread_self();
      return pthread_setschedparam(v6, 2, policy_info);
    }
  }

  return result;
}

void *NSDictionaryGetNSNumber(void *result, uint64_t a2, int *a3)
{
  if (result)
  {
    result = [result objectForKeyedSubscript:a2];
    if (result)
    {
      v4 = result;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v6 = (isKindOfClass & 1) == 0;
      if (isKindOfClass)
      {
        result = v4;
      }

      else
      {
        result = 0;
      }

      if (v6)
      {
        v7 = -6756;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = -6727;
    }
  }

  else
  {
    v7 = -6705;
  }

  if (a3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t UpdateIOVec(uint64_t **a1, int *a2, unint64_t a3)
{
  v3 = *a2;
  if (v3 < 1)
  {
    return 0;
  }

  v4 = &(*a1)[2 * v3];
  for (i = *a1 + 1; ; i += 2)
  {
    v6 = i - 1;
    v7 = *(i - 1);
    v8 = *i;
    v9 = a3 - *i;
    if (a3 < *i)
    {
      break;
    }

    *(i - 1) = v7 + v8;
    *i = 0;
    v10 = i + 1;
    a3 = v9;
    if (v10 >= v4)
    {
      return 0;
    }
  }

  *(i - 1) = v7 + a3;
  *i = (v8 - a3);
  *a1 = v6;
  *a2 = (v4 - v6) >> 4;
  return 35;
}

uint64_t MFiSAP_CopyCertificateSerialNumber(uint64_t a1, void *a2, void *a3)
{
  if (*a1 != 4)
  {
    return 4294960587;
  }

  v21 = v3;
  v22 = v4;
  v6 = *(a1 + 104);
  if (!v6)
  {
    return 4294960569;
  }

  v8 = *(a1 + 112);
  if (!v8)
  {
    return 4294960553;
  }

  v9 = CFDataCreate(0, v6, v8);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  v11 = SecCMSCertificatesOnlyMessageCopyCertificates();
  CFRelease(v10);
  if (v11)
  {
    v20 = 0;
    v19 = 0;
    if (CFArrayGetCount(v11) <= 0)
    {
      v18 = -6764;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == SecCertificateGetTypeID())
      {
        v14 = SecCertificateCopySerialNumberData(ValueAtIndex, 0);
        if (v14)
        {
          v15 = v14;
          v16 = CFCopyData(v14, &v19, &v20);
          CFRelease(v15);
          if (!v20)
          {
            if (v19 >= 8 && v19 != 16)
            {
              if (IsAppleInternalBuild_sOnce != -1)
              {
                dispatch_once(&IsAppleInternalBuild_sOnce, &__block_literal_global_116);
              }

              if (IsAppleInternalBuild_sIsInternal)
              {
                v16[7] &= ~0x80u;
              }
            }

            *a2 = v16;
            *a3 = v19;
            v20 = 0;
          }

          goto LABEL_12;
        }

        v18 = -6727;
      }

      else
      {
        v18 = -6756;
      }
    }

    v20 = v18;
LABEL_12:
    CFRelease(v11);
    return v20;
  }

  return 4294960554;
}

void *CFCopyData(const __CFData *a1, size_t *a2, _DWORD *a3)
{
  v5 = a1;
  v19 = 0;
  v20 = 0;
  v6 = CFGetTypeID(a1);
  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    v5 = Length;
    v19 = Length;
    if (Length <= 1)
    {
      Length = 1;
    }

    v9 = malloc_type_malloc(Length, 0x100004077774924uLL);
    v20 = v9;
    if (v9)
    {
      if (v5)
      {
        memcpy(v9, BytePtr, v5);
        goto LABEL_7;
      }

LABEL_28:
      if (!a2)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (v6 == CFStringGetTypeID())
  {
    v17 = 0;
    v18 = 0;
    v16 = 0;
    v10 = CFStringGetOrCopyCStringUTF8(v5, &v17, &v16, &v18);
    if (v10)
    {
      LODWORD(v5) = v10;
      if (a2)
      {
        goto LABEL_29;
      }
    }

    else
    {
      LODWORD(v5) = HexToDataCopy(v17, v18, 22, &v20, &v19, 0);
      if (!v16)
      {
        goto LABEL_28;
      }

      free(v16);
      if (a2)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_30;
  }

  if (v6 == CFNullGetTypeID())
  {
    v20 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    if (v20)
    {
      LODWORD(v5) = 0;
      v19 = 0;
      if (a2)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

LABEL_33:
    LODWORD(v5) = -6728;
    if (a2)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 16;
    v11 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
    v20 = v11;
    if (v11)
    {
      [(__CFData *)v5 getUUIDBytes:v11];
LABEL_7:
      LODWORD(v5) = 0;
      if (!a2)
      {
        goto LABEL_30;
      }

LABEL_29:
      *a2 = v19;
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v6 != CFUUIDGetTypeID())
  {
    LODWORD(v5) = -6735;
    goto LABEL_28;
  }

  v19 = 16;
  v12 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  v20 = v12;
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  v14 = CFUUIDGetUUIDBytes(v5);
  LODWORD(v5) = 0;
  *v13 = v14;
  if (a2)
  {
    goto LABEL_29;
  }

LABEL_30:
  if (a3)
  {
    *a3 = v5;
  }

  return v20;
}

unint64_t UpTicksToNanoseconds(unint64_t a1)
{
  if (UpTicksToNanoseconds_sOnce != -1)
  {
    dispatch_once_f(&UpTicksToNanoseconds_sOnce, &UpTicksToNanoseconds_sMultiplier, _UpTicksToNanosecondsInit);
  }

  return (*&UpTicksToNanoseconds_sMultiplier * a1);
}

uint64_t CFStringAppendV(__CFString *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cStr = 0;
  if ((VASPrintF(&cStr, a2, a3, a4, a5, a6, a7, a8) & 0x80000000) != 0)
  {
    return 4294960596;
  }

  v9 = cStr;
  CFStringAppendCString(a1, cStr, 0x8000100u);
  free(v9);
  return 0;
}

unint64_t UpTicksToNTP(unint64_t a1)
{
  if (UpTicksPerSecond_sOnce != -1)
  {
    dispatch_once_f(&UpTicksPerSecond_sOnce, &UpTicksPerSecond_sTicksPerSecond, _UpTicksPerSecondInit);
  }

  return (((a1 % UpTicksPerSecond_sTicksPerSecond) << 32) / UpTicksPerSecond_sTicksPerSecond) | ((a1 / UpTicksPerSecond_sTicksPerSecond) << 32);
}

uint64_t HTTPClientCreate(uint64_t *a1)
{
  if (gHTTPClientInitOnce != -1)
  {
    dispatch_once_f(&gHTTPClientInitOnce, 0, _HTTPClientGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294960568;
  }

  v3 = Instance;
  bzero((Instance + 24), 0x228uLL);
  *(v3 + 200) = -1;
  v4 = MEMORY[0x1E69E96A0];
  *(v3 + 16) = MEMORY[0x1E69E96A0];
  dispatch_retain(v4);
  RandomBytes((v3 + 168), 4uLL);
  result = 0;
  *(v3 + 168) = *(v3 + 170) << 16;
  *(v3 + 136) = 1;
  *(v3 + 96) = &gLogCategory_HTTPClientCore;
  *(v3 + 504) = SocketTransportRead;
  *(v3 + 512) = SocketTransportWriteV;
  *(v3 + 568) = v3 + 560;
  *(v3 + 272) = 0;
  *(v3 + 276) = 0;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0;
  *a1 = v3;
  return result;
}

void HTTPClientSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];
  }

  dispatch_retain(v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(a1 + 16) = v3;
}

uint64_t HTTPClientSetDestination(uint64_t a1, char *__s1, int a3)
{
  v5 = strdup(__s1);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  v7 = *(a1 + 72);
  if (v7)
  {
    free(v7);
  }

  result = 0;
  *(a1 + 72) = v6;
  *(a1 + 80) = a3;
  return result;
}

uint64_t AsyncConnection_ConnectEx(void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xC0uLL, 0x10F0040DCE41745uLL);
  if (!v4)
  {
    return 4294960568;
  }

  v5 = v4;
  *v4 = 1;
  if (*a2)
  {
    v6 = strdup(*a2);
    *(v5 + 2) = v6;
    if (!v6)
    {
      _AsyncConnection_Release(v5);
      return 4294960568;
    }
  }

  *(v5 + 3) = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!v7)
  {
    v7 = -1;
  }

  *(v5 + 7) = v7;
  *(v5 + 4) = *(a2 + 80);
  Current = CFAbsoluteTimeGetCurrent();
  *(v5 + 6) = *(a2 + 32);
  v9 = *(a2 + 64);
  if (*(a2 + 72))
  {
    v10 = *(a2 + 72);
  }

  else
  {
    v10 = &gLogCategory_AsyncCnx;
  }

  *(v5 + 8) = *(a2 + 24);
  *(v5 + 9) = Current;
  *(v5 + 19) = v10;
  *(v5 + 14) = v9;
  *(v5 + 30) = *(a2 + 48);
  if ((*(a2 + 13) & 4) != 0)
  {
    v11 = *(a2 + 88);
    if (v11 >= 0x68)
    {
      if (*(a2 + 96))
      {
        *(v5 + 18) = strdup(*(a2 + 96));
        v26 = v10;
        LogCategoryReplaceF(&v26, "%s-%s", v12, v13, v14, v15, v16, v17, *(v10 + 3));
        v18 = v26;
        if (v26 != *(v5 + 19))
        {
          *(v5 + 19) = v26;
          *(v5 + 20) = v18;
        }

        v11 = *(a2 + 88);
      }

      if (v11 >= 0x70)
      {
        *(v5 + 17) = *(a2 + 104);
        if (v11 >= 0x78)
        {
          v19 = *(a2 + 112);
          if (v19)
          {
            CFRetain(v19);
            v20 = *(a2 + 112);
            v11 = *(a2 + 88);
          }

          else
          {
            v20 = 0;
          }

          *(v5 + 21) = v20;
          if (v11 >= 0x7C)
          {
            v5[44] = *(a2 + 120);
            if (v11 >= 0x84)
            {
              v21 = *(a2 + 124);
              v22 = *(a2 + 128);
              if (!v21)
              {
                v21 = 1000;
              }

              v5[45] = v21;
              v5[46] = v22;
              if (v11 >= 0x90)
              {
                *(v5 + 5) = *(a2 + 136);
                if (v11 >= 0x94)
                {
                  v5[47] = *(a2 + 144);
                  if (v11 >= 0xA0)
                  {
                    v23 = *(a2 + 152);
                    if (v23)
                    {
                      CFRetain(v23);
                      v24 = *(a2 + 152);
                    }

                    else
                    {
                      v24 = 0;
                    }

                    *(v5 + 1) = v24;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  dispatch_retain(*(a2 + 64));
  dispatch_async_f(*(a2 + 64), v5, _AsyncConnection_Connect);
  result = 0;
  *a1 = v5;
  return result;
}

void _AsyncConnection_Connect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 168);
  if (v9)
  {
    Count = CFArrayGetCount(*(a1 + 168));
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = 4294960591;
      while (1)
      {
        TypeID = CFDictionaryGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v9, v12, TypeID, 0);
        if (TypedValueAtIndex)
        {
          break;
        }

LABEL_20:
        if (v11 == ++v12)
        {
          goto LABEL_35;
        }
      }

      v16 = TypedValueAtIndex;
      Value = CFDictionaryGetValue(TypedValueAtIndex, @"nanEP");
      if (!Value)
      {
        v24 = CFDictionaryCopyCString(v16, @"dnsName", 0);
        if (v24)
        {
          v25 = v24;
          if (!*(a1 + 16))
          {
            *(a1 + 16) = v24;
          }

          v26 = _AsyncConnection_ConnectOne(a1, v24);
          if (v25 != *(a1 + 16))
          {
            free(v25);
          }

          if (v26 != -6757)
          {
            if (v26)
            {
              goto LABEL_28;
            }

            v13 = 0;
          }
        }

        goto LABEL_20;
      }

      v22 = Value;
      v23 = *(a1 + 152);
      if (*v23 <= 50)
      {
        if (*v23 != -1)
        {
LABEL_8:
          LogPrintF(v23, "OSStatus _AsyncConnection_StartNANDataSession(AsyncConnectionRef, CFTypeRef)", 0x32u, "NAN data session start: %@\n", v18, v19, v20, v21, v22);
          goto LABEL_18;
        }

        if (_LogCategory_Initialize(v23, 0x32u))
        {
          v23 = *(a1 + 152);
          goto LABEL_8;
        }
      }

LABEL_18:
      v27 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
      if (v27)
      {
        v28 = v27;
        ++*a1;
        *v27 = 1;
        *(v27 + 2) = a1;
        *(v27 + 15) = -1;
        v29 = objc_alloc_init(CUNANDataSession);
        *(v28 + 13) = v29;
        [(CUNANDataSession *)v29 setDispatchQueue:*(a1 + 112)];
        [(CUNANDataSession *)v29 setPeerEndpoint:v22];
        [(CUNANDataSession *)v29 setTrafficFlags:*(a1 + 176)];
        ++*v28;
        __stringp[0] = MEMORY[0x1E69E9820];
        __stringp[1] = 3221225472;
        __stringp[2] = ___AsyncConnection_StartNANDataSession_block_invoke;
        __stringp[3] = &unk_1E73A2770;
        __stringp[4] = v29;
        __stringp[5] = a1;
        __stringp[6] = v28;
        [(CUNANDataSession *)v29 activateWithCompletion:__stringp];
        v13 = 0;
        *(v28 + 1) = *(a1 + 88);
        *(a1 + 88) = v28;
      }

      else
      {
        v13 = 4294960568;
      }

      goto LABEL_20;
    }

    v26 = 4294960591;
    goto LABEL_28;
  }

  v30 = *(a1 + 152);
  if (*v30 <= 50)
  {
    if (*v30 != -1)
    {
LABEL_26:
      LogPrintF(v30, "OSStatus _AsyncConnection_ConnectStrings(AsyncConnectionRef)", 0x32u, "Connect start: '%s'\n", a5, a6, a7, a8, *(a1 + 16));
      goto LABEL_30;
    }

    if (_LogCategory_Initialize(v30, 0x32u))
    {
      v30 = *(a1 + 152);
      goto LABEL_26;
    }
  }

LABEL_30:
  __stringp[0] = *(a1 + 16);
  v13 = 4294960591;
  while (__stringp[0])
  {
    v31 = strsep(__stringp, "\x1E");
    if (!v31)
    {
      break;
    }

    v32 = _AsyncConnection_ConnectOne(a1, v31);
    if (v32 != -6757)
    {
      v13 = v32;
      if (v32)
      {
        break;
      }
    }
  }

LABEL_35:
  v26 = v13;
  if (v13)
  {
    goto LABEL_28;
  }

  if (*(a1 + 56) == -1)
  {
    return;
  }

  v33 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(a1 + 112));
  *(a1 + 80) = v33;
  if (!v33)
  {
    v26 = 4294960596;
LABEL_28:
    _AsyncConnection_Complete(a1, 0, 0xFFFFFFFFLL, v26);
    return;
  }

  dispatch_set_context(v33, a1);
  dispatch_source_set_event_handler_f(*(a1 + 80), _AsyncConnection_TimeoutHandler);
  v34 = *(a1 + 80);
  v35 = dispatch_time(0, *(a1 + 56));
  dispatch_source_set_timer(v34, v35, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  dispatch_resume(*(a1 + 80));
}

uint64_t _AsyncConnection_ConnectOne(uint64_t a1, char *__s)
{
  v2 = __s;
  v75 = *MEMORY[0x1E69E9840];
  v4 = strchr(__s, 58);
  if (!v4 || v4[1] != 47 || v4[2] != 47 || (v70 = 0u, v71 = 0u, v68 = 0u, v69 = 0u, v66 = 0u, v67 = 0u, v64 = 0u, v65 = 0u, *fullname = 0u, v63 = 0u, URLParseComponents(v2, 0, fullname, 0), v5 = *(&v65 + 1), v2 = v65, *(v65 + *(&v65 + 1)) = 0, strnicmpx(*fullname, *&fullname[8], "wake")) || (*(a1 + 29) & 0x10) != 0)
  {
    if (!*v2)
    {
      return 4294960539;
    }

    memset(v58, 0, sizeof(v58));
    v59 = 0;
    if (!StringToSockAddr(v2, v58, 0x1CuLL, 0))
    {
      v23 = *(a1 + 24);
      if ((*(a1 + 28) & 4) != 0)
      {
        if (!_AsyncConnection_ReachabilityStart(a1, 0, v58, 0, v23))
        {
          return 0;
        }

        v23 = *(a1 + 24);
      }

      return _AsyncConnection_StartConnect(a1, 0, v58, 0, v23, v11, v12, v13);
    }

    if (!stristr(v2, "._tcp.") && !stristr(v2, "._udp."))
    {
      v27 = *(a1 + 24);

      return _AsyncConnection_StartDNSResolve(a1, 0, v2, v27);
    }

    v14 = *(a1 + 24);
    v15 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
    if (!v15)
    {
      return 4294960568;
    }

    v16 = v15;
    *name = 0;
    ++*a1;
    *v15 = 1;
    v15[2] = a1;
    *(v15 + 15) = -1;
    *(v15 + 16) = CFAbsoluteTimeGetCurrent();
    LODWORD(v72) = 0;
    v17 = ParseDestination(v2, fullname, name, &v72);
    if (v17)
    {
      Record = v17;
      goto LABEL_35;
    }

    v24 = v72;
    if (v72)
    {
      v25 = v14 < 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v24 = v14;
    }

    *(v16 + 14) = v24;
    v26 = *(a1 + 152);
    if (*v26 <= 30)
    {
      if (*v26 != -1)
      {
LABEL_27:
        LogPrintF(v26, "OSStatus _AsyncConnection_StartSRVQuery(AsyncConnectionRef, const char *, int)", 0x1Eu, "Querying SRV %s\n", v18, v19, v20, v21, v2);
        goto LABEL_32;
      }

      if (_LogCategory_Initialize(v26, 0x1Eu))
      {
        v26 = *(a1 + 152);
        goto LABEL_27;
      }
    }

LABEL_32:
    v29 = *(a1 + 96);
    if (v29)
    {
      v29(1, v2, *(a1 + 104));
    }

    Record = DNSServiceQueryRecord(v16 + 8, 0x400000u, *name, fullname, 0x21u, 1u, _AsyncConnection_SRVCallBack, v16);
    if (!Record)
    {
      DNSServiceSetDispatchQueue(v16[8], *(a1 + 112));
      v16[1] = *(a1 + 88);
      *(a1 + 88) = v16;
      return Record;
    }

LABEL_35:
    _AsyncConnection_ReleaseOperation(v16);
    return Record;
  }

  v10 = *(a1 + 152);
  if (*v10 > 50)
  {
    goto LABEL_39;
  }

  if (*v10 != -1)
  {
    goto LABEL_8;
  }

  if (_LogCategory_Initialize(v10, 0x32u))
  {
    v10 = *(a1 + 152);
LABEL_8:
    LogPrintF(v10, "OSStatus _AsyncConnection_StartWakeAll(AsyncConnectionRef, const char *, size_t)", 0x32u, "WakeDevice start: %.*s\n", v6, v7, v8, v9, v5);
  }

LABEL_39:
  if (TextToHardwareAddress(v2, v5, 6, v61))
  {
    v35 = *(a1 + 152);
    if (*v35 > 90)
    {
      return 0;
    }

    if (*v35 == -1)
    {
      if (!_LogCategory_Initialize(v35, 0x5Au))
      {
        return 0;
      }

      v35 = *(a1 + 152);
    }

    LogPrintF(v35, "OSStatus _AsyncConnection_StartWakeAll(AsyncConnectionRef, const char *, size_t)", 0x5Au, "### WakeDevice failed: %.*s\n", v31, v32, v33, v34, v5);
    return 0;
  }

  SNPrintF(name, 32, "%.6a@0.0.0.0", v30, v31, v32, v33, v34, v61);
  v40 = socket(2, 2, 0);
  if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  v41 = *(a1 + 152);
  if (*v41 > 90)
  {
    goto LABEL_50;
  }

  if (*v41 == -1)
  {
    if (!_LogCategory_Initialize(v41, 0x5Au))
    {
      goto LABEL_50;
    }

    v41 = *(a1 + 152);
  }

  LogPrintF(v41, "OSStatus _AsyncConnection_StartWakeAll(AsyncConnectionRef, const char *, size_t)", 0x5Au, "### WakeDevice: create temp socket failed\n", v36, v37, v38, v39, v57);
LABEL_50:
  v60 = 0;
  getifaddrs(&v60);
  v46 = v60;
  if (!v60)
  {
    goto LABEL_79;
  }

  v47 = 0;
  do
  {
    if ((v46->ifa_flags & 9) != 1)
    {
      goto LABEL_71;
    }

    ifa_dstaddr = v46->ifa_dstaddr;
    if (!ifa_dstaddr)
    {
      goto LABEL_71;
    }

    if (ifa_dstaddr->sa_family != 2)
    {
      goto LABEL_71;
    }

    ifa_name = v46->ifa_name;
    if (!ifa_name)
    {
      goto LABEL_71;
    }

    v50 = if_nametoindex(ifa_name);
    if (!v50)
    {
      goto LABEL_71;
    }

    v51 = v50;
    if (v40 < 0 || (v72 = 0u, v73 = 0u, __strlcpy_chk(), ioctl(v40, 0xC020699FuLL, &v72), DWORD1(v73) == 2))
    {
      v52 = *(a1 + 152);
      if (*v52 <= 50)
      {
        if (*v52 == -1)
        {
          if (!_LogCategory_Initialize(v52, 0x32u))
          {
            goto LABEL_66;
          }

          v52 = *(a1 + 152);
        }

        LogPrintF(v52, "OSStatus _AsyncConnection_StartWakeInterface(AsyncConnectionRef, const char *, uint32_t)", 0x32u, "WakeDevice interface: %s, %u\n", v42, v43, v44, v45, name);
      }

LABEL_66:
      v54 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
      if (v54)
      {
        v55 = v54;
        ++*a1;
        *v54 = 1;
        v54[2] = a1;
        *(v54 + 15) = -1;
        if (DNSServiceResolve(v54 + 8, 0x40000u, v51, name, "_wake._tcp", "local.", _AsyncConnection_WakeResolveCallback, v54))
        {
          _AsyncConnection_ReleaseOperation(v55);
        }

        else
        {
          DNSServiceSetDispatchQueue(v55[8], *(a1 + 112));
          v55[1] = *(a1 + 88);
          *(a1 + 88) = v55;
        }
      }

      ++v47;
      goto LABEL_71;
    }

    v53 = *(a1 + 152);
    if (*v53 > 30)
    {
      goto LABEL_71;
    }

    if (*v53 != -1)
    {
      goto LABEL_64;
    }

    if (_LogCategory_Initialize(v53, 0x1Eu))
    {
      v53 = *(a1 + 152);
LABEL_64:
      LogPrintF(v53, "OSStatus _AsyncConnection_StartWakeAll(AsyncConnectionRef, const char *, size_t)", 0x1Eu, "WakeDevice: skiping non-Ethernet-style: %s\n", v42, v43, v44, v45, v46->ifa_name);
    }

LABEL_71:
    v46 = v46->ifa_next;
  }

  while (v46);
  if (v60)
  {
    MEMORY[0x193B06880]();
  }

  if (!v47)
  {
LABEL_79:
    v56 = *(a1 + 152);
    if (*v56 <= 90)
    {
      if (*v56 != -1)
      {
        goto LABEL_81;
      }

      if (_LogCategory_Initialize(v56, 0x5Au))
      {
        v56 = *(a1 + 152);
LABEL_81:
        LogPrintF(v56, "OSStatus _AsyncConnection_StartWakeAll(AsyncConnectionRef, const char *, size_t)", 0x5Au, "### WakeDevice with no interfaces: %.*s\n", v42, v43, v44, v45, v5);
      }
    }
  }

  if ((v40 & 0x80000000) == 0 && close(v40))
  {
    if (*__error())
    {
      __error();
    }
  }

  return 0;
}

uint64_t _AsyncConnection_StartConnect(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a1 + 28);
  v14 = *(a3 + 1);
  if ((v13 & 0x80) != 0)
  {
    if (v14 == 30)
    {
      if (*(a3 + 8) == 254 && (*(a3 + 9) & 0xC0) == 0x80)
      {
        return 0;
      }

      v14 = 30;
    }

    else if (v14 == 2)
    {
      if (*(a3 + 4) == 169 && *(a3 + 5) == 254)
      {
        return 0;
      }

      v14 = 2;
    }
  }

  if ((v13 & 0x800) != 0)
  {
    if (v14 != 30)
    {
      goto LABEL_20;
    }

    if (*(a3 + 8) == 254 && (*(a3 + 9) & 0xC0) == 0x80)
    {
      return 0;
    }
  }

  else if (v14 != 30)
  {
LABEL_20:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  if ((v13 & 0x200) != 0)
  {
    v17 = *(a1 + 152);
    if (*v17 <= 30)
    {
      if (*v17 == -1)
      {
        if (!_LogCategory_Initialize(v17, 0x1Eu))
        {
          return 0;
        }

        v17 = *(a1 + 152);
      }

      LogPrintF(v17, "OSStatus _AsyncConnection_StartConnect(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x1Eu, "Skipping IPv6 address with NoIPv6: %##a\n", a5, a6, a7, a8, a3);
    }

    return 0;
  }

  if ((v13 & 0x40) == 0)
  {
    v15 = *(a1 + 40);
    if (!v15)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (*(a3 + 8) != 254)
  {
    goto LABEL_21;
  }

  if ((*(a3 + 9) & 0xC0) != 0x80)
  {
    goto LABEL_21;
  }

  if (!*(a3 + 24))
  {
    goto LABEL_21;
  }

  if (if_nametoindex("awdl0") != *(a3 + 24))
  {
    goto LABEL_21;
  }

  v30 = *(a3 + 16) ^ 2;
  v31 = *(a3 + 17);
  v32 = *(a3 + 21);
  v33 = *(a3 + 22);
  v23 = AWDLTrafficRegister(&v30);
  if (!v23)
  {
    goto LABEL_21;
  }

  v22 = v23;
  v27 = *(a1 + 152);
  if (*v27 <= 90)
  {
    if (*v27 == -1)
    {
      if (!_LogCategory_Initialize(v27, 0x5Au))
      {
        goto LABEL_51;
      }

      v27 = *(a1 + 152);
    }

    LogPrintF(v27, "OSStatus _AsyncConnection_StartConnect(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x5Au, "AWDLTrafficRegister failed: %#m\n", v24, v25, v26, a8, v22);
  }

LABEL_51:
  if ((*(a1 + 29) & 1) == 0 || v22 != 13 && v22 != 35)
  {
    v29 = *(a1 + 152);
    if (*v29 <= 50)
    {
      if (*v29 == -1)
      {
        if (!_LogCategory_Initialize(v29, 0x32u))
        {
          goto LABEL_58;
        }

        v29 = *(a1 + 152);
      }

      LogPrintF(v29, "OSStatus _AsyncConnection_StartConnect(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x32u, "Skipping %##a (MAC %.6a) due to AWDLTrafficRegister reject: %#m\n", v24, v25, v26, a8, a3);
    }

LABEL_58:
    _AsyncConnection_Complete(a1, 0, 0xFFFFFFFFLL, v22);
    return v22;
  }

LABEL_21:
  v16 = *(a3 + 1);
  v15 = *(a1 + 40);
  if (v15)
  {
    if (v16 == 30)
    {
LABEL_23:
      if (*(a3 + 8) == 254 && (*(a3 + 9) & 0xC0) == 0x80)
      {
        return _AsyncConnection_StartConnectDelayed(a1, a2, 0, a3, a4, a5, v15, a8);
      }

LABEL_30:
      v15 = *(a1 + 32);
      if (v15)
      {
        return _AsyncConnection_StartConnectDelayed(a1, a2, 0, a3, a4, a5, v15, a8);
      }
    }
  }

  else if (v16 == 30)
  {
    goto LABEL_30;
  }

LABEL_31:
  v18 = mach_absolute_time();
  v19 = *(a1 + 48);
  if (!v19)
  {
    goto LABEL_37;
  }

  if (NanosecondsToUpTicks_sOnce != -1)
  {
    dispatch_once_f(&NanosecondsToUpTicks_sOnce, &NanosecondsToUpTicks_sMultiplier, _NanosecondsToUpTicksInit);
  }

  v20 = v19 + (*&NanosecondsToUpTicks_sMultiplier * 100000000.0);
  if (v20 <= v18)
  {
LABEL_37:
    *(a1 + 48) = v18;
    return _AsyncConnection_StartConnectNow(a1, a2, a3, a4, a5);
  }

  *(a1 + 48) = v20;
  v15 = UpTicksToNanoseconds(v20 - v18);
  return _AsyncConnection_StartConnectDelayed(a1, a2, 0, a3, a4, a5, v15, a8);
}

uint64_t _AsyncConnection_StartConnectNow(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  v61 = 0;
  if ((*(a1 + 29) & 0x40) != 0)
  {
    v10 = *(a1 + 88);
    if (v10)
    {
      while (1)
      {
        if ((*(v10 + 60) & 0x80000000) == 0 && !SockAddrCompareAddrEx(a3, v10 + 24, 0))
        {
          v15 = *(a3 + 1);
          v16 = v15 == 30 || v15 == 2;
          v17 = v16 ? bswap32(*(a3 + 2)) >> 16 : -1;
          v18 = *(v10 + 25);
          if (v18 == 30 || v18 == 2)
          {
            v19 = bswap32(*(v10 + 26)) >> 16;
          }

          else
          {
            v19 = -1;
          }

          if (v17 == v19)
          {
            break;
          }
        }

        v10 = *(v10 + 8);
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      v39 = *(a1 + 152);
      if (*v39 > 50)
      {
        return 0;
      }

      if (*v39 == -1)
      {
        if (!_LogCategory_Initialize(v39, 0x32u))
        {
          return 0;
        }

        v39 = *(a1 + 152);
      }

      LogPrintF(v39, "OSStatus _AsyncConnection_StartConnectNow(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x32u, "Skipping duplicate connection: %##a", v11, v12, v13, v14, a3);
      return 0;
    }
  }

LABEL_17:
  v20 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E0040D7525972uLL);
  if (!v20)
  {
    return 4294960568;
  }

  v21 = v20;
  ++*a1;
  *v20 = 1;
  *(v20 + 2) = a1;
  v22 = (v20 + 24);
  v23 = *(a3 + 1);
  if (!*(a3 + 1))
  {
    v20[25] = 0;
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

  if (v23 == 30)
  {
    v24 = *a3;
    v25 = *(a3 + 16);
    *(v20 + 12) = *(a3 + 24);
    *(v20 + 5) = v25;
    *v22 = v24;
LABEL_24:
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v28 = -a5;
    v26 = v20[25];
    goto LABEL_34;
  }

  if (v23 != 2)
  {
    goto LABEL_24;
  }

  *v22 = *a3;
  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v26 = v20[25];
  v27 = v26 == 30 || v26 == 2;
  if (!v27 || *(v20 + 13))
  {
    goto LABEL_40;
  }

  v28 = a5;
LABEL_34:
  if (v26 == 30 || v26 == 2)
  {
    *(v20 + 13) = bswap32(v28) >> 16;
  }

LABEL_40:
  *(v20 + 14) = a5;
  *(v20 + 20) = CFAbsoluteTimeGetCurrent();
  if (a2)
  {
    *(v21 + 13) = *(a2 + 104);
    *(a2 + 104) = 0;
    *(v21 + 15) = *(a2 + 120);
    *(v21 + 17) = *(a2 + 136);
    *(v21 + 19) = *(a2 + 152);
    v21[45] = *(a2 + 180);
  }

  if ((*(a1 + 29) & 0x20) != 0)
  {
    v21[15] = -1;
LABEL_53:
    _AsyncConnection_ConnectHandler(v21);
    v31 = 0;
    goto LABEL_54;
  }

  v30 = socket(*(v21 + 25), 1, 6);
  v21[15] = v30;
  if (v30 < 0)
  {
    if (!*__error())
    {
LABEL_92:
      v31 = 4294960596;
      goto LABEL_54;
    }

    v31 = *__error();
    if (v31)
    {
      goto LABEL_54;
    }

    v30 = v21[15];
  }

  v31 = SocketSetNonBlocking(v30, 1);
  if (!v31)
  {
    v32 = *(a1 + 28);
    if (v32)
    {
      SocketSetP2P(v21[15], 1);
      v32 = *(a1 + 28);
    }

    if ((v32 & 0x30) != 0)
    {
      v60 = (v32 >> 2) & 0xC;
      if (setsockopt(v21[15], 0xFFFF, 4225, &v60, 4u))
      {
        v37 = *(a1 + 152);
        if (*v37 <= 90)
        {
          if (*v37 != -1)
          {
LABEL_51:
            LogPrintF(v37, "OSStatus _AsyncConnection_StartConnectNow(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x5Au, "## SO_RESTRICTIONS failed: 0x%X, %#m", v33, v34, v35, v36, v60);
            goto LABEL_65;
          }

          if (_LogCategory_Initialize(v37, 0x5Au))
          {
            v37 = *(a1 + 152);
            goto LABEL_51;
          }
        }
      }
    }

LABEL_65:
    v40 = v21[15];
    v59 = 1;
    setsockopt(v40, 0xFFFF, 4130, &v59, 4u);
    if (*(a1 + 188))
    {
      a4 = *(a1 + 188);
    }

    if (a4)
    {
      v41 = *(v21 + 25);
      if ((*(a1 + 28) & 8) != 0 || v41 == 2 && *(v21 + 28) == 169 && *(v21 + 29) == 254)
      {
        SocketSetBoundInterface(v21[15], v41, a4);
      }
    }

    v61 = 1;
    setsockopt(v21[15], 6, 1, &v61, 4u);
    SocketSetBufferSize(v21[15], 4097, *(a1 + 64));
    SocketSetBufferSize(v21[15], 4098, *(a1 + 68));
    v46 = *(a1 + 152);
    if (*v46 <= 50)
    {
      if (*v46 != -1)
      {
LABEL_75:
        LogPrintF(v46, "OSStatus _AsyncConnection_StartConnectNow(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x32u, "Connecting to %##a, interface %d\n", v42, v43, v44, v45, v22);
        goto LABEL_77;
      }

      if (_LogCategory_Initialize(v46, 0x32u))
      {
        v46 = *(a1 + 152);
        goto LABEL_75;
      }
    }

LABEL_77:
    v47 = *(a1 + 96);
    if (v47)
    {
      v47(3, v22, *(a1 + 104));
    }

    v48 = *(v21 + 25);
    if (v48 == 30)
    {
      v49 = 28;
    }

    else
    {
      v49 = 0;
    }

    if (v48 == 2)
    {
      v50 = 16;
    }

    else
    {
      v50 = v49;
    }

    if (connect(v21[15], v22, v50))
    {
      if (!*__error())
      {
        v55 = -6700;
        goto LABEL_94;
      }

      v55 = *__error();
      if (v55)
      {
        if ((v55 - 37) > 0xFFFFFFFD)
        {
          v56 = dispatch_source_create(MEMORY[0x1E69E96F8], v21[15], 0, *(a1 + 112));
          *(v21 + 10) = v56;
          if (v56)
          {
            dispatch_set_context(v56, v21);
            dispatch_source_set_event_handler_f(*(v21 + 10), _AsyncConnection_EventHandler);
            dispatch_source_set_cancel_handler_f(*(v21 + 10), _AsyncConnection_CancelHandler);
            dispatch_resume(*(v21 + 10));
            ++*v21;
            v57 = dispatch_source_create(MEMORY[0x1E69E9730], v21[15], 0, *(a1 + 112));
            *(v21 + 11) = v57;
            if (v57)
            {
              dispatch_set_context(v57, v21);
              dispatch_source_set_event_handler_f(*(v21 + 11), _AsyncConnection_EventHandler);
              dispatch_source_set_cancel_handler_f(*(v21 + 11), _AsyncConnection_CancelHandler);
              dispatch_resume(*(v21 + 11));
              v31 = 0;
              ++*v21;
              *(v21 + 1) = *(a1 + 88);
              *(a1 + 88) = v21;
              return v31;
            }
          }

          goto LABEL_92;
        }

LABEL_94:
        v58 = *(a1 + 152);
        if (*v58 <= 50)
        {
          if (*v58 == -1)
          {
            if (!_LogCategory_Initialize(v58, 0x32u))
            {
              goto LABEL_98;
            }

            v58 = *(a1 + 152);
          }

          LogPrintF(v58, "OSStatus _AsyncConnection_StartConnectNow(AsyncConnectionRef, AsyncConnectionOperationRef, const void *, uint32_t, int)", 0x32u, "### Connect failed immediate: %##a, %#m\n", v51, v52, v53, v54, v22);
        }

LABEL_98:
        v21[44] = v55;
        dispatch_async_f(*(a1 + 112), v21, _AsyncConnection_StartConnectFailed);
        return 0;
      }
    }

    goto LABEL_53;
  }

LABEL_54:
  _AsyncConnection_ReleaseOperation(v21);
  return v31;
}

uint64_t LogCategory_Remove(uint64_t a1)
{
  LogUtils_EnsureInitialized();
  pthread_mutex_lock(&gLogUtilsLock);
  v2 = gLogCategoryList;
  if (gLogCategoryList)
  {
    if (gLogCategoryList == a1)
    {
      v4 = &gLogCategoryList;
LABEL_7:
      v5 = *(v2 + 56);
      if (v5)
      {
        --*(v5 + 8);
      }

      v6 = *(v2 + 64);
      if (v6)
      {
        --*(v6 + 8);
      }

      *v4 = *(v2 + 48);
      *v2 = -1;
      *(v2 + 56) = 0;
      *(v2 + 64) = 0;
      _LogOutputDeleteUnused();
    }

    else
    {
      while (1)
      {
        v3 = v2;
        v2 = *(v2 + 48);
        if (!v2)
        {
          break;
        }

        if (v2 == a1)
        {
          v4 = (v3 + 48);
          goto LABEL_7;
        }
      }
    }
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x20000) != 0)
  {
    v8 = *(a1 + 104);
    if (v8)
    {
      if (*v8)
      {

        v8 = *(a1 + 104);
        *v8 = 0;
      }

      if (v8[1])
      {
        free(v8[1]);
        v8 = *(a1 + 104);
        v8[1] = 0;
      }

      free(v8);
      *(a1 + 104) = 0;
      v7 = *(a1 + 16);
    }
  }

  if ((v7 & 0x10000) != 0)
  {
    v9 = *(a1 + 112);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {
      free(v11);
    }

    free(a1);
  }

  return pthread_mutex_unlock(&gLogUtilsLock);
}

uint64_t MirroredRingBufferInit(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *MEMORY[0x1E69E9A60];
  address = 0;
  v5 = ~*MEMORY[0x1E69E9AB8];
  v6 = v5 & (*MEMORY[0x1E69E9AB8] + a2);
  if (a3)
  {
    v7 = (v6 - 1) | ((v6 - 1) >> 1) | (((v6 - 1) | ((v6 - 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v6 = (v8 | HIWORD(v8)) + 1;
  }

  if (v6 != (v5 & (*MEMORY[0x1E69E9AB8] + v6)))
  {
    return 4294960534;
  }

  *cur_protection = 0;
  target_address = 0;
  v9 = mach_vm_allocate(v4, &address, 2 * v6, 1);
  v10 = address;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    target_address = address + v6;
    v11 = mach_vm_remap(v4, &target_address, v6, 0, 0x4000, v4, address, 0, &cur_protection[1], cur_protection, 1u);
    v10 = address;
    if (!v11)
    {
      *a1 = address;
      *(a1 + 8) = v10 + v6;
      *(a1 + 16) = v6;
      *(a1 + 20) = v6 - 1;
      *(a1 + 24) = 0;
      return v11;
    }
  }

  if (v10)
  {
    mach_vm_deallocate(v4, v10, 2 * v6);
  }

  return v11;
}

unint64_t UpTicksToMilliseconds(unint64_t a1)
{
  if (UpTicksToMilliseconds_sOnce != -1)
  {
    dispatch_once_f(&UpTicksToMilliseconds_sOnce, &UpTicksToMilliseconds_sMultiplier, _UpTicksToMillisecondsInit);
  }

  return (*&UpTicksToMilliseconds_sMultiplier * a1);
}

uint64_t _chacha20_poly1305_encrypt_all(__int32 *a1, __int32 *a2, uint64_t a3, unsigned int *a4, unint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, uint64_t a9)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  if (a3 == 12)
  {
    chacha20_poly1305_init_96x32(__s, a1, a2);
  }

  else
  {
    if (a3 != 8)
    {
      FatalErrorF("Bad nonce (%zu). Must be 8 or 12.", a1, a3, a4, a5, a6, a7, a8, a3);
    }

    chacha20_poly1305_init_64x64(__s, a1, a2);
  }

  v14 = chacha20_update(__s, a6, a7, a8);
  chacha20_final(__s, (a8 + v14));
  if (a5)
  {
    poly1305_update(&__s[8].u32[2], a4, a5);
    if ((a5 & 0xF) != 0)
    {
      poly1305_update(&__s[8].u32[2], kZero64, 16 - (a5 & 0xF));
    }
  }

  if (a7)
  {
    poly1305_update(&__s[8].u32[2], a8, a7);
    if ((a7 & 0xF) != 0)
    {
      poly1305_update(&__s[8].u32[2], kZero64, 16 - (a7 & 0xF));
    }
  }

  LOWORD(v16) = a5;
  BYTE2(v16) = BYTE2(a5);
  HIBYTE(v16) = BYTE3(a5);
  v17 = BYTE4(a5);
  v18 = BYTE5(a5);
  v19 = BYTE6(a5);
  v20 = HIBYTE(a5);
  v21 = a7;
  poly1305_update(&__s[8].u32[2], &v16, 0x10uLL);
  return poly1305_final(&__s[8].i64[1], a9);
}

uint64_t _ChaCha20Poly1305EncryptMessage(uint64_t a1, __int32 *a2, uint64_t a3, unsigned int *a4, unint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, uint64_t a9, uint64_t a10)
{
  v10 = 4294960591;
  if (a3 == 12 && a10 == 16)
  {
    _chacha20_poly1305_encrypt_all((a1 + 24), a2, 12, a4, a5, a6, a7, a8, a9);
    return 0;
  }

  return v10;
}

uint64_t chacha20_poly1305_init_96x32(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = xmmword_191FF94A0;
  *(a1 + 16) = *a2;
  *(a1 + 20) = a2[1];
  *(a1 + 24) = a2[2];
  *(a1 + 28) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 36) = a2[5];
  *(a1 + 40) = a2[6];
  *(a1 + 44) = a2[7];
  if (a3)
  {
    *(a1 + 52) = *a3;
    *(a1 + 56) = a3[1];
    v4 = a3[2];
  }

  else
  {
    v4 = 0;
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 60) = v4;
  *(a1 + 128) = 0;
  _chacha20_xor(a1, v6, kZero64, 0x40uLL);
  result = poly1305_init(a1 + 136, v6);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return result;
}

void CUMetricsLogEx(int *a1, void *a2, void *a3)
{
  v10 = a2;
  v9 = a3;
  if (*a1 <= 50 && (*a1 != -1 || _LogCategory_Initialize(a1, 0x32u)))
  {
    LogPrintF(a1, "void CUMetricsLogEx(LogCategory * _Nonnull, NSString * _Nonnull __strong, NSDictionary<NSString *,NSObject *> * _Nonnull __strong)", 0x32u, "MetricLog '%@' : %##@\n", v5, v6, v7, v8, v10);
  }

  (softLinkAnalyticsSendEvent[0])(v10, v9);
}

uint64_t _chacha20_poly1305_decrypt_all(__int32 *a1, __int32 *a2, uint64_t a3, unsigned int *a4, unint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, uint64_t a9, uint64_t a10)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(__s, 0, sizeof(__s));
  if (a3 == 12)
  {
    chacha20_poly1305_init_96x32(__s, a1, a2);
  }

  else
  {
    if (a3 != 8)
    {
      FatalErrorF("Bad nonce (%zu). Must be 8 or 12.", a1, a3, a4, a5, a6, a7, a8, a3);
    }

    chacha20_poly1305_init_64x64(__s, a1, a2);
  }

  if ((a10 - 17) <= 0xFFFFFFFFFFFFFFEFLL)
  {
    FatalErrorF("Auth tag len (%zu) must be 1-16 bytes", v15, v16, v17, v18, v19, v20, v21, a10);
  }

  if (a5)
  {
    poly1305_update(&__s[8].u32[2], a4, a5);
    if ((a5 & 0xF) != 0)
    {
      poly1305_update(&__s[8].u32[2], kZero64, 16 - (a5 & 0xF));
    }
  }

  if (a7)
  {
    poly1305_update(&__s[8].u32[2], a6, a7);
    if ((a7 & 0xF) != 0)
    {
      poly1305_update(&__s[8].u32[2], kZero64, 16 - (a7 & 0xF));
    }
  }

  LOWORD(v26) = a5;
  BYTE2(v26) = BYTE2(a5);
  HIBYTE(v26) = BYTE3(a5);
  v27 = BYTE4(a5);
  v28 = BYTE5(a5);
  v29 = BYTE6(a5);
  v30 = HIBYTE(a5);
  v31 = a7;
  poly1305_update(&__s[8].u32[2], &v26, 0x10uLL);
  poly1305_final(&__s[8].i64[1], &v26);
  v22 = 0;
  v23 = 0;
  do
  {
    v23 |= *(a9 + v22) ^ *(&v26 + v22);
    ++v22;
  }

  while (a10 != v22);
  if (v23)
  {
    return 4294960542;
  }

  v24 = chacha20_update(__s, a6, a7, a8);
  chacha20_final(__s, (a8 + v24));
  return 0;
}

void _AsyncConnection_EventHandler(uint64_t a1)
{
  *v23 = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = DNSServiceProcessResult(v2);
    if (!v3)
    {
      return;
    }

    v8 = v3;
    v9 = *(*(a1 + 16) + 152);
    if (*v9 > 90)
    {
      goto LABEL_21;
    }

    if (*v9 == -1)
    {
      if (!_LogCategory_Initialize(v9, 0x5Au))
      {
        goto LABEL_21;
      }

      v9 = *(*(a1 + 16) + 152);
    }

    LogPrintF(v9, "void _AsyncConnection_EventHandler(void *)", 0x5Au, "DNSServiceProcessResult failed: %#m...Bonjour crashed\n", v4, v5, v6, v7, v8);
LABEL_21:

    _AsyncConnection_ErrorHandler(a1, v8);
    return;
  }

  v10 = *(a1 + 25);
  if (v10 == 30)
  {
    v11 = 28;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == 2)
  {
    v12 = 16;
  }

  else
  {
    v12 = v11;
  }

  if (!connect(*(a1 + 60), (a1 + 24), v12))
  {
    goto LABEL_17;
  }

  if (!*__error())
  {
    goto LABEL_31;
  }

  v17 = *__error();
  switch(v17)
  {
    case 0x38:
LABEL_17:

      _AsyncConnection_ConnectHandler(a1);
      return;
    case 0x16:
      v23[0] = 4;
      v23[1] = 0;
      if (!getsockopt(*(a1 + 60), 0xFFFF, 4103, &v23[1], v23))
      {
LABEL_27:
        v18 = v23[1];
LABEL_28:
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          v17 = 22;
        }

        break;
      }

      if (*__error())
      {
        v18 = *__error();
        if (v18)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_31:
      v17 = 4294960596;
      break;
    case 0:
      goto LABEL_17;
  }

  v19 = *(a1 + 16);
  v20 = *(v19 + 152);
  if (*v20 <= 50)
  {
    if (*v20 == -1)
    {
      if (!_LogCategory_Initialize(v20, 0x32u))
      {
        goto LABEL_36;
      }

      v20 = *(v19 + 152);
    }

    LogPrintF(v20, "void _AsyncConnection_EventHandler(void *)", 0x32u, "### Connect failed: %##a, %#m\n", v13, v14, v15, v16, a1 + 24);
  }

LABEL_36:
  v21 = *(a1 + 180);
  if (v21 < *(v19 + 184))
  {
    started = _AsyncConnection_StartConnectDelayed(v19, a1, v21 + 1, a1 + 24, *(a1 + 52), *(a1 + 56), 1000000 * *(v19 + 180), v16);
    if (started)
    {
      v17 = started;
    }

    else
    {
      v17 = v17;
    }
  }

  _AsyncConnection_ErrorHandler(a1, v17);
}

void _AsyncConnection_ConnectHandler(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = Current - *(a1 + 160);
  *(a1 + 168) = v7;
  v25 = 4;
  v8 = *(a1 + 60);
  if ((v8 & 0x80000000) == 0)
  {
    if (!getsockopt(*(a1 + 60), 0xFFFF, 4103, &v25 + 4, &v25))
    {
      goto LABEL_5;
    }

    if (!*__error())
    {
      v9 = 4294960596;
      goto LABEL_15;
    }

    v9 = *__error();
    if (!v9)
    {
LABEL_5:
      v9 = HIDWORD(v25);
      if (!HIDWORD(v25))
      {
        v7 = *(a1 + 168);
        goto LABEL_7;
      }
    }

LABEL_15:
    _AsyncConnection_ErrorHandler(a1, v9);
    return;
  }

LABEL_7:
  v19 = 0;
  *&v18[12] = *(a1 + 36);
  *v18 = *(a1 + 24);
  v10 = *(a1 + 136);
  v20 = *(a1 + 120);
  v21 = v10;
  v22 = *(a1 + 152);
  v23 = v7;
  v11 = *(a1 + 16);
  v24 = Current - *(v11 + 72);
  v12 = *(v11 + 152);
  v13 = *v12;
  if ((*(v11 + 29) & 0x20) != 0)
  {
    if (v13 <= 50)
    {
      if (v13 == -1)
      {
        if (!_LogCategory_Initialize(v12, 0x32u))
        {
          goto LABEL_19;
        }

        v12 = *(*(a1 + 16) + 152);
      }

      LogPrintF(v12, "void _AsyncConnection_ConnectHandler(AsyncConnectionOperationRef)", 0x32u, "NoConnect to %##a (Reach=%.2f ms, SRV=%.2f ms, DNS=%.2f ms, Total=%.2f ms)\n", v2, v3, v4, v5, v18);
    }
  }

  else if (v13 <= 50)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize(v12, 0x32u))
      {
        goto LABEL_19;
      }

      v12 = *(*(a1 + 16) + 152);
    }

    LogPrintF(v12, "void _AsyncConnection_ConnectHandler(AsyncConnectionOperationRef)", 0x32u, "Connected to %##a (Reach=%.2f ms, SRV=%.2f ms, DNS=%.2f ms, Connect=%.2f ms, Total=%.2f ms)\n", v2, v3, v4, v5, v18);
  }

LABEL_19:
  v14 = *(a1 + 16);
  v15 = *(v14 + 96);
  if (v15)
  {
    v15(4, v18, *(v14 + 104));
  }

  *(a1 + 60) = -1;
  v16 = *(a1 + 80);
  if (v16)
  {
    dispatch_source_cancel(*(a1 + 80));
    dispatch_release(v16);
    *(a1 + 80) = 0;
  }

  v17 = *(a1 + 88);
  if (v17)
  {
    dispatch_source_cancel(*(a1 + 88));
    dispatch_release(v17);
    *(a1 + 88) = 0;
  }

  _AsyncConnection_Complete(*(a1 + 16), a1, v8, 0);
}

void _HTTPClientConnectHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v10 = a1;
  if (!a2)
  {
    if (*(a3 + 560))
    {
      v11 = *(a3 + 488);
      if (v11)
      {
        v9 = v11(a1, *(a3 + 480));
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else if (!*(a3 + 520))
      {
        *(a3 + 480) = a1;
      }

      v13 = *(a3 + 112);
      if (v13 >= 1)
      {
        v14 = *(a3 + 120);
        if (v14 >= 1)
        {
          SocketSetKeepAliveEx(v10, v13, *(a3 + 116), v14);
        }
      }

      v15 = *(a3 + 140);
      if (v15)
      {
        SocketSetQoS(v10, v15);
      }

      v16 = *(a3 + 144);
      if (v16 < 1)
      {
        goto LABEL_28;
      }

      if (!SocketSetTCPTimeout(v10, v16))
      {
        goto LABEL_28;
      }

      v21 = *(a3 + 96);
      if (*v21 > 60)
      {
        goto LABEL_28;
      }

      if (*v21 == -1)
      {
        if (!_LogCategory_Initialize(v21, 0x3Cu))
        {
LABEL_28:
          if ((*(a3 + 85) & 0x10) != 0)
          {
            v38 = 1;
            if (setsockopt(v10, 0xFFFF, 4131, &v38, 4u))
            {
              if (*__error())
              {
                v26 = *__error();
                if (!v26)
                {
                  goto LABEL_38;
                }
              }

              else
              {
                v26 = 4294960596;
              }

              v27 = *(a3 + 96);
              if (*v27 <= 60)
              {
                if (*v27 == -1)
                {
                  if (!_LogCategory_Initialize(v27, 0x3Cu))
                  {
                    goto LABEL_38;
                  }

                  v27 = *(a3 + 96);
                }

                LogPrintF(v27, "void _HTTPClientConnectHandler(SocketRef, OSStatus, void *)", 0x3Cu, "### Set SO_NOADDRERR failed: %#m", v22, v23, v24, v25, v26);
              }
            }
          }

LABEL_38:
          v28 = dispatch_source_create(MEMORY[0x1E69E96F8], v10, 0, *(a3 + 16));
          *(a3 + 208) = v28;
          if (!v28 || (++*(a3 + 204), CFRetain(a3), dispatch_set_context(*(a3 + 208), a3), dispatch_source_set_event_handler_f(*(a3 + 208), _HTTPClientReadHandler), dispatch_source_set_cancel_handler_f(*(a3 + 208), _HTTPClientCancelHandler), dispatch_resume(*(a3 + 208)), v29 = dispatch_source_create(MEMORY[0x1E69E9730], v10, 0, *(a3 + 16)), (*(a3 + 224) = v29) == 0))
          {
LABEL_53:
            v9 = 4294960596;
            goto LABEL_5;
          }

          ++*(a3 + 204);
          CFRetain(a3);
          dispatch_set_context(*(a3 + 224), a3);
          dispatch_source_set_event_handler_f(*(a3 + 224), _HTTPClientWriteHandler);
          dispatch_source_set_cancel_handler_f(*(a3 + 224), _HTTPClientCancelHandler);
          *(a3 + 232) = 1;
          v34 = (*(a3 + 84) >> 5) & 0x100 | (((*(a3 + 84) >> 14) & 1u) << 15);
          if (!v34)
          {
            goto LABEL_47;
          }

          v35 = *(a3 + 96);
          if (*v35 <= 50)
          {
            if (*v35 != -1)
            {
LABEL_43:
              LogPrintF(v35, "void _HTTPClientConnectHandler(SocketRef, OSStatus, void *)", 0x32u, "Configure socket events: CID 0x%08X, events 0x%X", v30, v31, v32, v33, *(a3 + 168));
              goto LABEL_45;
            }

            if (_LogCategory_Initialize(v35, 0x32u))
            {
              v35 = *(a3 + 96);
              goto LABEL_43;
            }
          }

LABEL_45:
          v36 = dispatch_source_create(MEMORY[0x1E69E9708], v10, v34, *(a3 + 16));
          *(a3 + 240) = v36;
          if (v36)
          {
            ++*(a3 + 204);
            CFRetain(a3);
            dispatch_set_context(*(a3 + 240), a3);
            dispatch_source_set_event_handler_f(*(a3 + 240), _HTTPClientSocketEventsHandler);
            dispatch_source_set_cancel_handler_f(*(a3 + 240), _HTTPClientCancelHandler);
            dispatch_activate(*(a3 + 240));
LABEL_47:
            v37 = *(a3 + 96);
            if (*v37 <= 50)
            {
              if (*v37 == -1)
              {
                if (!_LogCategory_Initialize(v37, 0x32u))
                {
                  goto LABEL_51;
                }

                v37 = *(a3 + 96);
              }

              LogPrintF(v37, "void _HTTPClientConnectHandler(SocketRef, OSStatus, void *)", 0x32u, "Connect success: CID 0x%08X, Peer %s\n", v30, v31, v32, v33, *(a3 + 168));
            }

LABEL_51:
            *(a3 + 200) = v10;
            *(a3 + 172) = 2;
            _HTTPClientRunStateMachine(a3);
            goto LABEL_52;
          }

          goto LABEL_53;
        }

        v21 = *(a3 + 96);
      }

      LogPrintF(v21, "void _HTTPClientConnectHandler(SocketRef, OSStatus, void *)", 0x3Cu, "### Set TCP timeout to %d seconds failed: %#m\n", v17, v18, v19, v20, *(a3 + 144));
      goto LABEL_28;
    }

    v9 = 4294960572;
  }

LABEL_5:
  v12 = *(a3 + 96);
  if (*v12 > 90)
  {
    goto LABEL_21;
  }

  if (*v12 != -1)
  {
    goto LABEL_7;
  }

  if (_LogCategory_Initialize(v12, 0x5Au))
  {
    v12 = *(a3 + 96);
LABEL_7:
    LogPrintF(v12, "void _HTTPClientConnectHandler(SocketRef, OSStatus, void *)", 0x5Au, "Connect failed: CID 0x%08X, Peer %s, %#m\n", a5, a6, a7, a8, *(a3 + 168));
  }

LABEL_21:
  if ((v10 & 0x80000000) == 0 && !*(a3 + 204) && close(v10) && *__error())
  {
    __error();
  }

  _HTTPClientErrorHandler(a3, v9, a3, a4, a5, a6, a7, a8);
LABEL_52:
  CFRelease(a3);
}

uint64_t SocketSetTCPTimeout(int a1, int a2)
{
  v4 = a2;
  if (setsockopt(a1, 6, 533, &v4, 4u) && *__error())
  {
    __error();
  }

  result = setsockopt(a1, 6, 128, &v4, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

void _AsyncConnection_ReleaseOperation(_DWORD *a1)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    SCNetworkReachabilitySetCallback(v2, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(*(a1 + 12), 0);
    CFRelease(*(a1 + 12));
    *(a1 + 12) = 0;
  }

  v3 = *(a1 + 9);
  if (v3)
  {
    dispatch_source_cancel(*(a1 + 9));
    dispatch_release(v3);
    *(a1 + 9) = 0;
  }

  v4 = *(a1 + 10);
  if (v4)
  {
    dispatch_source_cancel(*(a1 + 10));
    dispatch_release(v4);
    *(a1 + 10) = 0;
  }

  v5 = *(a1 + 11);
  if (v5)
  {
    dispatch_source_cancel(*(a1 + 11));
    dispatch_release(v5);
    *(a1 + 11) = 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    DNSServiceRefDeallocate(v6);
    *(a1 + 8) = 0;
  }

  if ((*a1)-- == 1)
  {
    v8 = a1[15];
    if ((v8 & 0x80000000) == 0)
    {
      if (close(v8) && *__error())
      {
        __error();
      }

      a1[15] = -1;
    }

    v9 = *(a1 + 13);
    if (v9)
    {
      [*(a1 + 13) invalidate];

      *(a1 + 13) = 0;
    }

    _AsyncConnection_Release(*(a1 + 2));

    free(a1);
  }
}

uint64_t SocketTransportRead(void *a1, size_t a2, ssize_t *a3, int a4)
{
  while (1)
  {
    v8 = read(a4, a1, a2);
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  v10 = v8;
  if (!v8)
  {
    return 4294960543;
  }

  result = 0;
  *a3 = v10;
  return result;
}

void _HTTPMessageCompletionHandler(uint64_t a1)
{
  v1 = *(a1 + 9720);
  *(a1 + 9720) = 0;
  v1[2](v1, a1);

  _Block_release(v1);
}

uint64_t SockAddrToString(uint64_t a1, char a2, char *a3)
{
  v4 = *(a1 + 1);
  if (v4 == 30)
  {
    if (a2)
    {
      v6 = -1;
    }

    else
    {
      v6 = bswap32(*(a1 + 2)) >> 16;
    }

    if (v6 > 0 || (a2 & 4) == 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = -2;
    }

    if ((a2 & 2) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 24);
    }

    IPv6AddressToCString((a1 + 8), v10, v9, 0xFFFFFFFF, a3, (a2 & 8) != 0);
  }

  else
  {
    if (v4 != 2)
    {
      return 4294960561;
    }

    if (a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = bswap32(*(a1 + 2)) >> 16;
    }

    IPv4AddressToCString(bswap32(*(a1 + 4)), v5, a3);
  }

  return 0;
}

void HTTPClientInvalidate(void *a1)
{
  CFRetain(a1);
  v2 = a1[2];

  dispatch_async_f(v2, a1, _HTTPClientInvalidate);
}

void _HTTPClientErrorHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 172) != 9)
  {
    v10 = *(a1 + 96);
    if (*v10 <= 90)
    {
      if (*v10 != -1)
      {
LABEL_4:
        LogPrintF(v10, "void _HTTPClientErrorHandler(HTTPClientRef, OSStatus)", 0x5Au, "### Error: CID 0x%08X, Peer %s, %#m\n", a5, a6, a7, a8, *(a1 + 168));
        goto LABEL_6;
      }

      if (_LogCategory_Initialize(v10, 0x5Au))
      {
        v10 = *(a1 + 96);
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  *(a1 + 172) = 9;
  v11 = *(a1 + 176);
  if (v11)
  {
    dispatch_async_f(v11[14], v11, _AsyncConnection_UserRelease);
    *(a1 + 176) = 0;
  }

  v12 = *(a1 + 208);
  if (v12)
  {
    dispatch_source_cancel(v12);
    if (*(a1 + 216))
    {
      dispatch_resume(*(a1 + 208));
      *(a1 + 216) = 0;
    }

    dispatch_release(*(a1 + 208));
    *(a1 + 208) = 0;
  }

  v13 = *(a1 + 224);
  if (v13)
  {
    dispatch_source_cancel(v13);
    if (*(a1 + 232))
    {
      dispatch_resume(*(a1 + 224));
      *(a1 + 232) = 0;
    }

    dispatch_release(*(a1 + 224));
    *(a1 + 224) = 0;
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    dispatch_source_cancel(*(a1 + 240));
    dispatch_release(v14);
    *(a1 + 240) = 0;
  }

  v15 = *(a1 + 248);
  if (v15)
  {
    dispatch_source_cancel(*(a1 + 248));
    dispatch_release(v15);
    *(a1 + 248) = 0;
  }

  v16 = *(a1 + 448);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 448) = 0;
  }

  v17 = *(a1 + 560);
  if (v17)
  {
    v18 = (a1 + 560);
    do
    {
      v19 = *(v17 + 16);
      *v18 = v19;
      if (!v19)
      {
        *(a1 + 568) = v18;
      }

      *(v17 + 9648) = a2;
      v20 = *(v17 + 9712);
      if (v20)
      {
        v20(v17);
      }

      CFRelease(v17);
      v17 = *v18;
    }

    while (*v18);
  }

  v21 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v21)
  {
    v22 = *(a1 + 32);

    v21(a2, v22);
  }
}

void _HTTPClientInvalidate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  _HTTPClientErrorHandler(a1, 4294960573, a3, a4, a5, a6, a7, a8);

  CFRelease(a1);
}

void _HTTPClientCancelHandler(_DWORD *cf)
{
  v2 = cf[51] - 1;
  cf[51] = v2;
  if (!v2)
  {
    v3 = *(cf + 66);
    v4 = cf[50];
    if (v3)
    {
      v3(v4, *(cf + 67), *(cf + 68), *(cf + 69));
LABEL_4:
      cf[50] = -1;
      goto LABEL_5;
    }

    if ((v4 & 0x80000000) == 0)
    {
      if (close(v4) && *__error())
      {
        __error();
      }

      goto LABEL_4;
    }
  }

LABEL_5:

  CFRelease(cf);
}

void _HTTPClientFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    free(v3);
    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    free(v4);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 152);
  if (v5)
  {
    free(v5);
    *(a1 + 152) = 0;
  }

  v6 = *(a1 + 496);
  if (v6)
  {
    v6(*(a1 + 480));
  }

  v7 = *(a1 + 200);
  if ((v7 & 0x80000000) == 0)
  {
    if (close(v7) && *__error())
    {
      __error();
    }

    *(a1 + 200) = -1;
  }

  v8 = *(a1 + 256);
  if (v8)
  {
    free(v8);
    *(a1 + 256) = 0;
  }

  HTTPClientAuthorization_Free((a1 + 272));
  v9 = *(a1 + 160);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 160) = 0;
  }
}

uint64_t Base64EncodeEx(char *__s, int64_t a2, char a3, _BYTE *a4, unint64_t a5, void *a6)
{
  v10 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v11 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  if ((a3 & 2) != 0)
  {
    v11 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_";
  }

  v12 = (2 * (((a2 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  if (v12 < a2)
  {
    result = 4294960553;
    goto LABEL_25;
  }

  if (v12 > a5)
  {
    result = 4294960545;
LABEL_25:
    v13 = a4;
    if (!a6)
    {
      return result;
    }

    goto LABEL_21;
  }

  v13 = a4;
  if (a2 >= 3)
  {
    do
    {
      *v13 = v11[*v10 >> 2];
      v13[1] = v11[(v10[1] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*v10 & 3))];
      v13[2] = v11[(v10[2] >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (v10[1] & 0xF))];
      v13[3] = v11[v10[2] & 0x3F];
      v10 += 3;
      v13 += 4;
      a2 -= 3;
    }

    while (a2 > 2);
  }

  if (a2 == 2)
  {
    *v13 = v11[*v10 >> 2];
    v13[1] = v11[(v10[1] >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*v10 & 3))];
    v13[2] = v11[4 * (v10[1] & 0xF)];
    if (a3)
    {
      result = 0;
      v13 += 3;
      if (!a6)
      {
        return result;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (a2 != 1)
    {
      result = 0;
      if (!a6)
      {
        return result;
      }

      goto LABEL_21;
    }

    *v13 = v11[*v10 >> 2];
    v13[1] = v11[16 * (*v10 & 3)];
    if (a3)
    {
      result = 0;
      v13 += 2;
      if (!a6)
      {
        return result;
      }

      goto LABEL_21;
    }

    v13[2] = 61;
  }

  result = 0;
  v13[3] = 61;
  v13 += 4;
  if (!a6)
  {
    return result;
  }

LABEL_21:
  *a6 = v13 - a4;
  return result;
}

void HTTPClientAuthorization_Free(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  a1[6] = 0;
  v3 = a1[7];
  if (v3)
  {
    free(v3);
    a1[7] = 0;
  }

  a1[8] = 0;
  v4 = a1[9];
  if (v4)
  {
    free(v4);
    a1[9] = 0;
  }

  a1[10] = 0;
  v5 = a1[11];
  if (v5)
  {
    free(v5);
    a1[11] = 0;
  }

  a1[12] = 0;
  v6 = a1[13];
  if (v6)
  {
    free(v6);
    a1[13] = 0;
  }

  a1[14] = 0;
  v7 = a1[15];
  if (v7)
  {
    free(v7);
    a1[15] = 0;
  }

  a1[16] = 0;
  v8 = a1[17];
  if (v8)
  {
    free(v8);
    a1[17] = 0;
  }

  a1[18] = 0;
  v9 = a1[19];
  if (v9)
  {
    free(v9);
    a1[19] = 0;
  }

  a1[20] = 0;
}

uint64_t Base64EncodeCopyEx(char *__s, size_t a2, char a3, void *a4, unint64_t *a5)
{
  v8 = a2;
  if (a2 == -1)
  {
    v8 = strlen(__s);
  }

  v10 = (2 * (((v8 + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = v10;
  if (v10 < v8)
  {
    return 4294960553;
  }

  v11 = malloc_type_malloc(v10 | 1, 0x100004077774924uLL);
  if (!v11)
  {
    return 4294960568;
  }

  v12 = v11;
  v13 = Base64EncodeEx(__s, v8, a3, v11, v10, &v17);
  if (v13)
  {
    v14 = v13;
    free(v12);
  }

  else
  {
    v15 = v17;
    *(v12 + v17) = 0;
    *a4 = v12;
    v14 = 0;
    if (a5)
    {
      *a5 = v15;
    }
  }

  return v14;
}

void *BonjourDevice_CopyDNSNames(const __CFDictionary *a1, uint64_t a2, int *a3)
{
  v46 = 0;
  context = a2;
  Value = CFDictionaryGetValue(a1, @"services");
  if (Value)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v7 = MutableCopy;
  if (MutableCopy)
  {
    TypeID = CFArrayGetTypeID();
    TypedValue = CFDictionaryGetTypedValue(a1, @"wakeArray", TypeID, 0);
    if (TypedValue && (v10 = TypedValue, v11 = CFArrayGetCount(TypedValue), v11 >= 1))
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        v14 = CFDataGetTypeID();
        TypedValueAtIndex = CFArrayGetTypedValueAtIndex(v10, v13, v14, 0);
        if (TypedValueAtIndex)
        {
          v16 = TypedValueAtIndex;
          if (CFDataGetLength(TypedValueAtIndex) == 6)
          {
            CFDataGetBytePtr(v16);
            v23 = v46 ? "\x1E" : "";
            if (AppendPrintF(&v46, "%swake://%02X-%02X-%02X-%02X-%02X-%02X", v17, v18, v19, v20, v21, v22, v23) < 1)
            {
              break;
            }
          }
        }

        if (v12 == ++v13)
        {
          if (v46)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:
      CFDataOfLength = CFDictionaryGetCFDataOfLength(a1, @"wakeAddr", 6, 0);
      if (!CFDataOfLength || (CFDataGetBytePtr(CFDataOfLength), AppendPrintF(&v46, "%swake://%02X-%02X-%02X-%02X-%02X-%02X", v25, v26, v27, v28, v29, v30, "") >= 1))
      {
LABEL_18:
        v48.length = CFArrayGetCount(v7);
        v48.location = 0;
        CFArraySortValues(v7, v48, _BonjourService_Comparator, &context);
        Count = CFArrayGetCount(v7);
        if (Count < 1)
        {
LABEL_26:
          v43 = v46;
          if (v46)
          {
            v44 = 0;
          }

          else
          {
            v44 = -6727;
          }

          if (!v7)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        v32 = Count;
        v33 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v33);
          v35 = CFStringGetTypeID();
          if (CFDictionaryGetTypedValue(ValueAtIndex, @"dnsName", v35, 0))
          {
            v42 = v46 ? "\x1E" : "";
            if (AppendPrintF(&v46, "%s%@", v36, v37, v38, v39, v40, v41, v42) < 1)
            {
              break;
            }
          }

          if (v32 == ++v33)
          {
            goto LABEL_26;
          }
        }
      }
    }

    v44 = -6700;
  }

  else
  {
    v44 = -6728;
  }

  if (v46)
  {
    free(v46);
  }

  v43 = 0;
  if (v7)
  {
LABEL_30:
    CFRelease(v7);
  }

LABEL_31:
  if (a3)
  {
    *a3 = v44;
  }

  return v43;
}

const __CFDictionary *CFDictionaryGetCFDataOfLength(const __CFDictionary *result, const void *a2, uint64_t a3, int *a4)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, a2);
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      if (v7 == CFDataGetTypeID())
      {
        Length = CFDataGetLength(v6);
        v9 = Length == a3;
        if (Length == a3)
        {
          result = v6;
        }

        else
        {
          result = 0;
        }

        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = -6743;
        }
      }

      else
      {
        result = 0;
        v10 = -6756;
      }
    }

    else
    {
      v10 = -6727;
    }
  }

  else
  {
    v10 = -6705;
  }

  if (a4)
  {
    *a4 = v10;
  }

  return result;
}

uint64_t SockAddrCompareAddrEx(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 1);
  if (v5 != *(a2 + 1))
  {
    return v5 - *(a2 + 1);
  }

  if (*(a1 + 1))
  {
    v25 = v3;
    v26 = v4;
    if (v5 == 30)
    {
      v12 = (a1 + 8);
      v13 = (a2 + 8);
      v22 = 0;
      v23[0] = 0;
      v24 = 0;
      v23[1] = 0;
      v19 = 0;
      v20[0] = 0;
      v21 = 0;
      v20[1] = 0;
      if (*(a1 + 8) == 254 && (*(a1 + 9) & 0xC0) == 0x80 && *v13 == 254 && (*(a2 + 9) & 0xC0) == 0x80 && (v12 = v23, v13 = v20, SockAddrSimplify(a1, &v22), SockAddrSimplify(a2, &v19), a3))
      {
        LODWORD(v5) = v24 - v21;
      }

      else
      {
        LODWORD(v5) = 0;
      }

      v15 = bswap64(*v12);
      v16 = bswap64(*v13);
      if (v15 == v16 && (v15 = bswap64(v12[1]), v16 = bswap64(v13[1]), v15 == v16))
      {
        v17 = 0;
      }

      else if (v15 < v16)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        return v17;
      }

      else
      {
        return v5;
      }
    }

    else if (v5 == 2)
    {
      v7 = bswap32(*(a1 + 4));
      v8 = bswap32(*(a2 + 4));
      v9 = v7 >= v8;
      v10 = v7 > v8;
      v11 = !v9;
      return (v10 - v11);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t Base64Decode(char *__s, size_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v8 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = &v8[a2];
  v13 = &a3[a4];
  v14 = a3;
LABEL_4:
  v15 = 0;
  while (v8 < v12)
  {
    v17 = *v8++;
    v16 = v17;
    v18 = kBase64DecodeTable[v17];
    if (v18 != 128)
    {
      if (v18 == 255)
      {
        result = 4294960563;
        goto LABEL_24;
      }

      if (v16 == 61)
      {
        break;
      }

      if (v15)
      {
        if (v15 == 1)
        {
          v10 = 16 * v18;
          v15 = 2;
          v11 |= v18 >> 4;
        }

        else
        {
          if (v15 != 2)
          {
            if (v13 - v14 >= 3)
            {
              v9 |= v18;
              *v14 = v11;
              v14[1] = v10;
              v14[2] = v9;
              v14 += 3;
              goto LABEL_4;
            }

            goto LABEL_28;
          }

          v9 = v18 << 6;
          v15 = 3;
          v10 |= v18 >> 2;
        }
      }

      else
      {
        v11 = 4 * v18;
        v15 = 1;
      }
    }
  }

  if (v15 < 2)
  {
    result = 0;
    goto LABEL_24;
  }

  if (v15 == 3)
  {
    if (v13 - v14 >= 2)
    {
      result = 0;
      *v14 = v11;
      v14[1] = v10;
      v14 += 2;
      goto LABEL_24;
    }
  }

  else if (v13 - v14 >= 1)
  {
    result = 0;
    *v14++ = v11;
    goto LABEL_24;
  }

LABEL_28:
  result = 4294960545;
LABEL_24:
  if (a5)
  {
    *a5 = v14 - a3;
  }

  return result;
}

uint64_t SocketReadDataEx(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = a4 - *a5;
  if (a4 == *a5)
  {
    return 0;
  }

  if (a4 <= *a5)
  {
    return 4294960533;
  }

  do
  {
    v11 = read(a1, (a2 + v5), v6);
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (!v11)
      {
        return 4294960543;
      }

      *a5 = v11 + v5;
      if (v11 + v5 >= a3)
      {
        return 0;
      }

      else
      {
        return 35;
      }
    }

    if (!*__error())
    {
      v17 = 4294960596;
      goto LABEL_14;
    }

    v17 = *__error();
  }

  while (v17 == 4);
  if (v17 == 35)
  {
    return v17;
  }

LABEL_14:
  if (gLogCategory_NetUtils <= 60 && (gLogCategory_NetUtils != -1 || _LogCategory_Initialize(&gLogCategory_NetUtils, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_NetUtils, "OSStatus SocketReadDataEx(SocketRef, void *, size_t, size_t, size_t *)", 0x3Cu, "SocketReadDataEx, fd %d, min %zu, failed: %#m\n", v12, v13, v14, v15, a1);
  }

  return v17;
}

uint64_t _ChaCha20Poly1305DecryptMessage(uint64_t a1, __int32 *a2, uint64_t a3, unsigned int *a4, unint64_t a5, int8x16_t *a6, unint64_t a7, int8x16_t *a8, uint64_t a9, uint64_t a10)
{
  if (a3 == 12 && a10 == 16)
  {
    return _chacha20_poly1305_decrypt_all((a1 + 24), a2, 12, a4, a5, a6, a7, a8, a9, 16);
  }

  else
  {
    return 4294960591;
  }
}

const char *CFGetData(__CFString *a1, const char *a2, unint64_t a3, void *a4, int *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (a1)
  {
    v10 = CFGetTypeID(a1);
    if (v10 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(a1);
      Length = CFDataGetLength(a1);
      v20 = Length;
      if (a2)
      {
        v13 = Length;
        if (Length > a3)
        {
          v20 = a3;
          v13 = a3;
        }

        if (!v13)
        {
          goto LABEL_9;
        }

        v14 = a2;
        p_s = BytePtr;
        goto LABEL_8;
      }

      v16 = 0;
      a2 = BytePtr;
    }

    else
    {
      v19 = 0;
      if (v10 != CFStringGetTypeID())
      {
        if (v10 == CFNullGetTypeID())
        {
          v16 = 0;
          v20 = 0;
          a2 = "";
          goto LABEL_17;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *&__s.byte0 = 0;
          *&__s.byte8 = 0;
          [(__CFString *)a1 getUUIDBytes:&__s];
        }

        else
        {
          if (v10 != CFUUIDGetTypeID())
          {
            v16 = -6735;
            goto LABEL_17;
          }

          __s = CFUUIDGetUUIDBytes(a1);
        }

        v20 = 16;
        if (!a2)
        {
          a2 = "";
          goto LABEL_9;
        }

        if (a3 > 0xF)
        {
          a3 = 16;
        }

        else
        {
          v20 = a3;
          if (!a3)
          {
            goto LABEL_9;
          }
        }

        p_s = &__s;
        v14 = a2;
        v13 = a3;
LABEL_8:
        memcpy(v14, p_s, v13);
LABEL_9:
        v16 = 0;
        goto LABEL_17;
      }

      *&__s.byte0 = 0;
      v18 = 0;
      v16 = CFStringGetOrCopyCStringUTF8(a1, &__s, &v18, &v19);
      if (!v16)
      {
        HexToData(*&__s.byte0, v19, 22, a2, a3, &v20, 0, 0);
        if (v18)
        {
          free(v18);
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    v16 = -6705;
  }

LABEL_17:
  if (a4)
  {
    *a4 = v20;
  }

  if (a5)
  {
    *a5 = v16;
  }

  return a2;
}

uint64_t HexToData(char *__s, int64_t a2, char a3, uint64_t a4, unint64_t a5, unint64_t *a6, void *a7, char **a8)
{
  v12 = __s;
  if (a2 == -1)
  {
    a2 = strlen(__s);
  }

  v13 = &v12[a2];
  v14 = MEMORY[0x1E69E9830];
  v29 = a2;
  v15 = v12;
  if (a2 >= 1)
  {
    do
    {
      v16 = *v15;
      if (v16 < 0)
      {
        if (!__maskrune(*v15, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v14 + 4 * v16 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v15;
    }

    while (v15 < v13);
  }

  if (v13 - v15 > 1 && *v15 == 48 && (v15[1] | 0x20) == 0x78)
  {
    v15 += 2;
  }

  if (v15 >= v13)
  {
    v20 = 0;
    v19 = 0;
    goto LABEL_51;
  }

  v26 = a7;
  v27 = v12;
  v28 = a8;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (1)
  {
    v21 = *v15;
    if (v13 - v15 >= 2 && (a3 & 0x10) != 0 && !v18 && v21 == 48)
    {
      if ((v15[1] | 0x20) == 0x78)
      {
        v18 = 0;
        ++v15;
        goto LABEL_31;
      }

      v22 = 0;
LABEL_30:
      v17 = 16 * v22;
      v18 = 1;
      goto LABEL_31;
    }

    v22 = v21 - 48;
    if ((v21 - 48) < 0xAu)
    {
      goto LABEL_24;
    }

    if ((v21 - 65) <= 5u)
    {
      v22 = v21 - 55;
LABEL_24:
      if (v18)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }

    if ((v21 - 97) <= 5u)
    {
      v22 = v21 - 87;
      if (v18)
      {
LABEL_25:
        v17 |= v22;
        if (a4 && v20 < a5)
        {
          *(a4 + v20++) = v17;
        }

        v18 = 0;
        ++v19;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if ((a3 & 2) == 0)
    {
      goto LABEL_41;
    }

    if ((v21 & 0x80) != 0)
    {
      break;
    }

    if ((*(v14 + 4 * v21 + 60) & 0x4000) == 0)
    {
      goto LABEL_41;
    }

LABEL_31:
    if (++v15 >= v13)
    {
      goto LABEL_44;
    }
  }

  if (__maskrune(*v15, 0x4000uLL))
  {
    goto LABEL_31;
  }

LABEL_41:
  if ((a3 & 4) != 0 && (v21 - 44) <= 0x33 && ((1 << (v21 - 44)) & 0x8000000004003) != 0)
  {
    goto LABEL_31;
  }

LABEL_44:
  if ((a3 & 8) != 0)
  {
    v12 = v27;
    a8 = v28;
    a7 = v26;
  }

  else
  {
    a7 = v26;
    if (v18)
    {
      if (a4 && v20 < a5)
      {
        *(a4 + v20++) = v17;
      }

      v12 = v27;
      a8 = v28;
      ++v19;
    }

    else
    {
      v12 = v27;
      a8 = v28;
    }
  }

LABEL_51:
  if (a4 && (a3 & 1) != 0 && a5 > v20)
  {
    bzero((a4 + v20), a5 - v20);
  }

  if (a6)
  {
    *a6 = v20;
  }

  if (a7)
  {
    *a7 = v19;
  }

  if (a8)
  {
    *a8 = v15;
  }

  if (v15 < v13)
  {
    v23 = &v12[v29] - v15;
    do
    {
      v24 = *v15;
      if (v24 < 0)
      {
        if (!__maskrune(*v15, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v14 + 4 * v24 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v15;
      --v23;
    }

    while (v23);
  }

  if (v15 == v13)
  {
    return 0;
  }

  if ((*(v14 + 4 * *v15 + 60) & 0x10000) != 0)
  {
    if (a5 <= v20)
    {
      return 4294960545;
    }

    else
    {
      return 4294960579;
    }
  }

  else if (v19)
  {
    return 0;
  }

  else
  {
    return 4294960554;
  }
}

uint64_t Base64DecodeCopy(char *__s, size_t a2, void *a3, unint64_t *a4)
{
  v6 = a2;
  if (a2 == -1)
  {
    v6 = strlen(__s);
  }

  if (v6 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 4294960553;
  }

  v14 = 3 * ((v6 + 3) >> 2);
  v8 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v9 = v8;
  v10 = Base64Decode(__s, v6, v8, 3 * ((v6 + 3) >> 2), &v14);
  if (v10)
  {
    v11 = v10;
    free(v9);
  }

  else
  {
    v12 = v14;
    *(v9 + v14) = 0;
    *a3 = v9;
    v11 = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return v11;
}

const char *CFDictionaryGetData(const __CFDictionary *a1, const void *a2, const char *a3, unint64_t a4, void *a5, int *a6)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetData(Value, a3, a4, a5, a6);
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = -6727;
    }

    return a3;
  }
}

unint64_t CFDictionaryGetHardwareAddress(const __CFDictionary *a1, const void *a2, char *a3, size_t a4, int *a5)
{
  if (a1 && (Value = CFDictionaryGetValue(a1, a2)) != 0)
  {

    return CFGetHardwareAddress(Value, a3, a4, a5);
  }

  else
  {
    if (a3)
    {
      bzero(a3, a4);
    }

    if (a5)
    {
      *a5 = -6727;
    }

    return 0;
  }
}

uint64_t TextToSourceVersion(char *__s, int64_t a2)
{
  v2 = a2;
  if (a2 == -1)
  {
    v2 = strlen(__s);
  }

  v4 = &__s[v2];
  if (v2 < 1)
  {
    v6 = __s;
  }

  else
  {
    v5 = MEMORY[0x1E69E9830];
    v6 = __s;
    do
    {
      v7 = *v6;
      if (v7 < 0)
      {
        if (!__maskrune(*v6, 0x4000uLL))
        {
          break;
        }
      }

      else if ((*(v5 + 4 * v7 + 60) & 0x4000) == 0)
      {
        break;
      }

      ++v6;
    }

    while (v6 < v4);
  }

  if (v6 >= v4)
  {
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = (&__s[v2] - v6);
    while (1)
    {
      v10 = *v6;
      if ((v10 - 48) > 9 || v8 >= 0x346DC)
      {
        break;
      }

      v8 = v10 - 48 + 10 * v8;
      ++v6;
      if (!--v9)
      {
        v6 = &__s[v2];
        break;
      }
    }

    if (v8 > 0x346DB)
    {
      return 0;
    }
  }

  if (v10 == 46)
  {
    v12 = v6 + 1;
  }

  else
  {
    v12 = v6;
  }

  if (v12 >= v4)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    while (1)
    {
      v10 = *v12;
      if ((v10 - 48) > 9 || v13 > 0x63)
      {
        break;
      }

      v13 = v10 - 48 + 10 * v13;
      if (++v12 >= v4)
      {
        v12 = &__s[v2];
        break;
      }
    }

    if (v13 > 0x63)
    {
      return 0;
    }

    v14 = 100 * v13;
  }

  if (v10 == 46)
  {
    ++v12;
  }

  if (v12 >= v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    do
    {
      v16 = *v12 - 48;
      if (v16 > 9)
      {
        break;
      }

      if (v15 > 0x63)
      {
        break;
      }

      v15 = v16 + 10 * v15;
      ++v12;
    }

    while (v12 < v4);
    if (v15 > 0x63)
    {
      return 0;
    }
  }

  return v14 + 10000 * v8 + v15;
}

uint64_t ServerSocketOpenEx2(int a1, int a2, int a3, __int128 *a4, int a5, int a6, unsigned int *a7, int a8, char a9, int *a10)
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = 0;
  if (a6 >= 0)
  {
    v17 = a6;
  }

  else
  {
    v17 = -a6;
  }

  v18 = socket(a1, a2, a3);
  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  if (!*__error())
  {
    return 4294960596;
  }

  v19 = *__error();
  if (!v19)
  {
LABEL_7:
    v27 = 1;
    setsockopt(v18, 0xFFFF, 4130, &v27, 4u);
    v19 = SocketSetNonBlocking(v18, 1);
    if (v19)
    {
LABEL_8:
      if ((v18 & 0x80000000) == 0 && close(v18) && *__error())
      {
        __error();
      }

      return v19;
    }

    SocketSetBufferSize(v18, 4098, a8);
    HIDWORD(v30) = 1;
    if (a2 == 2)
    {
      v20 = 512;
    }

    else
    {
      v20 = 4;
    }

    if (setsockopt(v18, 0xFFFF, v20, &v30 + 4, 4u))
    {
      if (!*__error())
      {
        goto LABEL_66;
      }

      v19 = *__error();
      if (v19)
      {
        goto LABEL_8;
      }
    }

    if (a1 == 30)
    {
      if ((a9 & 2) == 0)
      {
        HIDWORD(v30) = 1;
        if (setsockopt(v18, 41, 27, &v30 + 4, 4u))
        {
          if (!*__error())
          {
            goto LABEL_66;
          }

          v19 = *__error();
          if (v19)
          {
            goto LABEL_8;
          }
        }
      }

      *&v29[12] = 0;
      *&v29[10] = 0;
      *&v29[20] = 0;
      *v29 = 7708;
      *&v29[2] = bswap32(v17) >> 16;
      if (a4)
      {
        v22 = *a4;
      }

      else
      {
        v22 = *MEMORY[0x1E69E99B8];
      }

      *&v29[8] = v22;
      LODWORD(v30) = a5;
      if (!bind(v18, v29, 0x1Cu))
      {
        goto LABEL_50;
      }

      if (*__error())
      {
        v19 = *__error();
      }

      else
      {
        v19 = 4294960596;
      }

      if ((a6 & 0x80000000) == 0 || !v19)
      {
        goto LABEL_49;
      }

      *&v29[2] = 0;
      v23 = v18;
      v24 = 28;
    }

    else
    {
      if (a1 != 2)
      {
        v19 = 4294960561;
        goto LABEL_8;
      }

      *&v29[8] = 0;
      *v29 = 528;
      *&v29[2] = bswap32(v17) >> 16;
      if (a4)
      {
        v21 = *a4;
      }

      else
      {
        v21 = 0;
      }

      *&v29[4] = v21;
      if (!bind(v18, v29, 0x10u))
      {
        goto LABEL_50;
      }

      if (*__error())
      {
        v19 = *__error();
      }

      else
      {
        v19 = 4294960596;
      }

      if ((a6 & 0x80000000) == 0 || !v19)
      {
        goto LABEL_49;
      }

      *&v29[2] = 0;
      v23 = v18;
      v24 = 16;
    }

    if (!bind(v23, v29, v24))
    {
LABEL_50:
      if (a2 == 1 && listen(v18, 128) && (!*__error() || *__error()) && listen(v18, 5))
      {
        if (!*__error())
        {
          goto LABEL_66;
        }

        v19 = *__error();
        if (v19)
        {
          goto LABEL_8;
        }
      }

      if (a9)
      {
        SocketSetP2P(v18, 1);
      }

      if (!a7)
      {
        goto LABEL_69;
      }

      v28 = 28;
      if (!getsockname(v18, v29, &v28))
      {
LABEL_63:
        if (v29[1] == 30 || v29[1] == 2)
        {
          v25 = bswap32(*&v29[2]) >> 16;
        }

        else
        {
          v25 = -1;
        }

        *a7 = v25;
LABEL_69:
        v19 = 0;
        *a10 = v18;
        return v19;
      }

      if (*__error())
      {
        v19 = *__error();
        if (v19)
        {
          goto LABEL_8;
        }

        goto LABEL_63;
      }

LABEL_66:
      v19 = 4294960596;
      goto LABEL_8;
    }

    if (!*__error())
    {
      goto LABEL_66;
    }

    v19 = *__error();
LABEL_49:
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

  return v19;
}