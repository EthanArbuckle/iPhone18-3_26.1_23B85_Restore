id pbb_mobileasset_log()
{
  if (pbb_mobileasset_log_onceToken != -1)
  {
    pbb_mobileasset_log_cold_1();
  }

  v1 = pbb_mobileasset_log___logger;

  return v1;
}

uint64_t __pbb_mobileasset_log_block_invoke()
{
  pbb_mobileasset_log___logger = os_log_create("com.apple.Bridge", "mobileasset");

  return MEMORY[0x2821F96F8]();
}

void sub_25DF4B67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id pbb_bridge_log()
{
  if (pbb_bridge_log_onceToken != -1)
  {
    pbb_bridge_log_cold_1();
  }

  v1 = pbb_bridge_log___logger;

  return v1;
}

uint64_t __pbb_bridge_log_block_invoke()
{
  pbb_bridge_log___logger = os_log_create("com.apple.Bridge", "bridge");

  return MEMORY[0x2821F96F8]();
}

id pbb_setup_log()
{
  if (pbb_setup_log_onceToken != -1)
  {
    pbb_setup_log_cold_1();
  }

  v1 = pbb_setup_log___logger;

  return v1;
}

uint64_t __pbb_setup_log_block_invoke()
{
  pbb_setup_log___logger = os_log_create("com.apple.Bridge", "setup");

  return MEMORY[0x2821F96F8]();
}

id pbb_shared_log()
{
  if (pbb_shared_log_onceToken != -1)
  {
    pbb_shared_log_cold_1();
  }

  v1 = pbb_shared_log___logger;

  return v1;
}

uint64_t __pbb_shared_log_block_invoke()
{
  pbb_shared_log___logger = os_log_create("com.apple.Bridge", "shared");

  return MEMORY[0x2821F96F8]();
}

id pbb_activation_log()
{
  if (pbb_activation_log_onceToken != -1)
  {
    pbb_activation_log_cold_1();
  }

  v1 = pbb_activation_log___logger;

  return v1;
}

uint64_t __pbb_activation_log_block_invoke()
{
  pbb_activation_log___logger = os_log_create("com.apple.Bridge", "activation");

  return MEMORY[0x2821F96F8]();
}

id pbb_accountsignin_log()
{
  if (pbb_accountsignin_log_onceToken != -1)
  {
    pbb_accountsignin_log_cold_1();
  }

  v1 = pbb_accountsignin_log___logger;

  return v1;
}

uint64_t __pbb_accountsignin_log_block_invoke()
{
  pbb_accountsignin_log___logger = os_log_create("com.apple.Bridge", "accountsignin");

  return MEMORY[0x2821F96F8]();
}

id pbb_setupflow_log()
{
  if (pbb_setupflow_log_onceToken != -1)
  {
    pbb_setupflow_log_cold_1();
  }

  v1 = pbb_setupflow_log___logger;

  return v1;
}

uint64_t __pbb_setupflow_log_block_invoke()
{
  pbb_setupflow_log___logger = os_log_create("com.apple.Bridge", "setupflow");

  return MEMORY[0x2821F96F8]();
}

id pbb_manualunpairing_log()
{
  if (pbb_manualunpairing_log_onceToken != -1)
  {
    pbb_manualunpairing_log_cold_1();
  }

  v1 = pbb_manualunpairing_log___logger;

  return v1;
}

uint64_t __pbb_manualunpairing_log_block_invoke()
{
  pbb_manualunpairing_log___logger = os_log_create("com.apple.Bridge", "manualunpairing");

  return MEMORY[0x2821F96F8]();
}

id pbb_discover_log()
{
  if (pbb_discover_log_onceToken != -1)
  {
    pbb_discover_log_cold_1();
  }

  v1 = pbb_discover_log___logger;

  return v1;
}

uint64_t __pbb_discover_log_block_invoke()
{
  pbb_discover_log___logger = os_log_create("com.apple.Bridge", "discover");

  return MEMORY[0x2821F96F8]();
}

id pbb_proxcard_log()
{
  if (pbb_proxcard_log_onceToken != -1)
  {
    pbb_proxcard_log_cold_1();
  }

  v1 = pbb_proxcard_log___logger;

  return v1;
}

uint64_t __pbb_proxcard_log_block_invoke()
{
  pbb_proxcard_log___logger = os_log_create("com.apple.Bridge", "proxcard");

  return MEMORY[0x2821F96F8]();
}

id pbb_devicemanagement_log()
{
  if (pbb_devicemanagement_log_onceToken != -1)
  {
    pbb_devicemanagement_log_cold_1();
  }

  v1 = pbb_devicemanagement_log___logger;

  return v1;
}

uint64_t __pbb_devicemanagement_log_block_invoke()
{
  pbb_devicemanagement_log___logger = os_log_create("com.apple.Bridge", "devicemanagement");

  return MEMORY[0x2821F96F8]();
}