uint64_t __AppleMediaServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AppleMediaServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_259F33D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F34128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id SUUIStackedBarNavAnimationController(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v8 view];
  v11 = [v9 view];
  v12 = [v9 view];
  [v12 layoutSubviews];

  v13 = [v8 SUUIStackedBar];
  v14 = [v9 SUUIStackedBar];
  v15 = v14;
  v16 = 0;
  if (v13 && v14)
  {
    [v13 _resetNewOffset];
    [v15 _resetNewOffset];
    v17 = SUUINavigationControllerGetItemsForViewController(v7, v8);
    [v13 setItems:v17];

    [v13 sizeToFit];
    v18 = [v8 contentScrollView];

    if (v18)
    {
      v19 = [v13 splitViewStyle];
      [v13 frame];
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 + -20.0;
      }

      v22 = [v8 contentScrollView];
      SUUIScrollViewSetContentInsets(v22, "com.apple.iTunesStoreUI.stackedBarInset", v21, 0.0, 0.0, 0.0);
    }

    v23 = SUUINavigationControllerGetItemsForViewController(v7, v9);
    [v15 setItems:v23];

    [v15 sizeToFit];
    v24 = [v9 contentScrollView];

    if (v24)
    {
      v25 = [v15 splitViewStyle];
      [v15 frame];
      if (v25)
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 + -20.0;
      }

      v28 = [v9 contentScrollView];
      SUUIScrollViewSetContentInsets(v28, "com.apple.iTunesStoreUI.stackedBarInset", v27, 0.0, 0.0, 0.0);
    }

    if (a2 == 1)
    {
      v29 = off_2798F42A8;
      v30 = v8;
      goto LABEL_17;
    }

    if (a2 == 2)
    {
      v29 = off_2798F42A0;
      v30 = v9;
LABEL_17:
      v16 = objc_alloc_init(*v29);
      [v16 setFromBar:v13];
      [v16 setToBar:v15];
      [v30 SUUIStackedBarSplit];
      [v16 setSplit:?];
      goto LABEL_19;
    }

    v16 = 0;
  }

LABEL_19:

  return v16;
}

id SUUINavigationControllerGetItemsForViewController(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v3 viewControllers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * v10);
      v12 = [v11 navigationItem];
      [v5 addObject:v12];

      if (v11 == v4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [v3 viewControllers];
  v14 = [v13 containsObject:v4];

  if ((v14 & 1) == 0)
  {
    v15 = [v4 navigationItem];
    [v5 addObject:v15];
  }

  return v5;
}

