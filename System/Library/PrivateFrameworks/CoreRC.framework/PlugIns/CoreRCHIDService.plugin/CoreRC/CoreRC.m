void *IUnknown_Init(void *result, void *a2, uint64_t a3)
{
  *result = *a2;
  result[1] = a3;
  return result;
}

uint64_t IUnknown_Release(uint64_t a1)
{
  v2 = [*(a1 + 8) retainCount];

  return v2 - 1;
}

id sub_1504(uint64_t a1)
{

  return [v2 dispatchHIDEvent:a1 fromDevice:v1];
}

id sub_1528()
{

  return [CoreRCHIDEvent alloc];
}

id sub_154C(uint64_t a1)
{

  return [v2 dispatchHIDEvent:a1 fromDevice:v1];
}

IUnknown *CoreRCHIDServiceFactory(uint64_t a1, const void *a2)
{
  v3 = CFUUIDGetConstantUUIDWithBytes(0, 5u, 0x16u, 0xB5u, 0x63u, 0xB1u, 0x5Bu, 0x11u, 0xDAu, 0x96u, 0xEBu, 0, 0x14u, 0x51u, 0x97u, 0x58u, 0xEFu);
  if (!CFEqual(a2, v3))
  {
    return 0;
  }

  v4 = objc_alloc_init(CoreRCHIDService);
  v5 = [(CoreRCHIDService *)v4 interfaceWithID:CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u)];
  v6 = v5;
  if (v5)
  {
    (v5->Release)(v5);
  }

  return v6;
}

void *sub_1D20(void *result)
{
  if (!*(result[4] + 104))
  {
    v2 = result;
    *(result[4] + 104) = [[CoreRCManager alloc] initWithSerialQueue:*(result[4] + 88)];
    v3 = *(v2[4] + 104);

    return [v3 setDelegate:?];
  }

  return result;
}

void sub_1E44(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 104);
  if (v2)
  {
    [v2 setDelegate:0];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [NSSet setWithSet:*(*(a1 + 32) + 72)];
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        v7 = 0;
        do
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(a1 + 32) removeBus:*(*(&v17 + 1) + 8 * v7)];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [(NSSet *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v5);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [NSSet setWithSet:*(*(a1 + 32) + 80), 0];
    v9 = [(NSSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(a1 + 32) removeDevice:*(*(&v13 + 1) + 8 * v12)];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSSet *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
      }

      while (v10);
    }

    *(*(a1 + 32) + 104) = 0;
  }
}

uint64_t IUnknown_QueryInterface(uint64_t a1, CFUUIDBytes a2, void *a3)
{
  v3 = 2147483652;
  if (!a3)
  {
    return 2147483653;
  }

  v6 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, a2);
  *a3 = [*(a1 + 8) interfaceWithID:v6];
  CFRelease(v6);
  if (*a3)
  {
    v7 = *(a1 + 8);
    [*(a1 + 8) retainCount];
    return 0;
  }

  return v3;
}

uint64_t sub_2624(uint64_t result)
{
  if (gLogCategory_CoreRCHID <= 90)
  {
    v1 = result;
    if (gLogCategory_CoreRCHID != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}