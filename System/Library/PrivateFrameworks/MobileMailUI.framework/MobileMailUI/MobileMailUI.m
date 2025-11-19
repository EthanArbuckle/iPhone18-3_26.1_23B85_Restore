uint64_t sub_2149CC44C(uint64_t *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

uint64_t sub_2149CC4D0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_2149CC510()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_2149CC610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2149CC650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2149CC6D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2149CC758()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2149CC798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2149CC818()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2149CC860()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_2149CCC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2149CCDD0(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_2149CD338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2149CD760(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2149CDCE4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2149CE0B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2149CE288(_Unwind_Exception *a1)
{
  v4 = v1;

  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 24));
  _Unwind_Resume(a1);
}

void sub_2149CE424(_Unwind_Exception *a1)
{
  v4 = v1;

  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 24));
  _Unwind_Resume(a1);
}

void sub_2149CE9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2149CF0BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t _CompareMailboxHierarchyNodes(void *a1, void *a2)
{
  v4 = [a1 mailbox];
  v5 = [a2 mailbox];
  v6 = [v4 type];
  v7 = [v5 type];
  if (v6 | v7)
  {
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v8 = v7 != 0;
    }
  }

  else
  {
    v9 = [a1 displayName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [v4 displayName];
    }

    v12 = v11;

    v13 = [a2 displayName];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v5 displayName];
    }

    v16 = v15;

    v8 = [v12 localizedCaseInsensitiveCompare:v16];
  }

  return v8;
}

id _folderNameFormatString(int a1, int a2)
{
  v4 = [MEMORY[0x277CCAB68] stringWithString:@"FOUND_IN_MAILBOX_FORMAT"];
  v5 = v4;
  if (a1)
  {
    [v4 appendString:@"_WITH_ACCOUNT"];
  }

  if (a2)
  {
    [v5 appendString:@"_SHORT"];
  }

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:v5 value:&stru_2826D1AD8 table:@"Main"];

  return v7;
}

void sub_2149D1264(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2149D22A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2149D25C8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t __MarkupUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MarkupUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2149D30DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2149D37C4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2149D4CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2149D5008(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2149D51FC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2149D5458(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2149D5610(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

id _markupForInlineAttachment(void *a1, int a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = v4;
  if (a2)
  {
    [v4 appendString:{@"background-color:rgb(254, 254, 254);-apple-color-filter:none"}];
  }

  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    if (a2)
    {
      [v5 appendString:@";max-width:100%"];
    }

    [v5 appendString:@";padding:1px 0px 1px 0px"];
  }

  v14[0] = v5;
  v13[0] = @"style";
  v13[1] = @"src";
  v6 = [v3 contentID];
  v7 = MFCreateURLForContentID();
  v14[1] = v7;
  v13[2] = @"id";
  v8 = [v3 contentID];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v10 = [MEMORY[0x277D07158] htmlSnippetWithTag:@"img" includeTrailingTag:1 attributes:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_2149D5818(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

void sub_2149D7E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MessageContentRepresentationRequest;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2149D8F1C(_Unwind_Exception *a1)
{
  v8 = v6;

  _Unwind_Resume(a1);
}

void sub_2149DBB5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAddressAtomStatusManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2149DC8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  _Block_object_dispose((v32 - 120), 8);

  _Unwind_Resume(a1);
}

__CFString *MFBannerViewTypeDescription(uint64_t a1)
{
  v1 = @"Send Later";
  if (a1 == 1)
  {
    v1 = @"Read Later";
  }

  if (a1 == 2)
  {
    return @"Follow Up";
  }

  else
  {
    return v1;
  }
}

void sub_2149DDD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2149DE3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void -[MFContactCardInteractions _blockContact:](MFContactCardInteractions *self, SEL a2, id a3)
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"BLOCK_SENDER_CONFIRMATION" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [v5 alertControllerWithTitle:v7 message:0 preferredStyle:0];

  [v8 setModalPresentationStyle:7];
  v9 = +[_TtC12MobileMailUI25MFSafetyCheckWhenBlocking shared];
  [v9 prefetchSharing];

  v10 = MEMORY[0x277D750F8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"BLOCK_CONTACT" value:&stru_2826D1AD8 table:@"Main"];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __43__MFContactCardInteractions__blockContact___block_invoke;
  v20[3] = &unk_278181AD8;
  v20[4] = self;
  v13 = [v10 actionWithTitle:v12 style:2 handler:v20];
  [v8 addAction:v13];

  v14 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] mainBundle];
  v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_2826D1AD8 table:@"Main"];
  v17 = [v14 actionWithTitle:v16 style:1 handler:0];

  [v8 addAction:v17];
  if (MUISolariumFeatureEnabled() && [v4 conformsToProtocol:&unk_2826E0130])
  {
    v18 = [v8 popoverPresentationController];
    [v18 setSourceItem:v4];
  }

  v19 = [(MFContactCardInteractions *)self contactViewController];
  [v19 presentViewController:v8 animated:1 completion:0];
}

void sub_2149E110C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_2149E120C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2149E1DB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));

  objc_destroyWeak((v6 - 88));
  _Unwind_Resume(a1);
}

void sub_2149E30EC(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_2149E488C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

double __calculateYForSeeMoreButton_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) titleLabel];
  [v2 frame];
  MinY = CGRectGetMinY(v8);
  v4 = [*(a1 + 32) titleLabel];
  [v4 _firstLineBaseline];
  v6 = MinY + v5;

  return v6;
}

void sub_2149E52DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v20 = v16;

  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2149E55A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2149E5FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2149E9D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessageContentView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2149EA74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak((v41 + 32));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak(&a28);
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a38);
  objc_destroyWeak((v43 - 160));
  objc_destroyWeak((v43 - 120));
  objc_destroyWeak((v43 - 112));

  _Unwind_Resume(a1);
}

void sub_2149EAD58(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2149EB0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2149EC0A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, os_activity_scope_state_s state, id location)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_2149ECB34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2149ED120(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id CSSString(int a1)
{
  v2 = MFFloatToCSSPixelString();
  v3 = v2;
  if (a1)
  {
    v4 = [v2 stringByAppendingString:@" !important"];

    v3 = v4;
  }

  return v3;
}

id _styleSheetWithSource(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CE38B0]) initWithSource:v1 forMainFrameOnly:0];

  return v2;
}

void sub_2149EF2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v16 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2149EFCF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_2149F136C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_2149F173C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v12)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2149F19C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2149F2260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_2149F2BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2149F42BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2149F56B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2149F5E7C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2149F66D8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2149F69E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2149F7144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getQLPreviewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getQLPreviewControllerClass_softClass;
  v7 = getQLPreviewControllerClass_softClass;
  if (!getQLPreviewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getQLPreviewControllerClass_block_invoke;
    v3[3] = &unk_2781822A8;
    v3[4] = &v4;
    __getQLPreviewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2149F7A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2149F7C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2149F91B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2149F9F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2149FA454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_2149FCEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, void *a34, void *a35)
{
  objc_destroyWeak((v35 + 40));

  objc_destroyWeak((v40 + 56));
  objc_destroyWeak((v41 - 192));

  _Unwind_Resume(a1);
}

void sub_2149FD098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_2149FD4E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *a28)
{
  objc_destroyWeak((v30 + 56));
  objc_destroyWeak((v34 - 144));

  _Unwind_Resume(a1);
}

void sub_2149FE0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _MFMessageContentResizeWrapperView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void ___attachmentStyleSheet_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 pathForResource:@"attachments" ofType:@"css"];
  v3 = [v0 stringWithContentsOfFile:v2 encoding:4 error:0];

  v4 = _styleSheetWithSource(v3);

  v5 = _attachmentStyleSheet_sInstance;
  _attachmentStyleSheet_sInstance = v4;
}

void ___notWideStyleSheet_block_invoke()
{
  v2 = [MFMessageContentView _styleSheetWithPadding:0 useWideLayout:0.0, 16.0, 0.0, 16.0];
  v0 = _styleSheetWithSource(v2);
  v1 = _notWideStyleSheet_sInstance;
  _notWideStyleSheet_sInstance = v0;
}