void SUUIStackedBarNavDidShow(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = [v3 SUUIStackedBar];
  if (v4)
  {
    v5 = SUUINavigationControllerGetItemsForViewController(v12, v3);
    [v4 setItems:v5];

    [v4 frame];
    if (CGRectGetHeight(v14) == 0.0)
    {
      [v4 sizeToFit];
    }

    v6 = [v3 contentScrollView];

    if (v6)
    {
      [v4 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
      v8 = v7;
      if ([v4 splitViewStyle])
      {
        [v4 frame];
        v10 = v9;
      }

      else
      {
        v10 = v8 + -20.0;
      }

      v11 = [v3 contentScrollView];
      SUUIScrollViewSetContentInsets(v11, "com.apple.iTunesStoreUI.stackedBarInset", v10, 0.0, 0.0, 0.0);
    }
  }
}

void SUUIScrollViewSetContentInsets(void *a1, const void *a2, double a3, double a4, double a5, double a6)
{
  object = a1;
  v7 = objc_getAssociatedObject(object, a2);
  v8 = v7;
  if (v7)
  {
    [v7 UIEdgeInsetsValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v10 = *MEMORY[0x277D768C8];
    v12 = *(MEMORY[0x277D768C8] + 8);
    v14 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  [object contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [object scrollIndicatorInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (v12 != a4 || v10 != a3 || v16 != a6 || v14 != a5)
  {
    v36 = a3 - v10;
    v37 = v36 + v18;
    v38 = a4 - v12;
    v39 = a4 - v12 + v20;
    v40 = a5 - v14;
    v41 = a5 - v14 + v22;
    v42 = a6 - v16;
    v43 = a6 - v16 + v24;
    v44 = v26;
    v45 = v28;
    v46 = v30;
    v47 = v32;
    [object setContentInset:{v37, v39, v41, v43}];
    [object setScrollIndicatorInsets:{v36 + v44, v38 + v45, v40 + v46, v42 + v47}];
    v48 = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{a3, a4, a5, a6}];
    objc_setAssociatedObject(object, a2, v48, 1);
  }
}

void sub_259F37710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__95(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__2_1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F39A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F3B730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F3D190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_259F3FA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__96(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F3FDB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F41D28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259F423D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F42E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUUIButtonViewTypeForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"buy"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"download"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"link"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"image"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"imagetext"])
  {
    v2 = 6;
  }

  else
  {
    if ([v1 isEqualToString:@"textonly"])
    {
      goto LABEL_12;
    }

    if ([v1 isEqualToString:@"done"])
    {
      v2 = 8;
      goto LABEL_23;
    }

    if ([v1 isEqualToString:@"sample"])
    {
      v2 = 4;
      goto LABEL_23;
    }

    if ([v1 isEqualToString:@"back"])
    {
      v2 = 1;
      goto LABEL_23;
    }

    if ([v1 isEqualToString:@"cancel"])
    {
      v2 = 10;
      goto LABEL_23;
    }

    if ([v1 isEqualToString:@"destructive"])
    {
      v2 = 11;
      goto LABEL_23;
    }

    if ([v1 isEqualToString:@"disabled"])
    {
LABEL_12:
      v2 = 9;
    }

    else if ([v1 isEqualToString:@"play"])
    {
      v2 = 12;
    }

    else if ([v1 isEqualToString:@"thin"])
    {
      v2 = 13;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_23:

  return v2;
}

void sub_259F43230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__97(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL SUUIIKViewElementTypeIsButton(unint64_t a1)
{
  result = 1;
  if (a1 > 0x32 || ((1 << a1) & 0x4000000003000) == 0)
  {
    return a1 == 141;
  }

  return result;
}

void sub_259F458A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__98(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F45A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F47514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F47A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_259F483E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__100(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F48838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SUUIPhysicalCircleConstantsWithTraitCollection@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = xmmword_259FCC140;
  *(a2 + 48) = 0x4000000000000000;
  *(a2 + 32) = xmmword_259FCC150;
  result = [a1 horizontalSizeClass];
  v4 = 10.0;
  if (result == 2)
  {
    v4 = 12.0;
  }

  *(a2 + 56) = v4;
  return result;
}

void sub_259F4BC7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_259F4C674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F4C868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F4CB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F4D39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__101(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F50D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F511C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F515B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__102(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F518EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F51C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_259F52D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_259F5A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F5B108(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

SUUILibraryItem *SUUILibraryItemForStoreIdentifier(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(SUUILibraryItem);
  [(SUUILibraryItem *)v2 setStoreIdentifier:v1];

  return v2;
}

BOOL SUUIItemStateCenterUseAppstoredPurchases(void *a1)
{
  v1 = a1;
  if (SUUIItemStateCenterUseAppstorePurchasesSwitchEnabled())
  {
    v2 = [v1 itemKind] == 12 || objc_msgSend(v1, "itemKind") == 17;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_259F5D34C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__103(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F65A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F65F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F660A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F6697C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259F670A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SUUIItemStateCenterUseAppstorePurchasesSwitchEnabled()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  if (([v1 isEqualToString:@"com.apple.AppStore"] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"com.apple.ios.StoreKitUIService"))
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"UseAppstoredPurchases", @"com.apple.AppStore", &keyExistsAndHasValidFormat))
    {
      v2 = 1;
    }

    else
    {
      v2 = keyExistsAndHasValidFormat == 0;
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_259F6D204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F6E12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 160));
  _Unwind_Resume(a1);
}

void sub_259F6F308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_259F704A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_259F7376C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_259F73A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F73CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F74380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F747A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __AccountsChanged(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ____AccountsChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_259F75BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F76074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F76F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_259F776B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_259F77944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double SUUIImageRectForBoundsAndPadding(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v18 = a11 == *(MEMORY[0x277D768C8] + 8);
  if (a10 != *MEMORY[0x277D768C8])
  {
    v18 = 0;
  }

  if (a13 != *(MEMORY[0x277D768C8] + 24))
  {
    v18 = 0;
  }

  v19 = a12 == *(MEMORY[0x277D768C8] + 16);
  if (v18 && v19)
  {
    v20 = a6;
  }

  else
  {
    v20 = a6 - (a11 + a13);
  }

  if (v18 && v19)
  {
    v21 = a7;
  }

  else
  {
    v21 = a7 - (a10 + a12);
  }

  if (a1 == 1)
  {
    v23 = v20 / a2;
    if (v20 / a2 < v21 / a3)
    {
      v23 = v21 / a3;
    }

    v22 = ceil(a2 * v23);
    return floor((v20 - v22) * 0.5);
  }

  if (!a1)
  {
    v22 = floor(a2 * (v21 / a3));
    if (a2 <= 0.0)
    {
      v22 = v20;
    }

    if (a3 < a2)
    {
      v22 = v20;
    }

    return floor((v20 - v22) * 0.5);
  }

  return *MEMORY[0x277CBF3A0];
}

void sub_259F7A630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F7A9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F7CA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIWishlistItemPropertiesWithItem(void *a1)
{
  v1 = a1;
  v2 = [v1 cacheRepresentation];
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:0 error:0];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setObject:v3 forKey:*MEMORY[0x277D6A680]];
    v5 = [v1 itemIdentifier];
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
    [v4 setObject:v6 forKey:*MEMORY[0x277D6A688]];

    v7 = [v1 itemKindString];
    if (v7)
    {
      [v4 setObject:v7 forKey:*MEMORY[0x277D6A690]];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id SUUIWishlistOperationQueue()
{
  v0 = SUUIWishlistOperationQueue_sQueue;
  if (!SUUIWishlistOperationQueue_sQueue)
  {
    v1 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v2 = SUUIWishlistOperationQueue_sQueue;
    SUUIWishlistOperationQueue_sQueue = v1;

    [SUUIWishlistOperationQueue_sQueue setMaxConcurrentOperationCount:1];
    [SUUIWishlistOperationQueue_sQueue setName:@"com.apple.iTunesStoreUI.SSWishlist"];
    v0 = SUUIWishlistOperationQueue_sQueue;
  }

  return v0;
}

void sub_259F7CEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SUUIIndexBarControlInitialization(void *a1)
{
  v1 = MEMORY[0x277D75348];
  v8 = a1;
  v2 = [v1 clearColor];
  [v8 setBackgroundColor:v2];

  [v8 setContentMode:3];
  [v8 setDeliversTouchesForGesturesToSuperview:0];
  [v8 setExclusiveTouch:1];
  *(v8 + 584) = xmmword_259FCC220;
  *(v8 + 600) = xmmword_259FCC220;
  v8[481] = 1;
  v8[482] = 1;
  v8[483] = 1;
  v8[484] = 1;
  __asm { FMOV            V0.2D, #-3.0 }

  *(v8 + 616) = _Q0;
  *(v8 + 632) = _Q0;
}

void sub_259F7EAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F7EE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__104(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F7F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F7F91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_259F8021C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_259F803C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F80584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F8073C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_259F809AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_259F82FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__105(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_259F83144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SUUIMetricsMediaEventTypeForPlaybackState(id a1)
{
  if (a1 <= 2)
  {
    a1 = **(&unk_2798FE7F8 + a1);
  }

  return a1;
}

id SUUICollectionViewCellForView(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      v4 = [v2 superview];

      if (v3)
      {
        break;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3;
}

id SUUICollectionViewForView(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    v2 = v1;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      v4 = [v2 superview];

      if (v3)
      {
        break;
      }

      v2 = v4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return v3;
}

void SUUIEditorialStyleForDictionary(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = xmmword_259FCB080;
  *(a2 + 16) = 0x4120000041600000;
  *(a2 + 24) = 2;
  *(a2 + 32) = 0x40A0000041880000;
  v13 = v3;
  v4 = [v3 objectForKey:@"align"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *a2 = SUUIPageComponentAlignmentForString(v4);
  }

  v5 = [v13 objectForKey:@"bodySize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 16) = SUUIEditorialBodySizeForString(v5);
    *(a2 + 8) = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 floatValue];
    *(a2 + 16) = v6;
  }

  v7 = [v13 objectForKey:@"bodyWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 8) = SUUIPageComponentFontWeightForString(v7);
  }

  v8 = [v13 objectForKey:@"titleSize"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 20) = SUUIEditorialLinkSpacingForString(v8);
    *(a2 + 32) = SUUIEditorialTitleSizeForString(v8);
    *(a2 + 24) = SUUIEditorialTitleWeightForString(v8);
    *(a2 + 36) = SUUIEditorialTitleSpacingForString(v8);
  }

  else if (objc_opt_respondsToSelector())
  {
    [v8 floatValue];
    *(a2 + 32) = v9;
  }

  v10 = [v13 objectForKey:@"titleSpacing"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 floatValue];
    *(a2 + 36) = v11;
  }

  v12 = [v13 objectForKey:@"titleWeight"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(a2 + 24) = SUUIPageComponentFontWeightForString(v12);
  }
}

uint64_t SUUICTTextAlignmentForPageComponentAlignment(unint64_t a1)
{
  v1 = 0x1020000u >> (8 * a1);
  if (a1 >= 4)
  {
    LOBYTE(v1) = 2;
  }

  return v1 & 3;
}

float SUUIEditorialBodySizeForString(void *a1)
{
  v1 = a1;
  v2 = 11.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 12.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 17.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 24.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

double SUUIEditorialStyleDefault@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_259FCB080;
  *(a1 + 16) = 0x4120000041600000;
  *(a1 + 24) = 2;
  result = 2048.0005;
  *(a1 + 32) = 0x40A0000041880000;
  return result;
}

uint64_t SUUIPageComponentAlignmentForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"left"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"right"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"center"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

float SUUIEditorialLinkSpacingForString(void *a1)
{
  v1 = a1;
  v2 = 10.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 9.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 12.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        v2 = 14.0;
        if (([v1 isEqualToString:@"L"] & 1) == 0)
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

float SUUIEditorialTitleSizeForString(void *a1)
{
  v1 = a1;
  v2 = 14.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 17.0;
    if (([v1 isEqualToString:@"S"] & 1) == 0)
    {
      v2 = 25.0;
      if (([v1 isEqualToString:@"M"] & 1) == 0)
      {
        if ([v1 isEqualToString:@"L"])
        {
          v2 = 42.0;
        }

        else
        {
          [v1 floatValue];
          v2 = v3;
        }
      }
    }
  }

  return v2;
}

uint64_t SUUIEditorialTitleWeightForString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"XS"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"S"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"M"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

float SUUIEditorialTitleSpacingForString(void *a1)
{
  v1 = a1;
  v2 = 2.0;
  if (([v1 isEqualToString:@"XS"] & 1) == 0)
  {
    v2 = 13.0;
    if (([v1 isEqualToString:@"M"] & 1) == 0)
    {
      if ([v1 isEqualToString:@"L"])
      {
        v2 = 18.0;
      }

      else
      {
        v2 = 5.0;
      }
    }
  }

  return v2;
}

double SUUIBrickItemSize()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    v2 = 210.0;
  }

  else
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 bounds];
    v5 = v4;

    if (v5 <= 375.0)
    {
      v6 = [MEMORY[0x277D759A0] mainScreen];
      [v6 bounds];
      v8 = v7;

      v2 = dbl_259FCB3E0[v8 > 320.0];
    }

    else
    {
      v2 = 175.0;
    }
  }

  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;

  return v2 * v11;
}

void SUUIDecodeRestorableStateWithCoder(void *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = a1;
  v7 = [v6 decodeObjectOfClass:objc_opt_class() forKey:v5];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v7 error:0];
    [v9 decodeRestorableStateWithCoder:v8];
    [v8 finishDecoding];
  }
}

void SUUIEncodeRestorableStateWithCoder(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v10 = [[v5 alloc] initRequiringSecureCoding:1];
    [v6 encodeRestorableStateWithCoder:v10];

    v9 = [v10 encodedData];
    [v8 encodeObject:v9 forKey:v7];
  }
}

void sub_259F8AA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__106(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const char *sub_259F8ADE4(unsigned __int8 a1)
{
  v1 = "tv_stop_pages";
  v2 = "always_show_tv_stop_pages";
  if (a1 != 2)
  {
    v2 = "alternate_stop_page_design";
  }

  if (a1)
  {
    v1 = "stop_page_respected_onboarding";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_259F8AE48(unsigned __int8 a1)
{
  v1 = 0x5F706F74735F7674;
  if (a1 == 2)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_259F8AEDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007365676170;
  v3 = 0x5F706F74735F7674;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000259FDDD60;
    }

    else
    {
      v6 = 0x8000000259FDDD80;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0x5F706F74735F7674;
    }

    if (v4)
    {
      v6 = 0x8000000259FDDD40;
    }

    else
    {
      v6 = 0xED00007365676170;
    }
  }

  v7 = 0x8000000259FDDD60;
  if (a2 == 2)
  {
    v8 = 0xD000000000000019;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (a2 != 2)
  {
    v7 = 0x8000000259FDDD80;
  }

  if (a2)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x8000000259FDDD40;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_259F95F84();
  }

  return v11 & 1;
}

uint64_t sub_259F8B008()
{
  sub_259F95FA4();
  sub_259F95E14();

  return sub_259F95FC4();
}

uint64_t sub_259F8B0D8()
{
  sub_259F95E14();
}

uint64_t sub_259F8B194()
{
  sub_259F95FA4();
  sub_259F95E14();

  return sub_259F95FC4();
}

uint64_t sub_259F8B260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_259F90840();
  *a1 = result;
  return result;
}

void sub_259F8B290(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007365676170;
  v4 = 0x5F706F74735F7674;
  v5 = 0x8000000259FDDD60;
  if (v2 == 2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (v2 != 2)
  {
    v5 = 0x8000000259FDDD80;
  }

  if (*v1)
  {
    v4 = 0xD00000000000001ELL;
    v3 = 0x8000000259FDDD40;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

const char *sub_259F8B31C()
{
  v1 = "tv_stop_pages";
  v2 = "always_show_tv_stop_pages";
  if (*v0 != 2)
  {
    v2 = "alternate_stop_page_design";
  }

  if (*v0)
  {
    v1 = "stop_page_respected_onboarding";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_259F8B37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5];
  v7 = sub_259F95CB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for SUUIStopPageViewController.PageArtwork(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v15 = sub_259F90470(7107189, 0xE300000000000000);
  if ((v16 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_259F908F4(*(a1 + 56) + 32 * v15, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_259F95CA4();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {

    sub_259F92D9C(v6, &qword_27F9F0F00);
LABEL_18:
    v26 = 1;
    return (*(v12 + 56))(a2, v26, 1, v11);
  }

  v17 = v6;
  v18 = *(v8 + 32);
  v18(v10, v17, v7);
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v19 = sub_259F90470(0x6874646977, 0xE500000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_259F908F4(*(a1 + 56) + 32 * v19, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v8 + 8))(v10, v7);
LABEL_17:

    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v21 = v28, v22 = sub_259F90470(0x746867696568, 0xE600000000000000), (v23 & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_259F908F4(*(a1 + 56) + 32 * v22, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    (*(v8 + 8))(v10, v7);
    goto LABEL_18;
  }

  v24 = v28;
  v18(v14, v10, v7);
  v25 = &v14[*(v11 + 20)];
  *v25 = v21;
  v25[1] = v24;
  sub_259F90950(v14, a2);
  v26 = 0;
  return (*(v12 + 56))(a2, v26, 1, v11);
}

uint64_t sub_259F8B748@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_259F95CB4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_259F8B810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_259F95DE4();
  LOBYTE(a4) = a4(v5);

  return a4 & 1;
}

id SUUIStopPageViewController.__allocating_init(tabIdentifier:replacementAppAdamId:title:subtitle:artworkDictionar:deeplinkUrl:purchasesUrl:wishlistButtonTitle:showWishlistButton:clientContext:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v16 = v15;
  v66 = a7;
  v72 = a2;
  v73 = a1;
  v22 = sub_259F95CD4();
  MEMORY[0x28223BE20](v22 - 8);
  v65[1] = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_259F95DA4();
  MEMORY[0x28223BE20](v24 - 8);
  v65[0] = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v67 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v69 = v65 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v65 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F08);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v65 - v37;
  v39 = objc_allocWithZone(v16);
  *&v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView] = 0;
  if (!a4)
  {
    v40 = v72;
    if (v73 == 0x736569766F6DLL && v72 == 0xE600000000000000 || (sub_259F95F84() & 1) != 0 || v73 == 30324 && v40 == 0xE200000000000000 || (sub_259F95F84() & 1) != 0)
    {
      a4 = 0xEA00000000003934;
      a3 = 0x3538373034373131;
    }

    else
    {
      a3 = 0;
      a4 = 0;
    }
  }

  v68 = v16;
  v71 = a10;
  v41 = &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_replacementAppAdamId];
  *v41 = a3;
  v41[1] = a4;
  v42 = v72;
  if (!a6)
  {
    a5 = sub_259F90B90(v73, v72);
    a6 = v43;
  }

  v70 = a11;
  v44 = &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageTitle];
  *v44 = a5;
  v44[1] = a6;
  if (a8)
  {
    v45 = v66;
  }

  else
  {
    v45 = sub_259F90DAC(v73, v42);
    a8 = v46;
  }

  v47 = &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageSubtitle];
  *v47 = v45;
  v47[1] = a8;
  sub_259F8B37C(a9, v38);
  sub_259F90FC8(v38, &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageArtwork], &qword_27F9F0F08);
  sub_259F92DFC(v71, v33, &qword_27F9F0F00);
  v48 = sub_259F95CB4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v33, 1, v48) == 1)
  {
    if (v73 == 0x736569766F6DLL && v42 == 0xE600000000000000 || (sub_259F95F84() & 1) != 0 || v73 == 30324 && v42 == 0xE200000000000000 || (sub_259F95F84() & 1) != 0)
    {
      sub_259F95CA4();
    }

    else
    {
      (*(v49 + 56))(v35, 1, 1, v48);
    }

    if (v50(v33, 1, v48) != 1)
    {
      sub_259F92D9C(v33, &qword_27F9F0F00);
    }
  }

  else
  {
    (*(v49 + 32))(v35, v33, v48);
    (*(v49 + 56))(v35, 0, 1, v48);
  }

  v51 = a12;
  v52 = a13;
  sub_259F90FC8(v35, &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_deeplinkUrl], &qword_27F9F0F00);
  v53 = v67;
  sub_259F92DFC(v70, v67, &qword_27F9F0F00);
  if (v50(v53, 1, v48) != 1)
  {

    v56 = v69;
    (*(v49 + 32))(v69, v53, v48);
    (*(v49 + 56))(v56, 0, 1, v48);
    v57 = v68;
    goto LABEL_30;
  }

  v66 = a12;
  v55 = v72;
  v54 = v73;
  v56 = v69;
  if (v73 == 0x736569766F6DLL && v72 == 0xE600000000000000 || (sub_259F95F84() & 1) != 0)
  {

    sub_259F95CA4();
    v51 = v66;
    goto LABEL_27;
  }

  if (v54 == 30324 && v55 == 0xE200000000000000)
  {

    v51 = v66;
LABEL_41:
    v56 = v69;
    sub_259F95CA4();
    goto LABEL_27;
  }

  v64 = sub_259F95F84();

  v51 = v66;
  if (v64)
  {
    goto LABEL_41;
  }

  v56 = v69;
  (*(v49 + 56))(v69, 1, 1, v48);
LABEL_27:
  v57 = v68;
  if (v50(v53, 1, v48) != 1)
  {
    sub_259F92D9C(v53, &qword_27F9F0F00);
  }

LABEL_30:
  sub_259F90FC8(v56, &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_purchasesUrl], &qword_27F9F0F00);
  if (!a13)
  {
    sub_259F95D94();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = [objc_opt_self() bundleForClass_];
    sub_259F95CC4();
    v51 = sub_259F95DF4();
    v52 = v60;
  }

  v61 = &v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_wishlistButtonTitle];
  *v61 = v51;
  v61[1] = v52;
  v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_showWishlistButton] = a14 & 1;
  *&v39[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_clientContext] = a15;
  v74.receiver = v39;
  v74.super_class = v57;
  v62 = objc_msgSendSuper2(&v74, sel_initWithNibName_bundle_, 0, 0);
  sub_259F92D9C(v70, &qword_27F9F0F00);
  sub_259F92D9C(v71, &qword_27F9F0F00);
  return v62;
}

