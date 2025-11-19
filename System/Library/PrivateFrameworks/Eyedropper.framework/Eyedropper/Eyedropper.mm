void *EDDisplayIdentifierForWindowScene(void *a1)
{
  v1 = [a1 screen];
  v2 = [v1 displayConfiguration];

  v3 = [v2 hardwareIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = EDEmbeddedDisplayIdentifier;
  }

  v6 = v5;

  return v5;
}

void sub_24A2E0AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v24 - 72));
  _Unwind_Resume(a1);
}

double ColorMakeWithColor(void *a1)
{
  v2 = 0.0;
  v3 = 0;
  v4 = 0;
  [a1 getRed:&v2 green:&v3 blue:&v4 alpha:0];
  return v2;
}

id ColorUIColorWithColorSpace(CGColorSpace *a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x277D85DE8];
  components[0] = a2;
  components[1] = a3;
  components[2] = a4;
  components[3] = 1.0;
  v4 = CGColorCreate(a1, components);
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277D75348] colorWithCGColor:v4];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_24A2E3F80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}