id __EMPrivacyStringifyRemoteContentURLStrings_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MEMORY[0x277D06DA0] preferenceEnabled:10])
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x277D07198] fullyRedactedStringForString:v2];
  }

  v4 = v3;

  return v4;
}

void __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLPreviewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getQLPreviewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageContentView.m" lineNumber:101 description:{@"Unable to find class %s", "QLPreviewController"}];

    __break(1u);
  }
}

void QuickLookLibrary()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __QuickLookLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v4[7] = 0;
    v4[8] = 0;
    v4[6] = "/System/Library/Frameworks/QuickLook.framework/QuickLook";
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageContentView.m" lineNumber:99 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __QuickLookLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getQLItemClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getQLItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getQLItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFMessageContentView.m" lineNumber:100 description:{@"Unable to find class %s", "QLItem"}];

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_2149FEA90(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2149FF18C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL -[MFMessageHeaderView _blockHasWhiteOrClearBackground:](MFMessageHeaderView *self, SEL a2, id a3)
{
  v3 = [a3 backgroundColor];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    if ([v3 isEqual:v4])
    {
      v5 = 1;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] clearColor];
      v5 = [v3 isEqual:v6];
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_214A025A8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_214A03634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214A03C24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214A05F14(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_214A06198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void sub_214A06D98(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_214A06E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFWebViewLoadingController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_214A07B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_214A07DA0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_214A08CDC(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_214A08ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFWKWebViewFactory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_214A09C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_214A0A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  v19 = v18;

  _Unwind_Resume(a1);
}

id messageForFragment(void *a1)
{
  v1 = a1;
  v2 = [v1 ef_match];
  v3 = *MEMORY[0x277D06BB0];
  if ((v2[2](v2, *MEMORY[0x277D06BB0], 2048) & 1) != 0 || (v2[2](v2, v3, 2050) & 1) != 0 || v2[2](v2, v3, 2049))
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    if (!v5 || (messageForFragment(v5), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = [v7 localizedStringForKey:@"MESSAGE_UNAVAILABLE" value:&stru_2826D1AD8 table:@"Main"];
    }
  }

  else if ((v2[2](v2, *MEMORY[0x277D24EC0], 2000000) & 1) != 0 || [v1 mf_isSMIMEError])
  {
    v6 = [v1 localizedDescription];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_214A0B8C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_214A0C834()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214A0C8FC()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214A0C97C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1, a2);
  *a3 = sub_214A0C834();
  return MEMORY[0x277D82BD8](v4);
}

uint64_t sub_214A0C9E8(uint64_t *a1, void *a2)
{
  sub_214A0F15C(a1, &v5);
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2, a2);
  sub_214A0C8FC();
  return MEMORY[0x277D82BD8](v4);
}

void (*sub_214A0CA60(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC12MobileMailUI28MFNotAuthenticatedBannerView_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214A0CB0C;
}

void sub_214A0CB0C(uint64_t **a1, char a2)
{
  v7 = *a1;
  if (a2)
  {
    v4 = v7[4] + v7[5];
    v5 = v7[3];
    swift_unknownObjectRetain();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_214A0CC14(v7 + 3);
  }

  else
  {
    v2 = v7[5];
    v3 = v7[4];
    v6 = v7[3];
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  swift_endAccess();
  free(v7);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

uint64_t *sub_214A0CC14(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

id MFNotAuthenticatedBannerView.init(frame:sender:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v44 = a1;
  v75 = a2;
  v53 = "Message Not Authenticated banner title with the variable as an email address";
  v38 = 0;
  v67 = sub_214A0DD18;
  v91 = 0;
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v86 = 0;
  v87 = 0;
  v80 = 0;
  v64 = 0;
  v28 = (*(*(sub_214A1A444() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v55 = &v28 - v28;
  v29 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32698, &qword_214A35C50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v57 = &v28 - v29;
  v30 = (*(*(sub_214A1A614() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v54 = &v28 - v30;
  v49 = sub_214A1A5F4();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v31 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v64);
  v51 = &v28 - v31;
  v32 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v28 - v32;
  v33 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v50 = &v28 - v33;
  v73 = sub_214A1A464();
  v70 = *(v73 - 8);
  v71 = v73 - 8;
  v40 = *(v70 + 64);
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](v44);
  v60 = &v28 - v39;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v11);
  v72 = &v28 - v41;
  v91 = &v28 - v41;
  *&v88 = v13;
  *(&v88 + 1) = v14;
  *&v89 = v15;
  *(&v89 + 1) = v16;
  v86 = v12;
  v87 = v17;
  v90 = v6;
  swift_unknownObjectWeakInit();
  v42 = v90;
  v52 = type metadata accessor for MFNotAuthenticatedBannerView();
  v85.receiver = v42;
  v85.super_class = v52;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v76 = objc_msgSendSuper2(&v85, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x277D82BE0](v76, v18);
  v90 = v76;
  sub_214A0D724();
  v74 = sub_214A0D788();
  v80 = v74;
  v62 = 1;
  sub_214A1A5E4();
  v63 = 1;
  sub_214A1A664();
  v43 = v19;
  sub_214A1A5D4();

  sub_214A1A5C4();
  sub_214A1A664();
  v45 = v20;
  sub_214A1A5D4();

  (*(v47 + 16))(v46, v50, v49);
  (*(v47 + 32))(v51, v46, v49);
  (*(v47 + 8))(v50, v49);
  sub_214A1A604();
  sub_214A0D7B8();
  v56 = sub_214A0D81C();
  v21 = sub_214A1A4A4();
  (*(*(v21 - 8) + 56))(v57, v63);
  sub_214A0D874();
  v78[1] = v53;
  v78[2] = 76;
  v79 = 2;
  sub_214A1A454();
  KeyPath = swift_getKeyPath();
  v58 = swift_getKeyPath();
  v22 = sub_214A1A584();
  v59 = v78;
  v78[0] = v22;
  sub_214A0DB10();
  sub_214A1A434();
  sub_214A0DB88();
  (*(v70 + 16))(v60, v72, v73);
  v61 = sub_214A1A7A4();
  [v74 setAttributedTitle_];
  MEMORY[0x277D82BD8](v61);
  [v74 setAccessoryType_];
  sub_214A0DBEC();
  v65 = sub_214A1A664();
  v66 = v23;
  v68 = swift_allocObject();
  MEMORY[0x277D82BE0](v76, v24);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v76);

  v69 = sub_214A0DD20(v65, v66, v67, v68);

  [v74 setDismissAction_];
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BE0](v76, v25);
  MEMORY[0x277D82BE0](v74, v26);
  [v76 setBanner_];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v76);
  (*(v70 + 8))(v72, v73);
  MEMORY[0x277D82BD8](v74);

  MEMORY[0x277D82BD8](v90);
  return v76;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

unint64_t sub_214A0D724()
{
  v2 = qword_281190638;
  if (!qword_281190638)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281190638);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A0D7B8()
{
  v2 = qword_27CA326A0;
  if (!qword_27CA326A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA326A0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214A0D81C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t sub_214A0D874()
{
  sub_214A0F788(0);
  sub_214A1A444();
  sub_214A0F878();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326B8, &qword_214A35D38);
  sub_214A0F8F8();
  return sub_214A1A814();
}

BOOL sub_214A0D914(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;

  v5 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326B0, &qword_214A35D30);
  v6 = sub_214A1A5A4();

  return (v6 & 1) != 0;
}

uint64_t sub_214A0D9E8(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326B0, &qword_214A35D30);
  return sub_214A1A594();
}

void sub_214A0DA38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;

  sub_214A0DB10();
  sub_214A1A474();
  __break(1u);
}

void sub_214A0DA6C(uint64_t a1)
{
  v2[1] = a1;
  v1 = sub_214A1A424();
  v4 = *(v1 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  (*(v4 + 16))(v2 - v3);
  sub_214A1A414();
  __break(1u);
}

unint64_t sub_214A0DB10()
{
  v2 = qword_281190650;
  if (!qword_281190650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281190650);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A0DB88()
{
  v2 = qword_281190630;
  if (!qword_281190630)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281190630);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A0DBEC()
{
  v2 = qword_281190628;
  if (!qword_281190628)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_281190628);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214A0DC50(uint64_t a1, uint64_t a2)
{
  v5[5] = a1;
  v5[4] = a2 + 16;
  swift_beginAccess();
  v5[0] = swift_unknownObjectWeakLoadStrong();
  if (v5[0])
  {
    v4 = v5[0];
    MEMORY[0x277D82BE0](v5[0], v2);
    sub_214A0F754(v5);
    swift_endAccess();
    sub_214A0DF30();
    return MEMORY[0x277D82BD8](v4);
  }

  else
  {
    sub_214A0F754(v5);
    return swift_endAccess();
  }
}

id sub_214A0DD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_214A1A624();
  v15 = a3;
  v16 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_214A0DE14;
  v14 = &block_descriptor;
  v7 = _Block_copy(&aBlock);
  v9 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 handler:v7];
  _Block_release(v7);

  MEMORY[0x277D82BD8](v8);

  return v9;
}

uint64_t sub_214A0DE14(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);

  MEMORY[0x277D82BE0](a2, v2);
  v4(a2);
  MEMORY[0x277D82BD8](a2);
}

uint64_t *sub_214A0DF30()
{
  v5 = v0;
  v4 = sub_214A0C834();
  if (!v4)
  {
    return sub_214A0CC14(&v4);
  }

  v2 = v4;
  swift_unknownObjectRetain();
  sub_214A0CC14(&v4);
  swift_getObjectType();
  [v2 didDismissNotAuthenticatedBannerView_];
  return swift_unknownObjectRelease();
}

id MFNotAuthenticatedBannerView.__allocating_init(frame:banner:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = [objc_allocWithZone(v5) initWithFrame:a1 banner:{a2, a3, a4, a5}];
  MEMORY[0x277D82BD8](a1);
  return v8;
}

id MFNotAuthenticatedBannerView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFNotAuthenticatedBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214A0E408(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_214A1A764();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_214A1A864();
  __break(1u);
LABEL_12:
  result = sub_214A1A844();
  __break(1u);
  return result;
}

uint64_t sub_214A0E734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_214A0F6A8;
        v16 = &v37;
        sub_214A0E408(sub_214A0F6C4, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_214A1A844();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_214A1A844();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_214A1A844();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_214A1A844();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_214A1A844();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_214A1A844();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_214A1A844();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_214A1A844();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_214A1A844();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_214A1A844();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_214A1A844();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_214A1A844();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_214A1A864();
    __break(1u);
  }

  result = sub_214A1A844();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for EMCategoryType()
{
  v4 = qword_27CA326A8;
  if (!qword_27CA326A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27CA326A8);
      return v1;
    }
  }

  return v4;
}

void *sub_214A0F15C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  swift_unknownObjectRetain();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_214A0F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_214A1A844();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_214A1A844();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_214A1A844();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_214A1A844();
                __break(1u);
              }

              sub_214A1A844();
              __break(1u);
            }

            sub_214A1A844();
            __break(1u);
          }

          sub_214A1A844();
          __break(1u);
        }

        sub_214A1A844();
        __break(1u);
      }

      sub_214A1A844();
      __break(1u);
    }

    sub_214A1A844();
    __break(1u);
  }

  result = sub_214A1A844();
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214A0F788(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_214A1A444();
      v3 = sub_214A1A704();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_214A1A444();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

unint64_t sub_214A0F878()
{
  v2 = qword_281190648;
  if (!qword_281190648)
  {
    sub_214A1A444();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281190648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A0F8F8()
{
  v2 = qword_281190640;
  if (!qword_281190640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA326B8, &qword_214A35D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_281190640);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

id sub_214A0F9F4()
{
  type metadata accessor for MFSafetyCheckWhenBlocking();
  result = MFSafetyCheckWhenBlocking.__allocating_init()();
  qword_27CA326C0 = result;
  return result;
}

uint64_t *sub_214A0FA78()
{
  if (qword_27CA32648 != -1)
  {
    swift_once();
  }

  return &qword_27CA326C0;
}

uint64_t static MFSafetyCheckWhenBlocking.shared.getter()
{
  v0 = sub_214A0FA78();
  v3 = *v0;
  MEMORY[0x277D82BE0](*v0, v1);
  return v3;
}

uint64_t sub_214A0FB64()
{
  v1 = sub_214A1A574();
  __swift_allocate_value_buffer(v1, qword_27CA326C8);
  __swift_project_value_buffer(v1, qword_27CA326C8);
  sub_214A1A664();
  sub_214A1A664();
  return sub_214A1A564();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_214A0FCFC()
{
  if (qword_27CA32650 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A574();
  return __swift_project_value_buffer(v0, qword_27CA326C8);
}

uint64_t sub_214A0FD68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A0FCFC();
  v1 = sub_214A1A574();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A0FDD4()
{
  v2 = (v0 + OBJC_IVAR____TtC12MobileMailUI25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214A0FE3C(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtC12MobileMailUI25MFSafetyCheckWhenBlocking_fetchSharingTask);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t *sub_214A0FF68()
{
  v14 = &unk_214A35D80;
  ObjectType = swift_getObjectType();
  v19 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326E8, "z!");
  v16 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v17 = &v10 - v16;
  v19 = v0;
  v18 = sub_214A0FDD4();
  v13 = v18 == 0;
  v12 = v13;
  result = sub_214A1010C(&v18);
  if (v12)
  {
    v11 = 0;
    v3 = sub_214A1A744();
    (*(*(v3 - 8) + 56))(v17, 1);
    v4 = swift_allocObject();
    v5 = ObjectType;
    v6 = v11;
    v7 = v17;
    v8 = v14;
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v5;
    v9 = sub_214A10C90(v6, v6, v7, v8, v4, MEMORY[0x277D84F78] + 8);
    return sub_214A0FE3C(v9);
  }

  return result;
}

uint64_t *sub_214A1010C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_214A10138()
{
  v0[2] = v0;
  v1 = sub_214A1A574();
  v0[11] = v1;
  v4 = *(v1 - 8);
  v0[12] = v4;
  v5 = *(v4 + 64);
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v2 = v0[2];

  return MEMORY[0x2822009F8](sub_214A10228, 0);
}

uint64_t sub_214A10228()
{
  v1 = v0[14];
  v17 = v0[12];
  v18 = v0[11];
  v0[2] = v0;
  v2 = sub_214A0FCFC();
  v3 = *(v17 + 16);
  v0[15] = v3;
  v0[16] = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v18);
  v20 = sub_214A1A554();
  v19 = sub_214A1A774();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F0, &qword_214A35D98);
  v21 = sub_214A1A874();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_214A1A7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
    v13 = sub_214A146E8(0);
    v14 = sub_214A146E8(0);
    *(v16 + 56) = buf;
    *(v16 + 64) = v13;
    *(v16 + 72) = v14;
    sub_214A1473C(0, (v16 + 56));
    sub_214A1473C(0, (v16 + 56));
    *(v16 + 80) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 56;
    v15[3] = v16 + 64;
    v15[4] = v16 + 72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32738, &qword_214A35E00);
    sub_214A1702C();
    sub_214A1A6D4();

    _os_log_impl(&dword_2149C9000, v20, v19, "Fetching sharing permissions", buf, 2u);
    sub_214A1479C(v13);
    sub_214A1479C(v14);
    sub_214A1A7C4();
  }

  *(v16 + 144) = 0;
  v9 = *(v16 + 112);
  v10 = *(v16 + 88);
  v8 = *(v16 + 96);
  MEMORY[0x277D82BD8](v20);
  v4 = *(v8 + 8);
  *(v16 + 152) = v4;
  *(v16 + 160) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v9, v10);
  sub_214A1A4E4();
  *(v16 + 168) = sub_214A1A4D4();
  v11 = (MEMORY[0x277D054F8] + *MEMORY[0x277D054F8]);
  v5 = *(MEMORY[0x277D054F8] + 4);
  v6 = swift_task_alloc();
  *(v16 + 176) = v6;
  *v6 = *(v16 + 16);
  v6[1] = sub_214A1060C;

  return v11();
}

uint64_t sub_214A1060C()
{
  v5 = *v0;
  v1 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  *(v5 + 16) = *v0;

  v2 = *(v5 + 16);

  return MEMORY[0x2822009F8](sub_214A10744, 0);
}

uint64_t sub_214A10744()
{
  v19 = *(v0 + 136);
  v17 = *(v0 + 128);
  v18 = *(v0 + 120);
  v1 = *(v0 + 104);
  v16 = *(v0 + 88);
  *(v0 + 16) = v0;
  v2 = sub_214A0FCFC();
  v18(v1, v2, v16);
  v21 = sub_214A1A554();
  v20 = sub_214A1A774();
  v22 = sub_214A1A874();
  if (os_log_type_enabled(v21, v20))
  {
    v3 = *(v0 + 144);
    buf = sub_214A1A7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
    v13 = sub_214A146E8(0);
    v14 = sub_214A146E8(0);
    *(v0 + 24) = buf;
    *(v0 + 32) = v13;
    *(v0 + 40) = v14;
    sub_214A1473C(0, (v0 + 24));
    sub_214A1473C(0, (v0 + 24));
    *(v0 + 48) = v22;
    v15 = swift_task_alloc();
    v15[2] = v0 + 24;
    v15[3] = v0 + 32;
    v15[4] = v0 + 40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32738, &qword_214A35E00);
    sub_214A1702C();
    sub_214A1A6D4();
    if (v3)
    {
    }

    _os_log_impl(&dword_2149C9000, v21, v20, "Completed fetching sharing permissions", buf, 2u);
    sub_214A1479C(v13);
    sub_214A1479C(v14);
    sub_214A1A7C4();
  }

  else
  {
  }

  v8 = *(v0 + 160);
  v9 = *(v0 + 152);
  v10 = *(v0 + 112);
  v11 = *(v0 + 104);
  v7 = *(v0 + 88);
  MEMORY[0x277D82BD8](v21);
  v9(v11, v7);

  v5 = *(*(v0 + 16) + 8);
  v6 = *(v0 + 16);

  return v5();
}

uint64_t sub_214A10A90()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A10B68;

  return sub_214A10138();
}