id SUUIStopPageViewController.init(tabIdentifier:replacementAppAdamId:title:subtitle:artworkDictionar:deeplinkUrl:purchasesUrl:wishlistButtonTitle:showWishlistButton:clientContext:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15)
{
  v64 = a7;
  v70 = a2;
  v22 = sub_259F95CD4();
  MEMORY[0x28223BE20](v22 - 8);
  v63[1] = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_259F95DA4();
  MEMORY[0x28223BE20](v24 - 8);
  v63[0] = v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v65 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v66 = v63 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v63 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = v63 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F08);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v63 - v37;
  *&v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView] = 0;
  if (!a4)
  {
    if (a1 == 0x736569766F6DLL && v70 == 0xE600000000000000 || (sub_259F95F84() & 1) != 0 || a1 == 30324 && v70 == 0xE200000000000000 || (sub_259F95F84() & 1) != 0)
    {
      a4 = 0xEA00000000003934;
      a3 = 0x3538373034373131;
    }

    else
    {
      a3 = 0;
      a4 = 0;
    }
  }

  v68 = a10;
  v69 = a1;
  v39 = &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_replacementAppAdamId];
  *v39 = a3;
  v39[1] = a4;
  if (!a6)
  {
    a5 = sub_259F90B90(v69, v70);
    a6 = v40;
  }

  v67 = a11;
  v41 = &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageTitle];
  *v41 = a5;
  v41[1] = a6;
  v42 = v70;
  if (a8)
  {
    v43 = v64;
  }

  else
  {
    v43 = sub_259F90DAC(v69, v70);
    a8 = v44;
  }

  v45 = &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageSubtitle];
  *v45 = v43;
  v45[1] = a8;
  sub_259F8B37C(a9, v38);
  sub_259F90FC8(v38, &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageArtwork], &qword_27F9F0F08);
  sub_259F92DFC(v68, v33, &qword_27F9F0F00);
  v46 = sub_259F95CB4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v33, 1, v46) == 1)
  {
    if (v69 == 0x736569766F6DLL && v42 == 0xE600000000000000 || (sub_259F95F84() & 1) != 0 || v69 == 30324 && v42 == 0xE200000000000000 || (sub_259F95F84() & 1) != 0)
    {
      sub_259F95CA4();
    }

    else
    {
      (*(v47 + 56))(v35, 1, 1, v46);
    }

    if (v48(v33, 1, v46) != 1)
    {
      sub_259F92D9C(v33, &qword_27F9F0F00);
    }
  }

  else
  {
    (*(v47 + 32))(v35, v33, v46);
    (*(v47 + 56))(v35, 0, 1, v46);
  }

  v49 = a12;
  v50 = a13;
  sub_259F90FC8(v35, &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_deeplinkUrl], &qword_27F9F0F00);
  v51 = v65;
  sub_259F92DFC(v67, v65, &qword_27F9F0F00);
  if (v48(v51, 1, v46) != 1)
  {

    v53 = v66;
    (*(v47 + 32))(v66, v51, v46);
    (*(v47 + 56))(v53, 0, 1, v46);
    goto LABEL_34;
  }

  v52 = v70;
  v53 = v66;
  if (v69 == 0x736569766F6DLL && v70 == 0xE600000000000000)
  {

LABEL_31:
    sub_259F95CA4();
    goto LABEL_32;
  }

  v64 = a12;
  v54 = v69;
  if ((sub_259F95F84() & 1) != 0 || v54 == 30324 && v52 == 0xE200000000000000)
  {

    v49 = v64;
    goto LABEL_31;
  }

  v62 = sub_259F95F84();

  v49 = v64;
  if (v62)
  {
    goto LABEL_31;
  }

  (*(v47 + 56))(v53, 1, 1, v46);
