double LAUIPhysicalButtonNormalizedFrame()
{
  if (LAUIPhysicalButtonNormalizedFrame::onceToken != -1)
  {
    LAUIPhysicalButtonNormalizedFrame_cold_1();
  }

  return *&LAUIPhysicalButtonNormalizedFrame::frame;
}

void __LAUIPhysicalButtonNormalizedFrame_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v1);
      v4 = BytePtr[1];
      LAUIPhysicalButtonNormalizedFrame::frame = *BytePtr;
      *&qword_27F82AB00 = v4;
    }

    CFRelease(v1);
  }
}

void sub_2560E7A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LAUIPhysicalButtonView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id LA_LOG_LAUIPhysicalButtonView(void)
{
  if (LA_LOG_LAUIPhysicalButtonView(void)::once != -1)
  {
    LA_LOG_LAUIPhysicalButtonView();
  }

  v1 = LA_LOG_LAUIPhysicalButtonView(void)::log;

  return v1;
}

void sub_2560E99C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ___ZL29LA_LOG_LAUIPhysicalButtonViewv_block_invoke()
{
  v0 = os_log_create("com.apple.LocalAuthentication", "LAUIPhysicalButtonView");
  v1 = LA_LOG_LAUIPhysicalButtonView(void)::log;
  LA_LOG_LAUIPhysicalButtonView(void)::log = v0;
}

void sub_2560EA4C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2560EA680(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2560EA8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id LA_LOG_LAUIAuthenticationView()
{
  if (LA_LOG_LAUIAuthenticationView_once != -1)
  {
    LA_LOG_LAUIAuthenticationView_cold_1();
  }

  v1 = LA_LOG_LAUIAuthenticationView_log;

  return v1;
}

void sub_2560EBC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LA_LOG_LAUIPKGlyphWrapper()
{
  if (LA_LOG_LAUIPKGlyphWrapper_once != -1)
  {
    LA_LOG_LAUIPKGlyphWrapper_cold_1();
  }

  v1 = LA_LOG_LAUIPKGlyphWrapper_log;

  return v1;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

__CFString *NSStringFromCaptureState(uint64_t a1)
{
  v2 = +[LAUISecureFaceIDDescriptionLightweight _stateMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      NSStringFromCaptureState_cold_1(a1, v6);
    }

    v5 = @"Invalid";
  }

  return v5;
}

uint64_t CaptureStateFromNSString(void *a1)
{
  v1 = a1;
  v2 = +[LAUISecureFaceIDDescriptionLightweight _stateMap];
  v3 = [v2 allKeysForObject:v1];

  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      CaptureStateFromNSString_cold_1(v1, v6);
    }

    v5 = 0;
  }

  return v5;
}

void anonymous namespace::create_mask<std::map<CALayer *,CALayer * {__strong}>>(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v11[0] = v5;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    v8 = [MEMORY[0x277D75348] blackColor];
    [v7 setBackgroundColor:{objc_msgSend(v8, "CGColor")}];

    [v7 setCornerCurve:*MEMORY[0x277CDA138]];
    [v7 setActions:v6];
    [v5 setMask:v7];
    v11[2] = v11;
    v9 = std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<CALayer * {__strong},std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(a1, v11);
    v10 = v9[5];
    v9[5] = v7;
  }
}

void sub_2560EEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LAUIPearlGlyphLabel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2560EFB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (v22)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2560F03EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  if (v28)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<UIView * {__strong}>::shrink_to_fit(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = v4 >> 3;
    v6[4] = result;
    if (v1 != v2)
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, v4 >> 3);
    }

    v6[0] = 0;
    v6[1] = 8 * v5;
    v6[2] = 8 * v5;
    v6[3] = 0;
    if (v3 >> 3)
    {
      std::vector<UIView * {__strong}>::__swap_out_circular_buffer(result, v6);
    }

    return std::__split_buffer<UIView * {__strong}>::~__split_buffer(v6);
  }

  return result;
}

void sub_2560F0638(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2560F0628);
}

void sub_2560F09DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2560F1230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, uint64_t a12, void *a13, id a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a40 == 1)
  {
  }

  _Unwind_Resume(a1);
}

id LAUI_CA_utilities::add_additive_animation<double>(void *a1, void *a2, LAUI_CA_utilities::spring_factory *a3, double a4, double a5)
{
  v9 = a1;
  v10 = a2;
  v11 = LAUI_CA_utilities::spring_factory::create_animation(a3, v10);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a4 - a5];
  [(CAAnimation *)v11 setFromValue:v12];

  [(CAAnimation *)v11 setToValue:&unk_28682F828];
  v13 = LAUILayerAddAdditiveAnimation(v9, v10, v11);

  return v13;
}

id LAUI_CA_utilities::add_additive_animation<CGSize>(void *a1, void *a2, LAUI_CA_utilities::spring_factory *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2;
  v15 = LAUI_CA_utilities::spring_factory::create_animation(a3, v14);
  v16 = [MEMORY[0x277CCAE60] valueWithSize:{a4 - a6, a5 - a7}];
  [(CAAnimation *)v15 setFromValue:v16];

  v17 = [MEMORY[0x277CCAE60] valueWithSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  [(CAAnimation *)v15 setToValue:v17];

  v18 = LAUILayerAddAdditiveAnimation(v13, v14, v15);

  return v18;
}

LAUI_CA_utilities::spring_factory *LAUI_CA_utilities::spring_factory::spring_factory(LAUI_CA_utilities::spring_factory *this, double a2, double a3, double a4, double a5, CAMediaTimingFunction *a6)
{
  v11 = a6;
  v12 = v11;
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  }

  *(this + 4) = v13;
  *(this + 40) = 0;
  *(this + 6) = 0;

  return this;
}

uint64_t LAUI_CA_utilities::set_layer_geometry(void *a1, LAUI_CA_utilities::spring_factory *a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v13 = a1;
  [v13 position];
  v15 = v14;
  v17 = v16;
  [v13 bounds];
  v30 = v19;
  v31 = v18;
  v21 = v20;
  v23 = v22;
  if (v15 == a3 && v17 == a4)
  {
    v26 = 0;
  }

  else
  {
    [v13 setPosition:{a3, a4}];
    if (*(a2 + 56) == 1)
    {
      v25 = LAUI_CA_utilities::add_additive_animation<CGPoint>(v13, @"position", a2, v15, v17, a3, a4);
    }

    v26 = 1;
  }

  v34.origin.x = v21;
  v34.origin.y = v23;
  v34.size.height = v30;
  v34.size.width = v31;
  v35.origin.x = a5;
  v35.origin.y = a6;
  v35.size.height = a8;
  v35.size.width = a7;
  if (!CGRectEqualToRect(v34, v35))
  {
    [v13 setBounds:{a5, a6, a7, a8}];
    v26 = v26 | 2;
    if (*(a2 + 56) == 1)
    {
      if (v21 != a5 || v23 != a6)
      {
        v27 = LAUI_CA_utilities::add_additive_animation<CGPoint>(v13, @"bounds.origin", a2, v21, v23, a5, a6);
      }

      if (v31 != a7 || v30 != a8)
      {
        v28 = LAUI_CA_utilities::add_additive_animation<CGSize>(v13, @"bounds.size", a2, v31, v30, a7, a8);
      }
    }
  }

  return v26;
}

id LAUI_CA_utilities::add_additive_animation<CGPoint>(void *a1, void *a2, LAUI_CA_utilities::spring_factory *a3, double a4, double a5, double a6, double a7)
{
  v13 = a1;
  v14 = a2;
  v15 = LAUI_CA_utilities::spring_factory::create_animation(a3, v14);
  v16 = [MEMORY[0x277CCAE60] valueWithPoint:{a4 - a6, a5 - a7}];
  [(CAAnimation *)v15 setFromValue:v16];

  v17 = [MEMORY[0x277CCAE60] valueWithPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [(CAAnimation *)v15 setToValue:v17];

  v18 = LAUILayerAddAdditiveAnimation(v13, v14, v15);

  return v18;
}

id LAUI_CA_utilities::add_additive_animation<CATransform3D>(void *a1, void *a2, LAUI_CA_utilities::spring_factory *a3, _OWORD *a4, _OWORD *a5)
{
  v9 = a1;
  v10 = a2;
  animation = LAUI_CA_utilities::spring_factory::create_animation(a3, v10);
  v12 = a4[5];
  v24[4] = a4[4];
  v24[5] = v12;
  v13 = a4[7];
  v24[6] = a4[6];
  v24[7] = v13;
  v14 = a4[1];
  v24[0] = *a4;
  v24[1] = v14;
  v15 = a4[3];
  v24[2] = a4[2];
  v24[3] = v15;
  v16 = a5[5];
  v23[4] = a5[4];
  v23[5] = v16;
  v17 = a5[7];
  v23[6] = a5[6];
  v23[7] = v17;
  v18 = a5[1];
  v23[0] = *a5;
  v23[1] = v18;
  v19 = a5[3];
  v23[2] = a5[2];
  v23[3] = v19;
  updated = LAUI_CA_utilities::animation::update_animation<CASpringAnimation * {__strong}>(animation, v24, v23);
  v21 = LAUILayerAddAdditiveAnimation(v9, v10, updated);

  return v21;
}

id LAUI_CA_utilities::animation::update_animation<CASpringAnimation * {__strong}>(void *a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCAE60];
  v7 = a2[5];
  *&a.m31 = a2[4];
  *&a.m33 = v7;
  v8 = a2[7];
  *&a.m41 = a2[6];
  *&a.m43 = v8;
  v9 = a2[1];
  *&a.m11 = *a2;
  *&a.m13 = v9;
  v10 = a2[3];
  *&a.m21 = a2[2];
  *&a.m23 = v10;
  v11 = a3[5];
  *&b.m31 = a3[4];
  *&b.m33 = v11;
  v12 = a3[7];
  *&b.m41 = a3[6];
  *&b.m43 = v12;
  v13 = a3[1];
  *&b.m11 = *a3;
  *&b.m13 = v13;
  v14 = a3[3];
  *&b.m21 = a3[2];
  *&b.m23 = v14;
  v15 = CATransform3DEqualToTransform(&a, &b);
  v16 = MEMORY[0x277CD9DE8];
  if (v15)
  {
    v17 = *(MEMORY[0x277CD9DE8] + 80);
    *&a.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&a.m33 = v17;
    v18 = *(MEMORY[0x277CD9DE8] + 112);
    *&a.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&a.m43 = v18;
    v19 = *(MEMORY[0x277CD9DE8] + 16);
    *&a.m11 = *MEMORY[0x277CD9DE8];
    *&a.m13 = v19;
    v20 = *(MEMORY[0x277CD9DE8] + 48);
    *&a.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&a.m23 = v20;
  }

  else
  {
    v21 = a3[5];
    *&a.m31 = a3[4];
    *&a.m33 = v21;
    v22 = a3[7];
    *&a.m41 = a3[6];
    *&a.m43 = v22;
    v23 = a3[1];
    *&a.m11 = *a3;
    *&a.m13 = v23;
    v24 = a3[3];
    *&a.m21 = a3[2];
    *&a.m23 = v24;
    CATransform3DInvert(&b, &a);
    v25 = a2[5];
    *&v36.m31 = a2[4];
    *&v36.m33 = v25;
    v26 = a2[7];
    *&v36.m41 = a2[6];
    *&v36.m43 = v26;
    v27 = a2[1];
    *&v36.m11 = *a2;
    *&v36.m13 = v27;
    v28 = a2[3];
    *&v36.m21 = a2[2];
    *&v36.m23 = v28;
    CATransform3DConcat(&a, &b, &v36);
  }

  v29 = [v6 valueWithCATransform3D:&a];
  [v5 setFromValue:v29];

  v30 = v16[5];
  *&a.m31 = v16[4];
  *&a.m33 = v30;
  v31 = v16[7];
  *&a.m41 = v16[6];
  *&a.m43 = v31;
  v32 = v16[1];
  *&a.m11 = *v16;
  *&a.m13 = v32;
  v33 = v16[3];
  *&a.m21 = v16[2];
  *&a.m23 = v33;
  v34 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&a];
  [v5 setToValue:v34];

  return v5;
}

void std::vector<UIView * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t std::__split_buffer<UIView * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 __copy_helper_block_ea8_32c61_ZTSKZ48__LAUIPearlGlyphLabel__applyVisibilityAnimated__E3__2(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  v5 = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 40) = v5;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    v6 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v6;
    *(a1 + 80) = *(a2 + 80);
    result = *(a2 + 88);
    *(a1 + 88) = result;
    *(a1 + 104) = 1;
  }

  return result;
}

void __destroy_helper_block_ea8_32c61_ZTSKZ48__LAUIPearlGlyphLabel__applyVisibilityAnimated__E3__2(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
  }

  objc_destroyWeak((a1 + 32));
}

void std::vector<UIView * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::__emplace_unique_key_args<CALayer * {__strong},std::piecewise_construct_t const&,std::tuple<CALayer * const&>,CALayer * const<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<CALayer *,CALayer * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node_destructor>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CALayer *,CALayer * {__strong}>,std::__map_value_compare<CALayer * {__strong},std::__map_value_compare,std::less<CALayer * {__strong}>,true>,std::allocator<std::__map_value_compare>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2560F315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LAUIHorizontalArrowView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void LAUI_CA_utilities::periodic_animation_state::detach_animation(id *this)
{
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(this);
  if (this[1])
  {
    WeakRetained = objc_loadWeakRetained(this + 2);
    [WeakRetained removeAnimationForKey:this[1]];

    objc_storeWeak(this + 2, 0);
    v3 = this[1];
    this[1] = 0;
  }
}

void sub_2560F3D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2560F4330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2560F4638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void LAUI_CA_utilities::periodic_animation_state::attach_animation(id *this, CALayer *a2, CAAnimation *a3, NSString *a4)
{
  obj = a2;
  v7 = a3;
  v8 = a4;
  LAUI_CA_utilities::periodic_animation_state::detach_animation(this);
  if (v7 && v8)
  {
    objc_storeWeak(this + 2, obj);
    v9 = [(NSString *)v8 copy];
    v10 = this[1];
    this[1] = v9;

    [(CALayer *)obj addAnimation:v7 forKey:v8];
  }
}

void LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(LAUI_CA_utilities::periodic_animation_state *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 3);
    *(this + 3) = 0;
  }
}

id LAUILayerAddAdditiveAnimation(CALayer *a1, NSString *a2, CAAnimation *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (v5 && v7)
    v10 = {;
    v11 = [v10 unsignedIntegerValue];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [(CALayer *)v5 animationKeys];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
LABEL_5:
      v15 = 0;
      while (1)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        if ([*(*(&v21 + 1) + 8 * v15) hasPrefix:@"com.apple.laui.additive"])
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v11 = 0;
    }

    v18 = v16 = MEMORY[0x277CCACA8];
    v9 = [v16 stringWithFormat:@"%@.%lu", v18, v11];

    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11 + 1];

    [(CALayer *)v5 addAnimation:v8 forKey:v9];
  }

  return v9;
}

__CFString *anonymous namespace::prefix_for_key_path(_anonymous_namespace_ *this, NSString *a2)
{
  v2 = this;
  v3 = @"com.apple.laui.additive";
  if ([(_anonymous_namespace_ *)v2 length])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.laui.additive", v2];
  }

  return v3;
}

void LAUILayerRemoveAdditiveAnimations(CALayer *a1, NSString *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3)
    v7 = {;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(CALayer *)v3 animationKeys];
    v9 = [v8 copy];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v14 + 1) + 8 * i);
          if ([v13 hasPrefix:v7])
          {
            [(CALayer *)v3 removeAnimationForKey:v13];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }
}

double LAUILayerAnimationElapsedDuration(CALayer *a1, CAAnimation *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0.0;
  if (v3 && v4)
  {
    [(CALayer *)v3 convertTime:0 fromLayer:CACurrentMediaTime()];
    v8 = v7;
    [(CAAnimation *)v5 beginTime];
    v6 = v8 - v9;
  }

  return v6;
}

double LAUILayerAnimationRemainingDuration(CALayer *a1, CAAnimation *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0.0;
  if (v3 && v4)
  {
    [(CAAnimation *)v4 repeatCount];
    v8 = v7;
    [(CAAnimation *)v5 duration];
    v10 = v9;
    v11 = LAUILayerAnimationElapsedDuration(v3, v5);
    if ([(CAAnimation *)v5 autoreverses])
    {
      v10 = v10 + v10;
    }

    if (v8 > 0.0)
    {
      if (v8 >= 3.4028e38)
      {
        v11 = fmod(v11, v10);
      }

      else
      {
        v10 = (v8 + 1.0) * v10;
      }
    }

    if (COERCE__INT64(fabs(v10 - v11)) >= 0x7FF0000000000000)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v10 - v11;
    }

    if (v10 - v11 >= 0.0)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0.0;
    }
  }

  return v6;
}

double LAUILayerAnimationElapsedDuration(CALayer *a1, NSString *a2)
{
  v3 = a1;
  v4 = [(CALayer *)v3 animationForKey:a2];
  v5 = LAUILayerAnimationElapsedDuration(v3, v4);

  return v5;
}

double LAUILayerAnimationRemainingDuration(CALayer *a1, NSString *a2)
{
  v3 = a1;
  v4 = [(CALayer *)v3 animationForKey:a2];
  v5 = LAUILayerAnimationRemainingDuration(v3, v4);

  return v5;
}

void *LAUI_CA_utilities::spring_factory::create_animation(LAUI_CA_utilities::spring_factory *this, NSString *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CD9FA0] animationWithKeyPath:v3];
  [v4 setAdditive:1];
  [v4 setMass:*this];
  [v4 setStiffness:*(this + 1)];
  [v4 setDamping:*(this + 2)];
  [v4 setVelocity:*(this + 3)];
  [v4 setTimingFunction:*(this + 4)];
  [v4 setBeginTimeMode:*MEMORY[0x277CDA080]];
  if (*(this + 40) == 1)
  {
    v5 = *(this + 6);
  }

  else
  {
    *(this + 40) = 1;
    [v4 durationForEpsilon:0.001];
    *(this + 6) = v5;
  }

  [v4 setDuration:v5];

  return v4;
}

void sub_2560F5E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = LAUIAnimationDelegate;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double CGSizeForLAUISecureFaceIDViewType(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    v5 = 0.0;
    if (a1)
    {
      return v5;
    }

    v1 = [MEMORY[0x277D241B8] sharedInstance];
    v2 = [v1 isDynamicIslandAvailable] == 0;
    v3 = 70.0;
    v4 = 69.0;
  }

  else
  {
    v1 = [MEMORY[0x277D241B8] sharedInstance];
    v2 = [v1 isDynamicIslandAvailable] == 0;
    v3 = 40.0;
    v4 = 20.0;
  }

  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

__CFString *CASecureFlipBookLayerBaseNameFromLAUISecureFaceIDViewType(uint64_t a1)
{
  if (a1 == 2)
  {
    v2 = [MEMORY[0x277D241B8] sharedInstance];
    v3 = [v2 isDynamicIslandAvailable];
    v4 = @"FaceID-20";
    goto LABEL_7;
  }

  v1 = a1;
  if (a1 == 1)
  {
    v2 = [MEMORY[0x277D241B8] sharedInstance];
    v3 = [v2 isDynamicIslandAvailable];
    v4 = @"FaceID-40";
LABEL_7:
    v5 = @"faceid-spinner-111";
    goto LABEL_8;
  }

  if (!a1)
  {
    v2 = [MEMORY[0x277D241B8] sharedInstance];
    v3 = [v2 isDynamicIslandAvailable];
    v4 = @"FaceID-70";
    v5 = @"FaceID-69";
LABEL_8:
    if (v3)
    {
      v4 = v5;
    }

    v6 = v4;

    goto LABEL_14;
  }

  v7 = LACLogFaceIDUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    CASecureFlipBookLayerBaseNameFromLAUISecureFaceIDViewType_cold_1(v1, v7);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

__CFString *NSStringFromLAUISecureFaceIDViewType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid LAUISecureFaceIDViewType: %d", a1];
  }

  else
  {
    v2 = off_2798217D8[a1];
  }

  return v2;
}

uint64_t LAUISecureFaceIDViewTypeIsMicaAssetType(uint64_t a1)
{
  if ((a1 - 1) > 1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277D241B8] sharedInstance];
  v2 = [v1 isDynamicIslandAvailable];

  return v2;
}

uint64_t LAUIIsSecureFaceIDUISupported()
{
  v0 = [MEMORY[0x277D240D0] sharedInstance];
  v1 = [v0 isSupported];

  return v1;
}

uint64_t LAUIIsSecureFaceIDUIEnabled()
{
  v0 = [MEMORY[0x277D240D0] sharedInstance];
  v1 = [v0 isEnabled];

  return v1;
}

uint64_t LAUIIsSecureFaceIDAvailableAndEnabled()
{
  result = LAUIIsSecureFaceIDUISupported();
  if (result)
  {

    return LAUIIsSecureFaceIDUIEnabled();
  }

  return result;
}

id NSStringFromLAUISecureFaceIDViewState(uint64_t a1)
{
  v2 = +[LAUISecureFaceIDView _transitionDictForFullFlow];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKey:v3];

  return v4;
}

uint64_t LAUIInitialFaceIDViewStyleForType(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 != 1)
  {
    return 1;
  }

  v1 = [MEMORY[0x277D241B8] sharedInstance];
  v2 = [v1 isDynamicIslandAvailable];

  return v2 ^ 1u;
}

BOOL OUTLINED_FUNCTION_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

__CFString *NSStringFromCaptureState_0(uint64_t a1)
{
  v2 = +[LAUISecureFaceIDDescriptionGlyph _stateMap];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      NSStringFromCaptureState_cold_1(a1, v6);
    }

    v5 = @"Invalid";
  }

  return v5;
}