uint64_t sub_214A10B68()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_214A10C90(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  v48 = a6;
  v49 = "Fatal error";
  v50 = "Unexpectedly found nil while unwrapping an Optional value";
  v51 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v52 = &unk_214A35E10;
  v53 = 0;
  v66 = a6;
  v54 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326E8, "z!") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v58 = &v15 - v54;

  v64 = v56;
  v65 = v57;
  sub_214A170B4(v55, v58);
  v59 = sub_214A1A744();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v58, 1) == 1)
  {
    sub_214A171DC(v58);
    v45 = 0;
  }

  else
  {
    v44 = sub_214A1A734();
    (*(v60 + 8))(v58, v59);
    v45 = v44;
  }

  v41 = v45 | 0x1C00;
  v43 = *(v57 + 16);
  v42 = *(v57 + 24);
  swift_unknownObjectRetain();

  if (v43)
  {
    v39 = v43;
    v40 = v42;
    v33 = v42;
    v34 = v43;
    swift_getObjectType();
    v35 = sub_214A1A724();
    v36 = v6;
    swift_unknownObjectRelease();
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v31 = v38;
  v32 = v37;

  if (v47)
  {
    v29 = v46;
    v30 = v47;
    v7 = v53;
    v26 = v47;
    v27 = sub_214A1A654();

    v8 = *(v27 + 16);
    sub_214A14804(v27 + 32, &v64, v48, &v62);
    if (v7)
    {
      __break(1u);
    }

    v25 = v62;

    v28 = v25;
  }

  else
  {
    v28 = 0;
  }

  v24 = v28;
  if (v28)
  {
    v18 = v24;
    v17 = v24;
    sub_214A171DC(v55);

    v19 = v17;
  }

  else
  {

    sub_214A171DC(v55);
    v20 = v64;
    v21 = v65;

    v9 = swift_allocObject();
    v10 = v20;
    v11 = v21;
    v12 = v32;
    v13 = v31;
    v22 = v9;
    v9[2] = v48;
    v9[3] = v10;
    v9[4] = v11;
    v23 = 0;
    if (v12 != 0 || v13 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v32;
      v63[3] = v31;
      v23 = v63;
    }

    v19 = swift_task_create();
  }

  v16 = v19;

  return v16;
}