LABEL_32:
  if (v48(v51, 1, v46) != 1)
  {
    sub_259F92D9C(v51, &qword_27F9F0F00);
  }

LABEL_34:
  sub_259F90FC8(v53, &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_purchasesUrl], &qword_27F9F0F00);
  if (!a13)
  {
    sub_259F95D94();
    type metadata accessor for SUUIStopPageViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v56 = [objc_opt_self() bundleForClass_];
    sub_259F95CC4();
    v49 = sub_259F95DF4();
    v50 = v57;
  }

  v58 = &v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_wishlistButtonTitle];
  *v58 = v49;
  v58[1] = v50;
  v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_showWishlistButton] = a14 & 1;
  *&v15[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_clientContext] = a15;
  v59 = type metadata accessor for SUUIStopPageViewController(0);
  v71.receiver = v15;
  v71.super_class = v59;
  v60 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  sub_259F92D9C(v67, &qword_27F9F0F00);
  sub_259F92D9C(v68, &qword_27F9F0F00);
  return v60;
}

id sub_259F8CC34(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_259F8CC78()
{
  *(v0 + OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView) = 0;
  sub_259F95F44();
  __break(1u);
}

Swift::Void __swiftcall SUUIStopPageViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for SUUIStopPageViewController.PageArtwork(0);
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v97 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F08);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v96 - v13;
  v15 = type metadata accessor for SUUIStopPageViewController(0);
  v112.receiver = v0;
  v112.super_class = v15;
  objc_msgSendSuper2(&v112, sel_viewDidLoad);
  v16 = [v0 view];
  if (!v16)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v109 = objc_opt_self();
  v18 = [v109 systemBackgroundColor];
  [v17 setBackgroundColor_];

  v19 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_replacementAppAdamId + 8];
  v98 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_replacementAppAdamId];
  v20 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageTitle];
  v100 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageTitle + 8];
  v101 = v20;
  v21 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageSubtitle];
  v102 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageSubtitle + 8];
  v103 = v21;
  v104 = v14;
  sub_259F92DFC(&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_pageArtwork], v14, &qword_27F9F0F08);
  v110 = v9;
  sub_259F92DFC(&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_deeplinkUrl], v9, &qword_27F9F0F00);
  v105 = v7;
  sub_259F92DFC(&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_purchasesUrl], v7, &qword_27F9F0F00);
  v22 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_wishlistButtonTitle + 8];
  v99 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_wishlistButtonTitle];
  v23 = v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_showWishlistButton];
  v24 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_clientContext];
  v25 = type metadata accessor for SUUIStopPageViewController.StopPageLockup();
  v26 = objc_allocWithZone(v25);
  v27 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView;
  v28 = objc_allocWithZone(MEMORY[0x277D755E8]);

  *&v26[v27] = [v28 init];
  v29 = &v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel;
  *&v26[v30] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v31 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel;
  *&v26[v31] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v32 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton;
  *&v26[v32] = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  v33 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton;
  *&v26[v33] = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *&v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton] = 0;
  *&v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton] = 0;
  v34 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_resourceLoaderOperationQueue;
  *&v26[v34] = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible] = 0;
  v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable] = 2;
  if (v19)
  {
    v35 = objc_allocWithZone(MEMORY[0x277CEC258]);
    v36 = sub_259F95DB4();
    v37 = [v35 initWithStringValue_];

    v38 = [objc_allocWithZone(MEMORY[0x277CEC290]) initWithID:v37 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC208]];
  }

  else
  {
    v38 = 0;
  }

  *&v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_lockupRequest] = v38;
  [*&v26[v34] setMaxConcurrentOperationCount_];
  v39 = [objc_allocWithZone(SUUIResourceLoader) initWithOperationQueue_];
  *&v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_resourceLoader] = v39;
  v40 = &v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_wishlistButtonTitle];
  *v40 = v99;
  v40[1] = v22;
  v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_showWishlistButton] = v23;
  *&v26[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_clientContext] = v24;
  v111.receiver = v26;
  v111.super_class = v25;
  v41 = v24;
  v42 = 0.0;
  v43 = objc_msgSendSuper2(&v111, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v44 = *MEMORY[0x277D768C8];
  v45 = *(MEMORY[0x277D768C8] + 8);
  v46 = *(MEMORY[0x277D768C8] + 16);
  v47 = *(MEMORY[0x277D768C8] + 24);
  v48 = v43;
  [v48 setLayoutMargins_];
  v49 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel;
  v50 = *&v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel];
  v51 = objc_opt_self();
  v52 = *MEMORY[0x277D76A08];
  v53 = v50;
  v54 = [v51 preferredFontForTextStyle_];
  v55 = sub_259F8E070(*MEMORY[0x277D743F8]);

  [v53 setFont_];
  [*&v48[v49] setTextAlignment_];
  [*&v48[v49] setNumberOfLines_];
  v56 = *&v48[v49];
  v57 = sub_259F95DB4();
  [v56 setText_];

  v58 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel;
  v59 = *MEMORY[0x277D76918];
  v60 = *&v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel];
  v61 = [v51 preferredFontForTextStyle_];
  [v60 setFont_];

  [*&v48[v58] setTextAlignment_];
  [*&v48[v58] setNumberOfLines_];
  v62 = *&v48[v58];
  v63 = [v109 secondaryLabelColor];
  [v62 setTextColor_];

  v64 = *&v48[v58];
  v65 = sub_259F95DB4();
  [v64 setText_];

  v66 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView;
  [v48 addSubview_];
  [v48 addSubview_];
  [v48 addSubview_];
  v67 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton;
  [v48 addSubview_];
  v68 = v105;
  sub_259F8ECD4(v110, v105);
  [*&v48[v67] setLockupSize_];
  [*&v48[v67] setAlpha_];
  [*&v48[v67] setShowsPlaceholderContent_];
  v69 = *&v48[v67];
  [v69 setDelegate_];

  [*&v48[v67] setRequest_];
  v70 = v104;
  v71 = v106;
  sub_259F92DFC(v104, v106, &qword_27F9F0F08);
  v72 = v108;
  if ((*(v107 + 48))(v71, 1, v108) == 1)
  {
    sub_259F92D9C(v71, &qword_27F9F0F08);
    v73 = *&v48[v66];
    v74 = sub_259F95DB4();
    v75 = [objc_opt_self() imageNamed_];

    [v73 setImage_];
    sub_259F92D9C(v68, &qword_27F9F0F00);
    sub_259F92D9C(v110, &qword_27F9F0F00);
    sub_259F92D9C(v70, &qword_27F9F0F08);
    v76 = 124.0;
    v77 = 226.0;
  }

  else
  {
    v78 = v71;
    v79 = v97;
    sub_259F90950(v78, v97);
    v80 = [objc_allocWithZone(SUUIArtworkRequest) init];
    v81 = sub_259F95C84();
    [v80 setCacheKey_];

    v82 = [objc_allocWithZone(SUUIImageDataConsumer) init];
    [v80 setDataConsumer_];
    v83 = sub_259F95C84();
    [v80 setURL_];

    [v80 setDelegate_];
    [*&v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_resourceLoader] loadResourceWithRequest:v80 reason:1];
    v84 = *&v48[v66];
    v85 = [v109 secondarySystemBackgroundColor];
    [v84 setBackgroundColor_];

    sub_259F92D9C(v68, &qword_27F9F0F00);
    sub_259F92D9C(v110, &qword_27F9F0F00);
    sub_259F92D9C(v70, &qword_27F9F0F08);
    v86 = (v79 + *(v72 + 20));
    v87 = *v86;
    v88 = v86[1];
    sub_259F910AC(v79);
    if (v88 == 0.0 || (v42 = v87 / v88, v87 / v88 < 1.82258065))
    {
      v76 = 124.0;
      v77 = v42 * 124.0;
    }

    else
    {
      v77 = 226.0;
      v76 = v88 / v87 * 226.0;
      if (v87 == 0.0)
      {
        v76 = 0.0;
      }
    }
  }

  v89 = &v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize];
  *v89 = v77;
  v89[1] = v76;
  v90 = OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView;
  v91 = *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView];
  *&v1[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView] = v48;

  v92 = [v1 view];
  if (!v92)
  {
    goto LABEL_19;
  }

  if (!*&v1[v90])
  {
LABEL_20:
    __break(1u);
    return;
  }

  v93 = v92;
  [v92 addSubview_];

  v94 = [v1 navigationController];
  if (v94)
  {
    v95 = v94;
    [v94 setNavigationBarHidden:1 animated:0];
  }
}