uint64_t CaptureStateFromNSString_0(void *a1)
{
  v1 = a1;
  v2 = +[LAUISecureFaceIDDescriptionGlyph _stateMap];
  v3 = [v2 allKeysForObject:v1];

  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      CaptureStateFromNSString_cold_1(v1, v6);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t GlyphStateFromNSString(void *a1)
{
  v1 = CaptureStateFromNSString_0(a1);
  if ((v1 - 1) > 4)
  {
    return 7;
  }

  else
  {
    return qword_25611CFD8[v1 - 1];
  }
}

CGColorSpaceRef anonymous namespace::create_default_color_space(_anonymous_namespace_ *this, MTLPixelFormat a2)
{
  v2 = MEMORY[0x277CBF4A8];
  if (this <= 114)
  {
    if (this == 80)
    {
      goto LABEL_9;
    }

    if (this != 81)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (this != 115 && this != 552)
  {
    if (this != 553)
    {
      return 0;
    }

LABEL_8:
    v2 = MEMORY[0x277CBF4B8];
  }

LABEL_9:
  if (*v2)
  {
    return CGColorSpaceCreateWithName(*v2);
  }

  return 0;
}

void sub_2560F998C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LAUIMetalRenderLoop;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2560FA2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LAUIRenderLoop;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id getLAErrorHelperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAErrorHelperClass_softClass;
  v7 = getLAErrorHelperClass_softClass;
  if (!getLAErrorHelperClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getLAErrorHelperClass_block_invoke;
    v3[3] = &unk_2798219B8;
    v3[4] = &v4;
    __getLAErrorHelperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2560FB3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2560FB6C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LA_LOG_LAUIAuthenticationCore()
{
  if (LA_LOG_LAUIAuthenticationCore_once != -1)
  {
    LA_LOG_LAUIAuthenticationCore_cold_1();
  }

  v1 = LA_LOG_LAUIAuthenticationCore_log;

  return v1;
}

void sub_2560FBDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2560FC468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2560FC554(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2560FC6C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2560FCCEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getLAErrorHelperClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SharedUtilsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SharedUtilsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2798219D8;
    v6 = 0;
    SharedUtilsLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SharedUtilsLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LAErrorHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLAErrorHelperClass_block_invoke_cold_1();
  }

  getLAErrorHelperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SharedUtilsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SharedUtilsLibraryCore_frameworkLibrary = result;
  return result;
}

double LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t::state_t::transform(float32x4_t *this)
{
  *v2.i64 = simd_matrix4x4(this[3]);
  v6 = 0;
  *&v7 = 0;
  LODWORD(v8) = 0;
  HIDWORD(v8) = 0;
  *(&v8 + 4) = HIDWORD(this[4].i64[0]);
  *(&v7 + 1) = this[4].i64[1];
  v51 = *&this[4];
  v52 = v8;
  v53 = v7;
  v54 = xmmword_25611D010;
  do
  {
    *(&v55 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(*(&v51 + v6))), v3, *(&v51 + v6), 1), v4, *(&v51 + v6), 2), v5, *(&v51 + v6), 3);
    v6 += 16;
  }

  while (v6 != 64);
  v9 = this[1];
  v10 = vmulq_f32(v9, xmmword_25611D010);
  if (vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL))) == 1.0)
  {
    v24 = 0;
    v25 = *this;
    v25.i32[3] = 1.0;
    v51 = v55;
    v52 = v56;
    v53 = v57;
    v54 = v58;
    do
    {
      *(&v55 + v24) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25611D020, COERCE_FLOAT(*(&v51 + v24))), xmmword_25611D030, *(&v51 + v24), 1), xmmword_25611D040, *(&v51 + v24), 2), v25, *(&v51 + v24), 3);
      v24 += 16;
    }

    while (v24 != 64);
  }

  else
  {
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v11 = this[2];
    v12 = vmvnq_s8(vceqzq_f32(v11));
    v12.i32[3] = v12.i32[2];
    v13 = *this;
    if ((vmaxvq_u32(v12) & 0x80000000) != 0)
    {
      v46 = this[2];
      v26 = vsubq_f32(v13, v11);
      v26.i32[3] = 1.0;
      v44 = v26;
      *&v27 = simd_matrix4x4(v9);
      v28 = 0;
      v51 = v27;
      v52 = v29;
      v53 = v30;
      v54 = v31;
      do
      {
        *(&v55 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25611D020, COERCE_FLOAT(*(&v51 + v28))), xmmword_25611D030, *(&v51 + v28), 1), xmmword_25611D040, *(&v51 + v28), 2), v44, *(&v51 + v28), 3);
        v28 += 16;
      }

      while (v28 != 64);
      v32 = 0;
      v33 = v55;
      v34 = v56;
      v35 = v57;
      v36 = v58;
      v37 = v46;
      HIDWORD(v37) = 1.0;
      v51 = xmmword_25611D020;
      v52 = xmmword_25611D030;
      v53 = xmmword_25611D040;
      v54 = v37;
      do
      {
        *(&v55 + v32) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v51 + v32))), v34, *(&v51 + v32), 1), v35, *(&v51 + v32), 2), v36, *(&v51 + v32), 3);
        v32 += 16;
      }

      while (v32 != 64);
      v38 = 0;
      v39 = v55;
      v40 = v56;
      v41 = v57;
      v42 = v58;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      do
      {
        *(&v55 + v38) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v51 + v38))), v40, *(&v51 + v38), 1), v41, *(&v51 + v38), 2), v42, *(&v51 + v38), 3);
        v38 += 16;
      }

      while (v38 != 64);
    }

    else
    {
      v13.i32[3] = 1.0;
      v45 = v13;
      *&v14 = simd_matrix4x4(v9);
      v15 = 0;
      v51 = v14;
      v52 = v16;
      v53 = v17;
      v54 = v18;
      do
      {
        *(&v55 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25611D020, COERCE_FLOAT(*(&v51 + v15))), xmmword_25611D030, *(&v51 + v15), 1), xmmword_25611D040, *(&v51 + v15), 2), v45, *(&v51 + v15), 3);
        v15 += 16;
      }

      while (v15 != 64);
      v19 = 0;
      v20 = v55;
      v21 = v56;
      v22 = v57;
      v23 = v58;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      v54 = v50;
      do
      {
        *(&v55 + v19) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(&v51 + v19))), v21, *(&v51 + v19), 1), v22, *(&v51 + v19), 2), v23, *(&v51 + v19), 3);
        v19 += 16;
      }

      while (v19 != 64);
    }
  }

  return *&v55;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(void *a1@<X0>, LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t *a2@<X8>)
{
  v3 = a1;
  v4 = v3;
  if (v3 && ([v3 supportsFamily:1003] & 1) != 0)
  {
    if ((atomic_load_explicit(&qword_27F82AC30, memory_order_acquire) & 1) == 0)
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create();
    }

    v108 = 1;
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t(&v95, v4);
    v5 = objc_autoreleasePoolPush();
    os_unfair_lock_lock(&_MergedGlobals);
    WeakRetained = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::device);

    if (WeakRetained != v4)
    {
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::device, v4);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::depth_stencil_state, 0);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tesselation_factor_pipeline, 0);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tube_pipeline, 0);
      location = 0;
      std::array<objc_object  {objcproto22MTLRenderPipelineState}* {__weak},3ul>::fill[abi:ne200100](&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::begin_cap_pipelines, &location);
      objc_destroyWeak(&location);
      v93 = 0;
      std::array<objc_object  {objcproto22MTLRenderPipelineState}* {__weak},3ul>::fill[abi:ne200100](&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::end_cap_pipelines, &v93);
      objc_destroyWeak(&v93);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::horizontal_blur_pipeline, 0);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::vertical_blur_pipeline, 0);
      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::accumulator_pipeline, 0);
    }

    v7 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::depth_stencil_state);
    v8 = v96;
    v96 = v7;

    v9 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tesselation_factor_pipeline);
    v10 = v97;
    v97 = v9;

    v11 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tube_pipeline);
    v12 = v98;
    v98 = v11;

    for (i = 0; i != 24; i += 8)
    {
      v14 = objc_loadWeakRetained((&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::begin_cap_pipelines + i));
      v15 = *(&v99 + i);
      *(&v99 + i) = v14;
    }

    for (j = 0; j != 24; j += 8)
    {
      v17 = objc_loadWeakRetained((&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::end_cap_pipelines + j));
      v18 = *(&v102 + j);
      *(&v102 + j) = v17;
    }

    v19 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::horizontal_blur_pipeline);
    v20 = v105;
    v105 = v19;

    v21 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::vertical_blur_pipeline);
    v22 = v106;
    v106 = v21;

    v23 = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::accumulator_pipeline);
    v24 = v107;
    v107 = v23;

    v92 = 0;
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v87[0] = &v92;
    v87[1] = &v108;
    v87[2] = &v91;
    v87[3] = &v90;
    v87[4] = &v89;
    v88 = v4;
    v86 = 0;
    v84 = &v86;
    v25 = v88;
    v85 = v25;
    if (!v98 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v26 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v27 = [v90 newFunctionWithName:@"tessellation_vertex_main"];
      [v26 setVertexFunction:v27];

      v28 = [v25 newRenderPipelineStateWithDescriptor:v26 error:0];
      v29 = v98;
      v98 = v28;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tube_pipeline, v28);
    }

    if (!v99 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v30 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v31 = [v90 newFunctionWithName:@"tessellation_vertex_begin_0"];
      [v30 setVertexFunction:v31];

      v32 = [v25 newRenderPipelineStateWithDescriptor:v30 error:0];
      v33 = v99;
      v99 = v32;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::begin_cap_pipelines, v32);
    }

    if (!v100 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v34 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v35 = [v90 newFunctionWithName:@"tessellation_vertex_begin_1"];
      [v34 setVertexFunction:v35];

      v36 = [v25 newRenderPipelineStateWithDescriptor:v34 error:0];
      v37 = v100;
      v100 = v36;

      objc_storeWeak(&qword_27F82ABE8, v36);
    }

    if (!v101 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v38 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v39 = [v90 newFunctionWithName:@"tessellation_vertex_begin_2"];
      [v38 setVertexFunction:v39];

      v40 = [v25 newRenderPipelineStateWithDescriptor:v38 error:0];
      v41 = v101;
      v101 = v40;

      objc_storeWeak(&qword_27F82ABF0, v40);
    }

    if (!v102 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v42 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v43 = [v90 newFunctionWithName:@"tessellation_vertex_end_0"];
      [v42 setVertexFunction:v43];

      v44 = [v25 newRenderPipelineStateWithDescriptor:v42 error:0];
      v45 = v102;
      v102 = v44;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::end_cap_pipelines, v44);
    }

    if (!v103 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v46 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v47 = [v90 newFunctionWithName:@"tessellation_vertex_end_1"];
      [v46 setVertexFunction:v47];

      v48 = [v25 newRenderPipelineStateWithDescriptor:v46 error:0];
      v49 = v103;
      v103 = v48;

      objc_storeWeak(&qword_27F82AC00, v48);
    }

    if (!v104 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v50 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(&v84, v90, v89);
      v51 = [v90 newFunctionWithName:@"tessellation_vertex_end_2"];
      [v50 setVertexFunction:v51];

      v52 = [v25 newRenderPipelineStateWithDescriptor:v50 error:0];
      v53 = v104;
      v104 = v52;

      objc_storeWeak(&qword_27F82AC08, v52);
    }

    if (v97 || !LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v57 = 0;
    }

    else
    {
      v54 = v90;
      v55 = v89;
      if (v54)
      {
        v56 = objc_alloc_init(MEMORY[0x277CD6D30]);
        v54 = v56;
        if (v55)
        {
          [v56 setPipelineLibrary:v55];
        }
      }

      v57 = v54;

      v58 = [v90 newFunctionWithName:@"tessellation_kernel_main"];
      [v57 setComputeFunction:v58];

      v59 = [v25 newComputePipelineStateWithDescriptor:v57 options:0 reflection:0 error:0];
      v60 = v97;
      v97 = v59;
      v61 = v59;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::tesselation_factor_pipeline, v61);
    }

    if (!v105 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v62 = v90;
      v63 = v89;
      if (!v57)
      {
        if (v62)
        {
          v64 = objc_alloc_init(MEMORY[0x277CD6D30]);
          v57 = v64;
          if (v63)
          {
            [v64 setPipelineLibrary:v63];
          }
        }
      }

      v57 = v57;

      v65 = [v90 newFunctionWithName:@"linear_horizontal_blur"];
      [v57 setComputeFunction:v65];

      v66 = [v25 newComputePipelineStateWithDescriptor:v57 options:0 reflection:0 error:0];
      v67 = v105;
      v105 = v66;
      v68 = v66;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::horizontal_blur_pipeline, v68);
    }

    if (!v106 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v69 = v90;
      v70 = v89;
      if (!v57)
      {
        if (v69)
        {
          v71 = objc_alloc_init(MEMORY[0x277CD6D30]);
          v57 = v71;
          if (v70)
          {
            [v71 setPipelineLibrary:v70];
          }
        }
      }

      v57 = v57;

      v72 = [v90 newFunctionWithName:@"linear_vertical_blur"];
      [v57 setComputeFunction:v72];

      v73 = [v25 newComputePipelineStateWithDescriptor:v57 options:0 reflection:0 error:0];
      v74 = v106;
      v106 = v73;
      v75 = v73;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::vertical_blur_pipeline, v75);
    }

    if (!v107 && LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(v87))
    {
      v76 = v90;
      v77 = v89;
      if (!v57)
      {
        if (v76)
        {
          v78 = objc_alloc_init(MEMORY[0x277CD6D30]);
          v57 = v78;
          if (v77)
          {
            [v78 setPipelineLibrary:v77];
          }
        }
      }

      v57 = v57;

      v79 = [v90 newFunctionWithName:@"composite_blurred_accumulate"];
      [v57 setComputeFunction:v79];

      v80 = [v25 newComputePipelineStateWithDescriptor:v57 options:0 reflection:0 error:0];
      v81 = v107;
      v107 = v80;
      v82 = v80;

      objc_storeWeak(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::accumulator_pipeline, v82);
    }

    os_unfair_lock_unlock(&_MergedGlobals);
    objc_autoreleasePoolPop(v5);
    if (v108 == 1)
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t(a2, &v95);
      v83 = 1;
    }

    else
    {
      v83 = 0;
      *a2 = 0;
    }

    *(a2 + 104) = v83;
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::~shared_state_t(&v95);
  }

  else
  {
    *a2 = 0;
    *(a2 + 104) = 0;
  }
}

void std::array<objc_object  {objcproto22MTLRenderPipelineState}* {__weak},3ul>::fill[abi:ne200100](id *a1, id *location)
{
  v4 = -3;
  do
  {
    WeakRetained = objc_loadWeakRetained(location);
    objc_storeWeak(a1, WeakRetained);

    ++a1;
  }

  while (!__CFADD__(v4++, 1));
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()(uint64_t a1)
{
  if (**a1 == 1)
  {
    goto LABEL_21;
  }

  **a1 = 1;
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = *(a1 + 16);
  v5 = *v4;
  *v4 = v3;

  v6 = **(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 40);
    v21 = 0;
    v8 = [v7 newDefaultLibraryWithBundle:v6 error:&v21];
    v9 = v21;
    v10 = *(a1 + 24);
    v11 = *v10;
    *v10 = v8;

    if (**(a1 + 24))
    {

      v12 = [**(a1 + 16) pathForResource:@"LAUICubicBSplineRenderer" ofType:@"pipelinelib"];
      if (v12)
      {
        WeakRetained = objc_loadWeakRetained(&LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::device);
        v20 = 0;
        v13 = [WeakRetained newPipelineLibraryWithFilePath:v12 error:&v20];
        v14 = v20;
      }

      else
      {
        v14 = 0;
        v13 = 0;
      }

      objc_storeStrong(*(a1 + 32), v13);
      if (v12)
      {

        if (**(a1 + 32))
        {
LABEL_20:

LABEL_21:
          v16 = **(a1 + 8);
          return v16 & 1;
        }

        v18 = os_log_create("com.apple.LocalAuthentication", "LAUICubicBSplineRenderer");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()();
        }
      }

      else
      {
        v18 = os_log_create("com.apple.LocalAuthentication", "LAUICubicBSplineRenderer");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()();
        }
      }

      goto LABEL_20;
    }

    v17 = os_log_create("com.apple.LocalAuthentication", "LAUICubicBSplineRenderer");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()();
    }

    **(a1 + 8) = 0;
    v16 = 0;
  }

  else
  {
    v15 = os_log_create("com.apple.LocalAuthentication", "LAUICubicBSplineRenderer");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_1::operator()();
    }

    v16 = 0;
    **(a1 + 8) = 0;
  }

  return v16 & 1;
}

void *LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(objc_object  {objcproto9MTLDevice}*)::$_2::operator()(void ***a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = **a1;
  if (v5 && !v7)
  {
    if ([a1[1] supportsTextureSampleCount:4])
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    v9 = objc_alloc_init(MEMORY[0x277CD7090]);
    v21 = [v9 attributes];
    v10 = [v21 objectAtIndexedSubscript:0];
    [v10 setFormat:30];
    [v10 setOffset:0];
    [v10 setBufferIndex:0];
    v11 = [v9 layouts];
    v12 = [v11 objectAtIndexedSubscript:0];

    [v12 setStride:16];
    [v12 setStepRate:1];
    [v12 setStepFunction:4];
    v13 = objc_alloc_init(MEMORY[0x277CD6F78]);
    v14 = v13;
    if (v6)
    {
      [v13 setPipelineLibrary:v6];
    }

    v15 = [v5 newFunctionWithName:@"tessellation_fragment_main"];
    [v14 setFragmentFunction:v15];

    [v14 setVertexDescriptor:v9];
    [v14 setRasterSampleCount:v8];
    [v14 setMaxTessellationFactor:16];
    [v14 setTessellationFactorScaleEnabled:0];
    [v14 setTessellationFactorFormat:0];
    [v14 setTessellationControlPointIndexType:1];
    [v14 setTessellationFactorStepFunction:0];
    [v14 setTessellationOutputWindingOrder:0];
    [v14 setTessellationPartitionMode:3];
    v16 = [v14 colorAttachments];
    v17 = [v16 objectAtIndexedSubscript:0];
    [v17 setPixelFormat:80];

    [v14 setDepthAttachmentPixelFormat:0];
    v18 = **a1;
    **a1 = v14;

    v7 = **a1;
  }

  v19 = v7;

  return v7;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::renderer_t(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t((a1 + 24), a3);
  *(a1 + 128) = 0;
  v6 = MEMORY[0x277D860A0];
  v8 = *(MEMORY[0x277D860A0] + 64);
  v7 = *(MEMORY[0x277D860A0] + 80);
  v9 = *(MEMORY[0x277D860A0] + 48);
  *(a1 + 208) = v8;
  *(a1 + 224) = v7;
  v11 = v6[6];
  v10 = v6[7];
  v12 = v6[5];
  *(a1 + 240) = v11;
  *(a1 + 256) = v10;
  *(a1 + 368) = v11;
  *(a1 + 384) = v10;
  *(a1 + 336) = v8;
  *(a1 + 352) = v7;
  v13 = v6[2];
  v14 = v6[3];
  v16 = *v6;
  v15 = v6[1];
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  *(a1 + 304) = v13;
  *(a1 + 320) = v14;
  v17 = v6[1];
  v18 = v6[2];
  v19 = *v6;
  *(a1 + 144) = v16;
  *(a1 + 160) = v17;
  *(a1 + 272) = v16;
  *(a1 + 288) = v17;
  *(a1 + 400) = v19;
  *(a1 + 416) = v15;
  v20 = v6[7];
  *(a1 + 496) = v11;
  *(a1 + 512) = v20;
  *(a1 + 464) = v8;
  *(a1 + 480) = v12;
  *(a1 + 432) = v18;
  *(a1 + 448) = v9;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 528) = 0u;
  operator new();
}

float LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *(a1 + 720) = *a2;
  *(a1 + 728) = v2;
  result = *(a2 + 12);
  *(a1 + 732) = result;
  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::renderer_t::add_spline(uint64_t a1, unint64_t *a2, int8x16_t **a3)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 696) - *(a1 + 688)) >> 3);
  v16 = v3;
  v7 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::reserve_spline_control_points(a1, a2);
  v15.i64[0] = v7;
  v15.i64[1] = v8;
  v11 = *(a1 + 696);
  if (v11 >= *(a1 + 704))
  {
    v13 = std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__emplace_back_slow_path<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t> const&,LAUI_uniform_cubic_b_spline_renderer::spline_t const&,std::span<LAUI_uniform_cubic_b_spline_renderer_private::control_point,18446744073709551615ul> const&,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const&>((a1 + 688), &v16, a2, &v15, a3, *v9.i64, v10);
    v3 = v16;
  }

  else
  {
    *v11 = v3;
    v12 = *a2;
    v11[1] = *a2;
    v11[2] = v7;
    v11[3] = v8;
    v11[4] = 0;
    v11[5] = 0;
    v11[6] = 0;
    if (v12)
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::set_state(v11, a3, v9, v10);
    }

    v13 = (v11 + 7);
  }

  *(a1 + 696) = v13;
  return v3;
}

_BYTE *LAUI_uniform_cubic_b_spline_renderer::renderer_t::reserve_spline_control_points(const void **a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a1[93];
  v6 = a1[92];
  v21 = 0u;
  std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::insert(a1 + 92, v5, v4, &v21);
  v7 = a1[92];
  v8 = (a1[93] - v7) >> 4;
  v9 = a1[86];
  v10 = a1[87];
  if (v9 != v10)
  {
    v11 = 0;
    while (1)
    {
      v12 = v9[1];
      v13 = v8 - v11;
      if (v12 != -1)
      {
        v13 = v9[1];
      }

      if (v13 != v9[3])
      {
        break;
      }

      v9[2] = &v7[16 * v11];
      v14 = __CFADD__(v11, v12);
      v11 += v12;
      if (v14)
      {
        break;
      }

      v9 += 7;
      if (v9 == v10)
      {
        if (v11 <= v8)
        {
          goto LABEL_11;
        }

        break;
      }
    }

    __break(1u);
  }

  v11 = 0;
LABEL_11:
  if (v4 != v8 - v11)
  {
    v18 = "control_point_count == (count - offset)";
    v20 = 740;
    goto LABEL_20;
  }

  v15 = *a2;
  if (*a2 <= 3)
  {
    v15 = 3;
  }

  v16 = v15 - 3;
  std::vector<unsigned short>::reserve(a1 + 95, ((a1[96] - a1[95]) >> 1) + 4 * (v15 - 3));
  if (v16)
  {
    v17 = (v5 - v6) >> 4;
    v18 = "control_point_start_index + 3 < _control_points.size()";
    while (1)
    {
      LOWORD(v21) = v17;
      std::vector<unsigned short>::push_back[abi:ne200100](a1 + 95, &v21);
      LOWORD(v21) = v17 + 1;
      std::vector<unsigned short>::push_back[abi:ne200100](a1 + 95, &v21);
      LOWORD(v21) = v17 + 2;
      std::vector<unsigned short>::push_back[abi:ne200100](a1 + 95, &v21);
      LOWORD(v21) = v17 + 3;
      std::vector<unsigned short>::push_back[abi:ne200100](a1 + 95, &v21);
      if (v17 + 3 >= ((a1[93] - a1[92]) >> 4))
      {
        break;
      }

      ++v17;
      if (!--v16)
      {
        return &v7[16 * v11];
      }
    }

    v20 = 754;
LABEL_20:
    __assert_rtn("reserve_spline_control_points", "LAUICubicBSplineRenderer.mm", v20, v18);
  }

  return &v7[16 * v11];
}

char *std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::insert(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 4)
  {
    v15 = v8 - __src;
    if (a3 <= (v8 - __src) >> 4)
    {
      v18 = a1[1];
      v17 = a3;
    }

    else
    {
      v16 = 0;
      v17 = v15 >> 4;
      v18 = &v8[16 * (a3 - (v15 >> 4))];
      do
      {
        *&v8[v16] = *a4;
        v16 += 16;
      }

      while (16 * a3 - 16 * v17 != v16);
      a1[1] = v18;
      if (v8 == __src)
      {
        return __src;
      }
    }

    v19 = &__src[16 * a3];
    v20 = &v18[-16 * a3];
    v21 = v18;
    if (v20 < v8)
    {
      v21 = v18;
      do
      {
        v22 = *v20;
        v20 += 16;
        *v21 = v22;
        v21 += 16;
      }

      while (v20 < v8);
    }

    a1[1] = v21;
    if (v18 != v19)
    {
      memmove(&__src[16 * a3], __src, v18 - v19);
    }

    if (__src <= v5)
    {
      if (a1[1] <= v5)
      {
        v23 = 0;
      }

      else
      {
        v23 = a3;
      }

      v5 += 16 * v23;
    }

    v24 = __src;
    do
    {
      *v24 = *v5;
      v24 += 16;
      --v17;
    }

    while (v17);
    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 4);
  if (v11 >> 60)
  {
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 3 > v11)
  {
    v11 = v13 >> 3;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF0)
  {
    v14 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::allocate_at_least[abi:ne200100](a1, v14);
  }

  v25 = 16 * (v12 >> 4);
  v26 = 16 * a3;
  v27 = v25;
  do
  {
    *v27++ = *a4;
    v26 -= 16;
  }

  while (v26);
  memcpy((v25 + 16 * a3), __src, a1[1] - __src);
  v28 = *a1;
  v29 = v25 + 16 * a3 + a1[1] - __src;
  a1[1] = __src;
  v30 = (__src - v28);
  v31 = (v25 - (__src - v28));
  memcpy(v31, v28, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v25;
}

