uint64_t CBUILogInit()
{
  CBUILogComponent = os_log_create("com.apple.bluetooth", "CoreBluetoothUI");

  return MEMORY[0x2821F96F8]();
}

void sub_2451074EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}