uint64_t sub_214A112B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v29 = &unk_214A35D90;
  ObjectType = swift_getObjectType();
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326E8, "z!") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v24 - v36;
  v43 = MEMORY[0x28223BE20](v35);
  v44 = v6;
  v42 = v7 & 1;
  v40 = v8;
  v41 = v9;
  v39 = v5;
  v38 = sub_214A0FDD4();
  v27 = v38 == 0;
  v26 = v27;
  sub_214A1010C(&v38);
  if (v26)
  {
    sub_214A0FF68();
  }

  v25 = 0;
  v10 = sub_214A1A744();
  (*(*(v10 - 8) + 56))(v37, 1);
  MEMORY[0x277D82BE0](v28, v11);

  v12 = swift_allocObject();
  v13 = v28;
  v14 = v35;
  v15 = v31;
  v16 = v33;
  v17 = v34;
  v18 = v32;
  v19 = ObjectType;
  v20 = v25;
  v21 = v37;
  v22 = v29;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  *(v12 + 48) = v15;
  *(v12 + 56) = v16;
  *(v12 + 64) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  sub_214A10C90(v20, v20, v21, v22, v12, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214A1150C(uint64_t a1, void (*a2)(void, uint64_t, __n128), uint64_t a3)
{
  v39 = a1;
  v33 = a2;
  v32 = a3;
  v41 = sub_214A13894;
  v45 = sub_214A168A8;
  v47 = sub_214A168A0;
  v49 = sub_214A168A0;
  v52 = sub_214A168B4;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v31 = 0;
  v38 = sub_214A1A574();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = v23 - v34;
  v35 = v23 - v34;
  v65 = MEMORY[0x28223BE20](v39);
  v63 = v4;
  v64 = v5;
  v6 = sub_214A0FCFC();
  (*(v36 + 16))(v3, v6, v38);
  MEMORY[0x277D82BE0](v39, v7);
  v43 = 7;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  v56 = sub_214A1A554();
  v57 = sub_214A1A784();
  v40 = 17;
  v48 = swift_allocObject();
  *(v48 + 16) = 34;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v42 = 32;
  v8 = swift_allocObject();
  v9 = v44;
  v46 = v8;
  *(v8 + 16) = v41;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v46;
  v53 = v10;
  *(v10 + 16) = v45;
  *(v10 + 24) = v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F0, &qword_214A35D98);
  v51 = sub_214A1A874();
  v54 = v12;

  v13 = v48;
  v14 = v54;
  *v54 = v47;
  v14[1] = v13;

  v15 = v50;
  v16 = v54;
  v54[2] = v49;
  v16[3] = v15;

  v17 = v53;
  v18 = v54;
  v54[4] = v52;
  v18[5] = v17;
  sub_214A146A4();

  if (os_log_type_enabled(v56, v57))
  {
    v19 = v31;
    v24 = sub_214A1A7E4();
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
    v25 = sub_214A146E8(0);
    v26 = sub_214A146E8(1);
    v27 = &v62;
    v62 = v24;
    v28 = &v61;
    v61 = v25;
    v29 = &v60;
    v60 = v26;
    sub_214A1473C(2, &v62);
    sub_214A1473C(1, v27);
    v58 = v47;
    v59 = v48;
    sub_214A14750(&v58, v27, v28, v29);
    v30 = v19;
    if (v19)
    {

      __break(1u);
    }

    else
    {
      v58 = v49;
      v59 = v50;
      sub_214A14750(&v58, &v62, &v61, &v60);
      v23[1] = 0;
      v58 = v52;
      v59 = v53;
      sub_214A14750(&v58, &v62, &v61, &v60);
      _os_log_impl(&dword_2149C9000, v56, v57, "Failed while trying to surface Safety Check when Blocking view, due to error: %{public}s", v24, 0xCu);
      sub_214A1479C(v25);
      sub_214A1479C(v26);
      sub_214A1A7C4();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v56);
  (*(v36 + 8))(v35, v38);

  v21 = MEMORY[0x277D82BE0](v39, v20);
  v33(0, v39, v21);
  MEMORY[0x277D82BD8](v39);
}

uint64_t sub_214A11B70(void *a1)
{
  v2 = [a1 ef_publicDescription];
  v3 = sub_214A1A634();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_214A11BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v25;
  *(v8 + 369) = v24 & 1;
  *(v8 + 224) = a8;
  *(v8 + 216) = a7;
  *(v8 + 208) = a6;
  *(v8 + 200) = a5;
  *(v8 + 192) = a4;
  *(v8 + 48) = v8;
  *(v8 + 56) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 368) = 0;
  *(v8 + 72) = 0;
  *(v8 + 152) = 0;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32720, &qword_214A35DF0) - 8) + 64) + 15;
  *(v8 + 240) = swift_task_alloc();
  v10 = sub_214A1A4F4();
  *(v8 + 248) = v10;
  v14 = *(v10 - 8);
  *(v8 + 256) = v14;
  v15 = *(v14 + 64);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v11 = sub_214A1A574();
  *(v8 + 288) = v11;
  v16 = *(v11 - 8);
  *(v8 + 296) = v16;
  v17 = *(v16 + 64);
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 56) = a4;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 368) = v24 & 1;
  v12 = *(v8 + 48);

  return MEMORY[0x2822009F8](sub_214A11E80, 0);
}