void *std::vector<unsigned short>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:ne200100](a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::renderer_t::add_instance(uint64_t a1, uint64_t *a2, __int128 *a3, const LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t::state_t *a4)
{
  if (*(a1 + 8))
  {
    return -1;
  }

  v5 = *a2;
  v6 = *(a1 + 696);
  v7 = *(a1 + 688);
  if (*a2 >= (0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3)))
  {
    return -1;
  }

  v9 = 0;
  if (v5)
  {
    v10 = *(a1 + 688);
    do
    {
      v9 -= 0x3333333333333333 * ((*(v10 + 40) - *(v10 + 32)) >> 4);
      v10 += 56;
    }

    while (v10 != v7 + 56 * v5);
  }

  v11 = 0;
  if (v7 != v6)
  {
    v12 = *(a1 + 688);
    do
    {
      v11 -= 0x3333333333333333 * ((*(v12 + 40) - *(v12 + 32)) >> 4);
      v12 += 56;
    }

    while (v12 != v6);
  }

  v13 = (v7 + 56 * v5);
  v42 = v13[5] - v13[4];
  v14 = *(a1 + 784);
  v15 = 0xCCCCCCCCCCCCCCCDLL * (v42 >> 4) + v9;
  memset(v44, 0, sizeof(v44));
  std::vector<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::insert((a1 + 784), (v14 + 96 * v15), v44);
  std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::reserve((a1 + 808), ((*(a1 + 816) - *(a1 + 808)) >> 4) + 10);
  v16 = (*(a1 + 808) + 80 * v15);
  v44[0] = 0u;
  std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::insert((a1 + 808), v16, 5uLL, v44);
  v17 = *(a1 + 808);
  v18 = 80 * (v9 + v11 - 0x3333333333333333 * (v42 >> 4)) + 80;
  v44[0] = 0u;
  std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::insert((a1 + 808), (v18 + v17), 5uLL, v44);
  *(a1 + 672) = 1;
  v19 = *(a1 + 808);
  v20 = *(a1 + 784) + 96 * v15;
  v21 = v19 + 80 * v15;
  v22 = v19 + v18;
  v23 = v13[4];
  v24 = v13[5];
  v25 = v13[6];
  if (v24 >= v25)
  {
    v41 = v24 - v23;
    v30 = 0xCCCCCCCCCCCCCCCDLL * ((v24 - v23) >> 4);
    v31 = v30 + 1;
    if (v30 + 1 > 0x333333333333333)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v32 = 0xCCCCCCCCCCCCCCCDLL * ((v25 - v23) >> 4);
    if (2 * v32 > v31)
    {
      v31 = 2 * v32;
    }

    if (v32 >= 0x199999999999999)
    {
      v33 = 0x333333333333333;
    }

    else
    {
      v33 = v31;
    }

    if (v33)
    {
      std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t>::allocate_at_least[abi:ne200100]((v13 + 4), v33);
    }

    v34 = 80 * v30;
    *v34 = v13;
    v35 = *a3;
    *(v34 + 24) = a3[1];
    *(v34 + 8) = v35;
    *(v34 + 40) = v20;
    *(v34 + 48) = v21;
    *(v34 + 56) = 5;
    *(v34 + 64) = v22;
    *(v34 + 72) = 5;
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::set_state((80 * v30), a4, 1);
    v27 = 80 * v30 + 80;
    v36 = v13[4];
    v37 = v13[5] - v36;
    v38 = (80 * v30 - v37);
    memcpy(v38, v36, v37);
    v39 = v13[4];
    v13[4] = v38;
    v13[5] = v27;
    v13[6] = 0;
    if (v39)
    {
      operator delete(v39);
    }

    v29 = v42;
    v28 = v41;
  }

  else
  {
    *v24 = v13;
    v26 = *a3;
    *(v24 + 24) = a3[1];
    *(v24 + 8) = v26;
    *(v24 + 40) = v20;
    *(v24 + 48) = v21;
    *(v24 + 56) = 5;
    *(v24 + 64) = v22;
    *(v24 + 72) = 5;
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::set_state(v24, a4, 1);
    v27 = v24 + 80;
    v28 = v24 - v23;
    v29 = v42;
  }

  v13[5] = v27;
  ++*(a1 + 712);
  if (v28 != v29)
  {
    __assert_rtn("add_instance", "LAUICubicBSplineRenderer.mm", 796, "actual_instance_id.index() == instance_id.index()");
  }

  LAUI_uniform_cubic_b_spline_renderer::renderer_t::remap_instances(a1);
  return v5;
}

char *std::vector<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::insert(void *a1, char *__src, _OWORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    if (v15 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v16 = __src - v14;
    v17 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v14) >> 5);
    v18 = 2 * v17;
    if (2 * v17 <= v15)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (&v6[-*a1] >> 5) + 1;
    }

    if (v17 >= 0x155555555555555)
    {
      v19 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v19 = v18;
    }

    v39 = a1;
    if (v19)
    {
      std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::allocate_at_least[abi:ne200100](a1, v19);
    }

    v36 = 0;
    v37 = 32 * (v16 >> 5);
    v38 = v37;
    std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::emplace_back<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>(&v36, a3);
    v24 = v37;
    memcpy(v38, v4, a1[1] - v4);
    v25 = *a1;
    v26 = v37;
    *&v38 = v38 + a1[1] - v4;
    a1[1] = v4;
    v27 = v4 - v25;
    v28 = (v26 - (v4 - v25));
    memcpy(v28, v25, v27);
    v29 = *a1;
    *a1 = v28;
    v30 = a1[2];
    *(a1 + 1) = v38;
    *&v38 = v29;
    *(&v38 + 1) = v30;
    v36 = v29;
    v37 = v29;
    if (v29)
    {
      operator delete(v29);
    }

    return v24;
  }

  else if (__src == v6)
  {
    v20 = a3[1];
    *v6 = *a3;
    *(v6 + 1) = v20;
    v21 = a3[2];
    v22 = a3[3];
    v23 = a3[5];
    *(v6 + 4) = a3[4];
    *(v6 + 5) = v23;
    *(v6 + 2) = v21;
    *(v6 + 3) = v22;
    a1[1] = v6 + 96;
  }

  else
  {
    v8 = __src + 96;
    if (v6 < 0x60)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 96;
      v10 = *(v6 - 5);
      *v6 = *(v6 - 6);
      *(v6 + 1) = v10;
      v11 = *(v6 - 4);
      v12 = *(v6 - 3);
      v13 = *(v6 - 1);
      *(v6 + 4) = *(v6 - 2);
      *(v6 + 5) = v13;
      *(v6 + 2) = v11;
      *(v6 + 3) = v12;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 96, __src, v6 - v8);
    }

    v31 = a3[1];
    *v4 = *a3;
    *(v4 + 1) = v31;
    v32 = a3[2];
    v33 = a3[3];
    v34 = a3[5];
    *(v4 + 4) = a3[4];
    *(v4 + 5) = v34;
    *(v4 + 2) = v32;
    *(v4 + 3) = v33;
  }

  return v4;
}

