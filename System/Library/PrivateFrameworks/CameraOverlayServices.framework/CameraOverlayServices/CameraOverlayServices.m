uint64_t CAMIsCameraButtonAvailable()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return MEMORY[0x2821F5C58](@"CameraButtonCapability");
  }

  return result;
}

uint64_t CAMIsCameraOverlayEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if (_os_feature_enabled_impl())
    {
      return 1;
    }

    else
    {

      return _os_feature_enabled_impl();
    }
  }

  return result;
}

uint64_t CAMIsCameraOverlayAvailable()
{
  result = CAMIsCameraOverlayEnabled();
  if (result)
  {

    return CAMIsCameraButtonAvailable();
  }

  return result;
}

uint64_t CAMIsCameraButtonPOREventRoutingEnabled()
{
  result = _os_feature_enabled_impl();
  if (result)
  {

    return _os_feature_enabled_impl();
  }

  return result;
}

__CFString *CAMStringForOverlayServiceConnectionStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_278851C08[a1];
  }
}

void sub_22E68AE28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

id CAMOverlayErrorForCode(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v3 = @"InvalidValueType";
  if (a1 != -12)
  {
    v3 = 0;
  }

  if (a1 == -13)
  {
    v3 = @"InvalidValue";
  }

  if (a1 == -100)
  {
    v3 = @"InvalidIdentifier";
  }

  v8 = *MEMORY[0x277CCA068];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"CAMOverlayErrorDomain" code:a1 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}