void __commonInit(void *a1)
{
  v1 = MEMORY[0x277D75B80];
  v2 = a1;
  v6 = [[v1 alloc] initWithTarget:v2 action:sel_textTapGestureRecognized_];
  v3 = objc_alloc_init(EMKGestureRecognizerDelegate);
  [v2 setGestureRecognizerDelegate:v3];

  v4 = [v2 gestureRecognizerDelegate];
  [v6 setDelegate:v4];

  [v2 addGestureRecognizer:v6];
  v5 = [objc_alloc(MEMORY[0x277D07308]) initWithMachName:0];
  [v2 setEmojiPreferences:v5];
}

id standardLanguage(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"_" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v2;
}

double overlayRectRelativeToRect(unint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v7 = a1 * 36.0 + 20.0 + (a1 + 1) * 4.0;
  v8 = a2 + a4 * 0.5 - v7 * 0.5;
  result = 16.0;
  if (v8 >= 16.0)
  {
    result = v8;
    if (v7 + v8 + 16.0 > a6)
    {
      return a6 - v7 + -16.0;
    }
  }

  return result;
}

id darkBackgroundColor()
{
  if (darkBackgroundColor_onceToken != -1)
  {
    darkBackgroundColor_cold_1();
  }

  v1 = darkBackgroundColor_color;

  return v1;
}

uint64_t __darkBackgroundColor_block_invoke()
{
  darkBackgroundColor_color = [MEMORY[0x277D75348] colorWithRed:0.37 green:0.37 blue:0.37 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

uint64_t __selectionColor_block_invoke()
{
  selectionColor_color = [MEMORY[0x277D75348] colorWithRed:0.01 green:0.45 blue:0.98 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

void sub_2155EB5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2155EBCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _EMKSetNeedsDisplaySubviewsOf(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  [v1 setNeedsDisplay];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [v1 subviews];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        _EMKSetNeedsDisplaySubviewsOf(*(*(&v7 + 1) + 8 * v6++));
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_2155EDA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v33 - 208), 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2155EE3A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2155EED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _EMKEnumerateRuns(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___EMKEnumerateRuns_block_invoke;
  v5[3] = &unk_2781C23E0;
  v6 = v3;
  v4 = v3;
  [a1 enumerateObjectsUsingBlock:v5];
}

void sub_2155F1508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2155F2C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2155F35C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  MEMORY[0x282114780](font, *&orientation, glyphs, boundingRects, count);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}