void sub_2560FF328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void *LAUI_uniform_cubic_b_spline_renderer::renderer_t::remap_instances(void *this)
{
  v1 = this[86];
  v2 = this[87];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = this[86];
    do
    {
      v5 = v3;
      v6 = 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 40) - *(v4 + 32)) >> 4);
      v3 += v6;
      v4 += 56;
    }

    while (v4 != v2);
    if (v1 != v2)
    {
      v7 = 0;
      v8 = this[101];
      v9 = v5 + v6;
      do
      {
        v10 = *(v1 + 32);
        v11 = *(v1 + 40);
        if (v10 != v11)
        {
          v12 = v8 + 80 * (v9 + v7);
          v13 = 96 * v7;
          v14 = v8 + 80 * v7;
          do
          {
            v10[5] = v13 + this[98];
            v10[6] = v14;
            v10[7] = 5;
            v10[8] = v12;
            v10[9] = 5;
            ++v7;
            v10 += 10;
            v12 += 80;
            v13 += 96;
            v14 += 80;
          }

          while (v10 != v11);
        }

        v1 += 56;
      }

      while (v1 != v2);
    }
  }

  return this;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::rebuild_cap_control_point_indices(LAUI_uniform_cubic_b_spline_renderer::renderer_t *this)
{
  if (*(this + 672) == 1)
  {
    *(this + 672) = 0;
    *(this + 105) = *(this + 104);
    v37 = 0;
    v2 = *(this + 86);
    v3 = *(this + 87);
    if (v2 == v3)
    {
      v7 = *(this + 43);
    }

    else
    {
      do
      {
        v4 = *(v2 + 40) - *(v2 + 32);
        if (v4)
        {
          v5 = 0xCCCCCCCCCCCCCCCDLL * (v4 >> 4);
          if (v5 <= 1)
          {
            v6 = 1;
          }

          else
          {
            v6 = v5;
          }

          do
          {
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v36 = v37 + 3;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 4;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v37 += 5;
            --v6;
          }

          while (v6);
        }

        v2 += 56;
      }

      while (v2 != v3);
      v7 = *(this + 43);
    }

    v37 = 0;
    v9 = *(&v7 + 1);
    v8 = v7;
    if (v7 != *(&v7 + 1))
    {
      do
      {
        v10 = *(v8 + 40) - *(v8 + 32);
        if (v10)
        {
          v11 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 4);
          if (v11 <= 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = v11;
          }

          do
          {
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v36 = v37 + 1;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 3;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 4;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v37 += 5;
            --v12;
          }

          while (v12);
        }

        v8 += 56;
      }

      while (v8 != v9);
      v7 = *(this + 43);
    }

    v37 = 0;
    v14 = *(&v7 + 1);
    v13 = v7;
    if (v7 != *(&v7 + 1))
    {
      do
      {
        v15 = *(v13 + 40) - *(v13 + 32);
        if (v15)
        {
          v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 4);
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          do
          {
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v36 = v37 + 1;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 2;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 3;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v36 = v37 + 4;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
            v37 += 5;
            --v17;
          }

          while (v17);
        }

        v13 += 56;
      }

      while (v13 != v14);
      v7 = *(this + 43);
    }

    v18 = 5 * *(this + 356);
    v20 = *(&v7 + 1);
    v19 = v7;
    if (v7 != *(&v7 + 1))
    {
      v21 = 5 * *(this + 356);
      do
      {
        v22 = *(v19 + 40) - *(v19 + 32);
        if (v22)
        {
          v23 = 0xCCCCCCCCCCCCCCCDLL * (v22 >> 4);
          if (v23 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v23;
          }

          do
          {
            v37 = v21 + 2;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v37 = v21 + 3;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v37 = v21 + 4;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v21 += 5;
            --v24;
          }

          while (v24);
        }

        v19 += 56;
      }

      while (v19 != v20);
      v7 = *(this + 43);
    }

    v26 = *(&v7 + 1);
    v25 = v7;
    if (v7 != *(&v7 + 1))
    {
      v27 = v18;
      do
      {
        v28 = *(v25 + 40) - *(v25 + 32);
        if (v28)
        {
          v29 = 0xCCCCCCCCCCCCCCCDLL * (v28 >> 4);
          if (v29 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29;
          }

          do
          {
            v37 = v27 + 1;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v37 = v27 + 2;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v37 = v27 + 3;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v37 = v27 + 4;
            std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
            v27 += 5;
            --v30;
          }

          while (v30);
        }

        v25 += 56;
      }

      while (v25 != v26);
      v7 = *(this + 43);
    }

    v37 = v18;
    v32 = *(&v7 + 1);
    for (i = v7; i != v32; i += 56)
    {
      v33 = *(i + 40) - *(i + 32);
      if (v33)
      {
        v34 = 0xCCCCCCCCCCCCCCCDLL * (v33 >> 4);
        if (v34 <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = v34;
        }

        do
        {
          std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v37);
          v36 = v37 + 1;
          std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
          v36 = v37 + 2;
          std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
          v36 = v37 + 3;
          std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
          v36 = v37 + 4;
          std::vector<unsigned short>::push_back[abi:ne200100](this + 104, &v36);
          v37 += 5;
          --v35;
        }

        while (v35);
      }
    }
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::set_state(LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t *this, const LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t::state_t *a2, char a3)
{
  v6 = *(this + 5);
  v7 = *this;
  v8 = *(this + 3);
  v9 = *(this + 4);
  if (v8 == v9)
  {
    v10 = NAN;
    v11 = NAN;
LABEL_3:
    v12 = v11;
    goto LABEL_12;
  }

  v14 = *(a2 + 13);
  v13 = *(a2 + 14);
  v15 = v9 - v8;
  v10 = 0.0;
  v11 = 0.0;
  if (v8 != v14)
  {
    v11 = 1.0;
    v16 = v9 == v14;
    v17 = (v14 - v8) / v15;
    if (!v16)
    {
      v11 = v17;
    }
  }

  if (v8 != v13)
  {
    v10 = 1.0;
    if (v9 != v13)
    {
      v10 = (v13 - v8) / v15;
    }
  }

  v12 = 0.0;
  if (v11 >= 0.0)
  {
    v12 = 1.0;
    if (v11 <= 1.0)
    {
      goto LABEL_3;
    }
  }

LABEL_12:
  v19 = *(v6 + 80);
  v18 = *(v6 + 84);
  v20 = *(v6 + 88);
  if (v10 <= 1.0)
  {
    v21 = v10;
  }

  else
  {
    v21 = 1.0;
  }

  if (v10 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  if (v12 <= v22)
  {
    v23 = v12;
  }

  else
  {
    v23 = v22;
  }

  if (v12 <= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v12;
  }

  *v25.i64 = LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t::state_t::transform(a2);
  v29 = *(a2 + 5);
  v30 = *(a2 + 24);
  v32 = *(v7 + 8);
  if (v32 <= 3)
  {
    v32 = 3;
  }

  *v6 = v25;
  *(v6 + 16) = v26;
  *v25.i32 = 1.0 - v24;
  *(v6 + 32) = v27;
  *(v6 + 48) = v28;
  *(v6 + 64) = v29;
  *(v6 + 80) = v30;
  v31 = v23;
  *(v6 + 84) = v31;
  *(v6 + 88) = v25.i32[0];
  *(v6 + 92) = (v32 - 3);
  if ((a3 & 1) != 0 || (v33 = *(this + 5), v25.i32[0] = v33[20], v19 != *v25.i32) || (v25.i32[0] = v33[21], v18 != *v25.i32) || (v25.i32[0] = v33[22], v20 != *v25.i32))
  {

    LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::update_caps(this, v25, v26);
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::update_caps(LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 5);
  v5 = *(*this + 8);
  v6 = *(*this + 16);
  if (v5 <= 3)
  {
    v5 = 3;
  }

  a2.i32[0] = *(v4 + 84);
  if (*(v4 + 80) * 0.5 * (*(v4 + 80) * 0.5) * 1.5625 >= 2.22507386e-308)
  {
    v7 = *(v4 + 80) * 0.5 * (*(v4 + 80) * 0.5) * 1.5625;
  }

  else
  {
    v7 = 2.22507386e-308;
  }

  v8 = v5 - 3;
  if (*a2.i32 <= 0.0)
  {
    v9 = 0;
    v11 = 0.0;
  }

  else
  {
    *a3.i64 = 1.0 / v8;
    *a3.i32 = *a3.i64;
    *a2.i32 = *a2.i32 / *a3.i32;
    v9 = *a2.i32;
    *a3.i32 = *a2.i32 - truncf(*a2.i32);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    LODWORD(v11) = vbslq_s8(v10, a3, a2).u32[0];
  }

  if (v8 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12 - 1;
  if (v12 - 1 < v9)
  {
    v9 = v12 - 1;
  }

  v14 = (v6 + 16 * v9);
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v19 = *(*this + 24);
  v20 = *_PromotedConst;
  if (v11 > 0.0)
  {
    v126 = v14[1];
    v128 = *v14;
    v130 = v14[2];
    v132 = v14[3];
    v121 = 1.0 - v11;
    *&v122 = (1.0 - v11) * (1.0 - v11);
    v124 = v121 * (v121 * v121);
    v146 = __invert_f4(v20);
    v21 = 0;
    *&v22 = 1.0 - v121;
    *(&v22 + 1) = v121;
    *&v23 = ((v121 * -2.0) + 1.0) + *&v122;
    *(&v23 + 1) = (*&v122 * -2.0) + (v121 * 2.0);
    *(&v23 + 1) = v122;
    *&v24 = (((v121 * -3.0) + 1.0) + (*&v122 * 3.0)) - v124;
    *(&v24 + 1) = ((*&v122 * -6.0) + (v124 * 3.0)) + (v121 * 3.0);
    *(&v24 + 2) = (v124 * -3.0) + (*&v122 * 3.0);
    *(&v24 + 3) = v124;
    v138 = xmmword_25611D020;
    v139 = v22;
    v140 = v23;
    v141 = v24;
    do
    {
      *(&v142 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v146.columns[0], COERCE_FLOAT(*(&v138 + v21))), v146.columns[1], *(&v138 + v21), 1), v146.columns[2], *(&v138 + v21), 2), v146.columns[3], *(&v138 + v21), 3);
      v21 += 16;
    }

    while (v21 != 64);
    v25 = 0;
    v26 = v142;
    v27 = v143;
    v28 = v144;
    v29 = v145;
    v138 = xmmword_25611D050;
    v139 = xmmword_25611D060;
    v140 = xmmword_25611D070;
    v141 = xmmword_25611D010;
    do
    {
      *(&v142 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v138 + v25))), v27, *(&v138 + v25), 1), v28, *(&v138 + v25), 2), v29, *(&v138 + v25), 3);
      v25 += 16;
    }

    while (v25 != 64);
    v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v126, v143.f32[0]), v128, v142.f32[0]), v130, v144.f32[0]), v132, v145.f32[0]);
    v16 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v126, *v143.f32, 1), v128, *v142.f32, 1), v130, *v144.f32, 1), v132, *v145.f32, 1);
    v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v126, v143, 2), v128, v142, 2), v130, v144, 2), v132, v145, 2);
    v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v126, v143, 3), v128, v142, 3), v130, v144, 3), v132, v145, 3);
    v20 = *_PromotedConst;
  }

  v30 = 1.79769313e308;
  __asm { FMOV            V19.4S, #4.0 }

  v36.i64[0] = 0x3E0000003E000000;
  v36.i64[1] = 0x3E0000003E000000;
  __asm { FMOV            V18.4S, #6.0 }

  do
  {
    v38 = vmulq_f32(vmlaq_f32(vmulq_f32(v16, _Q19), _Q19, v15), v36);
    v39 = vmulq_f32(vaddq_f32(v17, vmlaq_f32(v15, _Q18, v16)), v36);
    v40 = vmulq_f32(vmlaq_f32(vmulq_f32(v17, _Q19), _Q19, v16), v36);
    v18 = vmulq_f32(vaddq_f32(v18, vmlaq_f32(v16, _Q18, v17)), v36);
    v41 = vsubq_f32(v38, v39);
    v42 = vmulq_f32(v41, v41);
    v43 = vsubq_f32(v38, v40);
    v44 = vmulq_f32(v43, v43);
    v45 = vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v42, v42, 8uLL)), vadd_f32(vzip1_s32(*v44.i8, *v42.i8), vzip2_s32(*v44.i8, *v42.i8)));
    v46 = vsubq_f32(v38, v18);
    v47 = vmulq_f32(v46, v46);
    v48 = vaddv_f32(*v47.f32);
    if (v45.f32[0] < v45.f32[1])
    {
      v45.f32[0] = v45.f32[1];
    }

    v49 = v47.f32[2] + v48;
    _NF = (v47.f32[2] + v48) < v45.f32[0];
    v50 = vsubq_f32(v39, v40);
    v51 = vmulq_f32(v50, v50);
    if (!_NF)
    {
      v45.f32[0] = v49;
    }

    v52 = v51.f32[2] + vaddv_f32(*v51.f32);
    v53 = vsubq_f32(v39, v18);
    if (v52 >= v45.f32[0])
    {
      v45.f32[0] = v52;
    }

    v54 = vmulq_f32(v53, v53);
    v55 = vaddv_f32(*v54.f32);
    if ((v54.f32[2] + v55) >= v45.f32[0])
    {
      v45.f32[0] = v54.f32[2] + v55;
    }

    v56 = vsubq_f32(v40, v18);
    v57 = vmulq_f32(v56, v56);
    v58 = vaddv_f32(*v57.f32);
    if ((v57.f32[2] + v58) >= v45.f32[0])
    {
      v45.f32[0] = v57.f32[2] + v58;
    }

    if ((v45.i32[0] & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v45.f32[0] = 0.0;
    }

    v59 = v45.f32[0];
    v60 = v7 < v59 && v30 > v59;
    v15 = v38;
    v16 = v39;
    v17 = v40;
    v30 = v59;
  }

  while (v60);
  if (*(this + 7) != 5)
  {
    goto LABEL_68;
  }

  __asm
  {
    FMOV            V17.4S, #-3.0
    FMOV            V20.4S, #3.0
  }

  v63 = vsubq_f32(vmlaq_f32(vmlaq_f32(v18, _Q17, v40), _Q20, v39), v38);
  __asm { FMOV            V24.4S, #-6.0 }

  v65 = vmlaq_f32(vmlaq_f32(vmulq_f32(v39, _Q24), _Q20, v40), _Q20, v38);
  v72 = vmlaq_f32(v65, 0, v63);
  v66 = vmlaq_f32(vmulq_f32(v38, _Q17), _Q20, v40);
  v67 = vaddq_f32(v66, vmlaq_f32(vmulq_f32(v72, 0), 0, vmlaq_f32(v65, 0, vaddq_f32(v63, v63))));
  v68 = vdivq_f32(vmlaq_f32(vaddq_f32(v38, vmlaq_f32(v40, _Q19, v39)), 0, vmlaq_f32(v66, 0, v72)), _Q18);
  v69 = vdivq_f32(v67, _Q18);
  v70 = vmulq_f32(v69, v69);
  v72.f32[0] = v70.f32[2] + vaddv_f32(*v70.f32);
  *v70.f32 = vrsqrte_f32(v72.u32[0]);
  *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v70.f32, *v70.f32)));
  *v72.f32 = vrsqrts_f32(v72.u32[0], vmul_f32(*v70.f32, *v70.f32));
  v71 = vmulq_n_f32(v69, vmul_f32(*v70.f32, *v72.f32).f32[0]);
  **(this + 6) = v38;
  *(*(this + 6) + 16) = v39;
  *(*(this + 6) + 32) = v40;
  *(*(this + 6) + 48) = v68;
  *(*(this + 6) + 64) = v71;
  v72.i32[0] = *(v4 + 88);
  if (v72.f32[0] <= 0.0)
  {
    v74 = 0;
    v71.i32[0] = 0;
  }

  else
  {
    *v71.i64 = v8;
    v73 = 1.0 / v8;
    v72.f32[0] = v72.f32[0] / v73;
    v74 = v72.f32[0];
    *v71.i32 = v72.f32[0] - truncf(v72.f32[0]);
    v75.i64[0] = 0x8000000080000000;
    v75.i64[1] = 0x8000000080000000;
    v71.i32[0] = vbslq_s8(v75, v71, v72).u32[0];
  }

  if (v13 < v74)
  {
    v74 = v13;
  }

  v76 = v6 + 16 * (v19 - v74);
  v78 = *(v76 - 64);
  v77 = *(v76 - 48);
  v79 = *(v76 - 32);
  v80 = *(v76 - 16);
  if (*v71.i32 > 0.0)
  {
    v125 = *(v76 - 48);
    v127 = *(v76 - 32);
    v129 = *(v76 - 64);
    v131 = *(v76 - 16);
    v133 = _Q24;
    v134 = _Q20;
    v135 = _Q17;
    v136 = _Q19;
    v137 = _Q18;
    v123 = 1.0 - *v71.i32;
    v147 = __invert_f4(v20);
    v81 = 0;
    LODWORD(v82) = 0;
    *(&v82 + 1) = v123;
    *&v83 = 0;
    HIDWORD(v83) = 0;
    *(&v83 + 2) = *(&v82 + 1) * *(&v82 + 1);
    *&v84 = 0;
    DWORD2(v84) = 0;
    *(&v84 + 3) = v123 * (*(&v82 + 1) * *(&v82 + 1));
    v138 = xmmword_25611D020;
    v139 = v82;
    v140 = v83;
    v141 = v84;
    do
    {
      *(&v142 + v81) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v147.columns[0], COERCE_FLOAT(*(&v138 + v81))), v147.columns[1], *(&v138 + v81), 1), v147.columns[2], *(&v138 + v81), 2), v147.columns[3], *(&v138 + v81), 3);
      v81 += 16;
    }

    while (v81 != 64);
    v85 = 0;
    v86 = v142;
    v87 = v143;
    v88 = v144;
    v89 = v145;
    v138 = xmmword_25611D050;
    v139 = xmmword_25611D060;
    v140 = xmmword_25611D070;
    v141 = xmmword_25611D010;
    _Q19 = v136;
    _Q18 = v137;
    do
    {
      *(&v142 + v85) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(*(&v138 + v85))), v87, *(&v138 + v85), 1), v88, *(&v138 + v85), 2), v89, *(&v138 + v85), 3);
      v85 += 16;
    }

    while (v85 != 64);
    v78 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v125, v143.f32[0]), v129, v142.f32[0]), v127, v144.f32[0]), v131, v145.f32[0]);
    v77 = vmlaq_lane_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v125, *v143.f32, 1), v129, *v142.f32, 1), v127, *v144.f32, 1), v131, *v145.f32, 1);
    v79 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v125, v143, 2), v129, v142, 2), v127, v144, 2), v131, v145, 2);
    v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v125, v143, 3), v129, v142, 3), v127, v144, 3), v131, v145, 3);
    _Q20 = v134;
    _Q17 = v135;
    _Q24 = v133;
  }

  v90 = 1.79769313e308;
  v91.i64[0] = 0x3E0000003E000000;
  v91.i64[1] = 0x3E0000003E000000;
  do
  {
    v78 = vmulq_f32(vaddq_f32(v79, vmlaq_f32(v78, _Q18, v77)), v91);
    v92 = vmulq_f32(vmlaq_f32(vmulq_f32(v79, _Q19), _Q19, v77), v91);
    v93 = vmulq_f32(vaddq_f32(v80, vmlaq_f32(v77, _Q18, v79)), v91);
    v94 = vmlaq_f32(vmulq_f32(v80, _Q19), _Q19, v79);
    v95 = vsubq_f32(v78, v92);
    v96 = vmulq_f32(v95, v95);
    v97 = vsubq_f32(v78, v93);
    v98 = vmulq_f32(v97, v97);
    v80 = vmulq_f32(v94, v91);
    v99 = vadd_f32(vzip1_s32(*&vextq_s8(v98, v98, 8uLL), *&vextq_s8(v96, v96, 8uLL)), vadd_f32(vzip1_s32(*v98.i8, *v96.i8), vzip2_s32(*v98.i8, *v96.i8)));
    v100 = vsubq_f32(v78, v80);
    v101 = vmulq_f32(v100, v100);
    if (v99.f32[0] < v99.f32[1])
    {
      v99.f32[0] = v99.f32[1];
    }

    v102 = v101.f32[2] + vaddv_f32(*v101.f32);
    v103 = vsubq_f32(v92, v93);
    if (v102 >= v99.f32[0])
    {
      v99.f32[0] = v102;
    }

    v104 = vmulq_f32(v103, v103);
    v105 = vaddv_f32(*v104.f32);
    if ((v104.f32[2] + v105) >= v99.f32[0])
    {
      v99.f32[0] = v104.f32[2] + v105;
    }

    v106 = vsubq_f32(v92, v80);
    v107 = vmulq_f32(v106, v106);
    v108 = v107.f32[2] + vaddv_f32(*v107.f32);
    v109 = vsubq_f32(v93, v80);
    v110 = vmulq_f32(v109, v109);
    v111 = vaddv_f32(*v110.f32);
    if (v108 >= v99.f32[0])
    {
      v99.f32[0] = v108;
    }

    if ((v110.f32[2] + v111) >= v99.f32[0])
    {
      v99.f32[0] = v110.f32[2] + v111;
    }

    if ((v99.i32[0] & 0x7FFFFFFFu) >= 0x7F800000)
    {
      v99.f32[0] = 0.0;
    }

    v112 = v99.f32[0];
    v113 = v7 < v112 && v90 > v112;
    v77 = v92;
    v79 = v93;
    v90 = v112;
  }

  while (v113);
  if (*(this + 9) == 5)
  {
    v114 = vsubq_f32(vmlaq_f32(vmlaq_f32(v80, _Q17, v93), _Q20, v92), v78);
    v115 = vmlaq_f32(vmlaq_f32(vmulq_f32(v92, _Q24), _Q20, v93), _Q20, v78);
    v116 = vaddq_f32(v115, v114);
    v117 = vmlaq_f32(vmulq_f32(v78, _Q17), _Q20, v93);
    v118 = vdivq_f32(vaddq_f32(vaddq_f32(v78, vmlaq_f32(v93, _Q19, v92)), vaddq_f32(v117, v116)), _Q18);
    v119 = vdivq_f32(vaddq_f32(v117, vaddq_f32(v116, vaddq_f32(v115, vaddq_f32(v114, v114)))), _Q18);
    v120 = vmulq_f32(v119, v119);
    v116.f32[0] = v120.f32[2] + vaddv_f32(*v120.f32);
    *v120.f32 = vrsqrte_f32(v116.u32[0]);
    *v120.f32 = vmul_f32(*v120.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v120.f32, *v120.f32)));
    **(this + 8) = v92;
    *(*(this + 8) + 16) = v93;
    *(*(this + 8) + 32) = v80;
    *(*(this + 8) + 48) = v118;
    *(*(this + 8) + 64) = vmulq_n_f32(v119, vmul_f32(*v120.f32, vrsqrts_f32(v116.u32[0], vmul_f32(*v120.f32, *v120.f32))).f32[0]);
  }

  else
  {
LABEL_68:
    __break(1u);
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(uint64_t a1, void *a2, int8x16_t **a3, int8x16_t a4, int8x16_t a5)
{
  v5 = *(a1 + 688);
  if (*a2 < (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 696) - v5) >> 3)))
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::set_state((v5 + 56 * *a2), a3, a4, a5);
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::set_state(void *a1, int8x16_t **a2, int8x16_t a3, int8x16_t a4)
{
  v5 = *a2;
  v4 = a2[1];
  if (a1[3] == v4 - *a2)
  {
    if (v5 != v4)
    {
      v6 = a1[2];
      do
      {
        v7 = *v5++;
        a3 = v7;
        *(v6 + 8) = v7.i32[2];
        *v6 = v7.i64[0];
        v6 += 16;
      }

      while (v5 != v4);
    }

    v8 = a1[4];
    v9 = a1[5];
    while (v8 != v9)
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::update_caps(v8, a3, a4);
      v8 = (v8 + 80);
    }
  }

  else
  {
    __break(1u);
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(uint64_t a1, void *a2, LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t::state_t *a3)
{
  v3 = *(a1 + 688);
  if (*a2 < (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 696) - v3) >> 3)))
  {
    v4 = a2[1];
    v6 = (v3 + 56 * *a2 + 32);
    v5 = *v6;
    if (v4 < 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 4))
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t::set_state((v5 + 80 * v4), a3, 0);
    }
  }
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_render_pass_descriptor(uint64_t a1, void *a2)
{
  v23 = a2;
  v3 = [v23 texture];
  v4 = [v3 width];
  v5 = [v3 height];
  if (*(a1 + 608) != v4 || *(a1 + 616) != v5)
  {
    *(a1 + 608) = v4;
    *(a1 + 616) = v5;
    v6 = *(a1 + 536);
    *(a1 + 536) = 0;

    v7 = *(a1 + 624);
    *(a1 + 624) = 0;

    v8 = *(a1 + 632);
    *(a1 + 632) = 0;

    v4 = *(a1 + 608);
    v5 = *(a1 + 616);
  }

  if (v5 * v4)
  {
    v9 = *(a1 + 24);
    v10 = [v9 supportsTextureSampleCount:4];
    v11 = *(a1 + 536);
    v12 = v11;
    if (!v11)
    {
      if (v10)
      {
        v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:objc_msgSend(v3 width:"pixelFormat") height:*(a1 + 608) mipmapped:*(a1 + 616), 0];
        [v13 setTextureType:4];
        [v13 setSampleCount:4];
        [v13 setUsage:0];
        [v13 setStorageMode:2];
        v14 = [v9 newTextureWithDescriptor:v13];
        v15 = *(a1 + 624);
        *(a1 + 624) = v14;
      }

      v16 = objc_alloc_init(MEMORY[0x277CD6F50]);
      v17 = *(a1 + 536);
      *(a1 + 536) = v16;

      v12 = *(a1 + 536);
    }

    v18 = [v12 colorAttachments];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = v19;
    if (v11)
    {
      if (!v10)
      {
        goto LABEL_16;
      }
    }

    else
    {
      [v19 setLoadAction:2];
      [v20 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      if (!v10)
      {
        [v20 setStoreAction:1];
LABEL_16:
        [v20 setTexture:v3];
LABEL_17:
        if (!v11 && *(a1 + 632))
        {
          v21 = [*(a1 + 536) depthAttachment];
          [v21 setTexture:*(a1 + 632)];
          [v21 setLoadAction:2];
          [v21 setStoreAction:0];
          [v21 setClearDepth:1.0];
          v22 = [*(a1 + 536) stencilAttachment];
          [v22 setTexture:*(a1 + 632)];
          [v22 setLoadAction:2];
          [v22 setStoreAction:0];
          [v22 setClearStencil:0];
        }

        goto LABEL_21;
      }

      [v20 setStoreAction:2];
    }

    [v20 setTexture:*(a1 + 624)];
    [v20 setResolveTexture:v3];
    goto LABEL_17;
  }

LABEL_21:
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(LAUI_uniform_cubic_b_spline_renderer::renderer_t *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    if (*(this + 87) != *(this + 86))
    {
      v2 = *(this + 85) + 1;
      *(this + 85) = v2;
      v3 = atomic_load(this + 592);
      v4 = v3 + 1 - 3 * ((1431655766 * (v3 + 1)) >> 32);
      v5 = atomic_load(*(this + 72));
      v6 = v5 - 3 * ((1431655766 * v5) >> 32);
      if (v4 == v6)
      {
        NSLog(&cfstr_Cubicbsplinere.isa, this, v2);
      }

      if ([*(v1 + 2) isDrawableAvailable])
      {
        v7 = [*(v1 + 2) currentDrawable];
      }

      else
      {
        v7 = 0;
      }

      v164 = v7;
      v165 = [v7 texture];
      if (v4 != v6)
      {
        v9 = @"CubicBSplineRenderer (%p): missing drawable, dropping frame %llu.";
        if (v7 && v165)
        {
          LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_render_pass_descriptor(v1, v7);
          if (*(v1 + 67))
          {
            LAUI_uniform_cubic_b_spline_renderer::renderer_t::rebuild_cap_control_point_indices(v1);
            add = atomic_fetch_add(v1 + 592, 1u);
            if (3 * ((171 * add) >> 9))
            {
              atomic_fetch_add(v1 + 592, 0xFDu);
            }

            v11 = *(v1 + 3);
            v163 = [*(v1 + 66) commandBuffer];
            if (!*(v1 + 75))
            {
              v12 = [v163 computeCommandEncoder];
              v13 = *(v1 + 5);
              [v12 setComputePipelineState:v13];

              v14 = [v11 newBufferWithLength:60 options:33];
              v15 = *(v1 + 75);
              *(v1 + 75) = v14;

              [v12 setBuffer:*(v1 + 75) offset:0 atIndex:0];
              v181 = vdupq_n_s64(1uLL);
              v182 = 1;
              v179 = v181;
              v180 = 1;
              [v12 dispatchThreadgroups:&v181 threadsPerThreadgroup:&v179];
              [v12 endEncoding];
            }

            v16 = *(v1 + 69);
            v162 = [v165 width];
            v161 = [v165 height];
            v175 = (v16 + 48 * (add - 3 * ((171 * add) >> 9)));
            v17 = *(v1 + 181);
            v18 = 1;
            if (*(v1 + 180) >= 1.0 && v17 <= 0.0)
            {
              v18 = *(v1 + 182) > 0.0;
            }

            v19 = *(v1 + 93);
            v20 = *(v1 + 92);
            v21 = v11;
            if (!*v175 || [*v175 length] != v19 - v20)
            {
              if (v19 == v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = [v21 newBufferWithLength:v19 - v20 options:1];
              }

              v24 = *v175;
              *v175 = v22;
            }

            if (*v175)
            {
              memcpy([*v175 contents], v20, v19 - v20);
            }

            v25 = *(v1 + 96);
            v26 = *(v1 + 95);
            v27 = v21;
            v28 = v175[1];
            if (!v28 || [v28 length] != v25 - v26)
            {
              if (v25 == v26)
              {
                v29 = 0;
              }

              else
              {
                v29 = [v27 newBufferWithLength:v25 - v26 options:1];
              }

              v30 = v175[1];
              v175[1] = v29;
            }

            v31 = v175[1];
            if (v31)
            {
              memcpy([v31 contents], v26, v25 - v26);
            }

            v32 = *(v1 + 102);
            v33 = *(v1 + 101);
            v34 = v27;
            v35 = v175[2];
            if (!v35 || [v35 length] != v32 - v33)
            {
              if (v32 == v33)
              {
                v36 = 0;
              }

              else
              {
                v36 = [v34 newBufferWithLength:v32 - v33 options:1];
              }

              v37 = v175[2];
              v175[2] = v36;
            }

            v38 = v175[2];
            if (v38)
            {
              memcpy([v38 contents], v33, v32 - v33);
            }

            v39 = *(v1 + 105);
            v40 = *(v1 + 104);
            v41 = v34;
            v42 = v175[3];
            if (!v42 || [v42 length] != v39 - v40)
            {
              if (v39 == v40)
              {
                v43 = 0;
              }

              else
              {
                v43 = [v41 newBufferWithLength:v39 - v40 options:1];
              }

              v44 = v175[3];
              v175[3] = v43;
            }

            v45 = v175[3];
            if (v45)
            {
              memcpy([v45 contents], v40, v39 - v40);
            }

            v46 = v41;
            v47 = *(v1 + 99);
            v48 = *(v1 + 98);
            v49 = v46;
            v50 = v175[4];
            if (!v50 || [v50 length] != v47 - v48)
            {
              if (v47 == v48)
              {
                v51 = 0;
              }

              else
              {
                v51 = [v49 newBufferWithLength:v47 - v48 options:1];
              }

              v52 = v175[4];
              v175[4] = v51;
            }

            v53 = v175[4];
            if (v53)
            {
              memcpy([v53 contents], v48, v47 - v48);
            }

            v140 = *(v1 + 9);
            v141 = *(v1 + 11);
            v145 = *(v1 + 12);
            v146 = *(v1 + 14);
            v142 = *(v1 + 13);
            v143 = *(v1 + 10);
            v144 = *(v1 + 15);
            v153 = *(v1 + 20);
            v154 = *(v1 + 18);
            v150 = *(v1 + 19);
            v151 = *(v1 + 17);
            v152 = *(v1 + 22);
            v149 = *(v1 + 21);
            v147 = *(v1 + 16);
            v148 = *(v1 + 23);
            v155 = *(v1 + 25);
            v166 = *(v1 + 28);
            v168 = *(v1 + 26);
            v156 = *(v1 + 27);
            v157 = *(v1 + 24);
            v173 = *(v1 + 30);
            v170 = *(v1 + 32);
            v158 = *(v1 + 31);
            v159 = *(v1 + 29);
            v172 = v49;
            v54 = v175[5];
            if (!v54 || [v54 length] != 192)
            {
              v55 = [v172 newBufferWithLength:192 options:1];
              v56 = v175[5];
              v175[5] = v55;
            }

            v57 = v175[5];
            if (v57)
            {
              v58 = [v57 contents];
              *v58 = vcvt_hight_f32_f64(vcvt_f32_f64(v140), v143);
              v58[1] = vcvt_hight_f32_f64(vcvt_f32_f64(v141), v145);
              v58[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v142), v146);
              v58[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v144), v147);
              v58[4] = vcvt_hight_f32_f64(vcvt_f32_f64(v151), v154);
              v58[5] = vcvt_hight_f32_f64(vcvt_f32_f64(v150), v153);
              v58[6] = vcvt_hight_f32_f64(vcvt_f32_f64(v149), v152);
              v58[7] = vcvt_hight_f32_f64(vcvt_f32_f64(v148), v157);
              v58[8] = vcvt_hight_f32_f64(vcvt_f32_f64(v155), v168);
              v58[9] = vcvt_hight_f32_f64(vcvt_f32_f64(v156), v166);
              v58[10] = vcvt_hight_f32_f64(vcvt_f32_f64(v159), v173);
              v58[11] = vcvt_hight_f32_f64(vcvt_f32_f64(v158), v170);
            }

            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v160 = v18;
            v174 = v1 + 648;
            while (2)
            {
              v63 = v1 + 648;
              while (1)
              {
                v64 = v61;
                v65 = *&v63[8 * v61];
                if (v65)
                {
                  if ([v65 width] == v162 && objc_msgSend(*&v174[8 * v64], "height") == v161)
                  {
                    break;
                  }
                }

                v66 = [*(v1 + 2) pixelFormat];
                if (v62)
                {
                  [v62 setPixelFormat:v66];
                }

                else
                {
                  v62 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v66 width:v162 height:v161 mipmapped:0];
                  [v62 setStorageMode:2];
                  [v62 setUsage:7];
                }

                v62 = v62;
                v67 = [v172 newTextureWithDescriptor:v62];
                v63 = v1 + 648;
                v68 = *&v174[8 * v64];
                *&v174[8 * v64] = v67;

                v60 = 1;
                v61 = 1;
                if (v64)
                {
                  if ((v59 & 1) == 0)
                  {
                    *(v1 + 83) = 0;
                    *(v1 + 640) = 0;
                    goto LABEL_95;
                  }

                  goto LABEL_85;
                }
              }

              v59 = 1;
              v61 = 1;
              if (!v64)
              {
                continue;
              }

              break;
            }

            if (v60)
            {
LABEL_85:

              goto LABEL_86;
            }

            if (v17 > 0.0 || v18)
            {
              goto LABEL_96;
            }

LABEL_86:
            if (*(v1 + 640) != 1)
            {
              goto LABEL_96;
            }

            *(v1 + 83) = 0;
            *(v1 + 640) = 0;
            v69 = *(v1 + 68);
            if (!v69)
            {
              v70 = objc_alloc_init(MEMORY[0x277CD6F50]);
              v71 = *(v1 + 68);
              *(v1 + 68) = v70;

              v72 = [*(v1 + 68) colorAttachments];
              v73 = 0;
              v74 = 1;
              do
              {
                v75 = v74;
                v76 = [v72 objectAtIndexedSubscript:v73];
                [v76 setLoadAction:2];
                [v76 setClearColor:{0.0, 0.0, 0.0, 0.0}];
                [v76 setStoreAction:1];

                v74 = 0;
                v73 = 1;
              }

              while ((v75 & 1) != 0);

              v69 = *(v1 + 68);
            }

            v62 = [v69 colorAttachments];
            v77 = 0;
            v78 = 1;
            do
            {
              v79 = v78;
              v80 = [v62 objectAtIndexedSubscript:v77];
              [v80 setTexture:*&v174[8 * v77]];

              v78 = 0;
              v77 = 1;
            }

            while ((v79 & 1) != 0);
            v81 = [v163 renderCommandEncoderWithDescriptor:*(v1 + 68)];
            [v81 endEncoding];

LABEL_95:
LABEL_96:
            v193[0] = [v163 renderCommandEncoderWithDescriptor:*(v1 + 67)];
            [v193[0] setTriangleFillMode:*(v1 + 128)];
            v82 = *(v1 + 4);
            if (v82)
            {
              [v193[0] setDepthStencilState:v82];
              [v193[0] setFrontFacingWinding:0];
              [v193[0] setCullMode:2];
            }

            [v193[0] setVertexBuffer:*v175 offset:0 atIndex:0];
            [v193[0] setVertexBuffer:v175[4] offset:0 atIndex:1];
            [v193[0] setVertexBuffer:v175[5] offset:0 atIndex:2];
            v192 = 0;
            v83 = v193[0];
            v84 = *(v1 + 6);
            [v83 setRenderPipelineState:v84];

            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:0 instanceStride:0];
            v85 = *(v1 + 86);
            v167 = *(v1 + 87);
            v171 = v1;
            if (v85 != v167)
            {
              v86 = 0;
              v87 = 0;
              v88 = 0;
              while (1)
              {
                v89 = v85[1];
                if (v89 <= 3)
                {
                  v89 = 3;
                }

                v90 = v89 - 3;
                v92 = v85[4];
                v91 = v85[5];
                v93 = v91 - v92;
                if (v91 != v92)
                {
                  break;
                }

LABEL_125:
                v86 += 8 * v90;
                v85 += 7;
                if (v85 == v167)
                {
                  goto LABEL_126;
                }
              }

              v94 = v88;
              [v193[0] setVertexBufferOffset:? atIndex:?];
              v95 = 0xCCCCCCCCCCCCCCCDLL * (v93 >> 4);
              v96 = v87;
              v97 = *(v171 + 98) + 96 * v87;
              v169 = 0xCCCCCCCCCCCCCCE0 * (v93 >> 4);
              v98 = (v97 - 0x3333333333333320 * (v93 >> 4));
              v99 = v97;
              while (1)
              {
                while (v99[19] >= 0.0039216 && (v99[21] + v99[22]) < 1.0)
                {
                  v101 = v99;
LABEL_111:
                  if (v98 != v101)
                  {
                    v99 = v101;
                    while (v99[19] >= 0.0039216 && (v99[21] + v99[22]) < 1.0)
                    {
                      v99 += 24;
                      if (v99 == v98)
                      {
                        v99 = v98;
                        break;
                      }
                    }

                    if (v98 != v101 && v99 != v101)
                    {
                      [v193[0] drawIndexedPatches:4 patchStart:0 patchCount:v90 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:v175[1] controlPointIndexBufferOffset:v86 instanceCount:0xAAAAAAAAAAAAAAABLL * ((v99 - v101) >> 5) baseInstance:0xAAAAAAAAAAAAAAABLL * ((v101 - v97) >> 5)];
                    }

                    if (v98 != v99)
                    {
                      continue;
                    }
                  }

                  v87 = v95 + v96;
                  v88 = v169 + v94;
                  v1 = v171;
                  goto LABEL_125;
                }

                v99 += 24;
                if (v99 == v98)
                {
                  v101 = v98;
                  goto LABEL_111;
                }
              }
            }

LABEL_126:
            [v193[0] setVertexBuffer:v175[2] offset:0 atIndex:0];
            v190 = 3;
            v191 = 0;
            v188 = 0;
            v189 = 0;
            [v193[0] setRenderPipelineState:*(v1 + 7)];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:12 instanceStride:0];
            v103 = *(v1 + 86);
            v104 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v105 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v103, v104, &v181, &v179).n128_u64[0];
            v189 = 0;
            v190 = 4;
            v188 = 0;
            [v193[0] setRenderPipelineState:{*(v1 + 8), v105}];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:36 instanceStride:0];
            v106 = *(v1 + 86);
            v107 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v108 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v106, v107, &v181, &v179).n128_u64[0];
            v189 = 0;
            v190 = 5;
            v188 = 0;
            [v193[0] setRenderPipelineState:{*(v1 + 9), v108}];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:48 instanceStride:0];
            v109 = *(v1 + 86);
            v110 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v111 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v109, v110, &v181, &v179).n128_u64[0];
            v189 = 0;
            v190 = 3;
            v188 = 0;
            [v193[0] setRenderPipelineState:{*(v1 + 10), v111}];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:24 instanceStride:0];
            v112 = *(v1 + 86);
            v113 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v114 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v112, v113, &v181, &v179).n128_u64[0];
            v189 = 0;
            v190 = 4;
            v188 = 0;
            [v193[0] setRenderPipelineState:{*(v1 + 11), v114}];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:36 instanceStride:0];
            v115 = *(v1 + 86);
            v116 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v117 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v115, v116, &v181, &v179).n128_u64[0];
            v189 = 0;
            v190 = 5;
            v188 = 0;
            [v193[0] setRenderPipelineState:{*(v1 + 12), v117}];
            [v193[0] setTessellationFactorBuffer:*(v1 + 75) offset:48 instanceStride:0];
            v118 = *(v1 + 86);
            v119 = *(v1 + 87);
            v181.i64[0] = v193;
            v181.i64[1] = &v188;
            v182 = &v192;
            v183 = v1;
            v184 = &v189;
            v185 = &v190;
            v186 = v175;
            v187 = &v191;
            *&v120 = std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>(v118, v119, &v181, &v179).n128_u64[0];
            [v193[0] endEncoding];
            v121 = v17 > 0.0 || v160;
            if (v121 != 1)
            {
              goto LABEL_141;
            }

            v122 = [v163 computeCommandEncoder];
            if (!v160)
            {
LABEL_138:
              if (v17 > 0.0)
              {
                *(v1 + 640) = 1;
                v129 = *(v1 + 13);
                [v122 setComputePipelineState:v129];

                [v122 setBytes:v1 + 732 length:4 atIndex:0];
                *(v1 + 83) = (*(v1 + 166) & 1) == 0;
                [v122 setTexture:v165 atIndex:0];
                [v122 setTexture:*&v174[8 * *(v1 + 83)] atIndex:1];
                v130 = *(v1 + 13);
                v131 = [v130 threadExecutionWidth];
                v132 = [v130 maxTotalThreadsPerThreadgroup] / v131;

                v181.i64[0] = (v131 + v162 - 1) / v131;
                v181.i64[1] = (v132 + v161 - 1) / v132;
                v182 = 1;
                v179.i64[0] = v131;
                v179.i64[1] = v132;
                v180 = 1;
                [v122 dispatchThreadgroups:&v181 threadsPerThreadgroup:&v179];
                v133 = *(v1 + 14);
                [v122 setComputePipelineState:v133];

                [v122 setTexture:*&v174[8 * *(v1 + 83)] atIndex:0];
                v134 = (*(v1 + 166) & 1) == 0;
                *(v1 + 83) = v134;
                [v122 setTexture:*&v174[8 * v134] atIndex:1];
                v135 = *(v1 + 14);
                v136 = [v135 threadExecutionWidth];
                v137 = [v135 maxTotalThreadsPerThreadgroup] / v136;

                v181.i64[0] = (v136 + v162 - 1) / v136;
                v181.i64[1] = (v137 + v161 - 1) / v137;
                v182 = 1;
                v179.i64[0] = v136;
                v179.i64[1] = v137;
                v180 = 1;
                [v122 dispatchThreadgroups:&v181 threadsPerThreadgroup:&v179];
              }

              [v122 endEncoding];

LABEL_141:
              [v163 presentDrawable:v164];
              v176[0] = MEMORY[0x277D85DD0];
              v176[1] = 3321888768;
              v176[2] = ___ZN36LAUI_uniform_cubic_b_spline_renderer10renderer_t6renderEv_block_invoke;
              v176[3] = &__block_descriptor_48_ea8_32c71_ZTSKZN36LAUI_uniform_cubic_b_spline_renderer10renderer_t6renderEvE3__7_e28_v16__0___MTLCommandBuffer__8l;
              v138 = *(v1 + 72);
              v139 = *(v1 + 73);
              if (v139)
              {
                atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
                v177 = v138;
                v178 = v139;
                atomic_fetch_add_explicit(&v139->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              else
              {
                v177 = *(v1 + 72);
                v178 = 0;
              }

              [v163 addCompletedHandler:v176];
              if (v139)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v139);
              }

              [v163 commit];
              if (v178)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v178);
              }

              v8 = 1;
              goto LABEL_27;
            }

            if (*(v1 + 640) == 1)
            {
              v123 = *&v174[8 * *(v1 + 83)];
              v124 = v123;
              if (!v123 || [v123 width] == v162 || objc_msgSend(v124, "height") == v161)
              {
                goto LABEL_137;
              }
            }

            v124 = 0;