uint64_t sub_214A11E80()
{
  v1 = v0[24];
  v0[6] = v0;
  v0[8] = sub_214A0FDD4();
  if (v0[8])
  {
    v10 = v14[8];
    v14[41] = v10;

    sub_214A1010C(v14 + 8);
    v7 = *(MEMORY[0x277D857E0] + 4);
    v8 = swift_task_alloc();
    v14[42] = v8;
    *v8 = v14[6];
    v8[1] = sub_214A120A8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v11, v10, v9);
  }

  else
  {
    sub_214A1010C(v14 + 8);
    v2 = v14[26];
    v12 = v14[25];

    v13 = (v12 + *v12);
    v3 = v12[1];
    v4 = swift_task_alloc();
    v14[43] = v4;
    *v4 = v14[6];
    v4[1] = sub_214A1230C;
    v5 = v14[26];

    return v13();
  }
}

uint64_t sub_214A120A8()
{
  v4 = *v0;
  v1 = *(*v0 + 336);
  *(v4 + 48) = *v0;

  v2 = *(v4 + 48);

  return MEMORY[0x2822009F8](sub_214A121C0, 0);
}

uint64_t sub_214A121C0()
{
  v1 = v0[41];
  v0[6] = v0;

  v2 = v0[26];
  v7 = v0[25];

  v9 = (v7 + *v7);
  v3 = v7[1];
  v4 = swift_task_alloc();
  v8[43] = v4;
  *v4 = v8[6];
  v4[1] = sub_214A1230C;
  v5 = v8[26];

  return v9();
}

uint64_t sub_214A1230C(uint64_t a1)
{
  v9 = *v2;
  v4 = *(*v2 + 344);
  v9[6] = *v2;
  v10 = v9 + 6;
  v9[44] = a1;
  v9[45] = v1;

  if (v1)
  {
    v7 = *v10;
    v6 = sub_214A12D10;
  }

  else
  {
    v5 = *v10;
    v6 = sub_214A1247C;
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t sub_214A1247C()
{
  v1 = *(v0 + 352);
  *(v0 + 48) = v0;
  if (!v1)
  {
    v5 = *(v51 + 320);
    v41 = *(v51 + 288);
    v6 = *(v51 + 208);
    v40 = *(v51 + 296);

    v7 = sub_214A0FCFC();
    (*(v40 + 16))(v5, v7, v41);
    v43 = sub_214A1A554();
    v42 = sub_214A1A794();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F0, &qword_214A35D98);
    v44 = sub_214A1A874();
    if (os_log_type_enabled(v43, v42))
    {
      v13 = *(v51 + 360);
      buf = sub_214A1A7E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
      v29 = sub_214A146E8(0);
      v30 = sub_214A146E8(0);
      *(v51 + 120) = buf;
      *(v51 + 128) = v29;
      *(v51 + 136) = v30;
      sub_214A1473C(0, (v51 + 120));
      sub_214A1473C(0, (v51 + 120));
      *(v51 + 144) = v44;
      v31 = swift_task_alloc();
      v31[2] = v51 + 120;
      v31[3] = v51 + 128;
      v31[4] = v51 + 136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32738, &qword_214A35E00);
      sub_214A1702C();
      sub_214A1A6D4();
      if (v13)
      {
      }

      _os_log_impl(&dword_2149C9000, v43, v42, "User does not share resources with contact being blocked", buf, 2u);
      sub_214A1479C(v29);
      sub_214A1479C(v30);
      sub_214A1A7C4();
    }

    else
    {
    }

    v25 = *(v51 + 320);
    v26 = *(v51 + 288);
    v14 = *(v51 + 224);
    v27 = *(v51 + 216);
    v24 = *(v51 + 296);
    MEMORY[0x277D82BD8](v43);
    (*(v24 + 8))(v25, v26);

    v27(0);

    goto LABEL_14;
  }

  v45 = *(v51 + 352);
  v2 = *(v51 + 312);
  v47 = *(v51 + 288);
  v3 = *(v51 + 208);
  v46 = *(v51 + 296);
  *(v51 + 152) = v45;

  v4 = sub_214A0FCFC();
  (*(v46 + 16))(v2, v4, v47);
  v49 = sub_214A1A554();
  v48 = sub_214A1A794();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F0, &qword_214A35D98);
  v50 = sub_214A1A874();
  if (os_log_type_enabled(v49, v48))
  {
    v8 = *(v51 + 360);
    v36 = sub_214A1A7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
    v37 = sub_214A146E8(0);
    v38 = sub_214A146E8(0);
    *(v51 + 160) = v36;
    *(v51 + 168) = v37;
    *(v51 + 176) = v38;
    sub_214A1473C(0, (v51 + 160));
    sub_214A1473C(0, (v51 + 160));
    *(v51 + 184) = v50;
    v39 = swift_task_alloc();
    v39[2] = v51 + 160;
    v39[3] = v51 + 168;
    v39[4] = v51 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32738, &qword_214A35E00);
    sub_214A1702C();
    sub_214A1A6D4();
    if (!v8)
    {

      _os_log_impl(&dword_2149C9000, v49, v48, "User does share resources with contact being blocked so present safety check view", v36, 2u);
      sub_214A1479C(v37);
      sub_214A1479C(v38);
      sub_214A1A7C4();

      goto LABEL_9;
    }
  }

LABEL_9:
  v33 = *(v51 + 312);
  v34 = *(v51 + 288);
  v10 = *(v51 + 224);
  v35 = *(v51 + 216);
  v32 = *(v51 + 296);
  MEMORY[0x277D82BD8](v49);
  (*(v32 + 8))(v33, v34);

  v12 = MEMORY[0x277D82BE0](v45, v11);
  v35(v45, 0, v12);
  MEMORY[0x277D82BD8](v45);

  MEMORY[0x277D82BD8](v45);
LABEL_14:
  v15 = *(v51 + 320);
  v18 = *(v51 + 312);
  v19 = *(v51 + 304);
  v20 = *(v51 + 280);
  v21 = *(v51 + 272);
  v22 = *(v51 + 264);
  v23 = *(v51 + 240);

  v16 = *(*(v51 + 48) + 8);
  v17 = *(v51 + 48);

  return v16();
}

