void sub_10002AB70()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002ABE8(uint64_t *a1)
{
  v1 = *a1;
  sub_100025198();
  sub_10002517C(&_mh_execute_header, v2, v3, "[ERROR] Found incorrect permissions/ownership on Document Revisions storage at %@; moving out of the way and creating a new storage directory.\n", v4, v5, v6, v7, v8);
}

void sub_10002AC54(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, 0x90u, "[ERROR] Failed to clear ACL on storage directory: error %d (%s)\n", v5, 0x12u);
}

void sub_10002AE20(uint64_t *a1)
{
  v1 = *a1;
  sub_100025198();
  sub_10002517C(&_mh_execute_header, v2, v3, "[ERROR] Failed to open database in path %@\n", v4, v5, v6, v7, v8);
}

void sub_10002AE8C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, 0x90u, "[ERROR] An unrecoverable error occurred while attempting to open the generation storage database. Generation data has been lost.\n", buf, 2u);
}

void sub_10002AECC()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002AF68()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002AFD8()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B014()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B084()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B0C0()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B198(uint64_t a1)
{
  v6 = *(a1 + 8);
  [*(a1 + 40) UTF8String];
  sub_10000CEAC();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10002B27C()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10002B2B8()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B460(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100025198();
  sub_10002517C(&_mh_execute_header, v2, v3, "[ERROR] Failed to remove generation row ID %lld\n", v4, v5, v6, v7, v8);
}

void sub_10002B5A8()
{
  sub_100006058();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10002B820()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B898()
{
  sub_1000030A8();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10002B910(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 48);
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7 = 136315650;
  v8 = v3;
  v9 = 1024;
  v10 = v4;
  v11 = 2080;
  v12 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, 0x90u, "[ERROR] fts_read() failed for path %s; error %d (%s)", &v7, 0x1Cu);
}

void sub_10002BA38(uint64_t a1)
{
  v1 = *(a1 + 168);
  sub_100025198();
  sub_100006064();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10002BAE0()
{
  sub_100006094();
  sub_100006064();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}