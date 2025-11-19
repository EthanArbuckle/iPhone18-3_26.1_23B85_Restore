id DRLogTarget()
{
  if (DRLogTarget_onceToken != -1)
  {
    DRLogTarget_cold_1();
  }

  v1 = DRLogTarget_log;

  return v1;
}

uint64_t __DRLogTarget_block_invoke()
{
  DRLogTarget_log = os_log_create("com.apple.DragUI", "Dragging");

  return MEMORY[0x2821F96F8]();
}