uint64_t sub_214A12D10()
{
  v69 = v0[45];
  v70 = v0[31];
  v71 = v0[30];
  v1 = v0[26];
  v0[6] = v0;

  v2 = v69;
  v0[9] = v69;
  v3 = v69;
  v0[10] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32728, &qword_214A35DF8);
  if (swift_dynamicCast())
  {
    (*(*(v68 + 256) + 56))(*(v68 + 240), 0, 1, *(v68 + 248));
  }

  else
  {
    (*(*(v68 + 256) + 56))(*(v68 + 240), 1, 1, *(v68 + 248));
  }

  if ((*(*(v68 + 256) + 48))(*(v68 + 240), 1, *(v68 + 248)) == 1)
  {
    v61 = *(v68 + 360);
    v59 = *(v68 + 232);
    v58 = *(v68 + 224);
    v57 = *(v68 + 216);
    sub_214A16ED4(*(v68 + 240));
    v8 = v61;
    v60 = sub_214A1A484();
    sub_214A1150C(v60, v57, v58);
    MEMORY[0x277D82BD8](v60);
  }

  else
  {
    v55 = *(v68 + 280);
    v51 = *(v68 + 264);
    v54 = *(v68 + 248);
    v9 = *(v68 + 240);
    v53 = *(v68 + 256);
    v50 = *(v53 + 32);
    v50();
    v52 = *(v53 + 16);
    (v52)(v55, v51, v54);
    v56 = (*(v53 + 88))(v55, v54);
    if (v56 == *MEMORY[0x277D05510] || v56 == *MEMORY[0x277D05518])
    {
      if (*(v68 + 369))
      {
        v44 = *(v68 + 272);
        v10 = *(v68 + 264);
        v43 = *(v68 + 248);
        v47 = *(v68 + 232);
        v46 = *(v68 + 224);
        v45 = *(v68 + 216);
        v52();
        sub_214A16F7C();
        v49 = swift_allocError();
        (v50)(v11, v44, v43);
        v48 = sub_214A1A484();
        sub_214A1150C(v48, v45, v46);
        MEMORY[0x277D82BD8](v48);
      }

      else
      {
        v12 = *(v68 + 304);
        v39 = *(v68 + 288);
        v38 = *(v68 + 296);
        v13 = sub_214A0FCFC();
        (*(v38 + 16))(v12, v13, v39);
        oslog = sub_214A1A554();
        v40 = sub_214A1A774();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F0, &qword_214A35D98);
        v42 = sub_214A1A874();
        if (os_log_type_enabled(oslog, v40))
        {
          buf = sub_214A1A7E4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326F8, &qword_214A35DA0);
          v35 = sub_214A146E8(0);
          v36 = sub_214A146E8(0);
          *(v68 + 88) = buf;
          *(v68 + 96) = v35;
          *(v68 + 104) = v36;
          sub_214A1473C(0, (v68 + 88));
          sub_214A1473C(0, (v68 + 88));
          *(v68 + 112) = v42;
          v37 = swift_task_alloc();
          v37[2] = v68 + 88;
          v37[3] = v68 + 96;
          v37[4] = v68 + 104;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32738, &qword_214A35E00);
          sub_214A1702C();
          sub_214A1A6D4();

          _os_log_impl(&dword_2149C9000, oslog, v40, "Need to fetch sharing permissions again and re-try presenting safety check view if needed", buf, 2u);
          sub_214A1479C(v35);
          sub_214A1479C(v36);
          sub_214A1A7C4();
        }

        v27 = *(v68 + 304);
        v28 = *(v68 + 288);
        v33 = *(v68 + 224);
        v32 = *(v68 + 216);
        v31 = *(v68 + 208);
        v30 = *(v68 + 200);
        v29 = *(v68 + 192);
        v26 = *(v68 + 296);
        MEMORY[0x277D82BD8](oslog);
        (*(v26 + 8))(v27, v28);
        sub_214A0FE3C(0);
        sub_214A112B8(v30, v31, 1, v32, v33);
      }
    }

    else
    {
      v24 = *(v68 + 280);
      v17 = *(v68 + 272);
      v14 = *(v68 + 264);
      v25 = *(v68 + 248);
      v20 = *(v68 + 232);
      v19 = *(v68 + 224);
      v18 = *(v68 + 216);
      v23 = *(v68 + 256);
      v52();
      sub_214A16F7C();
      v22 = swift_allocError();
      (v50)(v15, v17, v25);
      v21 = sub_214A1A484();
      sub_214A1150C(v21, v18, v19);
      MEMORY[0x277D82BD8](v21);

      (*(v23 + 8))(v24, v25);
    }

    v16 = *(v68 + 360);
    (*(*(v68 + 256) + 8))(*(v68 + 264), *(v68 + 248));
  }

  v4 = *(v68 + 320);
  v62 = *(v68 + 312);
  v63 = *(v68 + 304);
  v64 = *(v68 + 280);
  v65 = *(v68 + 272);
  v66 = *(v68 + 264);
  v67 = *(v68 + 240);

  v5 = *(*(v68 + 48) + 8);
  v6 = *(v68 + 48);

  return v5();
}

uint64_t sub_214A13768(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A10B68;

  return sub_214A11BCC(a1, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_214A1389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v3 = sub_214A112AC();
  sub_214A112B8(&unk_214A35DB0, v9, v3 & 1, sub_214A16AA8, v8);
}

uint64_t sub_214A139BC(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_214A139F8, 0);
}

uint64_t sub_214A139F8()
{
  v5 = MEMORY[0x277D05500];
  *(v0 + 16) = v0;
  sub_214A1A4E4();
  *(v0 + 40) = sub_214A1A4D4();
  v7 = (v5 + *v5);
  v1 = v5[1];
  v2 = swift_task_alloc();
  v6[6] = v2;
  *v2 = v6[2];
  v2[1] = sub_214A13AE0;
  v3 = v6[4];

  return v7(v3);
}

uint64_t sub_214A13AE0(uint64_t a1)
{
  v9 = *v2;
  v3 = *(*v2 + 48);
  v9[2] = *v2;
  v10 = v9 + 2;
  v9[7] = v1;

  if (v1)
  {
    v7 = *v10;

    return MEMORY[0x2822009F8](sub_214A13C84, 0);
  }

  else
  {
    v4 = v9[5];

    v5 = *(*v10 + 8);

    return v5(a1);
  }
}

uint64_t sub_214A13C84()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v0;

  v2 = v0;
  v3 = *(*(v0 + 16) + 8);
  v4 = *(v0 + 16);
  v5 = *(v2 + 56);

  return v3();
}

uint64_t sub_214A13D24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{

  a3(a1, a2);
}

uint64_t sub_214A13EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32700, &qword_214A35DB8);
  sub_214A1A524();
  sub_214A16ABC();
  v9 = sub_214A1A6C4();

  v6 = swift_allocObject();
  *(v6 + 16) = v9;

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v3 = sub_214A112AC();
  sub_214A112B8(&unk_214A35DC8, v6, v3 & 1, sub_214A16AA8, v5);
}

