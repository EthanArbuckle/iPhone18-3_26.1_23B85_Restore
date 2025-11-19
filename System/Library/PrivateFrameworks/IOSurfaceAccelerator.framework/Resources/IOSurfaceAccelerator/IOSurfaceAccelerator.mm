uint64_t start(int a1, char **a2)
{
  v9 = 0;
  do
  {
    v4 = getopt_long(a1, a2, "fh", &off_100008000, &v9);
  }

  while (v4 == 102);
  if (v4 != -1)
  {
    sub_100000C8C(*a2);
    goto LABEL_7;
  }

  v5 = IOSurfaceAcceleratorCreate();
  if (v5)
  {
    v7 = v5;
    puts("Could not create IOSA client");
    v8 = __stderrp;
    mach_error_string(v7);
    fprintf(v8, "%s %s (%#x)\n");
LABEL_7:
    exit(1);
  }

  return 0;
}

uint64_t sub_100000C8C(const char *a1)
{
  fprintf(__stdoutp, "%s options:\n", a1);
  fwrite("\t--file | -f\n", 0xDuLL, 1uLL, __stdoutp);
  fwrite("\t\tWrite diag to file /tmp/com.apple.AppleM2ScalerCSC.IOSADiagnose_YYYY_MM__DD_HH-MM-SS.txt (instead of stdout)\n", 0x6FuLL, 1uLL, __stdoutp);
  fwrite("\t--help | -h\n", 0xDuLL, 1uLL, __stdoutp);
  fwrite("\t\tthis usage\n", 0xDuLL, 1uLL, __stdoutp);
  fputc(10, __stdoutp);
  v1 = __stdoutp;

  return fflush(v1);
}