uint64_t SUUIStopPageViewController.supportedInterfaceOrientations.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

Swift::Void __swiftcall SUUIStopPageViewController.viewDidLayoutSubviews()()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for SUUIStopPageViewController(0);
  objc_msgSendSuper2(&v37, sel_viewDidLayoutSubviews);
  v1 = OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView;
  v2 = *&v0[OBJC_IVAR____TtC13MobileStoreUI26SUUIStopPageViewController_lockupView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;

  [v3 sizeThatFits_];
  v11 = v10;
  v13 = v12;

  v14 = *&v0[v1];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v38.origin.x = v19;
  v38.origin.y = v21;
  v38.size.width = v23;
  v38.size.height = v25;
  MidX = CGRectGetMidX(v38);
  v27 = [v0 view];
  if (v27)
  {
    v28 = v27;
    [v27 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v39.origin.x = v30;
    v39.origin.y = v32;
    v39.size.width = v34;
    v39.size.height = v36;
    [v15 setFrame_];

    return;
  }

LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall SUUIStopPageViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SUUIStopPageViewController(0);
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, isa);
  if (isa)
  {
    isa = [(objc_class *)isa preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (isa)
  {
    v5 = sub_259F95DE4();
    v7 = v6;
    if (v5 == sub_259F95DE4() && v7 == v8)
    {

      return;
    }

    v10 = sub_259F95F84();

    if (v10)
    {
      return;
    }
  }

  else
  {
  }

  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

id SUUIStopPageViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_259F95DB4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_259F8E070(double a1)
{
  v3 = [v1 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0FA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_259FCC290;
  v5 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0FB0);
  v6 = swift_initStackObject();
  v7 = MEMORY[0x277D74430];
  *(v6 + 16) = xmmword_259FCC290;
  v8 = *v7;
  *(v6 + 32) = *v7;
  *(v6 + 40) = a1;
  v9 = v5;
  v10 = v8;
  v11 = sub_259F91108(v6);
  swift_setDeallocating();
  sub_259F92D9C(v6 + 32, &qword_27F9F0FB8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0FC0);
  *(inited + 40) = v11;
  sub_259F911F8(inited);
  swift_setDeallocating();
  sub_259F92D9C(inited + 32, &qword_27F9F0FC8);
  type metadata accessor for AttributeName(0);
  sub_259F9181C(&qword_27F9F0FD0, type metadata accessor for AttributeName);
  v12 = sub_259F95D74();

  v13 = [v3 fontDescriptorByAddingAttributes_];

  [v1 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

CGSize __swiftcall CGSize.maxSize(fitting:)(CGSize fitting)
{
  if (fitting.height == 0.0)
  {
    if (v2 == 0.0 || (v3 = v1 / v2, v1 / v2 >= 0.0))
    {
LABEL_12:
      v6 = v2 / v1;
      if (v1 == 0.0)
      {
        v6 = 0.0;
      }

      fitting.height = v6 * fitting.width;
      return fitting;
    }
  }

  else
  {
    v4 = fitting.width / fitting.height;
    if (v2 == 0.0)
    {
      if (v4 <= 0.0)
      {
        goto LABEL_12;
      }

      v3 = v1 / v2;
    }

    else
    {
      v3 = v1 / v2;
      if (v1 / v2 >= v4)
      {
        goto LABEL_12;
      }
    }
  }

  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v3;
  }

  fitting.width = v5 * fitting.height;
  return fitting;
}

double sub_259F8E33C()
{
  [v0 layoutMargins];
  v2 = v1;
  [v0 layoutMargins];
  [v0 bounds];
  CGRectGetWidth(v4);
  [v0 layoutMargins];
  [v0 layoutMargins];
  [v0 bounds];
  CGRectGetWidth(v5);
  [v0 layoutMargins];
  [v0 layoutMargins];
  return v2;
}

id sub_259F8E41C(_BYTE *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton];
  v3 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible;
  if (a1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [v2 setAlpha_];
  if (a1[v3])
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  [*&a1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton] setAlpha_];
  v6 = *&a1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton];
  if (v6)
  {
    if (a1[v3])
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v6 setAlpha_];
  }

  v8 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton;
  v9 = *&a1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton];
  if (v9)
  {
    [v9 setUserInteractionEnabled_];
    v10 = *&a1[v8];
    if (v10)
    {
      v11 = 0.0;
      if (a1[v3])
      {
        v11 = 1.0;
      }

      [v10 setAlpha_];
    }
  }

  return [a1 setNeedsLayout];
}

uint64_t sub_259F8E524(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_259F8E568(id result)
{
  v2 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable;
  v3 = v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable];
  if (v3 == 2)
  {
    if (result == 2)
    {
      return result;
    }

    LOBYTE(v3) = 0;
  }

  else if (result != 2 && ((v3 ^ result) & 1) == 0)
  {
    return result;
  }

  [*&v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton] setHidden_];
  [*&v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton] setHidden_];
  v4 = *&v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton];
  if (v4)
  {
    [v4 setHidden_];
  }

  return [v1 setNeedsLayout];
}

double sub_259F8E650(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize] + 44.0 + 44.0 + 30.0;
  [*&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel] sizeThatFits_];
  [*&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel] sizeThatFits_];
  [*&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton] sizeThatFits_];
  v6 = *&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton];
  if (v6)
  {
    v7 = v6;
    [v2 bounds];
    [v7 sizeThatFits_];
  }

  v10 = *&v2[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton];
  if (v10)
  {
    v11 = v10;
    [v2 bounds];
    [v11 sizeThatFits_];
  }

  return v5;
}