LABEL_137:
            v125 = *(v1 + 15);
            [v122 setComputePipelineState:v125];

            [v122 setBytes:v1 + 720 length:12 atIndex:0];
            [v122 setTexture:v165 atIndex:0];
            [v122 setTexture:v124 atIndex:1];
            v126 = *(v1 + 15);
            v127 = [v126 threadExecutionWidth];
            v128 = [v126 maxTotalThreadsPerThreadgroup] / v127;

            v181.i64[0] = (v162 + v127 - 1) / v127;
            v181.i64[1] = (v161 + v128 - 1) / v128;
            v182 = 1;
            v179.i64[0] = v127;
            v179.i64[1] = v128;
            v180 = 1;
            [v122 dispatchThreadgroups:&v181 threadsPerThreadgroup:&v179];
            v1 = v171;

            goto LABEL_138;
          }

          v9 = @"CubicBSplineRenderer (%p): missing render pass descriptor, dropping frame %llu.";
        }

        NSLog(&v9->isa, v1, v2);
      }

      v8 = 0;
LABEL_27:

      return v8;
    }
  }

  return 1;
}

__n128 std::for_each[abi:ne200100]<std::__wrap_iter<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t *>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::render(void)::$_2>@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = **(a3 + 8);
    do
    {
      v8 = *(a3 + 24);
      v10 = *(v6 + 32);
      v9 = *(v6 + 40);
      [**a3 setVertexBufferOffset:v7 atIndex:1];
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 4);
      if (v9 != v10)
      {
        v12 = 0;
        v13 = 0;
        if (v11 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v11;
        }

        v15 = *(a3 + 40);
        v16 = *(a3 + 56);
        do
        {
          v17 = (*(v8 + 784) + 96 * **(a3 + 32) + v12);
          if (v17[19] >= 0.0039216 && (v17[21] + v17[22]) < 1.0)
          {
            [**a3 drawIndexedPatches:*v15 patchStart:0 patchCount:1 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:*(*(a3 + 48) + 24) controlPointIndexBufferOffset:*v16 instanceCount:1 baseInstance:v13];
            v15 = *(a3 + 40);
            v16 = *(a3 + 56);
          }

          *v16 += 2 * *v15;
          ++v13;
          v12 += 96;
        }

        while (v14 != v13);
      }

      **(a3 + 32) += v11;
      v19 = *(a3 + 8);
      v7 = *v19 + 96 * v11;
      *v19 = v7;
      v6 += 56;
    }

    while (v6 != a2);
  }

  v20 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v20;
  result = *(a3 + 32);
  v22 = *(a3 + 48);
  *(a4 + 32) = result;
  *(a4 + 48) = v22;
  return result;
}

uint64_t ___ZN36LAUI_uniform_cubic_b_spline_renderer10renderer_t6renderEv_block_invoke(uint64_t result)
{
  if (3 * (atomic_fetch_add(*(result + 32), 1u) / 3u))
  {
    atomic_fetch_add(*(result + 32), 0xFDu);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_32c71_ZTSKZN36LAUI_uniform_cubic_b_spline_renderer10renderer_t6renderEvE3__7(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c71_ZTSKZN36LAUI_uniform_cubic_b_spline_renderer10renderer_t6renderEvE3__7(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

id LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t(uint64_t a1, void *a2)
{
  result = a2;
  *a1 = result;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  if (result)
  {

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::~shared_state_t(id *this)
{
  for (i = 9; i != 6; --i)
  {
  }

  do
  {
  }

  while (i != 3);
}

LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t *LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t(LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t *this, id *a2)
{
  *this = *a2;
  *(this + 1) = a2[1];
  *(this + 2) = a2[2];
  *(this + 3) = a2[3];
  for (i = 4; i != 7; ++i)
  {
    *(this + i * 8) = a2[i];
  }

  do
  {
    *(this + i * 8) = a2[i];
    ++i;
  }

  while (i != 10);
  *(this + 10) = a2[10];
  *(this + 11) = a2[11];
  *(this + 12) = a2[12];
  return this;
}

uint64_t std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::__emplace_back_slow_path<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>(void *a1, __int128 *a2)
{
  v3 = 0x555555555555555;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + 1;
  if (v7 > 0x555555555555555)
  {
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - v4) >> 4) > v7)
  {
    v7 = 0x5555555555555556 * ((a1[2] - v4) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - v4) >> 4) < 0x2AAAAAAAAAAAAAALL)
  {
    v3 = v7;
  }

  v21 = a1;
  if (v3)
  {
    std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::allocate_at_least[abi:ne200100](a1, v3);
  }

  v9 = (16 * (v6 >> 4));
  v18 = 0;
  v19 = v9;
  *(&v20 + 1) = 0;
  v10 = *a2;
  *a2 = 0u;
  *v9 = v10;
  v11 = a2[1];
  a2[1] = 0u;
  *(v9 + 1) = v11;
  v12 = a2[2];
  a2[2] = 0u;
  *(v9 + 2) = v12;
  *&v20 = v9 + 6;
  v13 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>(a1, v4, v5, (v9 - v6));
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::~__split_buffer(&v18);
  return v17;
}

void sub_256101E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>(uint64_t a1, void **a2, void **a3, _OWORD *a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *v7 = 0uLL;
      *a4 = v8;
      v9 = *(v7 + 1);
      *(v7 + 1) = 0uLL;
      a4[1] = v9;
      v10 = *(v7 + 2);
      *(v7 + 2) = 0uLL;
      a4[2] = v10;
      v7 += 6;
      a4 += 3;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>>::destroy[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t,void,0>(a1, v5);
      v5 += 6;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator_traits<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>>::destroy[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t,void,0>(uint64_t a1, void **a2)
{
  v3 = *a2;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 6;
      std::allocator_traits<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>>::destroy[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 48;
    std::allocator_traits<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t>>::destroy[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::buffers_t,void,0>(v5, (v4 - 48));
  }
}

uint64_t std::vector<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__emplace_back_slow_path<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t> const&,LAUI_uniform_cubic_b_spline_renderer::spline_t const&,std::span<LAUI_uniform_cubic_b_spline_renderer_private::control_point,18446744073709551615ul> const&,LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t const&>(uint64_t *a1, void *a2, uint64_t *a3, int8x16_t *a4, int8x16_t **a5, double a6, int8x16_t a7)
{
  v7 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0x492492492492492)
  {
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v11 = 0x492492492492492;
  }

  else
  {
    v11 = v8;
  }

  v24 = a1;
  if (v11)
  {
    std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::allocate_at_least[abi:ne200100](a1, v11);
  }

  v12 = 56 * v7;
  v21 = 0;
  v22 = v12;
  *(&v23 + 1) = 0;
  v13 = *a4;
  *v12 = *a2;
  v14 = *a3;
  *(v12 + 8) = *a3;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  if (v14)
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::set_state(v12, a5, v13, a7);
  }

  *&v23 = v12 + 56;
  v15 = a1[1];
  v16 = v12 + *a1 - v15;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>(a1, *a1, v15, v16);
  v17 = *a1;
  *a1 = v16;
  v18 = a1[2];
  v20 = v23;
  *(a1 + 1) = v23;
  *&v23 = v17;
  *(&v23 + 1) = v18;
  v21 = v17;
  v22 = v17;
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::~__split_buffer(&v21);
  return v20;
}

void sub_25610225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::spline_container_t(a4, v6);
      v6 += 56;
      a4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 32);
      if (v7)
      {
        *(v5 + 40) = v7;
        operator delete(v7);
      }

      v5 += 56;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t::spline_container_t(uint64_t a1, uint64_t a2)
{
  *a1 = -1;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a1 + 32) = 0;
  v4 = (a1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  if (v5 != v6)
  {
    v7 = 0;
    do
    {
      v22 = *(v5 + 8);
      v23 = *(v5 + 24);
      v8 = *(v5 + 40);
      v20 = *(v5 + 64);
      v21 = *(v5 + 48);
      v9 = *(a1 + 48);
      if (v7 >= v9)
      {
        v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *v4) >> 4);
        v11 = v10 + 1;
        if (v10 + 1 > 0x333333333333333)
        {
          std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - *v4) >> 4);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x199999999999999)
        {
          v13 = 0x333333333333333;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t>::allocate_at_least[abi:ne200100](v4, v13);
        }

        v14 = 80 * v10;
        *v14 = a1;
        *(v14 + 8) = v22;
        *(v14 + 24) = v23;
        *(v14 + 40) = v8;
        *(v14 + 48) = v21;
        *(v14 + 64) = v20;
        v7 = 80 * v10 + 80;
        v15 = *(a1 + 32);
        v16 = *(a1 + 40) - v15;
        v17 = v14 - v16;
        memcpy((v14 - v16), v15, v16);
        v18 = *(a1 + 32);
        *(a1 + 32) = v17;
        *(a1 + 40) = v7;
        *(a1 + 48) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7 = a1;
        *(v7 + 8) = v22;
        *(v7 + 24) = v23;
        *(v7 + 40) = v8;
        *(v7 + 48) = v21;
        *(v7 + 64) = v20;
        v7 += 80;
      }

      *(a1 + 40) = v7;
      v5 += 80;
    }

    while (v5 != v6);
  }

  return a1;
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::instance_container_t>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>,LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer::renderer_t::spline_container_t>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator<unsigned short>::allocate_at_least[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__split_buffer<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::emplace_back<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0x5555555555555556 * (&v4[-*a1] >> 5);
      }

      std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::allocate_at_least[abi:ne200100](a1[4], v10);
    }

    v7 = (0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / -2;
    v8 = &v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)];
    v9 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-96 * ((0xAAAAAAAAAAAAAAABLL * (v6 >> 5) + 1) / 2)], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v8[v9];
    a1[1] = &v5[96 * v7];
    a1[2] = &v8[v9];
  }

  v11 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v11;
  result = *(a2 + 32);
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  *(v4 + 4) = *(a2 + 64);
  *(v4 + 5) = v14;
  *(v4 + 2) = result;
  *(v4 + 3) = v13;
  a1[2] += 96;
  return result;
}

void std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::instance_uniform>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__shared_ptr_emplace<std::atomic<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286829678;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C5A8E0);
}

uint64_t ContainerStateFromTwoStates(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = ContainerStateFromSingleState(v3, 2, 3);
  v6 = ContainerStateFromSingleState(v3, 1, 0);

  v7 = ContainerStateFromSingleState(v4, v5, v6);
  return v7;
}

uint64_t ContainerStateFromSingleState(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (([v5 isEqualToString:@"presented"] & 1) == 0)
  {
    a2 = a3;
    if (([v5 isEqualToString:@"hidden"] & 1) == 0)
    {
      v6 = LACLogFaceIDUI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ContainerStateFromSingleState_cold_1(v5, v6);
      }

      a2 = 0;
    }
  }

  return a2;
}

double LAUI_CA_utilities::periodic_animation_state::elapsed_duration(LAUI_CA_utilities::periodic_animation_state *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained(this + 2);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = LAUILayerAnimationElapsedDuration(WeakRetained, *(this + 1));
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

double LAUI_CA_utilities::periodic_animation_state::remaining_duration(LAUI_CA_utilities::periodic_animation_state *this)
{
  if (!*(this + 1))
  {
    return 0.0;
  }

  WeakRetained = objc_loadWeakRetained(this + 2);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = LAUILayerAnimationRemainingDuration(WeakRetained, *(this + 1));
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

void LAUI_CA_utilities::periodic_animation_state::create_removal_timer(dispatch_source_t *a1, void *a2, double a3)
{
  v5 = a2;
  LAUI_CA_utilities::periodic_animation_state::clear_removal_timer(a1);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v7 = a1[3];
  a1[3] = v6;

  v8 = a1[3];
  v9 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  dispatch_source_set_event_handler(a1[3], v5);

  v10 = a1[3];

  dispatch_resume(v10);
}

id LAUI_CA_utilities::animation::update_animation<CABasicAnimation * {__strong}>(void *a1, _OWORD *a2, _OWORD *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCAE60];
  v7 = a2[5];
  *&a.m31 = a2[4];
  *&a.m33 = v7;
  v8 = a2[7];
  *&a.m41 = a2[6];
  *&a.m43 = v8;
  v9 = a2[1];
  *&a.m11 = *a2;
  *&a.m13 = v9;
  v10 = a2[3];
  *&a.m21 = a2[2];
  *&a.m23 = v10;
  v11 = a3[5];
  *&b.m31 = a3[4];
  *&b.m33 = v11;
  v12 = a3[7];
  *&b.m41 = a3[6];
  *&b.m43 = v12;
  v13 = a3[1];
  *&b.m11 = *a3;
  *&b.m13 = v13;
  v14 = a3[3];
  *&b.m21 = a3[2];
  *&b.m23 = v14;
  v15 = CATransform3DEqualToTransform(&a, &b);
  v16 = MEMORY[0x277CD9DE8];
  if (v15)
  {
    v17 = *(MEMORY[0x277CD9DE8] + 80);
    *&a.m31 = *(MEMORY[0x277CD9DE8] + 64);
    *&a.m33 = v17;
    v18 = *(MEMORY[0x277CD9DE8] + 112);
    *&a.m41 = *(MEMORY[0x277CD9DE8] + 96);
    *&a.m43 = v18;
    v19 = *(MEMORY[0x277CD9DE8] + 16);
    *&a.m11 = *MEMORY[0x277CD9DE8];
    *&a.m13 = v19;
    v20 = *(MEMORY[0x277CD9DE8] + 48);
    *&a.m21 = *(MEMORY[0x277CD9DE8] + 32);
    *&a.m23 = v20;
  }

  else
  {
    v21 = a3[5];
    *&a.m31 = a3[4];
    *&a.m33 = v21;
    v22 = a3[7];
    *&a.m41 = a3[6];
    *&a.m43 = v22;
    v23 = a3[1];
    *&a.m11 = *a3;
    *&a.m13 = v23;
    v24 = a3[3];
    *&a.m21 = a3[2];
    *&a.m23 = v24;
    CATransform3DInvert(&b, &a);
    v25 = a2[5];
    *&v36.m31 = a2[4];
    *&v36.m33 = v25;
    v26 = a2[7];
    *&v36.m41 = a2[6];
    *&v36.m43 = v26;
    v27 = a2[1];
    *&v36.m11 = *a2;
    *&v36.m13 = v27;
    v28 = a2[3];
    *&v36.m21 = a2[2];
    *&v36.m23 = v28;
    CATransform3DConcat(&a, &b, &v36);
  }

  v29 = [v6 valueWithCATransform3D:&a];
  [v5 setFromValue:v29];

  v30 = v16[5];
  *&a.m31 = v16[4];
  *&a.m33 = v30;
  v31 = v16[7];
  *&a.m41 = v16[6];
  *&a.m43 = v31;
  v32 = v16[1];
  *&a.m11 = *v16;
  *&a.m13 = v32;
  v33 = v16[3];
  *&a.m21 = v16[2];
  *&a.m23 = v33;
  v34 = [MEMORY[0x277CCAE60] valueWithCATransform3D:&a];
  [v5 setToValue:v34];

  return v5;
}

id __copy_helper_block_ea8_32c73_ZTSKZ60__LAUIRadialPingView__updateExpandForBlurAtIndex_withDelay__E3__5(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_ea8_32c73_ZTSKZ60__LAUIRadialPingView__updateExpandForBlurAtIndex_withDelay__E3__5(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

void sub_256104CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, uint64_t a34, void *a35)
{
  objc_destroyWeak((v38 + 32));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c60_ZTSKZ47__LAUIRadialPingView__updateAnimatingAnimated__E3__6(uint64_t a1, uint64_t a2)
{
  objc_copyWeak((a1 + 32), (a2 + 32));
  *(a1 + 40) = *(a2 + 40);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_ea8_32c60_ZTSKZ47__LAUIRadialPingView__updateAnimatingAnimated__E3__6(uint64_t a1)
{

  objc_destroyWeak((a1 + 32));
}

id anonymous namespace::shape_layer_clone(_anonymous_namespace_ *this, CAShapeLayer *a2)
{
  v2 = this;
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [(_anonymous_namespace_ *)v2 bounds];
    [v3 setBounds:?];
    [(_anonymous_namespace_ *)v2 position];
    [v3 setPosition:?];
    [(_anonymous_namespace_ *)v2 zPosition];
    [v3 setZPosition:?];
    [(_anonymous_namespace_ *)v2 anchorPoint];
    [v3 setAnchorPoint:?];
    [(_anonymous_namespace_ *)v2 anchorPointZ];
    [v3 setAnchorPointZ:?];
    [(_anonymous_namespace_ *)v2 transform];
    [v3 setTransform:&v10];
    [v3 setHidden:{-[_anonymous_namespace_ isHidden](v2, "isHidden")}];
    [v3 setGeometryFlipped:{-[_anonymous_namespace_ isGeometryFlipped](v2, "isGeometryFlipped")}];
    [(_anonymous_namespace_ *)v2 opacity];
    [v3 setOpacity:?];
    v4 = [(_anonymous_namespace_ *)v2 actions];
    [v3 setActions:v4];

    [v3 setPath:{-[_anonymous_namespace_ path](v2, "path")}];
    [v3 setFillColor:{-[_anonymous_namespace_ fillColor](v2, "fillColor")}];
    v5 = [(_anonymous_namespace_ *)v2 fillRule];
    [v3 setFillRule:v5];

    [v3 setStrokeColor:{-[_anonymous_namespace_ strokeColor](v2, "strokeColor")}];
    [(_anonymous_namespace_ *)v2 strokeStart];
    [v3 setStrokeStart:?];
    [(_anonymous_namespace_ *)v2 strokeEnd];
    [v3 setStrokeEnd:?];
    [(_anonymous_namespace_ *)v2 lineWidth];
    [v3 setLineWidth:?];
    [(_anonymous_namespace_ *)v2 miterLimit];
    [v3 setMiterLimit:?];
    v6 = [(_anonymous_namespace_ *)v2 lineCap];
    [v3 setLineCap:v6];

    v7 = [(_anonymous_namespace_ *)v2 lineJoin];
    [v3 setLineJoin:v7];

    [(_anonymous_namespace_ *)v2 lineDashPhase];
    [v3 setLineDashPhase:?];
    v8 = [(_anonymous_namespace_ *)v2 lineDashPattern];
    [v3 setLineDashPattern:v8];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_256105A84(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_256105B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LAUICheckmarkLayer;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void LAUI_CA_utilities::animation_completion_handler_container::execute(LAUI_CA_utilities::animation_completion_handler_container **a1, char a2)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::reserve(&v14, (a1[1] - *a1) >> 3);
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      v6 = LAUI_CA_utilities::animation_completion_handler_container::acquire_completion(v4);
      v7 = v6;
      if (v6)
      {
        v8 = v15;
        if (v15 >= v16)
        {
          v10 = (v15 - v14) >> 3;
          if ((v10 + 1) >> 61)
          {
            std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
          }

          v11 = (v16 - v14) >> 2;
          if (v11 <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          if (v16 - v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          v17[4] = &v14;
          if (v12)
          {
            std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](&v14, v12);
          }

          v13 = (8 * v10);
          v17[0] = 0;
          v17[1] = v13;
          v17[3] = 0;
          *v13 = MEMORY[0x259C5AE60](v6);
          v17[2] = v13 + 1;
          std::vector<UIView * {__strong}>::__swap_out_circular_buffer(&v14, v17);
          v9 = v15;
          std::__split_buffer<UIView * {__strong}>::~__split_buffer(v17);
        }

        else
        {
          *v8 = MEMORY[0x259C5AE60](v6);
          v9 = v8 + 1;
        }

        v15 = v9;
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
  }

  LAUI_CA_utilities::animation_completion_handler_container::execute<std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>>(&v14, a2);
  v17[0] = &v14;
  std::vector<UIView * {__strong}>::__destroy_vector::operator()[abi:ne200100](v17);
}

uint64_t __copy_helper_block_ea8_32c71_ZTSKZ58__LAUICheckmarkLayer_setRevealed_animated_withCompletion__E3__0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C5AE60](*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void sub_256106918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(&a24);

  _Unwind_Resume(a1);
}

void ***std::vector<LAUI_CA_utilities::animation_completion_handler_container>::shrink_to_fit(void ***result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = v4 >> 3;
    v14 = result;
    if (v1 != v2)
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, v4 >> 3);
    }

    v11 = 0;
    v12 = 8 * v6;
    v13 = (8 * v6);
    if (v3 >> 3)
    {
      v7 = result[1];
      v8 = (8 * v6 + v2 - v7);
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*>(result, v2, v7, v8);
      v9 = *v5;
      *v5 = v8;
      v10 = v5[2];
      *(v5 + 1) = v13;
      *&v13 = v9;
      *(&v13 + 1) = v10;
      v11 = v9;
      v12 = v9;
    }

    return std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::~__split_buffer(&v11);
  }

  return result;
}

void sub_256106B78(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x256106B68);
}

uint64_t *std::vector<CAShapeLayer * {__strong}>::shrink_to_fit(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = v4 >> 3;
    v6[4] = result;
    if (v1 != v2)
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, v4 >> 3);
    }

    v6[0] = 0;
    v6[1] = 8 * v5;
    v6[2] = 8 * v5;
    v6[3] = 0;
    if (v3 >> 3)
    {
      std::vector<UIView * {__strong}>::__swap_out_circular_buffer(result, v6);
    }

    return std::__split_buffer<UIView * {__strong}>::~__split_buffer(v6);
  }

  return result;
}