uint64_t sub_214A14070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v29 = sub_214A1A504();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = &v8 - v32;
  v34 = *MEMORY[0x28223BE20](v28);
  v38 = v34;
  v35 = [v34 simpleAddress];
  if (v35)
  {
    v26 = v35;
    v21 = v35;
    v22 = sub_214A1A634();
    v23 = v2;
    MEMORY[0x277D82BD8](v21);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v19 = v25;
  v20 = v24;
  if (v25)
  {
    v17 = v20;
    v18 = v19;
    v14 = v19;
    v15 = v20;
    v36 = v20;
    v37 = v19;
    (*(v30 + 104))(v33, *MEMORY[0x277CD4730], v29);
    v5 = [v34 displayName];
    v16 = v5;
    if (v5)
    {
      v13 = v16;
      v8 = v16;
      v9 = sub_214A1A634();
      v10 = v6;
      MEMORY[0x277D82BD8](v8);
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    sub_214A1A514();
    v7 = sub_214A1A524();
    return (*(*(v7 - 8) + 56))(v27, 0, 1);
  }

  else
  {
    v3 = sub_214A1A524();
    return (*(*(v3 - 8) + 56))(v27, 1);
  }
}

uint64_t sub_214A14354(uint64_t a1)
{
  v1[4] = a1;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = a1;
  v2 = v1[2];
  return MEMORY[0x2822009F8](sub_214A14390, 0);
}

uint64_t sub_214A14390()
{
  v5 = MEMORY[0x277D05508];
  *(v0 + 16) = v0;
  sub_214A1A4E4();
  *(v0 + 40) = sub_214A1A4D4();
  v7 = (v5 + *v5);
  v1 = v5[1];
  v2 = swift_task_alloc();
  v6[6] = v2;
  *v2 = v6[2];
  v2[1] = sub_214A13AE0;
  v3 = v6[4];

  return v7(v3);
}

id MFSafetyCheckWhenBlocking.init()()
{
  v4 = 0;
  *OBJC_IVAR____TtC12MobileMailUI25MFSafetyCheckWhenBlocking_fetchSharingTask = 0;
  v3.receiver = v4;
  v3.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2, v0);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id MFSafetyCheckWhenBlocking.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFSafetyCheckWhenBlocking();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214A146E8(uint64_t a1)
{
  if (a1)
  {
    return sub_214A1A7E4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_214A1473C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_214A1479C(uint64_t result)
{
  if (result)
  {
    sub_214A1A7D4();
    return sub_214A1A7C4();
  }

  return result;
}

uint64_t sub_214A14804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    sub_214A1A844();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_214A149C4(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214A14AD8;

  return v7(a1);
}

uint64_t sub_214A14AD8()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

void *sub_214A14C38(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_214A14CD4(v4, v5, a3);
  v8 = *a1;

  sub_214A1A7F4();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t sub_214A14CD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = sub_214A14E78(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_214A16E10(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_214A16E10(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_214A14E78(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_214A1A844();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_214A15230(v22, v17, v16);
        sub_214A1A804();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_214A153AC(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_214A1A834();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_214A1A844();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *sub_214A15230(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_214A1A864();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_214A1A864();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_214A153AC(uint64_t a1, uint64_t a2)
{
  v7 = sub_214A15468(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32718, &qword_214A35DE8);
  inited = swift_initStackObject();
  v3 = sub_214A15C78(inited, 1);
  *v4 = 0;
  sub_214A15CC4();
  sub_214A15CF8(v3);

  v8 = sub_214A160A0(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_214A15468(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_214A1A674();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_214A165C0();
  }

  v10 = sub_214A160B8(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_214A1A864();
    __break(1u);
    return sub_214A165C0();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_214A161FC(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_214A1A834();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_214A161FC(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_214A1A824();
  if (v2)
  {
LABEL_29:
    sub_214A1A844();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_214A1A844();
    __break(1u);
  }

  sub_214A16EA8(v17);
  return v10;
}

uint64_t sub_214A15C78(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void sub_214A15CF8(uint64_t a1)
{
  v20 = sub_214A160A0(a1);
  v2 = sub_214A160A0(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = sub_214A165F0(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    sub_214A1A864();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_214A1675C(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    sub_214A1A844();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    sub_214A1A844();
    __break(1u);
    goto LABEL_21;
  }

  sub_214A161FC((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    sub_214A14C04();
    return;
  }

LABEL_33:
  __break(1u);
}

void *sub_214A160B8(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA32718, &qword_214A35DE8);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *sub_214A161FC(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_214A1A864();
    __break(1u);
  }

  result = sub_214A1A864();
  __break(1u);
  return result;
}

uint64_t sub_214A1634C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x216059F90](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_214A1A844();
    __break(1u);
  }

  v5 = sub_214A1A6B4();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_214A165C0()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *sub_214A165F0(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_214A160B8(v4, v6);
  if (v7)
  {
    sub_214A16764((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    sub_214A161FC((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_214A16764(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_214A1A864();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_214A1688C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_214A168C0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A16978;

  return sub_214A139BC(v5);
}

uint64_t sub_214A16978(uint64_t a1)
{
  v5 = *v1;
  v2 = *(*v1 + 24);
  *(v5 + 16) = *v1;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1);
}

unint64_t sub_214A16ABC()
{
  v2 = qword_27CA32708;
  if (!qword_27CA32708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA32700, &qword_214A35DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA32708);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214A16B44()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A16978;

  return sub_214A14354(v5);
}

unint64_t sub_214A16BFC()
{
  v2 = qword_27CA32710;
  if (!qword_27CA32710)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA32710);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t dispatch thunk of MFSafetyCheckWhenBlocking.presentSafetyCheckIfNeeded(for:completion:)()
{
  return (*((*v0 & *MEMORY[0x277D85000]) + 0x80))();
}

{
  return (*((*v0 & *MEMORY[0x277D85000]) + 0x88))();
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_214A16E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_214A16EA8(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t sub_214A16ED4(uint64_t a1)
{
  v3 = sub_214A1A4F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214A16F7C()
{
  v2 = qword_27CA32730;
  if (!qword_27CA32730)
  {
    sub_214A1A4F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA32730);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214A1702C()
{
  v2 = qword_27CA32740;
  if (!qword_27CA32740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA32738, &qword_214A35E00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA32740);
    return WitnessTable;
  }

  return v2;
}

void *sub_214A170B4(const void *a1, void *a2)
{
  v6 = sub_214A1A744();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA326E8, "z!");
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214A171DC(uint64_t a1)
{
  v3 = sub_214A1A744();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_214A17284(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A10B68;

  return sub_214A149C4(a1, v6);
}

uint64_t sub_214A173D4()
{
  v2 = (v0 + OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_category);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214A17490(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_category);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214A17568@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  *a2 = sub_214A173D4();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_214A175D4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0]();
  sub_214A17490(v4);
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_214A176A4()
{
  v2 = (v0 + OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_showDescription);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214A1776C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_showDescription);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214A1784C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0]();
  *a2 = sub_214A176A4() & 1;
  return MEMORY[0x277D82BD8](v3);
}

uint64_t sub_214A178BC(char *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0]();
  sub_214A1776C(v4 & 1);
  return MEMORY[0x277D82BD8](v3);
}

_BYTE *MFTimeSensitiveBannerView.init(category:showDescription:)(uint64_t a1, char a2)
{
  v13 = 0;
  v12 = a1;
  v11 = a2 & 1;
  *OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_category = a1;
  v13[OBJC_IVAR____TtC12MobileMailUI25MFTimeSensitiveBannerView_showDescription] = a2;
  v10.receiver = v13;
  v10.super_class = type metadata accessor for MFTimeSensitiveBannerView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x277D82BE0](v8, v2);
  v13 = v8;
  sub_214A0D724();
  v9 = sub_214A0D788();
  [v9 setActionButtonType_];
  MEMORY[0x277D82BE0](v8, v3);
  [v8 setBanner_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v8);
  sub_214A17B78(a1, a2 & 1);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v13);
  return v8;
}

uint64_t sub_214A17B78(uint64_t a1, int a2)
{
  v82 = a1;
  v81 = a2;
  v75 = sub_214A18B84;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v93 = 0;
  v78 = 0;
  v76 = (*(*(sub_214A1A4A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v77 = v33 - v76;
  v79 = (*(*(sub_214A1A614() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78);
  v80 = v33 - v79;
  v83 = sub_214A1A5F4();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v82);
  v87 = v33 - v86;
  v88 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v89 = v33 - v88;
  v90 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v91 = v33 - v90;
  v104 = v7;
  v103 = v8 & 1;
  v102 = v2;
  sub_214A173D4();
  v92 = MUITimeSensitiveImageNameForCategoryType();
  if (v92)
  {
    v73 = v92;
    v68 = v92;
    v69 = sub_214A1A634();
    v70 = v10;
    MEMORY[0x277D82BD8](v68);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v66 = v72;
  v67 = v71;
  if (v72)
  {
    v64 = v67;
    v65 = v66;
    v61 = v66;
    v62 = v67;
    v95 = v67;
    v96 = v66;
    sub_214A18BA8();
    v11 = sub_214A1A7B4();
    v63 = v11;
    if (v11)
    {
      v60 = v63;
      v59 = v63;
      v94 = v63;
      v51 = 0;
      sub_214A18C0C();
      MEMORY[0x277D82BE0](v59, v12);
      v58 = sub_214A18680(v59);
      v93 = v58;
      sub_214A173D4();
      MUIBucketFromEMCategoryType();
      v50 = MUIPlatformColorForBucket();
      [v58 setTintColor_];
      MEMORY[0x277D82BD8](v50);
      *&v14 = MEMORY[0x277D82BE0](v58, v13).n128_u64[0];
      [v58 setContentMode_];
      MEMORY[0x277D82BD8](v58);
      *&v16 = MEMORY[0x277D82BE0](v74, v15).n128_u64[0];
      v57 = [v74 banner];
      MEMORY[0x277D82BD8](v74);
      swift_getObjectType();
      v54 = sub_214A18C70();
      v53 = sub_214A1A874();
      v52 = v17;
      MEMORY[0x277D82BE0](v58, v17);
      v18 = v53;
      *v52 = v58;
      sub_214A146A4();
      v55 = v18;
      v56 = sub_214A1A6E4();

      [v57 setImageSGViews_];
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v59);
    }
  }

  v19 = v74;
  v49 = [v74 banner];
  MEMORY[0x277D82BD8](v19);
  swift_getObjectType();
  v20 = sub_214A173D4();
  sub_214A18744(v20);
  v47 = v21;
  v48 = sub_214A1A624();

  [v49 setTitle_];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  if (v81)
  {
    *&v23 = MEMORY[0x277D82BE0](v74, v22).n128_u64[0];
    v46 = [v74 banner];
    MEMORY[0x277D82BD8](v74);
    swift_getObjectType();
    sub_214A1A5E4();
    *&v41[1] = 1;
    sub_214A1A664();
    v37 = v24;
    sub_214A1A5D4();

    sub_214A173D4();
    MUIBucketFromEMCategoryType();
    v39 = MUILocalizedStringFromBucket();
    sub_214A1A634();
    v38 = v25;
    sub_214A1A5C4();

    MEMORY[0x277D82BD8](v39);
    sub_214A1A664();
    v40 = v26;
    sub_214A1A5D4();

    (*(v84 + 16))(v89, v91, v83);
    (*(v84 + 32))(v87, v89, v83);
    (*(v84 + 8))(v91, v83);
    sub_214A1A604();
    v42 = 0;
    sub_214A0D7B8();
    type metadata accessor for MFTimeSensitiveBannerView();
    v43 = sub_214A0D81C();
    sub_214A186C0();
    v97 = 0;
    v98 = 0;
    v99 = *v41 & 0x100;
    sub_214A1A644();
    v44 = v27;
    v45 = sub_214A1A624();

    [v46 setSubtitle_];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
  }

  *&v28 = MEMORY[0x277D82BE0](v74, v22).n128_u64[0];
  v36 = [v74 banner];
  MEMORY[0x277D82BD8](v74);
  swift_getObjectType();
  v29 = [v36 respondsToSelector_];
  if (v29)
  {
    MEMORY[0x277D82BE0](v36, v30);
    v29 = swift_allocObject();
    v31 = v75;
    *(v29 + 16) = v36;
    v100 = v31;
    v101 = v29;
  }

  else
  {
    v100 = 0;
    v101 = 0;
  }

  v34 = v100;
  v35 = v101;
  if (v100)
  {
    v33[1] = v34;
    v33[2] = v35;
    v33[0] = v35;
    (v34)(v29);
  }

  return MEMORY[0x277D82BD8](v36);
}

uint64_t sub_214A18744(uint64_t a1)
{
  v28 = a1;
  v23 = "Fatal error";
  v24 = "MobileMailUI/MFTimeSensitiveBannerView.swift";
  v44 = 0;
  v43 = 0;
  v25 = 0;
  v26 = (*(*(sub_214A1A4A4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v27 = &v8[-v26];
  v29 = (*(*(sub_214A1A614() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v28);
  v30 = &v8[-v29];
  v44 = v2;
  v43 = v1;
  if (v2)
  {
    switch(v28)
    {
      case 1:
        *&v15[1] = 1;
        sub_214A1A664();
        sub_214A1A5B4();
        v16 = 0;
        sub_214A0D7B8();
        type metadata accessor for MFTimeSensitiveBannerView();
        v17 = sub_214A0D81C();
        sub_214A186C0();
        v34 = 0;
        v35 = 0;
        v36 = *v15 & 0x100;
        v21 = sub_214A1A644();
        v22 = v4;
        break;
      case 2:
        *&v12[1] = 1;
        sub_214A1A664();
        sub_214A1A5B4();
        v13 = 0;
        sub_214A0D7B8();
        type metadata accessor for MFTimeSensitiveBannerView();
        v14 = sub_214A0D81C();
        sub_214A186C0();
        v37 = 0;
        v38 = 0;
        v39 = *v12 & 0x100;
        v21 = sub_214A1A644();
        v22 = v5;
        break;
      case 3:
        *&v9[1] = 1;
        sub_214A1A664();
        sub_214A1A5B4();
        v10 = 0;
        sub_214A0D7B8();
        type metadata accessor for MFTimeSensitiveBannerView();
        v11 = sub_214A0D81C();
        sub_214A186C0();
        v40 = 0;
        v41 = 0;
        v42 = *v9 & 0x100;
        v21 = sub_214A1A644();
        v22 = v6;
        break;
      default:
        sub_214A19058();
        sub_214A1A854();
        __break(1u);
        break;
    }
  }

  else
  {
    *&v18[1] = 1;
    sub_214A1A664();
    sub_214A1A5B4();
    v19 = 0;
    sub_214A0D7B8();
    type metadata accessor for MFTimeSensitiveBannerView();
    v20 = sub_214A0D81C();
    sub_214A186C0();
    v31 = 0;
    v32 = 0;
    v33 = *v18 & 0x100;
    v21 = sub_214A1A644();
    v22 = v3;
  }

  return v21;
}

unint64_t sub_214A18BA8()
{
  v2 = qword_27CA32758;
  if (!qword_27CA32758)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA32758);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A18C0C()
{
  v2 = qword_27CA32760;
  if (!qword_27CA32760)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA32760);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214A18C70()
{
  v2 = qword_27CA32768;
  if (!qword_27CA32768)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA32768);
    return ObjCClassMetadata;
  }

  return v2;
}

id MFTimeSensitiveBannerView.__allocating_init(frame:banner:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = [objc_allocWithZone(v5) initWithFrame:a1 banner:{a2, a3, a4, a5}];
  MEMORY[0x277D82BD8](a1);
  return v8;
}

id MFTimeSensitiveBannerView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFTimeSensitiveBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214A19008(uint64_t a1)
{
  v4 = [v1 initWithImage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_214A19274()
{
  sub_214A0D7B8();
  type metadata accessor for ResourceBundleClass();
  result = sub_214A0D81C();
  qword_27CA32770 = result;
  return result;
}

uint64_t *sub_214A192BC()
{
  if (qword_27CA32658 != -1)
  {
    swift_once();
  }

  return &qword_27CA32770;
}

uint64_t sub_214A1931C()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA327D8);
  __swift_project_value_buffer(v3, qword_27CA327D8);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A193B4()
{
  if (qword_27CA32660 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA327D8);
}

uint64_t sub_214A19420@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A193B4();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A19484()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA327F0);
  __swift_project_value_buffer(v3, qword_27CA327F0);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A1951C()
{
  if (qword_27CA32668 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA327F0);
}

uint64_t sub_214A19588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A1951C();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A195EC()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA32808);
  __swift_project_value_buffer(v3, qword_27CA32808);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A19684()
{
  if (qword_27CA32670 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA32808);
}

uint64_t sub_214A196F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A19684();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A19754()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA32820);
  __swift_project_value_buffer(v3, qword_27CA32820);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A197EC()
{
  if (qword_27CA32678 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA32820);
}

uint64_t sub_214A19858@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A197EC();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A198BC()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA32838);
  __swift_project_value_buffer(v3, qword_27CA32838);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A19954()
{
  if (qword_27CA32680 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA32838);
}

uint64_t sub_214A199C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A19954();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214A19A24()
{
  v3 = sub_214A1A544();
  __swift_allocate_value_buffer(v3, qword_27CA32850);
  __swift_project_value_buffer(v3, qword_27CA32850);
  sub_214A1A664();
  v0 = sub_214A192BC();
  MEMORY[0x277D82BE0](*v0, v1);
  return sub_214A1A534();
}

uint64_t sub_214A19ABC()
{
  if (qword_27CA32688 != -1)
  {
    swift_once();
  }

  v0 = sub_214A1A544();
  return __swift_project_value_buffer(v0, qword_27CA32850);
}

uint64_t sub_214A19B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A19ABC();
  v1 = sub_214A1A544();
  return (*(*(v1 - 8) + 16))(a1, v3);
}