void sub_259F8E834()
{
  v62.receiver = v0;
  v62.super_class = type metadata accessor for SUUIStopPageViewController.StopPageLockup();
  objc_msgSendSuper2(&v62, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView];
  v63.origin.x = sub_259F8E33C();
  MidX = CGRectGetMidX(v63);
  v3 = &v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize];
  v4 = MidX - *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize] * 0.5;
  v64.origin.x = sub_259F8E33C();
  [v1 setFrame_];
  v5 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel];
  [v0 bounds];
  [v5 sizeThatFits_];
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  v12 = CGRectGetMidX(v65) - v9 * 0.5;
  [v1 frame];
  [v5 setFrame_];
  v13 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel];
  [v0 bounds];
  [v13 sizeThatFits_];
  v17 = v16;
  v19 = v18;
  [v0 bounds];
  v20 = CGRectGetMidX(v67) - v17 * 0.5;
  [v5 frame];
  [v13 setFrame_];
  v21 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton];
  [v0 bounds];
  [v21 sizeThatFits_];
  v25 = v24;
  v27 = v26;
  [v0 bounds];
  v28 = CGRectGetMidX(v69) - v25 * 0.5;
  [v13 frame];
  [v21 setFrame_];
  v29 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton];
  [v0 bounds];
  [v29 sizeThatFits_];
  v33 = v32;
  v35 = v34;
  [v0 bounds];
  v36 = CGRectGetMidX(v71);
  [v21 frame];
  [v29 setFrame_];
  v37 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton;
  v38 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton];
  if (v38)
  {
    v39 = v38;
    [v0 bounds];
    [v39 sizeThatFits_];
    v43 = v42;
    v45 = v44;
    [v0 bounds];
    v46 = CGRectGetMidX(v73) + v43 * -0.5;
    [v29 frame];
    [v39 setFrame_];
  }

  v47 = *&v0[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton];
  if (v47)
  {
    v48 = *&v0[v37];
    if (v48)
    {
      v49 = v47;
      v50 = v48;
      if (([v50 isHidden] & 1) == 0)
      {
        [v50 alpha];
        if (v51 > 0.0)
        {
          [v50 frame];
          MaxY = CGRectGetMaxY(v75);

          v53 = MaxY + 5.0;
LABEL_11:
          v55 = v47;
          [v0 bounds];
          [v55 sizeThatFits_];
          v59 = v58;
          v61 = v60;
          [v0 bounds];
          [v55 setFrame_];

          return;
        }
      }
    }

    else
    {
      v54 = v47;
    }

    [v29 frame];
    v53 = CGRectGetMaxY(v76) + 15.0;
    goto LABEL_11;
  }
}

void sub_259F8ECD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v66 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  v65 = *(v4 - 8);
  v78 = *(v65 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v79 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F1170);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_259F95CD4();
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_259F95DA4();
  MEMORY[0x28223BE20](v11 - 8);
  v76 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F1178);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = sub_259F95E74();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_259F95EE4();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v60 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v80 = &v60 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v60 - v26;
  v28 = *&v3[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton];
  [v28 setAlpha_];
  [v28 setHidden_];
  sub_259F95ED4();
  (*(v17 + 104))(v19, *MEMORY[0x277D74FD8], v16);
  sub_259F95E84();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_259F95D64();
  v29 = sub_259F95D54();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v72 = v30 + 56;
  v31(v15, 0, 1, v29);
  sub_259F95EA4();
  sub_259F95E94();
  v82 = &type metadata for MobileStore;
  v83 = sub_259F928EC();
  v81[0] = 3;
  sub_259F95D24();
  __swift_destroy_boxed_opaque_existential_1(v81);
  v74 = v29;
  v75 = v15;
  v73 = v31;
  v63 = v3;
  sub_259F95D94();
  type metadata accessor for SUUIStopPageViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v64 = ObjCClassFromMetadata;
  v34 = [v33 bundleForClass_];
  sub_259F95CC4();
  sub_259F95DF4();
  sub_259F95EC4();
  v70 = *(v21 + 16);
  v70(v8, v27, v20);
  v67 = v27;
  v68 = v21;
  v71 = *(v21 + 56);
  v71(v8, 0, 1, v20);
  sub_259F95EF4();
  v62 = sub_259F9298C(0, &qword_27F9F1188);
  v35 = v79;
  sub_259F92DFC(v66, v79, &qword_27F9F0F00);
  v66 = *(v65 + 80);
  v61 = v20;
  v36 = (v66 + 16) & ~v66;
  v65 = v36;
  v37 = swift_allocObject() + v36;
  sub_259F90FC8(v35, v37, &qword_27F9F0F00);
  v38 = sub_259F95E64();
  [v28 addAction:v38 forControlEvents:64];

  v39 = v63;
  [v63 addSubview_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  [v40 setHidden_];
  [v40 setAlpha_];
  v41 = v80;
  sub_259F95EB4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v75;
  sub_259F95D64();
  v73(v42, 0, 1, v74);
  sub_259F95EA4();
  sub_259F95D94();
  type metadata accessor for SUUIStopPageViewController(0);
  v43 = [objc_opt_self() bundleForClass_];
  sub_259F95CC4();
  v44 = v61;
  sub_259F95DF4();
  sub_259F95EC4();
  v77 = (v21 + 16);
  v70(v8, v41, v44);
  v76 = (v21 + 56);
  v71(v8, 0, 1, v44);
  v45 = v8;
  sub_259F95EF4();
  v46 = v79;
  sub_259F92DFC(v69, v79, &qword_27F9F0F00);
  v47 = v65;
  v48 = v39;
  v49 = swift_allocObject();
  sub_259F90FC8(v46, v49 + v47, &qword_27F9F0F00);
  v50 = sub_259F95E64();
  [v40 addAction:v50 forControlEvents:64];

  [v39 addSubview_];
  v51 = *&v39[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton];
  *&v39[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton] = v40;
  v52 = v40;

  if (v39[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_showWishlistButton] == 1)
  {
    v53 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
    [v53 setUserInteractionEnabled_];
    [v53 setAlpha_];

    v54 = v60;
    sub_259F95EB4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = v75;
    sub_259F95D64();
    v73(v55, 0, 1, v74);
    sub_259F95EA4();

    sub_259F95EC4();
    v70(v45, v54, v44);
    v71(v45, 0, 1, v44);
    sub_259F95EF4();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = sub_259F95E64();
    [v53 addAction:v56 forControlEvents:64];

    [v48 addSubview_];
    v57 = *(v68 + 8);
    v57(v54, v44);
    v57(v80, v44);
    v57(v67, v44);
    v58 = *&v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton];
    *&v48[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton] = v53;
  }

  else
  {

    v59 = *(v68 + 8);
    v59(v80, v44);
    v59(v67, v44);
  }
}

void sub_259F8F914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_259F92DFC(a1, &v8 - v3, &qword_27F9F0F00);
  v5 = sub_259F95CB4();
  v6 = *(v5 - 8);
  v7 = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v7 = sub_259F95C84();
    (*(v6 + 8))(v4, v5);
  }

  SUUIMetricsOpenSensitiveURL(v7, 0);
}