void sub_256106D08(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x256106CF8);
}

void *std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, a2);
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_256106E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

id LAUI_CA_utilities::animation_completion_handler_container::acquire_completion(LAUI_CA_utilities::animation_completion_handler_container *this)
{
  v2 = MEMORY[0x259C5AE60](*this);
  v3 = *this;
  *this = 0;

  return v2;
}

void LAUI_CA_utilities::animation_completion_handler_container::execute<std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>>(uint64_t a1, char a2)
{
  if (*(a1 + 8) != *a1)
  {
    v4 = MEMORY[0x277D85CD0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3321888768;
    block[2] = ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeINSt3__16vectorIU8__strongU13block_pointerFvbENS2_9allocatorIS6_EEEEEEvOT_b_block_invoke;
    block[3] = &__block_descriptor_64_ea8_32c155_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeINSt3__16vectorIU8__strongU13block_pointerFvbENS2_9allocatorIS6_EEEEEEvOT_bEUlvE__e5_v8__0l;
    v8 = *a1;
    v5 = v8;
    v9 = *(a1 + 8);
    v6 = v9;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v10 = a2;
    memset(v12, 0, sizeof(v12));
    std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(BOOL),void({block_pointer} {__strong}*)(BOOL)>(v12, v5, v6, (v6 - v5) >> 3);
    v13 = a2;
    v7 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], block);
    v14 = &v8;
    std::vector<UIView * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v14);

    v8 = v12;
    std::vector<UIView * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v8);
  }
}

uint64_t ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeINSt3__16vectorIU8__strongU13block_pointerFvbENS2_9allocatorIS6_EEEEEEvOT_b_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      result = *v1;
      if (*v1)
      {
        result = (*(result + 16))(result, *(v3 + 56));
      }

      ++v1;
    }

    while (v1 != v2);
  }

  return result;
}

uint64_t __copy_helper_block_ea8_32c155_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeINSt3__16vectorIU8__strongU13block_pointerFvbENS2_9allocatorIS6_EEEEEEvOT_bEUlvE_(void *a1, uint64_t a2)
{
  a1[4] = 0;
  a1[5] = 0;
  v3 = a1 + 4;
  a1[6] = 0;
  result = std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(BOOL),void({block_pointer} {__strong}*)(BOOL)>((a1 + 4), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(v3 + 24) = *(a2 + 56);
  return result;
}

uint64_t std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::__init_with_size[abi:ne200100]<void({block_pointer} {__strong}*)(BOOL),void({block_pointer} {__strong}*)(BOOL)>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__emplace_back_slow_path<void({block_pointer} {__strong}&)(BOOL)>(uint64_t a1, void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  LAUI_CA_utilities::animation_completion_handler_container::animation_completion_handler_container((8 * v2), *a2);
  v16 = (8 * v2 + 8);
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::~__split_buffer(&v14);
  return v13;
}

void sub_256107284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *LAUI_CA_utilities::animation_completion_handler_container::animation_completion_handler_container(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 copy];
  *a1 = MEMORY[0x259C5AE60]();

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      *v7 = MEMORY[0x259C5AE60](*v8);
      v9 = *v8;
      *v8++ = 0;

      v7 = ++v14;
    }

    while (v8 != a3);
  }

  v12 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*,LAUI_CA_utilities::animation_completion_handler_container*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*,LAUI_CA_utilities::animation_completion_handler_container*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      LAUI_CA_utilities::animation_completion_handler_container::operator()(v4, 0);
      v5 = *v4++;
    }

    while (v4 != a3);
  }
}

void LAUI_CA_utilities::animation_completion_handler_container::operator()(void **a1, char a2)
{
  if (*a1)
  {
    v4 = MEMORY[0x259C5AE60]();
    v5 = *a1;
    *a1 = 0;

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3321888768;
    v7[2] = ___ZN17LAUI_CA_utilities38animation_completion_handler_containerclEb_block_invoke;
    v7[3] = &__block_descriptor_48_ea8_32c76_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_containerclEbEUlvE__e5_v8__0l;
    v6 = MEMORY[0x259C5AE60](v4);
    v8 = MEMORY[0x259C5AE60]();
    v9 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __copy_helper_block_ea8_32c76_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_containerclEbEUlvE_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C5AE60](*(a2 + 32));
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,LAUI_CA_utilities::animation_completion_handler_container*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,std::reverse_iterator<LAUI_CA_utilities::animation_completion_handler_container*>,std::reverse_iterator<LAUI_CA_utilities::animation_completion_handler_container*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<LAUI_CA_utilities::animation_completion_handler_container>,std::reverse_iterator<LAUI_CA_utilities::animation_completion_handler_container*>,std::reverse_iterator<LAUI_CA_utilities::animation_completion_handler_container*>>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3 - 1;
    v7 = a3 - 1;
    do
    {
      LAUI_CA_utilities::animation_completion_handler_container::operator()(v6, 0);
      v8 = *v7--;

      v9 = v6 == a5;
      v6 = v7;
    }

    while (!v9);
  }
}

uint64_t std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<LAUI_CA_utilities::animation_completion_handler_container>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    LAUI_CA_utilities::animation_completion_handler_container::operator()((i - 8), 0);
  }
}

void std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    v6 = v4 - 1;
    do
    {
      LAUI_CA_utilities::animation_completion_handler_container::operator()(v5, 0);
      v7 = *v6--;

      v8 = v5 == a2;
      v5 = v6;
    }

    while (!v8);
  }

  *(a1 + 8) = a2;
}

void std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<LAUI_CA_utilities::animation_completion_handler_container>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

id anonymous namespace::create_static_resources(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&qword_27F82AC48, memory_order_acquire) & 1) == 0)
  {
  }

  os_unfair_lock_lock(&_MergedGlobals_0);
  if (!WeakRetained)
  {
    v2 = MTLCreateSystemDefaultDevice();
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::create(v2, v4);

    if (v5 == 1)
    {
      WeakRetained = [[LAUIPearlGlyphViewStaticResources alloc] initWithState:v4];
      if (v5)
      {
        LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::~shared_state_t(v4);
      }
    }

    else
    {
      WeakRetained = 0;
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_0);
  return WeakRetained;
}

void sub_25610791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a22 == 1)
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::~shared_state_t(&a9);
  }

  os_unfair_lock_unlock(&_MergedGlobals_0);
  _Unwind_Resume(a1);
}

void sub_25610A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, id location)
{
  _Block_object_dispose(&a55, 8);

  _Unwind_Resume(a1);
}

void sub_25610A50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = LAUIPearlGlyphView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

double LAUI_uniform_cubic_b_spline_renderer::renderer_t::update_last_render_time(LAUI_uniform_cubic_b_spline_renderer::renderer_t *this)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = Current - *this;
  v4 = 0.0;
  if (v3 > 0.0)
  {
    *this = Current;
    return v3;
  }

  return v4;
}

LAUI_uniform_cubic_b_spline_renderer::renderer_t *std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::renderer_t>::reset[abi:ne200100](LAUI_uniform_cubic_b_spline_renderer::renderer_t **a1, LAUI_uniform_cubic_b_spline_renderer::renderer_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::~renderer_t(result);

    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::face_id_animator_t>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 1160);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *(v2 + 1144);
    *(v2 + 1144) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = *(v2 + 1120);
    if (v6)
    {
      *(v2 + 1128) = v6;
      operator delete(v6);
    }

    if (*(v2 + 1104) == 1)
    {
      _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2 + 1088);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 992);
    }

    v7 = *(v2 + 872);
    if (v7)
    {
      v8 = *(v2 + 880);
      v9 = *(v2 + 872);
      if (v8 != v7)
      {
        do
        {
          _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v8 - 16);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8 - 112);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8 - 216);
          v8 -= 288;
        }

        while (v8 != v7);
        v9 = *(v2 + 872);
      }

      *(v2 + 880) = v7;
      operator delete(v9);
    }

    v10 = *(v2 + 848);
    if (v10)
    {
      v11 = *(v2 + 856);
      v12 = *(v2 + 848);
      if (v11 != v10)
      {
        do
        {
          v11 -= 240;
        }

        while (v11 != v10);
        v12 = *(v2 + 848);
      }

      *(v2 + 856) = v10;
      operator delete(v12);
    }

    if (*(v2 + 832) == 1)
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 808);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 736);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 680);
      _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v2 + 624);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 480);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 424);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 368);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v2 + 312);
    }

    LAUI_CA_utilities::animation_completion_handler_container::operator()((v2 + 56), 0);

    if (*(v2 + 40) == 1)
    {
      v13 = *v2;
      if (*v2)
      {
        *(v2 + 8) = v13;
        operator delete(v13);
      }
    }

    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

void LAUI_uniform_cubic_b_spline_renderer::renderer_t::purge(LAUI_uniform_cubic_b_spline_renderer::renderer_t *this)
{
  v2 = *(this + 69);
  v3 = *(this + 70);
  while (v2 != v3)
  {
    v4 = *v2;
    *v2 = 0;

    v5 = *(v2 + 8);
    *(v2 + 8) = 0;

    v6 = *(v2 + 16);
    *(v2 + 16) = 0;

    v7 = *(v2 + 24);
    *(v2 + 24) = 0;

    v8 = *(v2 + 32);
    *(v2 + 32) = 0;

    v9 = *(v2 + 40);
    *(v2 + 40) = 0;

    v2 += 48;
  }

  *(this + 83) = 0;
  *(this + 640) = 0;
  v10 = *(this + 81);
  *(this + 81) = 0;

  v11 = *(this + 82);
  *(this + 82) = 0;

  v12 = *(this + 67);
  *(this + 67) = 0;

  v13 = *(this + 68);
  *(this + 68) = 0;

  v14 = *(this + 78);
  *(this + 78) = 0;

  v15 = *(this + 79);
  *(this + 79) = 0;
}

id anonymous namespace::color_from_overlayable_color(uint64_t a1, CGColorSpaceRef space)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;

    return v2;
  }

  else
  {
    v4 = *(a1 + 16);
    v7[0] = vcvtq_f64_f32(*v4.f32);
    v7[1] = vcvt_hight_f64_f32(v4);
    v5 = CGColorCreate(space, v7);
    if (!v5)
    {
      return 0;
    }

    v6 = [MEMORY[0x277D75348] colorWithCGColor:v5];
    CFRelease(v5);
    return v6;
  }
}

void sub_25610B594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  if (a10 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_25610B6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, char a10)
{
  if (a10 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void *std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::push_back[abi:ne200100](void *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *result) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *result;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = result;
    if (v11)
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, v11);
    }

    v13[0] = 0;
    v13[1] = 8 * v8;
    v13[3] = 0;
    v12 = *a2;
    *a2 = 0;
    *(8 * v8) = v12;
    v13[2] = 8 * v8 + 8;
    std::vector<UIView * {__strong}>::__swap_out_circular_buffer(result, v13);
    v7 = v3[1];
    result = std::__split_buffer<UIView * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
    result[1] = v7;
  }

  v3[1] = v7;
  return result;
}

void sub_25610C028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void LAUI_uniform_cubic_b_spline_renderer::targetable_animator_t<anonymous namespace::face_id_animator_t,anonymous namespace::face_id_state_t,anonymous namespace::face_id_target_t>::set_targets<LAUI_uniform_cubic_b_spline_renderer::targets_t<anonymous namespace::face_id_target_t>>(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 48) == 1)
  {
    if (v5)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3321888768;
      v9[2] = ___ZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEb_block_invoke;
      v9[3] = &__block_descriptor_48_ea8_32c102_ZTSKZN17LAUI_CA_utilities38animation_completion_handler_container7executeEU13block_pointerFvbEbEUlvE__e5_v8__0l;
      v7 = MEMORY[0x259C5AE60](v5);
      v10 = MEMORY[0x259C5AE60]();
      v11 = 0;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }

  else
  {
    LAUI_CA_utilities::animation_completion_handler_container::set_completion((a1 + 56), v5);
    if (*(a1 + 40) == 1)
    {
      v8 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v8;
        operator delete(v8);
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = 1;
    }
  }
}

void *LAUI_uniform_cubic_b_spline_renderer::targets_t<anonymous namespace::face_id_target_t>::targets_t<anonymous namespace::face_id_target_t&>(void *a1, _OWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2[5];
  v6[4] = a2[4];
  v7[0] = v2;
  *(v7 + 9) = *(a2 + 89);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  v4 = a2[3];
  v6[2] = a2[2];
  v6[3] = v4;
  *(result + 24) = 0;
  result[4] = 0;
  if (result[1] == *result)
  {
    __break(1u);
  }

  return result;
}

void sub_25610C26C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::vector<anonymous namespace::face_id_target_t>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x24924924924924ALL)
    {
      operator new();
    }

    std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25610C34C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<void({block_pointer} {__strong})(BOOL),std::allocator<void({block_pointer} {__strong})(BOOL)>>::shrink_to_fit(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = v4 >> 3;
    v6[4] = result;
    if (v1 != v2)
    {
      std::allocator<UIView * {__strong}>::allocate_at_least[abi:ne200100](result, v4 >> 3);
    }

    v6[0] = 0;
    v6[1] = 8 * v5;
    v6[2] = 8 * v5;
    v6[3] = 0;
    if (v3 >> 3)
    {
      std::vector<UIView * {__strong}>::__swap_out_circular_buffer(result, v6);
    }

    return std::__split_buffer<UIView * {__strong}>::~__split_buffer(v6);
  }

  return result;
}

void sub_25610C608(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<UIView * {__strong}>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25610C5F8);
}

uint64_t std::optional<LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t>::operator=[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t const&,void>(uint64_t a1, id *a2)
{
  if (*(a1 + 104) == 1)
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::operator=(a1, a2);
  }

  else
  {
    LAUI_uniform_cubic_b_spline_renderer::renderer_t::shared_state_t::shared_state_t(a1, a2);
    *(a1 + 104) = 1;
  }

  return a1;
}

uint64_t std::vector<anonymous namespace::face_id_animator_t::ring_context_t>::emplace_back<anonymous namespace::face_id_animator_t::ring_context_t::static_state_t,anonymous namespace::face_id_state_t &>(uint64_t *a1, char *a2, int8x16_t *a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = 0x8E38E38E38E38E39 * ((v5 - *a1) >> 5);
    if (v8 + 1 > 0xE38E38E38E38E3)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 5);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x71C71C71C71C71)
    {
      v11 = 0xE38E38E38E38E3;
    }

    else
    {
      v11 = v10;
    }

    v12[4] = a1;
    if (v11)
    {
      if (v11 <= 0xE38E38E38E38E3)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12[0] = 0;
    v12[1] = 288 * v8;
    v12[3] = 0;
    v12[2] = 288 * v8 + 288;
    v7 = a1[1];
  }

  else
  {
    v7 = v5 + 288;
  }

  a1[1] = v7;
  return result;
}

