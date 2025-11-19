uint64_t sntp_datestamp_subsecs_to_nsec(unint64_t a1)
{
  v1 = (a1 * 0x3B9ACA00uLL) >> 64;
  if (1000000000 * a1 < 0x8000000000000000)
  {
    return v1;
  }

  else
  {
    return (v1 + 1);
  }
}

unint64_t sntp_header_hton@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_hton(v4);
  v6 = sntp_shortstamp_hton(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_hton(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

unint64_t sntp_header_ntoh@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  *(a2 + 4) = sntp_shortstamp_ntoh(v4);
  v6 = sntp_shortstamp_ntoh(a1[2]);
  v7 = bswap32(a1[3]);
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  result = sntp_timestamp_ntoh(*(a1 + 2));
  *(a2 + 16) = result;
  return result;
}

void *sntp_header_mmap(const char *a1, uint64_t a2, int a3)
{
  v6 = open(a1, 2);
  if (v6 < 0)
  {
    if (*__error() != 2 || (v8 = umask(0), v7 = open(a1, 514, 436), umask(v8), v7 < 0))
    {
      warn("open");
      return 0;
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 12);
    v11 = *(a2 + 16);
    v12 = *(a2 + 4);
    __buf[0] = *a2;
    __buf[1] = sntp_shortstamp_hton(v12);
    __buf[2] = sntp_shortstamp_hton(v9);
    __buf[3] = bswap32(v10);
    v17 = sntp_timestamp_hton(v11);
    if (write(v7, __buf, 0x18uLL) != 24)
    {
      warn("write");
      return 0;
    }
  }

  else
  {
    v7 = v6;
    if (ftruncate(v6, 24))
    {
      warn("ftruncate");
      return 0;
    }
  }

  if (a3)
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  v14 = mmap(0, 0x18uLL, v13, 1, v7, 0);
  if (v14 == -1)
  {
    warn("mmap");
    v14 = 0;
  }

  if (close(v7))
  {
    warn("close");
  }

  return v14;
}

void sntp_header_unmap(void *a1)
{
  if (munmap(a1, 0x18uLL))
  {

    warn("munmap");
  }
}