uint64_t EXDisplayPipeOpen(io_connect_t **a1)
{
  v1 = 3758097084;
  mainPort = *MEMORY[0x277CD2898];
  if (!a1)
  {
    return 3758097090;
  }

  v3 = malloc_type_malloc(0xCuLL, 0x100004005A209FEuLL);
  *a1 = v3;
  if (!v3)
  {
    return 3758097085;
  }

  if (MEMORY[0x24C208910](0, &mainPort))
  {
    v4 = "error: master port failure";
LABEL_5:
    puts(v4);
    return v1;
  }

  v6 = IOServiceMatching("EXDisplayPipe");
  if (!v6)
  {
    v4 = "error: failed to create matching class";
    goto LABEL_5;
  }

  MatchingService = IOServiceGetMatchingService(mainPort, v6);
  v8 = *a1;
  (*a1)[1] = MatchingService;
  if (!MatchingService)
  {
    v4 = "error: service is null";
    goto LABEL_5;
  }

  v9 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, v8);
  if (v9)
  {
    printf("error: unable to open service %x\n", v9);
  }

  else
  {
    v1 = 0;
    *(*a1 + 8) = 1;
  }

  return v1;
}

uint64_t EXDisplayPipeClose(io_connect_t **a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = *a1;
  if (v2)
  {
    if (*v2)
    {
      IOServiceClose(*v2);
      v2 = *a1;
      **a1 = 0;
    }
  }

  free(v2);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t EXDisplayPipeSetPower(uint64_t a1, unsigned int a2)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    input = a2;
    v4 = IOConnectCallMethod(*a1, 7u, &input, 1u, 0, 0, 0, 0, 0, 0);
    if (v4)
    {
      syslog(3, "%s: %u: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeSetPower", a2, v4);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeShowIndicator(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 3758097112;
  inputStruct = a3;
  if (a1 && *(a1 + 8) == 1)
  {
    input = a2;
    v5 = IOConnectCallMethod(*a1, 1u, &input, 1u, &inputStruct, 8uLL, 0, 0, 0, 0);
    if (v5)
    {
      syslog(3, "%s: glyph %u: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeShowIndicator", a2, v5);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t EXDisplayPipeHideIndicator(uint64_t a1, unsigned int a2)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    input = a2;
    v4 = IOConnectCallMethod(*a1, 2u, &input, 1u, 0, 0, 0, 0, 0, 0);
    if (v4)
    {
      syslog(3, "%s: glyph %u: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeHideIndicator", a2, v4);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeSetIndicators(uint64_t a1, void *inputStruct)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v3 = IOConnectCallMethod(*a1, 3u, 0, 0, inputStruct, 0x160uLL, 0, 0, 0, 0);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeSetIndicators", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeGetStatus(uint64_t a1, void *outputStruct)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v5 = 352;
    v3 = IOConnectCallMethod(*a1, 4u, 0, 0, 0, 0, 0, 0, outputStruct, &v5);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeGetStatus", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeGetSecureTEStatus(uint64_t a1, void *outputStruct)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v5 = 544;
    v3 = IOConnectCallMethod(*a1, 9u, 0, 0, 0, 0, 0, 0, outputStruct, &v5);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeGetSecureTEStatus", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeSetLogLevel(uint64_t a1, uint64_t a2)
{
  v2 = 3758097112;
  input = a2;
  if (a1 && *(a1 + 8) == 1)
  {
    v3 = IOConnectCallMethod(*a1, 5u, &input, 1u, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeSetLogLevel", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeSetLogMask(uint64_t a1, uint64_t a2)
{
  v2 = 3758097112;
  input = a2;
  if (a1 && *(a1 + 8) == 1)
  {
    v3 = IOConnectCallMethod(*a1, 6u, &input, 1u, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeSetLogMask", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeSetALSSEnable(uint64_t a1, unsigned int a2)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    input = a2;
    v3 = IOConnectCallMethod(*a1, 8u, &input, 1u, 0, 0, 0, 0, 0, 0);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeSetALSSEnable", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeFlushTelemetry(uint64_t a1)
{
  v1 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v2 = IOConnectCallMethod(*a1, 0xAu, 0, 0, 0, 0, 0, 0, 0, 0);
    if (v2)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeFlushTelemetry", v2);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t EXDisplayPipeGetSCASessionHealth(uint64_t a1, void *outputStruct)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v5 = 4;
    v3 = IOConnectCallMethod(*a1, 0xBu, 0, 0, 0, 0, 0, 0, outputStruct, &v5);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeGetSCASessionHealth", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t EXDisplayPipeGetStats(uint64_t a1, void *outputStruct)
{
  v2 = 3758097112;
  if (a1 && *(a1 + 8) == 1)
  {
    v5 = 376;
    v3 = IOConnectCallMethod(*a1, 0xCu, 0, 0, 0, 0, 0, 0, outputStruct, &v5);
    if (v3)
    {
      syslog(3, "%s: IOConnectCallMethod returned 0x%x\n", "EXDisplayPipeGetStats", v3);
      return 3758097084;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}