void anonymous namespace::face_id_animator_t::face_id_animator_t(LAUI_uniform_cubic_b_spline_renderer::renderer_t &,LAUIPearlGlyphPathStyle,float,anonymous namespace::face_id_state_t const&)::{lambda(anonymous namespace::quadrant_t)#1}::operator()(uint64_t a1, unsigned int a2)
{
  v4 = 0;
  v163 = *MEMORY[0x277D85DE8];
  v5 = qword_25611D620[a2];
  v6 = qword_25611D640[a2];
  v152 = v6;
  v153 = v5;
  if (a2)
  {
    _ZF = a2 == 3;
  }

  else
  {
    _ZF = 1;
  }

  v8 = 1.0;
  if (!_ZF)
  {
    v8 = -1.0;
  }

  __asm { FMOV            V1.4S, #1.0 }

  v93 = _Q1;
  _Q1.f32[0] = v8;
  v92 = _Q1;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v13 = ((**a1 * 0.5) * 3.0) / 2.9659;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v14 = *(a1 + 56);
  do
  {
    v16 = __sincosf_stret((v4 * 0.2618) + 2.8798);
    *&v17 = v13 * v16.__cosval;
    *(&v17 + 1) = v13 * v16.__sinval;
    *(&v106 + v4++) = v17;
  }

  while (v4 != 9);
  v15.i32[0] = 1.0;
  if (a2 > 1)
  {
    v15.f32[0] = -1.0;
  }

  v91 = v15.i32[0];
  v18 = 0;
  v19 = (**(a1 + 8) * 0.5) * 3.0;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v20 = v19 / 2.9659;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  do
  {
    v22 = __sincosf_stret((v18 * 0.2618) + 2.8798);
    *(&v115 + v18++) = __PAIR64__(v20 * v22.__sinval, v20 * v22.__cosval);
  }

  while (v18 != 9);
  v21.f32[0] = v20 * v22.__sinval;
  v23 = **(a1 + 16);
  v24 = **(a1 + 24) * 0.96;
  v25 = **(a1 + 32);
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v26 = v23 * -0.5;
  v27 = 2.0 / v24;
  for (i = 21; i != 24; ++i)
  {
    v29 = vcvtd_n_f64_u64(i - 20, 2uLL);
    v30 = __sincos_stret(v29 * 1.57079633 + (1.0 - v29) * 0.0);
    v31 = v26 * pow(fmax(v30.__cosval, 0.0), v27);
    v94 = v31;
    *v32.i64 = v26 * pow(fmax(v30.__sinval, 0.0), v27);
    v32.f32[0] = *v32.i64;
    *(&v106 + i) = __PAIR64__(v32.u32[0], LODWORD(v94));
  }

  v32.f32[0] = v26;
  LODWORD(v33) = v32.i32[0];
  v34 = v25 * (*(&v128 + 1) - *(&v127 + 1));
  v35 = v32.u32[0];
  v35.f32[1] = -v34;
  v124 = v35;
  v125 = v32.u32[0];
  *(&v33 + 1) = v34;
  *&v36 = v25 * (*&v128 - *&v129);
  *&v37 = -*&v36;
  HIDWORD(v37) = v32.i32[0];
  LODWORD(v38) = 0;
  HIDWORD(v38) = v32.i32[0];
  v131 = v38;
  v132 = v37;
  v126 = v33;
  v130 = __PAIR64__(v32.u32[0], v36);
  v39 = **(a1 + 24);
  v40 = **(a1 + 40);
  v41 = **(a1 + 32);
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v42 = v40 * -0.5;
  v43 = 2.0 / v39;
  for (j = 30; j != 33; ++j)
  {
    v45 = vcvtd_n_f64_u64(j - 29, 2uLL);
    v46 = __sincos_stret(v45 * 1.57079633 + (1.0 - v45) * 0.0);
    v47 = v42 * pow(fmax(v46.__cosval, 0.0), v43);
    v95 = v47;
    *v48.i64 = v42 * pow(fmax(v46.__sinval, 0.0), v43);
    v48.f32[0] = *v48.i64;
    *(&v106 + j) = __PAIR64__(v48.u32[0], LODWORD(v95));
  }

  v48.f32[0] = v42;
  LODWORD(v49) = v48.i32[0];
  v50 = v41 * (*(&v137 + 1) - *(&v136 + 1));
  v51 = v48.u32[0];
  v51.f32[1] = -v50;
  v133 = v51;
  v134 = v48.u32[0];
  *(&v49 + 1) = v50;
  *&v52 = v41 * (*&v137 - *&v138);
  *&v53 = -*&v52;
  HIDWORD(v53) = v48.i32[0];
  LODWORD(v54) = 0;
  HIDWORD(v54) = v48.i32[0];
  v140 = v54;
  v141 = v53;
  v135 = v49;
  v139 = __PAIR64__(v48.u32[0], v52);
  v55 = **(a1 + 48);
  v56 = **(a1 + 24) * 1.04;
  v57 = **(a1 + 32);
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v58 = v55 * -0.5;
  v59 = 2.0 / v56;
  for (k = 39; k != 42; ++k)
  {
    v61 = vcvtd_n_f64_u64(k - 38, 2uLL);
    v62 = __sincos_stret(v61 * 1.57079633 + (1.0 - v61) * 0.0);
    v63 = v58 * pow(fmax(v62.__cosval, 0.0), v59);
    v96 = v63;
    *v64.i64 = v58 * pow(fmax(v62.__sinval, 0.0), v59);
    v64.f32[0] = *v64.i64;
    *(&v106 + k) = __PAIR64__(v64.u32[0], LODWORD(v96));
  }

  v64.f32[0] = v58;
  LODWORD(v65) = v64.i32[0];
  v66 = v57 * (*(&v146 + 1) - *(&v145 + 1));
  v67 = v64.u32[0];
  v67.f32[1] = -v66;
  v142 = v67;
  v143 = v64.u32[0];
  *(&v65 + 1) = v66;
  *&v68 = v57 * (*&v146 - *&v147);
  *&v69 = -*&v68;
  HIDWORD(v69) = v64.i32[0];
  v67.i32[0] = 0;
  v67.i32[1] = v64.i32[0];
  v149 = v67.u64[0];
  v150 = v69;
  v144 = v65;
  v148 = __PAIR64__(v64.u32[0], v68);
  memset(v156, 0, 24);
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::reserve(v156, 5uLL);
  v70 = 0;
  v71 = v92;
  v71.i32[1] = v91;
  v71.i32[2] = v92.i32[2];
  v97 = v71;
  do
  {
    memset(__p, 0, 24);
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPKS1_S7_EEvT_T0_m(__p, &v106 + v70, &v115 + v70, 9uLL);
    v72 = *&v156[8];
    if (*&v156[8] >= *&v156[16])
    {
      *&v156[8] = _ZNSt3__16vectorIN36LAUI_uniform_cubic_b_spline_renderer8spline_t7state_tENS_9allocatorIS3_EEE24__emplace_back_slow_pathIJNS0_IDv3_fNS4_IS8_EEEEEEEPS3_DpOT_(v156, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      **&v156[8] = 0;
      *(v72 + 8) = 0;
      *(v72 + 16) = 0;
      *v72 = *__p;
      *(v72 + 16) = __p[2];
      memset(__p, 0, 24);
      if (*(v72 + 8) - *v72 <= 0x3FuLL)
      {
        goto LABEL_49;
      }

      *&v156[8] = v72 + 24;
    }

    v70 += 144;
  }

  while (v70 != 720);
  LAUI_uniform_cubic_b_spline_renderer::weighted_spline_t::weighted_spline_t<std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>>(&v103, v156);
  __p[0] = v156;
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](__p);
  v73 = v14[8];
  v155[0] = 0u;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8ne200100EmRKS1_(__p, v103);
  v74 = __p[0];
  *v156 = __p[0];
  *&v156[8] = *&__p[1];
  memset(__p, 0, 24);
  if (*&v156[8] - v74 <= 0x3FuLL)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v102 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::add_spline(v73, &v103, v156);
  if (*v156)
  {
    *&v156[8] = *v156;
    operator delete(*v156);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v75 = *(a1 + 64);
  *v156 = 0u;
  *&v156[16] = xmmword_25611D010;
  *v157 = 0u;
  *&v157[16] = xmmword_25611D010;
  v158 = v93;
  v159 = 0uLL;
  *&v160[8] = xmmword_25611D260;
  *v160 = 1065353216;
  v161 = 0;
  v162 = 0;
  *&v101 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::add_instance(v75, &v102, &v151, v156);
  *(&v101 + 1) = v76;
  v77 = *(a1 + 64);
  *v156 = 0u;
  *&v156[16] = xmmword_25611D010;
  *v157 = 0u;
  *&v157[16] = xmmword_25611D010;
  v158 = v93;
  v159 = 0uLL;
  *&v160[8] = xmmword_25611D260;
  *v160 = 1065353216;
  v161 = 0;
  v162 = 0;
  *&v100 = LAUI_uniform_cubic_b_spline_renderer::renderer_t::add_instance(v77, &v102, &v151, v156);
  *(&v100 + 1) = v78;
  v155[0] = v101;
  v155[1] = v100;
  v98[1] = 0;
  v99 = 0;
  v98[0] = 0;
  std::vector<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t>>::__init_with_size[abi:ne200100]<LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t> const*,LAUI_uniform_cubic_b_spline_renderer::indexed_identifier_t<LAUI_uniform_cubic_b_spline_renderer::spline_t::instance_t,LAUI_uniform_cubic_b_spline_renderer::spline_t> const*>(v98, v155, v156, 2uLL);
  v79.i32[3] = 0;
  v79.i32[0] = **(a1 + 88);
  v80.i32[3] = 0;
  *(v79.i64 + 4) = v79.u32[0];
  v81.i32[3] = 0;
  v81.i32[0] = **(a1 + 96);
  *(v81.i64 + 4) = v81.u32[0];
  v80.i32[0] = **(a1 + 104);
  *(v80.i64 + 4) = v80.u32[0];
  *&v156[8] = *v98;
  *v156 = v102;
  *&v156[24] = v99;
  v98[0] = 0;
  v98[1] = 0;
  v99 = 0;
  *&v157[8] = v104;
  *v157 = v103;
  *&v157[24] = v105;
  v104 = 0uLL;
  v105 = 0;
  v158 = vmulq_f32(v97, v79);
  v159 = vmulq_f32(v97, v81);
  *v160 = vmulq_f32(v97, v80);
  v82 = v14[107];
  v83 = v14[108];
  if (v82 >= v83)
  {
    v85 = v14[106];
    v86 = 0xEEEEEEEEEEEEEEEFLL * ((v82 - v85) >> 4);
    if (v86 + 1 > 0x111111111111111)
    {
      std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
    }

    v87 = 0xEEEEEEEEEEEEEEEFLL * ((v83 - v85) >> 4);
    v88 = 2 * v87;
    if (2 * v87 <= v86 + 1)
    {
      v88 = v86 + 1;
    }

    if (v87 >= 0x88888888888888)
    {
      v89 = 0x111111111111111;
    }

    else
    {
      v89 = v88;
    }

    __p[4] = v14 + 106;
    if (v89)
    {
      if (v89 <= 0x111111111111111)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v90 = 240 * v86;
    __p[0] = 0;
    __p[1] = v90;
    __p[3] = 0;
    __p[2] = (v90 + 240);
    v84 = v14[107];
  }

  else
  {
    v84 = v82 + 240;
  }

  v14[107] = v84;
  __p[0] = &v157[8];
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](__p);
  if (*&v156[8])
  {
    *&v156[16] = *&v156[8];
    operator delete(*&v156[8]);
  }

  if (v98[0])
  {
    v98[1] = v98[0];
    operator delete(v98[0]);
  }

  *v156 = &v104;
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](v156);
}

void sub_25610E084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  STACK[0x3E0] = &a26;
  std::vector<LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3E0]);
  _Unwind_Resume(a1);
}

void anonymous namespace::face_id_animator_t::push_state(_anonymous_namespace_::face_id_animator_t *this)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *(this + 38);
  v58[0] = *(this + 37);
  v58[1] = v2;
  LODWORD(v2.f64[0]) = *(this + 91);
  v3 = *(this + 105);
  v4 = *(this + 119);
  LODWORD(v59) = *(this + 77);
  *(&v59 + 4) = __PAIR64__(v3, LODWORD(v2.f64[0]));
  HIDWORD(v59) = v4;
  v60 = *(this + 60);
  v2.f64[0] = *(this + 183);
  *&v61 = *(this + 169);
  *(&v61 + 1) = *&v2.f64[0];
  v5 = *(this + 8);
  v6 = v67;
  v5[21] = v66;
  v5[22] = v6;
  v7 = *&v68[16];
  v5[23] = *v68;
  v5[24] = v7;
  v8 = v63;
  v5[17] = *__p;
  v5[18] = v8;
  v9 = v65;
  v5[19] = v64;
  v5[20] = v9;
  v10 = *(this + 8);
  *__p = v59;
  LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(v10, __p);
  v11 = *(this + 106);
  v49 = *(this + 107);
  if (v11 != v49)
  {
    __asm { FMOV            V0.4S, #1.0 }

    v51 = _Q0;
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v63 = 0;
      v17 = *(v11 + 208);
      v16 = *(v11 + 216);
      if (v17 == v16)
      {
        v25 = 0;
        v18 = 0;
        v24 = 0;
      }

      else
      {
        v18 = 0;
        do
        {
          if (v18 >= v63)
          {
            v19 = (v18 - __p[0]) >> 4;
            if ((v19 + 1) >> 60)
            {
              std::vector<UIView * {__strong}>::__throw_length_error[abi:ne200100]();
            }

            v20 = (v63 - __p[0]) >> 3;
            if (v20 <= v19 + 1)
            {
              v20 = v19 + 1;
            }

            if (v63 - __p[0] >= 0x7FFFFFFFFFFFFFF0)
            {
              v21 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              std::allocator<LAUI_uniform_cubic_b_spline_renderer_private::control_point>::allocate_at_least[abi:ne200100](__p, v21);
            }

            *(16 * v19) = *(v17 + 64);
            v18 = (16 * v19 + 16);
            v22 = (16 * v19 - (__p[1] - __p[0]));
            memcpy(v22, __p[0], __p[1] - __p[0]);
            v23 = __p[0];
            __p[0] = v22;
            __p[1] = v18;
            *&v63 = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v18 = *(v17 + 64);
            v18 += 16;
          }

          __p[1] = v18;
          v17 += 96;
        }

        while (v17 != v16);
        v24 = __p[0];
        v25 = v63;
      }

      v54 = v24;
      v55 = v18;
      v56 = v25;
      if ((v18 - v24) <= 0x3F)
      {
        __break(1u);
      }

      v57 = *(v11 + 176);
      v26 = *(this + 8);
      LAUI_uniform_cubic_b_spline_renderer::spline_t::state_t::state_t(__p, &v54);
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(v26, v11, __p, v27, v28);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v29 = *(v11 + 8);
      v30 = *(v11 + 16);
LABEL_24:
      if (v29 != v30)
      {
        v31 = *(this + 1152);
        if (!*&v31)
        {
          goto LABEL_53;
        }

        v32 = v29[1];
        v33 = vcnt_s8(v31);
        v33.i16[0] = vaddlv_u8(v33);
        if (v33.u32[0] > 1uLL)
        {
          v34 = v29[1];
          if (v32 >= *&v31)
          {
            v34 = v32 % *&v31;
          }
        }

        else
        {
          v34 = (*&v31 - 1) & v32;
        }

        v35 = *(*(this + 143) + 8 * v34);
        if (!v35 || (v36 = *v35) == 0)
        {
LABEL_53:
          std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
        }

        while (1)
        {
          v37 = v36[1];
          if (v32 == v37)
          {
            if (v36[2] == *v29 && v36[3] == v32)
            {
              v39 = *(this + 109) + 288 * v36[4];
              v40 = *(v39 + 160);
              v41 = *(v39 + 256);
              v42 = *(this + 8);
              *&v68[24] = 0;
              v69 = 0;
              *&v68[8] = v61;
              *v68 = v60;
              v64 = v57;
              v65 = xmmword_25611D010;
              *__p = v57;
              v63 = v40;
              v66 = v51;
              v67 = v41;
              LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(v42, v29, __p);
              v29 += 2;
              goto LABEL_24;
            }
          }

          else
          {
            if (v33.u32[0] > 1uLL)
            {
              if (v37 >= *&v31)
              {
                v37 %= *&v31;
              }
            }

            else
            {
              v37 &= *&v31 - 1;
            }

            if (v37 != v34)
            {
              goto LABEL_53;
            }
          }

          v36 = *v36;
          if (!v36)
          {
            goto LABEL_53;
          }
        }
      }

      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      v11 += 240;
    }

    while (v11 != v49);
  }

  v43 = *(this + 140);
  v44 = *(this + 141);
  if (v43 != v44)
  {
    v52 = *(this + 67);
    v53 = *(this + 61);
    __asm { FMOV            V0.4S, #1.0 }

    v50 = _Q0;
    do
    {
      v46 = *(v43 + 16);
      v47 = *(v43 + 32);
      v48 = *(this + 8);
      *&v68[8] = xmmword_25611D260;
      *&v68[24] = 0;
      v69 = 0;
      *v68 = v46;
      v64 = v47;
      v65 = xmmword_25611D010;
      *__p = v47;
      v63 = v53;
      v66 = v50;
      v67 = v52;
      LAUI_uniform_cubic_b_spline_renderer::renderer_t::set_state(v48, v43, __p);
      v43 += 48;
    }

    while (v43 != v44);
  }
}

void sub_25610E550(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<decltype(nullptr)>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829A80 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDnEENS_14default_deleteISC_EEEENS9_INSA_18animation_timing_tENSD_ISG_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJS8_SF_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDnEENS_14default_deleteISC_EEEENS9_INSA_18animation_timing_tENSD_ISG_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJS8_SF_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829A98 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIfEENS_14default_deleteISC_EEEENS9_INSA_18animation_timing_tENSD_ISG_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJS8_SF_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIfEENS_14default_deleteISC_EEEENS9_INSA_18animation_timing_tENSD_ISG_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSK_1EJS8_SF_SI_EEEEEEDcSM_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829AB0 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

BOOL LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 40);
    *(a1 + 48) = 0;
  }

  v6 = *a1;
  v7 = (a2 + 4);
  v8 = *a2;
  if (*a1 == *a2)
  {
    LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(a1, v7, a3);
  }

  else
  {
    v9 = *(a2 + 28);
    if (v9 < 0.0)
    {
      operator new();
    }

    *v12 = *v7;
    *&v12[16] = *(a2 + 20);
    *&v12[24] = 0;
    LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(a1, v12);
    v10 = *a2;
    *a1 = *a2;
    *(a1 + 16) = *&v12[12];
    *(a1 + 4) = *v12;
    if (*(a1 + 20) <= 0.0)
    {
      *(a1 + 32) = v10;
      *(a1 + 36) = v10;
    }

    else if (v9 > 0.0)
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(a1, v9);
    }
  }

  return v6 != v8;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (*(result + 48))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result + 40);
    *(v5 + 48) = 0;
  }

  if (a3)
  {
    v6 = *(v5 + 20);
    if (v6 > 0.0)
    {
      if ((v7 = *(v5 + 28), v8 = v6 - v7, v9 = *(v5 + 24) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          return LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(v5, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_set_timing(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return result;
  }

  v3 = *(a2 + 4);
  v4 = (result + 4);
  if (*(result + 20) > 0.0 && v3 > 0.0 && *v4 != *a2)
  {
    v5 = (*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2));
    v6 = (COERCE_INT(fabs(v5)) - 0x800000) >> 24;
    v7 = v5 < 0.0 || v6 > 0x7E;
    if (!v7 || (LODWORD(v5) - 1) <= 0x7FFFFE)
    {
      v9 = *(result + 32);
      v10 = ((1.0 - v5) * *result) + ((1.0 - (1.0 - v5)) * v9);
      if (v9 == *result)
      {
        v10 = *(result + 32);
      }

      *(result + 32) = v10;
    }
  }

  v11 = *a2;
  *(result + 16) = *(a2 + 12);
  *v4 = v11;
  if (v2 <= 0.0)
  {
    if (v3 > 0.0)
    {
      return result;
    }
  }

  else
  {
    *(result + 28) = 0;
    if (v3 > 0.0)
    {
      return LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(result, v2);
    }
  }

  v12 = *result;
  *(result + 32) = *result;
  *(result + 36) = v12;
  return result;
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 48);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829AC8 + v2))(v9, a1 + 40))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 48);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829AE0 + v5))(&v11, a1 + 40);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<2ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

float *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(float *result, float a2)
{
  v3 = result[5];
  if (v3 <= 0.0)
  {
    goto LABEL_10;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[7] + a2;
    result[7] = v5;
    if (v5 < v3)
    {
      v6 = powf(result[1], a2);
      v7 = 0;
      v8 = fmax((1.0 - v6), 0.0);
      v9 = v4[8];
      v10 = v4[9];
      v11 = (*v4 * v8) + ((1.0 - v8) * v9);
      if (v9 == *v4)
      {
        v11 = v4[8];
      }

      v12 = (v11 * v8) + ((1.0 - v8) * v10);
      if (v10 == v11)
      {
        v12 = v4[9];
      }

      v4[8] = v11;
      v4[9] = v12;
      v13 = v5 >= v4[6];
      return (v13 | (v7 << 8));
    }

    result[1] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 3) = 0;
    v4[5] = 0.0;
    v14 = *v4;
    v4[8] = *v4;
    v4[9] = v14;
LABEL_10:
    v13 = 1;
    v7 = 1;
    return (v13 | (v7 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(float &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 28);
    *(*a2 + 28) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 28) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 48))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 40);
        *(v4 + 48) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C4099C38B47);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_25610EEC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C4099C38B47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(float)::{lambda(float &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 48))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 40);
        *(v4 + 48) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_timing(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__assign_alt[abi:ne200100]<1ul,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

BOOL LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 40);
    *(a1 + 48) = 0;
  }

  v6 = *a1;
  v7 = (a2 + 4);
  v8 = *a2;
  if (*a1 == *a2)
  {
    LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_timing(a1, v7, a3);
  }

  else
  {
    v9 = *(a2 + 28);
    if (v9 < 0.0)
    {
      operator new();
    }

    *v12 = *v7;
    *&v12[16] = *(a2 + 20);
    *&v12[24] = 0;
    LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_set_timing(a1, v12);
    v10 = *a2;
    *a1 = *a2;
    *(a1 + 16) = *&v12[12];
    *(a1 + 4) = *v12;
    if (*(a1 + 20) <= 0.0)
    {
      *(a1 + 32) = v10;
      *(a1 + 36) = v10;
    }

    else if (v9 > 0.0)
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(a1, v9);
    }
  }

  return v6 != v8;
}

void LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_timing(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 40);
    *(a1 + 48) = 0;
  }

  if (a3)
  {
    v6 = *(a1 + 20);
    if (v6 > 0.0)
    {
      if ((v7 = *(a1 + 28), v8 = v6 - v7, v9 = *(a1 + 24) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_set_timing(a1, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }
}

void LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_set_timing(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return;
  }

  v5 = *(a2 + 4);
  v6 = a1 + 4;
  if (*(a1 + 20) > 0.0 && v5 > 0.0 && *v6 != *a2)
  {
    v7 = (*a2 * (1.0 - *v6)) / (*v6 * (1.0 - *a2));
    v8 = (COERCE_INT(fabs(v7)) - 0x800000) >> 24;
    v9 = v7 < 0.0 || v8 > 0x7E;
    if (!v9 || (LODWORD(v7) - 1) <= 0x7FFFFE)
    {
      v11 = *(a1 + 32);
      v12 = *a1;
      if (v11 != *a1)
      {
        v13 = 1.0 - v7;
        v15 = v12 > 0.0 && v11 < 0.0;
        v17 = v12 < 0.0 && v11 > 0.0;
        if (v17 || v15)
        {
          v11 = (v13 * v12) + ((1.0 - v13) * v11);
          goto LABEL_31;
        }

        if (v11 == 0.0)
        {
          if (v13 <= 0.0)
          {
            goto LABEL_31;
          }
        }

        else if (v13 == 0.0)
        {
          goto LABEL_31;
        }

        if (v12 == 0.0)
        {
          if (v13 < 1.0)
          {
LABEL_43:
            v20 = fminf(v11, v12);
            v21 = fabsf(v11);
            v22 = fabsf(v12);
            if (v20 >= 0.0)
            {
              v21 = *(a1 + 32);
              v22 = *a1;
            }

            if (v11 == 0.0)
            {
              v23 = 1.1755e-38;
            }

            else
            {
              v23 = v21;
            }

            if (v12 == 0.0)
            {
              v24 = 1.1755e-38;
            }

            else
            {
              v24 = v22;
            }

            v25 = powf(v23, 1.0 - v13);
            v26 = v25 * powf(v24, v13);
            v11 = -v26;
            if (v20 >= 0.0)
            {
              v11 = v26;
            }

            goto LABEL_31;
          }
        }

        else if (v13 != 1.0)
        {
          goto LABEL_43;
        }

        v11 = *a1;
      }

LABEL_31:
      *(a1 + 32) = v11;
    }
  }

  v18 = *a2;
  *(v6 + 12) = *(a2 + 12);
  *v6 = v18;
  if (v2 <= 0.0)
  {
    if (v5 > 0.0)
    {
      return;
    }

    goto LABEL_38;
  }

  *(a1 + 28) = 0;
  if (v5 <= 0.0)
  {
LABEL_38:
    v19 = *a1;
    *(a1 + 32) = *a1;
    *(a1 + 36) = v19;
    return;
  }

  LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(a1, v2);
}

uint64_t LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 48);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829AF8 + v2))(v9, a1 + 40))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 48);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829B10 + v5))(&v11, a1 + 40);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

