@interface GCGenericPhysicalDevicePending
@end

@implementation GCGenericPhysicalDevicePending

uint64_t __76___GCGenericPhysicalDevicePending_setDriverConnection_invalidatingPrevious___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 16) resultIfFinished];
  if (v5)
  {
    if (objc_opt_respondsToSelector())
    {
      [v5 setDriverConnection:*(a1 + 40)];
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (v2 && *(a1 + 56) == 1)
    {
      [v2 invalidate];
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      [(_GCGenericPhysicalDevicePending *)*(a1 + 32) _onqueue_prepareDeviceWithConnection:v3];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

uint64_t __76___GCGenericPhysicalDevicePending_setFilterConnection_invalidatingPrevious___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) resultIfFinished];
  if (v2)
  {
    v5 = v2;
    if (objc_opt_respondsToSelector())
    {
      [v5 setFilterConnection:*(a1 + 40)];
    }
  }

  else
  {
    v3 = *(a1 + 48);
    if (v3 && *(a1 + 56) == 1)
    {
      [v3 invalidate];
    }
  }

  return MEMORY[0x1EEE66C30]();
}

@end