id sub_259F8FBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double CGSize.horizontalFraction.getter(double a1, double a2)
{
  result = a1 / a2;
  if (a2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

double CGSize.verticalFraction.getter(double a1, double a2)
{
  v2 = a2 / a1;
  v3 = a1 == 0.0;
  result = 0.0;
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t sub_259F8FD04(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x25F848090](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_259F8FD58(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x25F8480A0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_259F8FDD8(uint64_t a1, id *a2)
{
  result = sub_259F95DC4();
  *a2 = 0;
  return result;
}

uint64_t sub_259F8FE50(uint64_t a1, id *a2)
{
  v3 = sub_259F95DD4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_259F8FED0@<X0>(uint64_t *a1@<X8>)
{
  sub_259F95DE4();
  v2 = sub_259F95DB4();

  *a1 = v2;
  return result;
}

uint64_t sub_259F8FF14()
{
  v0 = sub_259F95DE4();
  v2 = v1;
  if (v0 == sub_259F95DE4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_259F95F84();
  }

  return v5 & 1;
}

void *sub_259F8FF9C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_259F8FFAC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_259F8FFB8()
{
  sub_259F9181C(&qword_27F9F1128, type metadata accessor for Weight);
  sub_259F9181C(&qword_27F9F1130, type metadata accessor for Weight);
  sub_259F91AA4();
  return sub_259F95F64();
}

uint64_t sub_259F90080()
{
  sub_259F9181C(&qword_27F9F11D0, type metadata accessor for ASCAppState);
  sub_259F9181C(&qword_27F9F11D8, type metadata accessor for ASCAppState);

  return sub_259F95F64();
}

uint64_t sub_259F9013C()
{
  sub_259F9181C(&qword_27F9F0FD0, type metadata accessor for AttributeName);
  sub_259F9181C(&qword_27F9F1150, type metadata accessor for AttributeName);

  return sub_259F95F64();
}

uint64_t sub_259F901F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_259F95DB4();

  *a1 = v2;
  return result;
}

uint64_t sub_259F90240()
{
  sub_259F9181C(&qword_27F9F1140, type metadata accessor for TraitKey);
  sub_259F9181C(&qword_27F9F1148, type metadata accessor for TraitKey);

  return sub_259F95F64();
}

uint64_t sub_259F90304()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x25F848350](*&v1);
}

uint64_t sub_259F90340(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_259F90358()
{
  v0 = sub_259F95DE4();
  v1 = MEMORY[0x25F8481C0](v0);

  return v1;
}

uint64_t sub_259F90394()
{
  sub_259F95DE4();
  sub_259F95E14();
}

uint64_t sub_259F903E8()
{
  sub_259F95DE4();
  sub_259F95FA4();
  sub_259F95E14();
  v0 = sub_259F95FC4();

  return v0;
}

unint64_t sub_259F90470(uint64_t a1, uint64_t a2)
{
  sub_259F95FA4();
  sub_259F95E14();
  v4 = sub_259F95FC4();

  return sub_259F905BC(a1, a2, v4);
}

unint64_t sub_259F904E8(uint64_t a1)
{
  sub_259F95DE4();
  sub_259F95FA4();
  sub_259F95E14();
  v2 = sub_259F95FC4();

  return sub_259F90674(a1, v2);
}

unint64_t sub_259F90578(uint64_t a1)
{
  v2 = sub_259F95F14();

  return sub_259F90778(a1, v2);
}

unint64_t sub_259F905BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_259F95F84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_259F90674(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_259F95DE4();
      v8 = v7;
      if (v6 == sub_259F95DE4() && v8 == v9)
      {
        break;
      }

      v11 = sub_259F95F84();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_259F90778(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_259F92E64(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F8482C0](v9, a1);
      sub_259F92EC0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_259F90840()
{
  v0 = sub_259F95F74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_259F908F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_259F90950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SUUIStopPageViewController.PageArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s13MobileStoreUI26SUUIStopPageViewControllerC06isStopE7Enabled3forSbSS_tFZ_0()
{
  v0 = sub_259F95E04();
  v2 = v1;
  if (v0 == 30324 && v1 == 0xE200000000000000 || (v3 = v0, (sub_259F95F84() & 1) != 0) || v3 == 0x736569766F6DLL && v2 == 0xE600000000000000)
  {
  }

  else
  {
    v6 = sub_259F95F84();

    v4 = 0;
    if ((v6 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  v8 = &type metadata for MobileStore;
  v9 = sub_259F928EC();
  v7[0] = 0;
  v4 = sub_259F95D24();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

uint64_t _s13MobileStoreUI26SUUIStopPageViewControllerC06isStopE23BagValueOverrideEnabled3forSbSS_tFZ_0()
{
  v0 = sub_259F95E04();
  v2 = v1;
  if (v0 == 30324 && v1 == 0xE200000000000000 || (v3 = v0, (sub_259F95F84() & 1) != 0) || v3 == 0x736569766F6DLL && v2 == 0xE600000000000000)
  {
  }

  else
  {
    v5 = sub_259F95F84();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (!os_variant_has_internal_content())
  {
LABEL_10:
    v4 = 0;
    return v4 & 1;
  }

  v8 = &type metadata for MobileStore;
  v9 = sub_259F928EC();
  v7[0] = 2;
  v4 = sub_259F95D24();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

uint64_t sub_259F90B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_259F95CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_259F95DA4();
  MEMORY[0x28223BE20](v5 - 8);
  if ((a1 != 0x736569766F6DLL || a2 != 0xE600000000000000) && (sub_259F95F84() & 1) == 0 && (a1 != 30324 || a2 != 0xE200000000000000) && (sub_259F95F84() & 1) == 0)
  {
    return 0;
  }

  sub_259F95D94();
  type metadata accessor for SUUIStopPageViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_259F95CC4();
  return sub_259F95DF4();
}

uint64_t sub_259F90DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_259F95CD4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_259F95DA4();
  MEMORY[0x28223BE20](v5 - 8);
  if ((a1 != 0x736569766F6DLL || a2 != 0xE600000000000000) && (sub_259F95F84() & 1) == 0 && (a1 != 30324 || a2 != 0xE200000000000000) && (sub_259F95F84() & 1) == 0)
  {
    return 0;
  }

  sub_259F95D94();
  type metadata accessor for SUUIStopPageViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_259F95CC4();
  return sub_259F95DF4();
}

uint64_t sub_259F90FC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_259F91050(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_259F910AC(uint64_t a1)
{
  v2 = type metadata accessor for SUUIStopPageViewController.PageArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_259F91108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F1168);
    v3 = sub_259F95F54();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_259F904E8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_259F911F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F1160);
    v3 = sub_259F95F54();
    v4 = a1 + 32;

    while (1)
    {
      sub_259F92DFC(v4, &v11, &qword_27F9F0FC8);
      v5 = v11;
      result = sub_259F904E8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_259F92754(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_259F91338()
{
  result = qword_27F9F0FD8;
  if (!qword_27F9F0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F0FD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileStore(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileStore(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_259F91508()
{
  sub_259F91644(319, &qword_27F9F0FE8, type metadata accessor for SUUIStopPageViewController.PageArtwork);
  if (v0 <= 0x3F)
  {
    sub_259F91644(319, &unk_27F9F0FF0, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_259F91644(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_259F95F04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_259F916C0()
{
  sub_259F95CB4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_259F91764(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_259F91784(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_259F9181C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_259F91AA4()
{
  result = qword_27F9F1138;
  if (!qword_27F9F1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F1138);
  }

  return result;
}

void sub_259F91AF8()
{
  v1 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v2 = (v0 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_imageSize);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277CEC298]) init];
  v6 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *(v0 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewPurchasesButton) = 0;
  *(v0 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_viewWishlistButton) = 0;
  v7 = OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_resourceLoaderOperationQueue;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v0 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible) = 0;
  *(v0 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable) = 2;
  sub_259F95F44();
  __break(1u);
}

id sub_259F91C60(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = 13.0;
  if ((sub_259F95E54() & 1) == 0)
  {
    v2 = 15.0;
    if ((sub_259F95E54() & 1) == 0)
    {
      sub_259F95E54();
      v2 = 18.0;
    }
  }

  v3 = [objc_opt_self() systemFontOfSize:v2 weight:*MEMORY[0x277D74418]];

  return v3;
}

unint64_t sub_259F91D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F11A0);
    v3 = sub_259F95F54();
    v4 = a1 + 32;

    while (1)
    {
      sub_259F92DFC(v4, v13, &qword_27F9F1198);
      result = sub_259F90578(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_259F92754(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_259F91E60()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = objc_opt_self();
  v3 = v0;
  if ([v2 isMainThread])
  {
    v4 = *(v3 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible);
    *(v3 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible) = 1;
    if (v4 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_259F9298C(0, &qword_27F9F1158);
    v5 = sub_259F95E44();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_259F9257C;
    *(v6 + 24) = v1;
    v3 = swift_allocObject();
    v3[2] = sub_259F930E4;
    v3[3] = v6;
    v20 = sub_259F930E4;
    v21 = v3;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_259F8FA5C;
    v19 = &block_descriptor_58;
    v7 = _Block_copy(&v16);

    dispatch_sync(v5, v7);

    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = *(v3 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton);
  v11 = v3;
  v12 = [v10 superview];
  if (v12 || (v12 = [*&v11[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton] superview]) != 0)
  {

    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = sub_259F9274C;
    *(v14 + 24) = v9;
    v20 = sub_259F930E4;
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_259F8E524;
    v19 = &block_descriptor_67;
    v15 = _Block_copy(&v16);

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];

    _Block_release(v15);
    return;
  }

  sub_259F8E41C(v11);

LABEL_3:
}

uint64_t sub_259F921F0(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = objc_opt_self();
  v5 = v1;
  v6 = a1;
  if ([v4 isMainThread])
  {
    v7 = sub_259F95DE4();
    v9 = v8;
    if (v7 == sub_259F95DE4() && v9 == v10)
    {

      v13 = 1;
    }

    else
    {
      v12 = sub_259F95F84();

      v13 = v12 & 1;
    }

    v20 = v5[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable];
    v5[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable] = v13;
    sub_259F8E568(v20);
  }

  else
  {
    sub_259F9298C(0, &qword_27F9F1158);
    v14 = sub_259F95E44();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_259F92488;
    *(v15 + 24) = v3;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_259F9253C;
    *(v16 + 24) = v15;
    v21[4] = sub_259F9253C;
    v21[5] = v16;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_259F8FA5C;
    v21[3] = &block_descriptor;
    v17 = _Block_copy(v21);

    dispatch_sync(v14, v17);

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_259F92488()
{
  v1 = *(v0 + 24);
  v2 = sub_259F95DE4();
  v4 = v3;
  if (v2 == sub_259F95DE4() && v4 == v5)
  {

    v8 = 1;
  }

  else
  {
    v7 = sub_259F95F84();

    v8 = v7 & 1;
  }

  v9 = *(v1 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable);
  *(v1 + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isOpenable) = v8;
  return sub_259F8E568(v9);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_259F9257C()
{
  v1 = *(v0 + 16);
  v2 = v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible];
  v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_isButtonVisible] = 1;
  if ((v2 & 1) == 0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = *&v1[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_offerButton];
    v5 = v1;
    v6 = [v4 superview];
    if (v6 || (v6 = [*&v5[OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_openButton] superview]) != 0)
    {

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = sub_259F930F0;
      *(v8 + 24) = v3;
      v10[4] = sub_259F930E4;
      v10[5] = v8;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = sub_259F8E524;
      v10[3] = &block_descriptor_78;
      v9 = _Block_copy(v10);

      [v7 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];

      _Block_release(v9);
    }

    else
    {
      sub_259F8E41C(v5);
    }
  }
}

_OWORD *sub_259F92754(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_259F92764(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = sub_259F95C64();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  if (Strong)
  {
    v6 = [Strong traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = 13.0;
    if ((sub_259F95E54() & 1) == 0)
    {
      v8 = 15.0;
      if ((sub_259F95E54() & 1) == 0)
      {
        sub_259F95E54();
        v8 = 18.0;
      }
    }

    [objc_opt_self() systemFontOfSize:v8 weight:*MEMORY[0x277D743F8]];

    sub_259F92F14();
    sub_259F95C74();
  }
}

unint64_t sub_259F928EC()
{
  result = qword_27F9F1180;
  if (!qword_27F9F1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F1180);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_259F9298C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F0F00) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_259F95CB4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_259F92B54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = sub_259F95C64();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  if (Strong)
  {
    v6 = [Strong traitCollection];
    sub_259F91C60(v6);

    sub_259F92F14();
    sub_259F95C74();
  }
}

void sub_259F92C38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCC13MobileStoreUI26SUUIStopPageViewControllerP33_F4F1B3F6B9CD510E9925332AAFD97B7914StopPageLockup_clientContext);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9F1190);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_259FCC290;
    v4 = MEMORY[0x277D837D0];
    sub_259F95F34();
    *(inited + 96) = v4;
    strcpy((inited + 72), "goToWishlist");
    *(inited + 85) = 0;
    *(inited + 86) = -5120;
    sub_259F91D24(inited);
    swift_setDeallocating();
    sub_259F92D9C(inited + 32, &qword_27F9F1198);
    v5 = sub_259F95D74();

    [v2 sendOnXEventWithDictionary:v5 completionBlock:{0, 1701869940, 0xE400000000000000}];
  }
}

uint64_t sub_259F92D9C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_259F92DFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_259F92F14()
{
  result = qword_27F9F11A8;
  if (!qword_27F9F11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9F11A8);
  }

  return result;
}

void sub_259F92F7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_259F93114()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F9F2908 = result;
  return result;
}

uint64_t sub_259F93168()
{
  v0 = sub_259F95D44();
  __swift_allocate_value_buffer(v0, qword_27F9F2930);
  __swift_project_value_buffer(v0, qword_27F9F2930);
  if (qword_27F9F2900 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9F2908;
  return sub_259F95D34();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_259F93298()
{
  v0 = sub_259F95D44();
  __swift_allocate_value_buffer(v0, qword_27F9F2948);
  __swift_project_value_buffer(v0, qword_27F9F2948);
  if (qword_27F9F2900 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9F2908;
  return sub_259F95D34();
}

uint64_t sub_259F93388()
{
  v0 = sub_259F95D44();
  __swift_allocate_value_buffer(v0, qword_27F9F2960);
  __swift_project_value_buffer(v0, qword_27F9F2960);
  if (qword_27F9F2900 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9F2908;
  return sub_259F95D34();
}

uint64_t sub_259F93478()
{
  v0 = sub_259F95D44();
  __swift_allocate_value_buffer(v0, qword_27F9F2978);
  __swift_project_value_buffer(v0, qword_27F9F2978);
  if (qword_27F9F2900 != -1)
  {
    swift_once();
  }

  v1 = qword_27F9F2908;
  return sub_259F95D34();
}

uint64_t sub_259F93544(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_259F95D44();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_259F935BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_259F95D44();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __CGColorSpaceGetSRGB_block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [SUUIStorePageSectionsViewController initWithLayoutStyle:v0];
}

void SUUIResourceImageSetRegisterWithBundleAlwaysTemplate_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void SUUIResourceImageSetRegisterWithBundleAlwaysTemplate(NSDictionary *__strong, NSBundle *__strong, BOOL)"}];
  [v1 handleFailureInFunction:v0 file:@"StoreUIAppearance.m" lineNumber:425 description:@"Registering a new resource image set with iTunesStoreUI is only supported on the main thread."];
}

void SUUISetExternalResourceManager_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void SUUISetExternalResourceManager(__strong id<SUUIExternalResourceManager>)"];
  [v1 handleFailureInFunction:v0 file:@"StoreUIAppearance.m" lineNumber:441 description:@"Registering a new resource image set with iTunesStoreUI is only supported on the main thread."];
}

void _SUUIglGetError_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"GLenum _SUUIglGetError(void)"];
  [v0 handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void _SUUIglBindFramebuffer_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SUUIglBindFramebuffer(GLenum, GLuint)"}];
  [v0 handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void IOSurfaceLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IOSurfaceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIOffscreenRenderOperation.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void OpenGLESLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *OpenGLESLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIOffscreenRenderOperation.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void __getEAGLContextClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEAGLContextClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:20 description:{@"Unable to find class %s", "EAGLContext"}];

  __break(1u);
}

void _SUUIglBindTexture_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SUUIglBindTexture(GLenum, GLuint)"}];
  [v0 handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:35 description:{@"%s", dlerror()}];

  __break(1u);
}

void _SUUIglTexParameteri_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _SUUIglTexParameteri(GLenum, GLenum, GLint)"}];
  [v0 handleFailureInFunction:v1 file:@"SUUIOffscreenRenderOperation.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAMSBagClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSBagClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIClientContext.m" lineNumber:38 description:{@"Unable to find class %s", "AMSBag"}];

  __break(1u);
}

void __getAMSBagClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleMediaServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIClientContext.m" lineNumber:37 description:{@"%s", *a1}];

  __break(1u);
}

void getCNComposeRecipientViewDidChangeNotification_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNComposeRecipientViewDidChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"SUUIGiftComposeViewController.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getCNComposeRecipientViewDidChangeNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsAutocompleteUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIGiftComposeViewController.m" lineNumber:42 description:{@"%s", *a1}];

  __break(1u);
}

void __getAMSURLParserClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSURLParserClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIApplicationController.m" lineNumber:86 description:{@"Unable to find class %s", "AMSURLParser"}];

  __break(1u);
}

void __getAMSURLParserClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleMediaServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIApplicationController.m" lineNumber:85 description:{@"%s", *a1}];

  __break(1u);
}

void __getAMSUIDynamicViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSUIDynamicViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIURLResolver.m" lineNumber:37 description:{@"Unable to find class %s", "AMSUIDynamicViewController"}];

  __break(1u);
}

void AppleMediaServicesUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleMediaServicesUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIURLResolver.m" lineNumber:36 description:{@"%s", *a1}];

  __break(1u);
}

void __getAMSUIWebViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSUIWebViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIURLResolver.m" lineNumber:38 description:{@"Unable to find class %s", "AMSUIWebViewController"}];

  __break(1u);
}

void __getAMSURLParserClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAMSURLParserClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SUUIURLResolver.m" lineNumber:32 description:{@"Unable to find class %s", "AMSURLParser"}];

  __break(1u);
}

void __getAMSURLParserClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppleMediaServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SUUIURLResolver.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
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

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
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

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  v1 = MEMORY[0x282114898](frame);
  result.length = v2;
  result.location = v1;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  MEMORY[0x2821148B0](framesetter, stringRange.location, stringRange.length, frameAttributes, fitRange, constraints, *&constraints.height);
  result.height = v6;
  result.width = v5;
  return result;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  v1 = MEMORY[0x282114948](line);
  result.length = v2;
  result.location = v1;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}