float *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_update(float *result, float a2)
{
  v3 = result[5];
  if (v3 <= 0.0)
  {
    goto LABEL_23;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[7] + a2;
    result[7] = v5;
    if (v5 < v3)
    {
      v6 = fmax((1.0 - powf(result[1], a2)), 0.0);
      v7 = v4[8];
      v8 = *v4;
      if (v7 == *v4)
      {
        goto LABEL_25;
      }

      v10 = v8 > 0.0 && v7 < 0.0;
      v12 = v8 < 0.0 && v7 > 0.0;
      if (v12 || v10)
      {
        v7 = (v8 * v6) + ((1.0 - v6) * v7);
        goto LABEL_25;
      }

      if (v7 == 0.0)
      {
        if (v6 <= 0.0)
        {
          goto LABEL_25;
        }
      }

      else if (v6 == 0.0)
      {
        goto LABEL_25;
      }

      if (v8 == 0.0)
      {
        if (v6 < 1.0)
        {
LABEL_49:
          v21 = fminf(v7, v8);
          v22 = fabsf(v7);
          v23 = fabsf(v8);
          if (v21 >= 0.0)
          {
            v22 = v4[8];
            v23 = *v4;
          }

          if (v7 == 0.0)
          {
            v22 = 1.1755e-38;
          }

          if (v8 == 0.0)
          {
            v24 = 1.1755e-38;
          }

          else
          {
            v24 = v23;
          }

          v25 = powf(v22, 1.0 - v6);
          v7 = v25 * powf(v24, v6);
          if (v21 < 0.0)
          {
            v7 = -v7;
          }

LABEL_25:
          v4[8] = v7;
          v16 = v4[9];
          if (v16 != v7)
          {
            v18 = v16 < 0.0 && v7 > 0.0;
            v20 = v16 > 0.0 && v7 < 0.0;
            if (v20 || v18)
            {
              v16 = (v7 * v6) + ((1.0 - v6) * v16);
              goto LABEL_44;
            }

            if (v16 == 0.0)
            {
              if (v6 <= 0.0)
              {
                goto LABEL_44;
              }
            }

            else if (v6 == 0.0)
            {
              goto LABEL_44;
            }

            if (v7 == 0.0)
            {
              if (v6 < 1.0)
              {
LABEL_62:
                v26 = fminf(v7, v16);
                v27 = fabsf(v16);
                v28 = fabsf(v7);
                if (v26 >= 0.0)
                {
                  v27 = v4[9];
                  v28 = v7;
                }

                if (v16 == 0.0)
                {
                  v29 = 1.1755e-38;
                }

                else
                {
                  v29 = v27;
                }

                if (v7 == 0.0)
                {
                  v30 = 1.1755e-38;
                }

                else
                {
                  v30 = v28;
                }

                v31 = powf(v29, 1.0 - v6);
                v32 = v31 * powf(v30, v6);
                v16 = -v32;
                if (v26 >= 0.0)
                {
                  v16 = v32;
                }

                goto LABEL_44;
              }
            }

            else if (v6 != 1.0)
            {
              goto LABEL_62;
            }

            v16 = v7;
          }

LABEL_44:
          v15 = 0;
          v4[9] = v16;
          v14 = v5 >= v4[6];
          return (v14 | (v15 << 8));
        }
      }

      else if (v6 != 1.0)
      {
        goto LABEL_49;
      }

      v7 = *v4;
      goto LABEL_25;
    }

    result[1] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    *(v4 + 3) = 0;
    v4[5] = 0.0;
    v13 = *v4;
    v4[8] = *v4;
    v4[9] = v13;
LABEL_23:
    v14 = 1;
    v15 = 1;
    return (v14 | (v15 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(float)::{lambda(float &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 28);
    *(*a2 + 28) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 28) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 48))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 40);
        *(v4 + 48) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C4099C38B47);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_25610F9E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C4099C38B47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(float)::{lambda(float &)#1}::operator()<std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_update(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 48))
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v4 + 40);
        *(v4 + 48) = 0;
      }

      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::set_timing(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::update(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      LAUI_uniform_cubic_b_spline_renderer::animator_t<float,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)1>::_update(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

BOOL _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 136))
  {
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1 + 128);
    *(a1 + 136) = 0;
  }

  v6 = vmulq_f64(*(a1 + 16), *(a2 + 16)).f64[0] + vaddvq_f64(vmulq_f64(*a1, *a2));
  if (v6 == 1.0)
  {
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(a1, a2 + 32, a3);
  }

  else
  {
    v7 = *(a2 + 56);
    if (v7 < 0.0)
    {
      operator new();
    }

    *v11 = *(a2 + 32);
    *&v11[16] = *(a2 + 48);
    *&v11[24] = 0;
    _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(a1, v11);
    v8 = *a2;
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
    *(a1 + 44) = *&v11[12];
    *(a1 + 32) = *v11;
    if (*(a1 + 48) <= 0.0)
    {
      *(a1 + 64) = v8;
      *(a1 + 80) = v9;
      *(a1 + 96) = v8;
      *(a1 + 112) = v9;
    }

    else if (v7 > 0.0)
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(a1, v7);
    }
  }

  return v6 != 1.0;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (*(result + 136))
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(result + 128);
    *(v5 + 136) = 0;
  }

  if (a3)
  {
    v6 = *(v5 + 48);
    if (v6 > 0.0)
    {
      if ((v7 = *(v5 + 56), v8 = v6 - v7, v9 = *(v5 + 52) - v7, v10 = *(a2 + 24), v11 = *(a2 + 16) - v10, v12 = *(a2 + 20) - v10, (a3 & 2) != 0) && (v11 >= v8 ? (v13 = v12 < v9) : (v13 = 1), v13) || (a3 & 4) != 0 && (v11 <= v8 ? (v14 = v12 <= v9) : (v14 = 0), !v14))
      {
        if (v10 >= 0.0)
        {

          return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(v5, a2);
        }

        else if ((v8 + v10) > 0.0)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE11_set_timingERKNS_18animation_timing_tE(uint64_t result, __int128 *a2)
{
  v2 = *(a2 + 6);
  if (v2 < 0.0)
  {
    __break(1u);
    return result;
  }

  v3 = *(a2 + 4);
  v4 = (result + 32);
  if (*(result + 48) > 0.0 && v3 > 0.0 && *v4 != *a2)
  {
    v5 = (*a2 * (1.0 - *v4)) / (*v4 * (1.0 - *a2));
    v6 = (COERCE_INT(fabs(v5)) - 0x800000) >> 24;
    v7 = v5 < 0.0 || v6 > 0x7E;
    if (!v7 || (LODWORD(v5) - 1) <= 0x7FFFFE)
    {
      v9 = *(result + 64);
      v10 = *(result + 80);
      v11 = *(result + 16);
      if (vmulq_f64(v10, v11).f64[0] + vaddvq_f64(vmulq_f64(v9, *result)) != 1.0)
      {
        v12 = 1.0 - v5;
        v13 = (1.0 - v12);
        v14 = v12;
        v9 = vmlaq_n_f64(vmulq_n_f64(*result, v14), v9, v13);
        v10 = vmlaq_n_f64(vmulq_n_f64(v11, v14), v10, v13);
      }

      *(result + 64) = v9;
      *(result + 80) = v10;
    }
  }

  v15 = *a2;
  *(result + 44) = *(a2 + 12);
  *v4 = v15;
  if (v2 <= 0.0)
  {
    if (v3 > 0.0)
    {
      return result;
    }
  }

  else
  {
    *(result + 56) = 0;
    if (v3 > 0.0)
    {
      return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(result, v2);
    }
  }

  v16 = *result;
  v17 = *(result + 16);
  *(result + 64) = *result;
  *(result + 80) = v17;
  *(result + 96) = v16;
  *(result + 112) = v17;
  return result;
}

uint64_t _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(uint64_t a1, float a2)
{
  v10 = a2;
  v11 = a1;
  v2 = *(a1 + 136);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9[0] = &v11;
  if ((*(&off_286829B28 + v2))(v9, a1 + 128))
  {
    if (a2 == 0.0)
    {
      LOBYTE(v6) = 0;
      v7 = 0;
    }

    else
    {
      v9[0] = a1;
      v9[1] = &v10;
      v5 = *(a1 + 136);
      if (v5 == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v11 = v9;
      v6 = (*(&off_286829B40 + v5))(&v11, a1 + 128);
      v7 = HIBYTE(v6);
    }
  }

  else
  {
    LOBYTE(v6) = 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm2ESE_SE_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 2)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 2;
  }

  return result;
}

float *_ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE7_updateEf(float *result, float a2)
{
  v3 = result[12];
  if (v3 <= 0.0)
  {
    goto LABEL_10;
  }

  if (a2 >= 0.0)
  {
    v4 = result;
    v5 = result[14] + a2;
    result[14] = v5;
    if (v5 < v3)
    {
      v6 = fmax((1.0 - powf(result[8], a2)), 0.0);
      v7 = *(v4 + 16);
      v8 = *(v4 + 20);
      v9 = *(v4 + 4);
      if (vmulq_f64(v8, v9).f64[0] + vaddvq_f64(vmulq_f64(v7, *v4)) != 1.0)
      {
        v10 = (1.0 - v6);
        v7 = vmlaq_n_f64(vmulq_n_f64(*v4, v6), v7, v10);
        v8 = vmlaq_n_f64(vmulq_n_f64(v9, v6), v8, v10);
      }

      *(v4 + 4) = v7;
      *(v4 + 5) = v8;
      v11 = *(v4 + 24);
      v12 = *(v4 + 28);
      if (vmulq_f64(v8, v12).f64[0] + vaddvq_f64(vmulq_f64(v7, v11)) != 1.0)
      {
        v13 = (1.0 - v6);
        v14 = v6;
        v11 = vmlaq_n_f64(vmulq_n_f64(v7, v14), v11, v13);
        v12 = vmlaq_n_f64(vmulq_n_f64(v8, v14), v12, v13);
      }

      v15 = 0;
      *(v4 + 6) = v11;
      *(v4 + 7) = v12;
      v16 = v5 >= v4[13];
      return (v16 | (v15 << 8));
    }

    result[8] = fmaxf(fminf(nexttowardf(1.0, 0.0), 0.0), 0.0);
    *(v4 + 36) = 0;
    *(v4 + 44) = 0;
    *(v4 + 6) = 0;
    v4[14] = 0.0;
    v17 = *v4;
    v18 = *(v4 + 1);
    *(v4 + 4) = *v4;
    *(v4 + 5) = v18;
    *(v4 + 6) = v17;
    *(v4 + 7) = v18;
LABEL_10:
    v16 = 1;
    v15 = 1;
    return (v16 | (v15 << 8));
  }

  __break(1u);
  return result;
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_target_tIS1_EENS8_14default_deleteISB_EEEEEENS_15animator_statusES5_(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 56);
    *(*a2 + 56) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 56) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 136))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 128);
        *(v4 + 136) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C4001F72B7BLL);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

void sub_2561102E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x259C5A8E0](v1, 0x1000C4001F72B7BLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEfENKUlRT_E_clINSt3__110unique_ptrINS_18animation_timing_tENS8_14default_deleteISA_EEEEEENS_15animator_statusES5_(uint64_t *result, uint64_t *a2)
{
  v2 = result[1];
  if (*v2 < 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = *result;
    v5 = *a2;
    v6 = *v2 + *(*a2 + 24);
    *(*a2 + 24) = v6;
    if (v6 >= 0.0)
    {
      *(v5 + 24) = 0;
      v9 = fmax((*v2 - v6), 0.0);
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE7_updateEf(v4, v9);
      v10 = *a2;
      *a2 = 0;
      if (*(v4 + 136))
      {
        _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v4 + 128);
        *(v4 + 136) = 0;
      }

      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE10set_timingERKNS_18animation_timing_tENS_25animation_target_option_tE(v4, v10, 6);
      MEMORY[0x259C5A8E0](v10, 0x1000C40CBDA3C1BLL);
      v7 = _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE6updateEf(v4, v6);
      v8 = HIBYTE(v7);
    }

    else
    {
      _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv3_dLNS_27animator_interpolation_typeE0EE7_updateEf(v4, *v2);
      LOBYTE(v7) = 0;
      v8 = 0;
    }

    return (v7 | (v8 << 8));
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__assignmentINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE12__assign_altB8ne200100ILm1ESB_SB_EEvRNS0_5__altIXT_ET0_EEOT1_(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a3;
    *a3 = 0;
    result = *a2;
    *a2 = v4;
    if (result)
    {

      JUMPOUT(0x259C5A8E0);
    }
  }

  else
  {
    result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv3_dEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
    v7 = *a3;
    *a3 = 0;
    *a1 = v7;
    *(a1 + 8) = 1;
  }

  return result;
}

uint64_t *std::vector<anonymous namespace::face_id_animator_t::ring_context_t>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = a2[1] + *result - v4;
  if (v4 != *result)
  {
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = v5 + v7;
      v10 = *(v5 + v7 + 16);
      *v8 = *(v5 + v7);
      *(v8 + 16) = v10;
      v11 = *(v5 + v7 + 32);
      v12 = *(v5 + v7 + 48);
      *(v8 + 64) = *(v5 + v7 + 64);
      *(v8 + 32) = v11;
      *(v8 + 48) = v12;
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v6 + v7 + 72, v5 + v7 + 72);
      *(v8 + 88) = *(v5 + v7 + 88);
      *(v8 + 96) = *(v5 + v7 + 96);
      v13 = *(v5 + v7 + 112);
      v14 = *(v5 + v7 + 128);
      v15 = *(v5 + v7 + 160);
      *(v8 + 144) = *(v5 + v7 + 144);
      *(v8 + 160) = v15;
      *(v8 + 112) = v13;
      *(v8 + 128) = v14;
      std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](v6 + v7 + 176, v5 + v7 + 176);
      *(v8 + 192) = *(v5 + v7 + 192);
      v16 = *(v5 + v7 + 208);
      v17 = *(v5 + v7 + 224);
      v18 = *(v5 + v7 + 256);
      *(v8 + 240) = *(v5 + v7 + 240);
      *(v8 + 256) = v18;
      *(v8 + 208) = v16;
      *(v8 + 224) = v17;
      _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(v6 + v7 + 272, v5 + v7 + 272);
      v7 += 288;
    }

    while (v9 + 288 != v4);
    do
    {
      _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(v5 + 272);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5 + 176);
      result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v5 + 72);
      v5 += 288;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v19 = *v3;
  *v3 = v6;
  v3[1] = v19;
  a2[1] = v19;
  v20 = v3[1];
  v3[1] = a2[2];
  a2[2] = v20;
  v21 = v3[2];
  v3[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<anonymous namespace::face_id_animator_t::ring_context_t>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 288;
    _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(i - 16);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 112);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](i - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_286829B58 + v5))(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<float>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_286829B88 + v5))(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829B70 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIN4simd5quatfEEENS_14default_deleteISE_EEEENS9_INSA_18animation_timing_tENSF_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS8_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIN4simd5quatfEEENS_14default_deleteISE_EEEENS9_INSA_18animation_timing_tENSF_ISI_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSM_1EJS8_SH_SK_EEEEEEDcSO_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<2ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::monostate,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>,std::unique_ptr<LAUI_uniform_cubic_b_spline_renderer::animation_timing_t>> &&>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

uint64_t _ZNSt3__116__variant_detail18__move_constructorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EEC2B8ne200100EOSH_(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  _ZNSt3__116__variant_detail6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_(a1, a2);
  return a1;
}

uint64_t _ZNSt3__116__variant_detail6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_(uint64_t a1, uint64_t a2)
{
  result = _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(a1);
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_286829BB8 + v5))(&v6, a2);
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteIS8_EEEENS4_INS5_18animation_timing_tENS9_ISC_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100Ev(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 != -1)
  {
    result = (*(&off_286829BA0 + v2))(&v3, result);
  }

  *(v1 + 8) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJS8_SG_SJ_EEEEEEDcSN_DpT0_(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  *a2 = 0;
  if (result)
  {
    JUMPOUT(0x259C5A8E0);
  }

  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSS_E_JONS0_6__baseILSO_1EJS8_SG_SJ_EEEEEEDcSR_DpT0_(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

void **_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_9monostateENS_10unique_ptrIN36LAUI_uniform_cubic_b_spline_renderer18animation_target_tIDv4_fEENS_14default_deleteISD_EEEENS9_INSA_18animation_timing_tENSE_ISH_EEEEEEEE19__generic_constructB8ne200100INS0_18__move_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSS_E_JONS0_6__baseILSO_1EJS8_SG_SJ_EEEEEEDcSR_DpT0_(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  *v2 = v3;
  return result;
}

BOOL std::allocator_traits<std::allocator<anonymous namespace::face_id_animator_t::ring_context_t>>::construct[abi:ne200100]<anonymous namespace::face_id_animator_t::ring_context_t,anonymous namespace::face_id_animator_t::ring_context_t::static_state_t,anonymous namespace::face_id_state_t &,void,0>(uint64_t a1, char *a2, int8x16_t *a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + 8) = 0;
  v6 = nexttowardf(1.0, 0.0);
  *(a1 + 96) = xmmword_25611D010;
  v7 = a1 + 96;
  v8 = fmaxf(fminf(v6, 0.0), 0.0);
  *(v7 - 80) = 0;
  *(v7 - 72) = 0;
  *(v7 - 64) = 0;
  *(v7 - 60) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 16) = 0;
  *(v7 - 8) = 0;
  *(v7 - 36) = 0;
  *(v7 - 44) = 0;
  *(v7 - 28) = 0;
  *(v7 + 16) = v8;
  *(v7 + 20) = 0;
  *(v7 + 28) = 0;
  *(v7 + 40) = 0;
  *(v7 + 32) = 0;
  v9 = *v7;
  *(v7 + 48) = *v7;
  *(v7 + 64) = v9;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 100) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = v8;
  *(v7 + 116) = 0;
  *(v7 + 124) = 0;
  *(v7 + 136) = 0;
  *(v7 + 128) = 0;
  *(v7 + 184) = 0;
  *(v7 + 144) = 0u;
  *(v7 + 160) = 0u;
  v10 = a3[4].u8[8];
  if (v10 > 6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((1 << v10) & 0x37) == 0)
  {
    if (v10 != 3)
    {
LABEL_12:
      v13 = *a3;
      v13.i32[3] = 0;
      v15 = v13;
      goto LABEL_13;
    }

    v15 = *a3;
    goto LABEL_10;
  }

  v11 = *a3;
  v11.i32[3] = 0;
  if (v5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v15 = vbslq_s8(vdupq_n_s32(v12), *a3, v11);
  if (v10 == 3)
  {
LABEL_10:
    if (a3[3].i64[1] < 0xAuLL)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_13:
  v16 = xmmword_25611D010;
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  LAUI_uniform_cubic_b_spline_renderer::animator_t<simd::quatf,(LAUI_uniform_cubic_b_spline_renderer::animator_interpolation_type)0>::set_target<LAUI_uniform_cubic_b_spline_renderer::animation_target_t<simd::quatf>>(v7, &v16, 0);
  v16 = v15;
  v17 = v8;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v20 = 0;
  return _ZN36LAUI_uniform_cubic_b_spline_renderer10animator_tIDv4_fLNS_27animator_interpolation_typeE0EE10set_targetINS_18animation_target_tIS1_EEEEbOT_NS_25animation_target_option_tE(v7 + 96, &v16, 0);
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)0,true>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 562.5) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v39) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v39), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v38 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = 0;
  v12 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v39), v10.__sinval);
  v13 = vnegq_f32(v38);
  v14 = vtrn2q_s32(v38, vtrn1q_s32(v38, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
  v16 = vrev64q_s32(v38);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v38, v10.__cosval), v16, v12, 2), v15);
  a1[1] = v17;
  v18 = vmulq_f32(v17, xmmword_25611D300);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(v18, v19, 8uLL), 0), 0, vextq_s8(v20, v20, 8uLL));
  v22 = vrev64q_s32(v18);
  v22.i32[0] = v19.i32[1];
  v22.i32[3] = v19.i32[2];
  v23 = vaddq_f32(v22, v21);
  v24 = vnegq_f32(v23);
  v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
  v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v17.f32, 1), vextq_s8(v25, v25, 8uLL), v17.f32[0]);
  v27 = vrev64q_s32(v23);
  v27.i32[0] = v24.i32[1];
  v27.i32[3] = v24.i32[2];
  v28 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v17, 3), v27, v17, 2), v26), xmmword_25611D040);
  v23.f32[0] = vaddv_f32(*v28.f32);
  *v24.i32 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 1.0) / 0.7, 0.0), 1.0);
  v29 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 0.3) / 0.6, 0.0), 1.0);
  v28.f32[0] = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + -0.3) / 0.7, 0.0), 1.0);
  v30 = vmlaq_n_f32(xmmword_25611D320, xmmword_25611D310, (*v24.i32 * *v24.i32) * ((*v24.i32 * -2.0) + 3.0));
  v31 = vmlaq_n_f32(v30, vsubq_f32(xmmword_25611D330, v30), (v29 * v29) * ((v29 * -2.0) + 3.0));
  v32 = vmlaq_n_f32(v31, vsubq_f32(xmmword_25611D340, v31), (v28.f32[0] * v28.f32[0]) * ((v28.f32[0] * -2.0) + 3.0));
  do
  {
    v42 = v32;
    v33 = *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    if (v33 <= 0.04045)
    {
      v34 = v33 / 12.92;
    }

    else
    {
      v40 = v32;
      v34 = powf((v33 + 0.055) / 1.055, 2.4);
      v32 = v40;
    }

    v41 = v32;
    *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) = v34;
    v35 = v41;
    v36 = v41;
    v36.i32[3] = v32.i32[3];
    ++v11;
    v32 = v36;
  }

  while (v11 != 3);
  v35.i32[3] = 1.0;
  a1[5] = v35;
  if (*a2 >= 675000.0)
  {
    *a2 = fmodf(*a2, 675000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)0,true>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 562.5) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v39) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v39), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v38 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = 0;
  v12 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v39), v10.__sinval);
  v13 = vnegq_f32(v38);
  v14 = vtrn2q_s32(v38, vtrn1q_s32(v38, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v38, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]);
  v16 = vrev64q_s32(v38);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  v17 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v38, v10.__cosval), v16, v12, 2), v15);
  a1[1] = v17;
  v18 = vmulq_f32(v17, xmmword_25611D300);
  v19 = vnegq_f32(v18);
  v20 = vtrn2q_s32(v18, vtrn1q_s32(v18, v19));
  v21 = vmlaq_f32(vmulq_f32(vextq_s8(v18, v19, 8uLL), 0), 0, vextq_s8(v20, v20, 8uLL));
  v22 = vrev64q_s32(v18);
  v22.i32[0] = v19.i32[1];
  v22.i32[3] = v19.i32[2];
  v23 = vaddq_f32(v22, v21);
  v24 = vnegq_f32(v23);
  v25 = vtrn2q_s32(v23, vtrn1q_s32(v23, v24));
  v26 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v23, v24, 8uLL), *v17.f32, 1), vextq_s8(v25, v25, 8uLL), v17.f32[0]);
  v27 = vrev64q_s32(v23);
  v27.i32[0] = v24.i32[1];
  v27.i32[3] = v24.i32[2];
  v28 = vmulq_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v23, v17, 3), v27, v17, 2), v26), xmmword_25611D020);
  v23.f32[0] = vaddv_f32(*v28.f32);
  *v24.i32 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 1.0) / 0.7, 0.0), 1.0);
  v29 = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + 0.3) / 0.6, 0.0), 1.0);
  v28.f32[0] = fminf(fmaxf(((v28.f32[2] + v23.f32[0]) + -0.3) / 0.7, 0.0), 1.0);
  v30 = vmlaq_n_f32(xmmword_25611D320, xmmword_25611D310, (*v24.i32 * *v24.i32) * ((*v24.i32 * -2.0) + 3.0));
  v31 = vmlaq_n_f32(v30, vsubq_f32(xmmword_25611D330, v30), (v29 * v29) * ((v29 * -2.0) + 3.0));
  v32 = vmlaq_n_f32(v31, vsubq_f32(xmmword_25611D340, v31), (v28.f32[0] * v28.f32[0]) * ((v28.f32[0] * -2.0) + 3.0));
  do
  {
    v42 = v32;
    v33 = *(&v42 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3)));
    if (v33 <= 0.04045)
    {
      v34 = v33 / 12.92;
    }

    else
    {
      v40 = v32;
      v34 = powf((v33 + 0.055) / 1.055, 2.4);
      v32 = v40;
    }

    v41 = v32;
    *(&v41 & 0xFFFFFFFFFFFFFFF3 | (4 * (v11 & 3))) = v34;
    v35 = v41;
    v36 = v41;
    v36.i32[3] = v32.i32[3];
    ++v11;
    v32 = v36;
  }

  while (v11 != 3);
  v35.i32[3] = 1.0;
  a1[5] = v35;
  if (*a2 >= 675000.0)
  {
    *a2 = fmodf(*a2, 675000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)0,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 562.5) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 675000.0)
  {
    *a2 = fmodf(*a2, 675000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<1ul,(anonymous namespace::ring_speed_t)0,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 562.5) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D350, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 1200.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 675000.0)
  {
    *a2 = fmodf(*a2, 675000.0);
  }

  return 0;
}

uint64_t anonymous namespace::ring_updater_t<0ul,(anonymous namespace::ring_speed_t)1,false>::function(float32x4_t *a1, float *a2)
{
  v4 = *a2;
  v5 = (*a2 / 1280.0) * 6.28318531;
  v6 = vrsqrte_f32(0x40000000);
  v7 = vmul_f32(v6, vrsqrts_f32(0x40000000, vmul_f32(v6, v6)));
  LODWORD(v18) = vmul_f32(v7, vrsqrts_f32(0x40000000, vmul_f32(v7, v7))).u32[0];
  v8 = __sincosf_stret(v5 * 0.5);
  v9 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2E0, v18), v8.__sinval);
  v9.i32[3] = LODWORD(v8.__cosval);
  v17 = v9;
  v9.f32[0] = (v4 / 2630.0) * 6.28318531;
  v10 = __sincosf_stret(v9.f32[0] * 0.5);
  v11 = vmulq_n_f32(vmulq_n_f32(xmmword_25611D2F0, v18), v10.__sinval);
  v12 = vnegq_f32(v17);
  v13 = vtrn2q_s32(v17, vtrn1q_s32(v17, v12));
  v14 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v17, v12, 8uLL), *v11.f32, 1), vextq_s8(v13, v13, 8uLL), v11.f32[0]);
  v15 = vrev64q_s32(v17);
  v15.i32[0] = v12.i32[1];
  v15.i32[3] = v12.i32[2];
  a1[1] = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v17, v10.__cosval), v15, v11, 2), v14);
  if (*a2 >= 3366400.0)
  {
    *a2 = fmodf(*a2, 3366400.0);
  }

  return 0;
}