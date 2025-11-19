id CKPreferredContentSizeCategory()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if (!v1)
  {
    v1 = *MEMORY[0x1E69DDC70];
  }

  return v1;
}

uint64_t CKConversationListContactPhotosEnabled()
{
  LOBYTE(v0) = sUserConversationListContactPhotosEnabled;
  if (sUserConversationListContactPhotosEnabled == -1)
  {
    if ((CKConversationListContactPhotosEnabled_isListening & 1) == 0)
    {
      CKConversationListContactPhotosEnabled_isListening = 1;
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _CKConversationListPhotosChanged, @"com.apple.MobileSMS.ShowContactPhotos.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v2 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v2)
    {
      v3 = v2;
      keyExistsAndHasValidFormat = 0;
      CFPreferencesAppSynchronize(v2);
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ShowContactPhotos", v3, &keyExistsAndHasValidFormat);
      CFRelease(v3);
      if (AppBooleanValue)
      {
        v5 = 1;
      }

      else
      {
        v5 = keyExistsAndHasValidFormat == 0;
      }

      v0 = v5;
      sUserConversationListContactPhotosEnabled = v0;
    }

    else
    {
      LOBYTE(v0) = sUserConversationListContactPhotosEnabled;
    }
  }

  return v0;
}

uint64_t __CKMainScreenScale_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_0()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_0 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_1()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_1 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_2()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_2 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_3()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_3 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_4()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_4 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_5()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_5 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_6()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_6 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_7()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_7 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_8()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_8 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_9()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_9 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_10()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_10 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_11()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_11 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_12()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_12 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_13()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_13 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_14()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_14 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_15()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_15 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_16()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_16 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_17()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_17 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_18()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_18 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_19()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_19 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_20()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_20 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_21()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_21 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_22()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_22 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_23()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_23 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_24()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_24 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_25()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_25 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_26()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_26 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_27()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_27 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_28()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_28 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_29()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_29 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_30()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_30 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_31()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_31 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_32()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_32 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_33()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_33 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_34()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_34 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_35()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_35 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_36()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_36 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_37()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_37 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_38()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_38 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_39()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_39 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_40()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_40 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_41()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_41 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_42()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_42 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_43()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_43 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_44()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_44 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_45()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_45 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_46()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_46 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_47()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_47 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_48()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_48 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_49()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_49 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_50()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_50 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_51()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_51 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_52()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_52 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_53()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_53 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_54()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_54 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_55()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_55 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_56()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_56 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_57()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_57 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_58()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_58 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_59()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_59 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_60()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_60 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_61()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_61 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_62()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_62 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_63()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_63 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_64()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  _MergedGlobals = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_65()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_64 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_66()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_65 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_67()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_66 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_68()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_67 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_69()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_68 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_70()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_69 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_71()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_70 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_72()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_71 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_73()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_72 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_74()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_73 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_75()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_74 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_76()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_75 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_77()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_76 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_78()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_77 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_79()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_78 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_80()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_79 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_81()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_80 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_82()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_81 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_83()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_82 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_84()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_83 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_85()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_84 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_86()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_85 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_87()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_86 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_88()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_87 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_89()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_88 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_90()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_89 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_91()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_90 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_92()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_91 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_93()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_92 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_94()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_93 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_95()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_94 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_96()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_95 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_97()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_96 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_98()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_97 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_99()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_98 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_100()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_99 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_101()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_100 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_102()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_101 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_103()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_102 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_104()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_103 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_105()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_104 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_106()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_105 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_107()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_106 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_108()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_107 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_109()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_108 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_110()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_109 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_111()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_110 = v1;
  return result;
}

uint64_t __CKMainScreenScale_block_invoke_112()
{
  result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  CKMainScreenScale_sMainScreenScale_111 = v1;
  return result;
}

id sub_190238D68(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation] = 0;
  v4[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews] = MEMORY[0x1E69E7CC0];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for CKConversationListIndicatorsView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  [v10 setMasksToBounds_];

  sub_190238E98();
  return v9;
}

id sub_190238E98()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v3 setContentMode_];
  v4 = [v2 tertiaryLabelColor];
  [v3 setTintColor_];

  v5 = *MEMORY[0x1E69DDC70];
  [v3 setMaximumContentSizeCategory_];
  [v3 setMinimumContentSizeCategory_];

  [v1 addSubview_];
  v6 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  swift_beginAccess();
  v7 = v3;
  MEMORY[0x193AF29E0]();
  if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  swift_endAccess();

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v8 setContentMode_];
  v9 = [v2 tertiaryLabelColor];
  [v8 setTintColor_];

  [v8 setMaximumContentSizeCategory_];
  [v8 setMinimumContentSizeCategory_];

  [v1 addSubview_];
  swift_beginAccess();
  v10 = v8;
  MEMORY[0x193AF29E0]();
  if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  swift_endAccess();

  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsLayout];
}

id CKPreviewTextFromMessage(void *a1, void *a2, char a3)
{
  v120 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v103 = a2;
  v6 = [v5 error];

  if (v6)
  {
    v7 = [v5 error];
    v8 = [v7 code];

    v9 = CKFrameworkBundle();
    if (v8 == 43)
    {
      [v9 localizedStringForKey:@"HAWKING_BLACKHOLED_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      [v9 localizedStringForKey:@"FAILED_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    }
    v10 = ;
    goto LABEL_8;
  }

  if ([v5 wasDetonated])
  {
    v9 = IMSharedUtilitiesFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"LOCKDOWN_ATTACHMENT_BALLOON_ONE_ATTACHMENT" value:&stru_1F04268F8 table:@"IMSharedUtilities-Offramp"];
LABEL_8:
    v11 = v10;

    v12 = 0;
    goto LABEL_9;
  }

  v15 = [v5 associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
  if (v15 == 3000 || v15 == 2000)
  {
    v16 = [MEMORY[0x1E69A5B80] sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __CKPreviewTextFromMessage_block_invoke;
    aBlock[3] = &unk_1E72F5FB8;
    v17 = v16;
    v110 = v17;
    v18 = _Block_copy(aBlock);
    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __CKPreviewTextFromMessage_block_invoke_2;
    v107[3] = &unk_1E72F5FB8;
    v19 = v17;
    v108 = v19;
    v20 = _Block_copy(v107);
    v21 = +[CKMediaObjectManager sharedInstance];
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __CKPreviewTextFromMessage_block_invoke_3;
    v104[3] = &unk_1E72F5FE0;
    v22 = v21;
    v105 = v22;
    v23 = v5;
    v106 = v23;
    v24 = _Block_copy(v104);
    v25 = [v23 messageSummaryInfo];
    v26 = [v25 objectForKey:*MEMORY[0x1E69A7210]];

    v27 = _effectStringFor(v26, [v23 isRead]);
    v28 = [v23 tapbackSummaryForConversationListUsingIsAdaptiveImageGlyphProvider:v18 isCommSafetySensitiveProvider:v20 adaptiveImageGlyphProvider:v24 effectString:v27];

    if (v28)
    {
      goto LABEL_20;
    }
  }

  v31 = [v5 retractedPartIndexes];
  v32 = [v31 count] == 0;

  if (!v32)
  {
    if ([v5 isFromMe])
    {
      v33 = CKFrameworkBundle();
      v30 = [v33 localizedStringForKey:@"PREVIEW_MESSAGE_RETRACTED_BY_ME_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
    }

    else
    {
      v33 = [v5 sender];
      v34 = [v33 _displayNameWithAbbreviation];
      v35 = MEMORY[0x1E696AEC0];
      v36 = CKFrameworkBundle();
      v37 = [v36 localizedStringForKey:@"PREVIEW_MESSAGE_RETRACTED_BY_PERSON_STATUS" value:&stru_1F04268F8 table:@"ChatKit"];
      v38 = [v35 stringWithFormat:v37, v34];

      v39 = [MEMORY[0x1E69DC668] sharedApplication];
      LODWORD(v36) = [v39 userInterfaceLayoutDirection] == 1;

      v40 = v36 ? @"\u200F" : @"\u200E";
      v30 = [(__CFString *)v40 stringByAppendingString:v38];
    }

    if (v30)
    {
      goto LABEL_30;
    }
  }

  v41 = [v5 expressiveSendStyleID];
  v30 = _effectStringFor(v41, [v5 isRead]);

  if (v30)
  {
LABEL_30:
    v28 = 0;
    v29 = 1;
  }

  else
  {
    v45 = [v5 text];
    v46 = [v45 containsAttribute:*MEMORY[0x1E69A70F8]];

    if (v46)
    {
      v28 = [v5 text];
LABEL_20:
      v29 = 0;
      v30 = 0;
      goto LABEL_31;
    }

    v29 = 0;
    v30 = 0;
    v28 = 0;
  }

LABEL_31:
  v102 = [v5 balloonBundleID];
  if (v28)
  {
    v42 = 1;
  }

  else
  {
    v42 = v29;
  }

  v43 = v30;
  if (v42 & 1) != 0 || (v43 = 0, ![v102 length]) || (a3)
  {
LABEL_56:
    if (!(v43 | v28))
    {
      v60 = v5;
      v61 = [v60 text];
      if (!v61)
      {
        v62 = [v60 plainBody];
        if (v62)
        {
          v61 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v62];
        }

        else
        {
          v61 = 0;
        }
      }

      if ([v61 length] >= 0x3E9)
      {
        if (IMOSLoggingEnabled())
        {
          v63 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = [v61 length];
            *buf = 67109376;
            *&buf[4] = v64;
            LOWORD(v115) = 1024;
            *(&v115 + 2) = 1000;
            _os_log_impl(&dword_19020E000, v63, OS_LOG_TYPE_INFO, "Body preview text is to large to use with length %d. It will be shortened to %d instead.", buf, 0xEu);
          }
        }

        v65 = [v61 attributedSubstringFromRange:{0, 1000}];

        v61 = v65;
      }

      v66 = [v60 __ck_suggestedReplyPreviewText];
      v67 = v66;
      if (v66)
      {
        v28 = v66;
      }

      else
      {
        v68 = [v60 __ck_richCardsPreviewText];
        v69 = v68;
        if (v68)
        {
          v28 = v68;
        }

        else
        {
          *buf = 0;
          v115 = buf;
          v116 = 0x3032000000;
          v117 = __Block_byref_object_copy__55;
          v118 = __Block_byref_object_dispose__55;
          v119 = 0;
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = ___bodyPreviewTextForMessage_block_invoke;
          v111[3] = &unk_1E72F6008;
          v112 = v60;
          v113 = buf;
          [v61 __im_visitMessageParts:v111];
          v28 = *(v115 + 5);

          _Block_object_dispose(buf, 8);
        }
      }
    }

    v70 = v28;
    if (!(v43 | v28))
    {
      v71 = [v5 messageSubject];
      v72 = [v71 string];
      v43 = _subjectPreviewText(v72);

      v70 = 0;
    }

    v11 = v43;
    if (!(v43 | v28))
    {
      v74 = v5;
      if ([v74 isAudioMessage] && (objc_msgSend(v74, "flags") & 0x1000000) != 0)
      {
        v75 = [v74 text];
        v76 = [v75 attribute:*MEMORY[0x1E69A68D0] atIndex:0 effectiveRange:0];

        if ([v76 length])
        {
          v77 = MEMORY[0x1E696AEC0];
          v78 = CKFrameworkBundle();
          v79 = [v78 localizedStringForKey:@"SUMMARY_AUDIO_MESSAGE_TRANSCRIPTION" value:&stru_1F04268F8 table:@"ChatKit"];
          v80 = [v77 stringWithFormat:v79, v76];

          v81 = [MEMORY[0x1E69DC668] sharedApplication];
          v82 = [v81 userInterfaceLayoutDirection] == 1;

          if (v82)
          {
            v83 = @"\u200F";
          }

          else
          {
            v83 = @"\u200E";
          }

          v84 = [(__CFString *)v83 stringByAppendingString:v80];

          v11 = v84;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
LABEL_91:
        v12 = v70;
        goto LABEL_92;
      }

      if (([v74 flags] & 0x1000000) != 0)
      {
        v87 = CKFrameworkBundle();
        v99 = [v87 localizedStringForKey:@"PREVIEW_TITLE_AUDIO_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];

        v88 = MEMORY[0x1E696AEC0];
        v101 = CKFrameworkBundle();
        v89 = CKFrameworkBundle();
        v90 = [v89 localizedStringForKey:@"SUMMARY_N_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
        v91 = [v101 localizedStringForKey:v90 value:&stru_1F04268F8 table:@"ChatKit"];
        v92 = CKLocalizedStringForNumber(&unk_1F04E8238);
        v93 = [v88 stringWithFormat:v91, v92, v99];

        v94 = [MEMORY[0x1E69DC668] sharedApplication];
        v95 = [v94 userInterfaceLayoutDirection] == 1;

        if (v95)
        {
          v96 = @"\u200F";
        }

        else
        {
          v96 = @"\u200E";
        }

        v97 = [(__CFString *)v96 stringByAppendingString:v93];

        v11 = v97;
      }

      else
      {
        v11 = 0;
      }
    }

    if (!(v11 | v28))
    {
      v73 = [v5 __ck_mediaObjects];
      v11 = [v73 ck_attachmentSummary];
    }

    goto LABEL_91;
  }

  if (![v102 isEqualToString:*MEMORY[0x1E69A6A18]])
  {
    v98 = [MEMORY[0x1E695E000] standardUserDefaults];
    v47 = [v98 objectForKey:?];
    v48 = [v47 mutableCopy];

    if (!v48)
    {
      v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v49 = MEMORY[0x1E696AEC0];
    v50 = [v103 chatIdentifier];
    v100 = [v49 stringWithFormat:@"%@-%@", v50, v102];

    v51 = [v48 objectForKey:v100];
    v52 = [v51 mutableCopy];

    if (!v52)
    {
      v52 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v53 = [v5 guid];
    v54 = [v52 objectForKey:@"kPluginSummaryTextDefaultsLastMessageGUIDKey"];
    v55 = [v54 isEqualToString:v53];

    v56 = [v52 objectForKey:@"kPluginSummaryTextDefaultsStringKey"];
    v57 = [v56 length] != 0;

    if (v55 & v57)
    {
      v43 = [v52 objectForKey:@"kPluginSummaryTextDefaultsStringKey"];
    }

    else
    {
      v58 = [v5 balloonBundleID];
      v59 = _balloonPreviewTextForBalloonBundleID(v58, v5, 0);

      v43 = v59;
      if (v59 && v53)
      {
        [v52 setObject:v53 forKey:@"kPluginSummaryTextDefaultsLastMessageGUIDKey"];
        [v52 setObject:v59 forKey:@"kPluginSummaryTextDefaultsStringKey"];
        [v48 setObject:v52 forKey:v100];
      }

      [v98 setObject:v48 forKey:@"kPluginSummaryTextDefaultsKey"];
    }

    v44 = v98;
    goto LABEL_55;
  }

  if ([v5 hasDataDetectorResults])
  {
    v44 = [v5 balloonBundleID];
    v43 = _balloonPreviewTextForBalloonBundleID(v44, v5, 0);
LABEL_55:

    goto LABEL_56;
  }

  v12 = 0;
  v11 = &stru_1F04268F8;
LABEL_92:
  if ([v11 length] >= 0x3E9)
  {
    v85 = [v11 substringWithRange:{0, 1000}];

    v11 = v85;
  }

  if ([v12 length] >= 0x3E9)
  {
    v86 = [v12 attributedSubstringFromRange:{0, 1000}];

    v12 = v86;
  }

LABEL_9:
  if (v12 | v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F04268F8;
  }

  if (!v12)
  {
    v11 = v13;
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
  }

  return v12;
}

void sub_19023A918(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x19023A39CLL);
  }

  _Unwind_Resume(exception_object);
}

id _effectStringFor(void *a1, int a2)
{
  v3 = a1;
  if ([v3 length] && ((objc_msgSend(v3, "isEqualToString:", @"com.apple.MobileSMS.expressivesend.invisibleink") & 1) != 0 || !a2))
  {
    if ([CKImpactEffectManager identifierIsValidImpactEffect:v3])
    {
      [CKImpactEffectManager maskingStringForID:v3];
    }

    else
    {
      [CKFullScreenEffectManager localizedMaskStringForEffectWithIdentifier:v3];
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void ___bodyPreviewTextForMessage_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = [v8 messagePartBody];
  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isAutomaticIncomingTranslationEnabled];

  if (v12)
  {
    v13 = [v9 messageSummaryInfo];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69A7278]];

    if (v14 && ([v9 isFromMe] & 1) == 0)
    {
      v43 = a4;
      v15 = [MEMORY[0x1E69A8138] translationMessagePartClasses];
      v53 = 0;
      v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v14 error:&v53];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 allValues];
        v19 = [v18 firstObject];

        if (v19)
        {
          v20 = [v8 messagePartIndex];
          if (v20 < [v19 count])
          {
            v39 = [v19 objectAtIndexedSubscript:v20];
            v36 = objc_alloc(MEMORY[0x1E696AAB0]);
            v34 = MEMORY[0x1E696AEC0];
            v41 = IMSharedUtilitiesFrameworkBundle();
            v33 = [v41 localizedStringForKey:@"TRANSLATION_PREFIX" value:&stru_1F04268F8 table:@"IMSharedUtilities"];
            v35 = [v39 objectForKey:@"translatedText"];
            v21 = [v35 string];
            v22 = [v34 localizedStringWithFormat:v33, v21];
            v37 = [v36 initWithString:v22];

            v10 = v37;
          }
        }
      }

      else
      {
        v19 = 0;
      }

      a4 = v43;
    }
  }

  if ([v10 length])
  {
    v23 = [v10 string];
    if (([*MEMORY[0x1E69A5F20] isEqualToString:v23] & 1) != 0 || objc_msgSend(*MEMORY[0x1E69A5F00], "isEqualToString:", v23) && !objc_msgSend(v10, "__ck_hasAdaptiveImageGlyphAtIndex:", 0))
    {
      v24 = 0;
    }

    else
    {
      v44 = a4;
      v25 = [v10 mutableCopy];
      v26 = [MEMORY[0x1E69A5B80] sharedInstance];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___bodyPreviewTextForMessagePart_block_invoke;
      aBlock[3] = &unk_1E72EBF70;
      v27 = v26;
      v52 = v27;
      v40 = _Block_copy(aBlock);
      v28 = +[CKMediaObjectManager sharedInstance];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = ___bodyPreviewTextForMessagePart_block_invoke_2;
      v48[3] = &unk_1E72F6030;
      v49 = v28;
      v50 = v9;
      v42 = v28;
      v29 = _Block_copy(v48);
      v30 = [MEMORY[0x1E69A7FC8] sharedManager];
      v31 = [v30 isFeatureEnabled];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = ___bodyPreviewTextForMessagePart_block_invoke_3;
      v45[3] = &unk_1E72F6058;
      v46 = v27;
      v47 = v31;
      v38 = v27;
      v32 = _Block_copy(v45);
      [v25 __im_insertAdaptiveImageGlyphsForFileTransfersUsingFileTransferProvider:v40 adaptiveImageGlyphProvider:v29 isCommSafetySensitiveProvider:v32];
      [v25 __im_filterAttributesForDisplayablePreviewText];
      v24 = [v25 copy];

      a4 = v44;
    }
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v24);
    *a4 = 1;
  }
}

id CKPreviewTextForDisplay(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 mutableCopy];
  [v5 __im_filterAttributesForDisplayablePreviewText];
  v6 = [v5 length];
  v7 = *MEMORY[0x1E69DB648];
  v8 = [v4 baseTextFont];
  [v5 addAttribute:v7 value:v8 range:{0, v6}];

  v9 = *MEMORY[0x1E69DB650];
  v10 = [v4 baseTextColor];
  [v5 addAttribute:v9 value:v10 range:{0, v6}];

  v11 = *MEMORY[0x1E69A70F8];
  if ([v3 containsAttribute:*MEMORY[0x1E69A70F8]])
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __CKPreviewTextForDisplay_block_invoke;
    v17 = &unk_1E72F12B8;
    v18 = v5;
    v19 = v4;
    [v3 enumerateAttribute:v11 inRange:0 options:v6 usingBlock:{0, &v14}];
  }

  [v5 ck_addDisplayableAttributesForIMTextStyleAttributes];
  v12 = [v5 copy];

  return v12;
}

void sub_19023BC54(void *a1)
{
  v1 = a1;
  NSMutableAttributedString.ck_addDisplayableAttributesForIMTextStyleAttributes()();
}

Swift::Void __swiftcall NSMutableAttributedString.ck_addDisplayableAttributesForIMTextStyleAttributes()()
{
  v29 = 1;
  v1 = IMTextStyleAttributeNameFromStyle();
  if (v1 && (v2 = v1, v3 = [v0 length], v4 = swift_allocObject(), *(v4 + 16) = sub_1908A66B8, *(v4 + 24) = &v28, v5 = swift_allocObject(), *(v5 + 16) = sub_19023C550, *(v5 + 24) = v4, v34 = sub_19023C3E0, v35 = v5, aBlock = MEMORY[0x1E69E9820], v31 = 1107296256, v32 = sub_19023C344, v33 = &block_descriptor_132, v6 = _Block_copy(&aBlock), sub_190D50920(), , objc_msgSend(v0, sel_enumerateAttribute_inRange_options_usingBlock_, v2, 0, v3, 0, v6), v2, _Block_release(v6), LOBYTE(v2) = swift_isEscapingClosureAtFileLocation(), , v1 = , (v2 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v1);
    v26 = v0;
    v27 = 2;
    v7 = IMTextStyleAttributeNameFromStyle();
    if (v7)
    {
      v8 = v7;
      v9 = [v0 length];
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1908A68D8;
      *(v10 + 24) = v25;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_19023C550;
      *(v11 + 24) = v10;
      v34 = sub_19023C3E0;
      v35 = v11;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_19023C344;
      v33 = &block_descriptor_121;
      v12 = _Block_copy(&aBlock);
      sub_190D50920();

      [v0 enumerateAttribute:v8 inRange:0 options:v9 usingBlock:{0, v12}];

      _Block_release(v12);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }
    }

    MEMORY[0x1EEE9AC00](v7);
    v26 = v0;
    v27 = 4;
    v13 = IMTextStyleAttributeNameFromStyle();
    if (v13)
    {
      v14 = v13;
      v15 = [v0 length];
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1908A68D8;
      *(v16 + 24) = v25;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_19023C550;
      *(v17 + 24) = v16;
      v34 = sub_19023C3E0;
      v35 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_19023C344;
      v33 = &block_descriptor_110;
      v18 = _Block_copy(&aBlock);
      sub_190D50920();

      [v0 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0, v18}];

      _Block_release(v18);
      LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

      if (v14)
      {
        __break(1u);
      }
    }

    MEMORY[0x1EEE9AC00](v13);
    v26 = v0;
    v27 = 8;
    v19 = IMTextStyleAttributeNameFromStyle();
    if (v19)
    {
      v20 = v19;
      v21 = [v0 length];
      v22 = swift_allocObject();
      *(v22 + 16) = sub_1908A68D8;
      *(v22 + 24) = v25;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_19023C554;
      *(v23 + 24) = v22;
      v34 = sub_19023C3E0;
      v35 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_19023C344;
      v33 = &block_descriptor_99;
      v24 = _Block_copy(&aBlock);
      sub_190D50920();

      [v0 enumerateAttribute:v20 inRange:0 options:v21 usingBlock:{0, v24}];

      _Block_release(v24);
      LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

      if (v20)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_19023C344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_190824530(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_19021E7D8(v13);
}

uint64_t sub_19023C414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD551C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19023C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  sub_19023C414(a1, v9);
  if (v10)
  {
    sub_1902188FC(0, &qword_1EAD46510);
    if (swift_dynamicCast())
    {
      if ([v8 integerValue] == 1)
      {
        a5(a2, a3);
      }
    }
  }

  else
  {
    sub_19021E7D8(v9);
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__42(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__57(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__58(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__59(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__61(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__62(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__63(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__65(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__67(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__71(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__72(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__73(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__74(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__75(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__77(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__79(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__81(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__82(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__83(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *sub_19023EC54()
{
  if ([v0 _shouldShowSlashSatelliteIcon])
  {
    v1 = sub_190837708(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    v4 = v3 + 1;
    if (v3 >= v2 >> 1)
    {
      v1 = sub_190837708((v2 > 1), v3 + 1, 1, v1);
    }

    v5 = 2;
LABEL_8:
    *(v1 + 2) = v4;
    v1[v3 + 32] = v5;
    goto LABEL_10;
  }

  if ([v0 isMuted])
  {
    v5 = 1;
    v1 = sub_190837708(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v6 = *(v1 + 3);
    v4 = v3 + 1;
    if (v3 >= v6 >> 1)
    {
      v5 = 1;
      v1 = sub_190837708((v6 > 1), v3 + 1, 1, v1);
    }

    goto LABEL_8;
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_10:
  if ([v0 _shouldShowSendLaterIcon])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_190837708(0, *(v1 + 2) + 1, 1, v1);
    }

    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_190837708((v7 > 1), v8 + 1, 1, v1);
    }

    *(v1 + 2) = v8 + 1;
    v1[v8 + 32] = 0;
  }

  return v1;
}

void sub_19023EF88(uint64_t a1, uint64_t a2)
{
  v62 = sub_190D56750();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_190D56710();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_190D566F0();
  v64 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_190D56730();
  v10 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 != 0;
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (!a2)
  {
    v13 = 0;
  }

  v66 = v13;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_190D52690();
  sub_190D52690();
  v16 = sub_19023F8D4(v14, v15);

  v17 = *(v16 + 2);
  if (!v17)
  {

LABEL_59:

    return;
  }

  v18 = v7;
  v19 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_isHighlighted;
  v63 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  swift_beginAccess();
  v59 = v19;
  swift_beginAccess();
  v20 = 0;
  v21 = (v10 + 8);
  v52[2] = "widthForVisibleIndicators";
  v53 = (v18 + 8);
  v56 = (v64 + 8);
  v60 = (v5 + 8);
  v52[1] = v16;
  v22 = (v16 + 33);
  v23 = v2;
  v64 = v2;
  while (1)
  {
    v26 = *(v22 - 1);
    v27 = *v22;
    if (v26 == 4)
    {
      if (v27 == 4)
      {
        goto LABEL_13;
      }
    }

    else if (v26 == v27)
    {
      goto LABEL_13;
    }

    v28 = *(v23 + v63);
    if ((v28 & 0xC000000000000001) == 0)
    {
      break;
    }

    sub_190D52690();
    v29 = MEMORY[0x193AF3B90](v20, v28);

    if (!v66)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v26 == 4)
    {
      if (v27 != 4)
      {
        v30 = sub_190C0E2B4(v27);
        [v29 setImage_];

        v31 = v57;
        sub_190D566E0();
        sub_190D56720();
        sub_190C0E96C(&qword_1EAD603F8, MEMORY[0x1E69820D0]);
        v32 = v58;
        sub_190D57600();
        (*v21)(v12, v65);
        (*v56)(v31, v32);
        v23 = v64;
        if (*(v64 + v59) == 1)
        {
          v33 = sub_190C0D9E8(v27);
        }

        else
        {
          v33 = sub_190C0DB04(v27);
        }

        v34 = v33;
        [v29 setTintColor_];

        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v27 <= 1)
    {
      goto LABEL_34;
    }

    if (v27 != 2)
    {
      if (v27 != 3)
      {
        goto LABEL_11;
      }

LABEL_34:
      v35 = sub_190D56ED0();
      v36 = &selRef_systemImageNamed_;
      goto LABEL_35;
    }

    v35 = sub_190D56ED0();
    v36 = &selRef__systemImageNamed_;
LABEL_35:
    v37 = [objc_opt_self() *v36];

    if (v37)
    {
      v38 = qword_1EAD51EF8;
      v39 = v37;
      if (v38 != -1)
      {
        swift_once();
      }

      v40 = qword_1EAD603C0;
      v41 = [v39 imageWithConfiguration_];

      if (v41)
      {
        v42 = v54;
        sub_190D56700();
        sub_190D56720();
        sub_190C0E96C(&qword_1EAD60400, MEMORY[0x1E6982178]);
        v43 = v55;
        sub_190D575F0();
        (*v21)(v12, v65);
        (*v53)(v42, v43);
        if (*(v64 + v59) == 1)
        {
          v44 = sub_190C0D9E8(v27);
LABEL_53:
          [v29 setTintColor_];

          goto LABEL_12;
        }

        v45 = [objc_opt_self() sharedBehaviors];
        if (!v45)
        {
          goto LABEL_61;
        }

        v46 = v45;
        v47 = [v45 theme];

        v48 = [v47 accessoryIndicatorTintColor];
        v44 = v48;
        if (v27 > 1)
        {
          if (v27 != 2)
          {
            v49 = [objc_opt_self() systemRedColor];
            v50 = v47;
            v51 = v49;

            v44 = v51;
            goto LABEL_53;
          }

          if (!v48)
          {
LABEL_50:
            v44 = [objc_opt_self() tertiaryLabelColor];
          }
        }

        else if (v27)
        {
          if (!v48)
          {
            goto LABEL_50;
          }
        }

        else if (!v48)
        {
          goto LABEL_50;
        }

        goto LABEL_53;
      }
    }

LABEL_11:
    v24 = v61;
    sub_190D566E0();
    sub_190D56720();
    sub_190C0E96C(&qword_1EAD603F0, MEMORY[0x1E69821B0]);
    v25 = v62;
    sub_190D57600();

    (*v21)(v12, v65);
    (*v60)(v24, v25);
LABEL_12:
    v23 = v64;
LABEL_13:
    ++v20;
    v22 += 2;
    if (v17 == v20)
    {
      goto LABEL_59;
    }
  }

  if (v20 < *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v29 = *(v28 + 8 * v20 + 32);
    if (v66)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_190D56720();
    sub_190D57610();
    (*v21)(v12, v65);
    goto LABEL_22;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

char *sub_19023F8D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v3 >= v2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  if (v3 >= v2)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v4 + 32;
  v17 = v7 + 32;
  v18 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v6 >= v18)
    {
      v10 = 4;
    }

    else
    {
      v10 = *(v17 + v6);
    }

    if (v3 >= v2)
    {
      v11 = *(v8 + v6);
    }

    else
    {
      v11 = v10;
    }

    if (v3 >= v2)
    {
      v12 = v10;
    }

    else
    {
      v12 = *(v8 + v6);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_190836ED8(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v13 = *(v9 + 3);
    if (v14 >= v13 >> 1)
    {
      v9 = sub_190836ED8((v13 > 1), v14 + 1, 1, v9);
    }

    ++v6;
    *(v9 + 2) = v14 + 1;
    v15 = &v9[2 * v14];
    v15[32] = v12;
    v15[33] = v11;
  }

  while (v5 != v6);
  return v9;
}

void sub_190240414(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55480);
    v4 = sub_190D57160();
    [v5 setLinkInteractions_];
  }
}

id CKAppExtensionDevelopmentTargetBundle()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 environment];
  v2 = [v1 valueForKey:@"plugin-app-extension-target"];

  return v2;
}

uint64_t sub_190242A94()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 == 1)
  {
    v3 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (!(v4 >> 62))
    {
      return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return sub_190D581C0();
  }

  if (!v2)
  {
    v6 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
    swift_beginAccess();
    v7 = *(v0 + v6);
    if (!(v7 >> 62))
    {
      return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return sub_190D581C0();
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

uint64_t sub_190242D00()
{
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  result = swift_beginAccess();
  if (*(v0 + v1))
  {
    if (*(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration))
    {
      v3 = *(v0 + OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorConfiguration);
    }

    else
    {
      v3 = MEMORY[0x1E69E7CC0];
    }

    v4 = *(v3 + 16);
    sub_190D52690();

    v5 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
    swift_beginAccess();
    v6 = *(v0 + v5);
    if (!(v6 >> 62))
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!__OFSUB__(result, v4))
      {
        return result;
      }

LABEL_11:
      __break(1u);
      return result;
    }

    result = sub_190D581C0();
    if (__OFSUB__(result, v4))
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_190242FE8()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CKConversationListIndicatorsView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_indicatorImageViews;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 >> 62)
  {
LABEL_36:
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = OBJC_IVAR____TtC7ChatKit32CKConversationListIndicatorsView_orientation;
  sub_190D52690();
  swift_beginAccess();
  if (!v3)
  {
  }

  for (i = 0; ; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AF3B90](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v8 = *(v2 + 8 * i + 32);
    }

    v9 = v8;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v11 = *&v0[v4];
    if (v11 == 1)
    {
      v12 = *&v0[v1];
      if (v12 >> 62)
      {
        v22 = sub_190D581C0();
        v14 = v22 - i;
        if (__OFSUB__(v22, i))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 - i;
        if (__OFSUB__(v13, i))
        {
          goto LABEL_33;
        }
      }

      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        goto LABEL_34;
      }

      v7 = v16 * 20.0;
      v6 = 0.0;
      goto LABEL_6;
    }

    if (v11)
    {
      break;
    }

    v17 = [v0 effectiveUserInterfaceLayoutDirection];
    v18 = i;
    if (v17 != 1)
    {
      v19 = *&v0[v1];
      if (v19 >> 62)
      {
        v23 = sub_190D581C0();
        v21 = v23 - i;
        if (__OFSUB__(v23, i))
        {
LABEL_29:
          __break(1u);
        }
      }

      else
      {
        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v20 - i;
        if (__OFSUB__(v20, i))
        {
          goto LABEL_29;
        }
      }

      v15 = __OFSUB__(v21, 1);
      v18 = v21 - 1;
      if (v15)
      {
        goto LABEL_35;
      }
    }

    v6 = v18 * 18.0;
    v7 = 0.0;
LABEL_6:
    [v9 setFrame_];

    if (v10 == v3)
    {
    }
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

BOOL CKFloatApproximatelyEqualToFloatWithTolerance(double a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
    CKFloatApproximatelyEqualToFloatWithTolerance_cold_1();
  }

  v6 = a1 - a2;
  if (a1 - a2 < 0.0)
  {
    v6 = -(a1 - a2);
  }

  return v6 < a3;
}

void sub_1902438D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CKPrewarmResumeDeferredSetup()
{
  if (CKIsRunningInMessages_onceToken != -1)
  {
    CKPrewarmLaunch_cold_1();
  }

  if (sIsRunningInMessages)
  {
    v0 = dispatch_get_global_queue(25, 0);
    dispatch_async(v0, &__block_literal_global_973);

    CKUpdatePreviewGenerationMetrics();
    CKPrewarmCKMessageEntryView();
    if (_UIEnhancedMainMenuEnabled())
    {
      v1 = +[CKMenuBarManager sharedInstance];
      [v1 deferredImageSetupForFilterCommands];

      v2 = +[CKMenuBarManager sharedInstance];
      [v2 deferredSetupForTextStyleCommands];
    }

    v3 = +[CKChatItemSizeCache sharedInstance];
    v4 = +[CKDualSIMUtilities sharedUtilities];
    [v4 prewarmConversationListSIMLabelImagesDictionary];

    v5 = dispatch_time(0, 200000000);
    v6 = dispatch_get_global_queue(21, 0);
    dispatch_after(v5, v6, &__block_literal_global_982);
  }

  if (CKPrewarmResumeDeferredSetup_onceToken != -1)
  {
    CKPrewarmResumeDeferredSetup_cold_2();
  }
}

void CKUpdatePreviewGenerationMetrics()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 previewMaxWidth];
  v5 = v2 * v4;

  HIDWORD(v6) = 1078525952;
  *&v6 = v5;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  IMSetDomainValueForKey();

  *&v9 = v2;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  IMSetDomainValueForKey();

  v7 = v2 * 50.0;
  *&v2 = v2 * 50.0;
  LODWORD(v11) = LODWORD(v2);
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  IMSetDomainValueForKey();

  *&v13 = v7;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  IMSetDomainValueForKey();
}

void __sMaximumCharacterCountString_block_invoke()
{
  v15 = 999;
  v0 = [CTMessageCenterClass() sharedMessageCenter];
  [v0 getCharacterCount:0 andMessageSplitThreshold:&v15 forSmsText:&stru_1F04268F8];

  v1 = v15;
  v2 = MEMORY[0x1E696AEC0];
  v3 = CKFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v1];
  v6 = CKLocalizedStringForNumber(v5);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
  v8 = CKLocalizedStringForNumber(v7);
  v9 = [v2 stringWithFormat:v4, v6, v8];

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];

  if (v11 == 1)
  {
    v12 = @"\u200F";
  }

  else
  {
    v12 = @"\u200E";
  }

  v13 = [(__CFString *)v12 stringByAppendingString:v9];

  v14 = sMaximumCharacterCountString_sCharacterCountString;
  sMaximumCharacterCountString_sCharacterCountString = v13;
}

id sMaximumCharacterCountString(int a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = CKFrameworkBundle();
    v3 = [v2 localizedStringForKey:@"CHARACTER_COUNT_FMT" value:&stru_1F04268F8 table:@"ChatKit"];
    v4 = CKLocalizedStringForNumber(&unk_1F04E7ED8);
    v5 = CKLocalizedStringForNumber(&unk_1F04E7ED8);
    v6 = [v1 stringWithFormat:v3, v4, v5];

    v7 = [MEMORY[0x1E69DC668] sharedApplication];
    v8 = [v7 userInterfaceLayoutDirection];

    if (v8 == 1)
    {
      v9 = @"\u200F";
    }

    else
    {
      v9 = @"\u200E";
    }

    v10 = [(__CFString *)v9 stringByAppendingString:v6];

    v11 = sMaximumCharacterCountString_sCharacterCountString;
    sMaximumCharacterCountString_sCharacterCountString = v10;
  }

  else if (sMaximumCharacterCountString_onceToken != -1)
  {
    sMaximumCharacterCountString_cold_1();
  }

  v12 = sMaximumCharacterCountString_sCharacterCountString;

  return v12;
}

id CTMessageCenterClass()
{
  v0 = CTMessageCenterClass___CTMessageCenterClass;
  if (!CTMessageCenterClass___CTMessageCenterClass)
  {
    v0 = MEMORY[0x193AF5EC0](@"CTMessageCenter", @"CoreTelephony");
    CTMessageCenterClass___CTMessageCenterClass = v0;
  }

  return v0;
}

id CKLocalizedStringForNumber(void *a1)
{
  v1 = a1;
  v2 = CKLocalizedStringForNumber_sNumberFormatter;
  if (!CKLocalizedStringForNumber_sNumberFormatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    v4 = CKLocalizedStringForNumber_sNumberFormatter;
    CKLocalizedStringForNumber_sNumberFormatter = v3;

    [CKLocalizedStringForNumber_sNumberFormatter setFormatterBehavior:1040];
    [CKLocalizedStringForNumber_sNumberFormatter setNumberStyle:0];
    v2 = CKLocalizedStringForNumber_sNumberFormatter;
  }

  v5 = [v2 stringFromNumber:v1];

  return v5;
}

double __CKPixelWidth_block_invoke()
{
  if (CKMainScreenScale_once != -1)
  {
    __CKPixelWidth_block_invoke_cold_1();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale;
  if (*&CKMainScreenScale_sMainScreenScale == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_0()
{
  if (CKMainScreenScale_once_12 != -1)
  {
    [CKChatController dragInteraction:previewForLiftingItem:session:];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_12;
  if (*&CKMainScreenScale_sMainScreenScale_12 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_0 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_1()
{
  if (CKMainScreenScale_once_14 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_0();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_14;
  if (*&CKMainScreenScale_sMainScreenScale_14 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_1 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_2()
{
  if (CKMainScreenScale_once_33 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_1();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_33;
  if (*&CKMainScreenScale_sMainScreenScale_33 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_2 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_3()
{
  if (CKMainScreenScale_once_36 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_2();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_36;
  if (*&CKMainScreenScale_sMainScreenScale_36 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_3 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_4()
{
  if (CKMainScreenScale_once_38 != -1)
  {
    [CKUIBehavior _topConversationListSpace];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_38;
  if (*&CKMainScreenScale_sMainScreenScale_38 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_4 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_5()
{
  if (CKMainScreenScale_once_44 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_3();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_44;
  if (*&CKMainScreenScale_sMainScreenScale_44 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_5 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_6()
{
  if (CKMainScreenScale_once_45 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_4();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_45;
  if (*&CKMainScreenScale_sMainScreenScale_45 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_6 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_7()
{
  if (CKMainScreenScale_once_53 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_5();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_53;
  if (*&CKMainScreenScale_sMainScreenScale_53 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_7 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_8()
{
  if (CKMainScreenScale_once_58 != -1)
  {
    [CKMessageEntryView calculateOneLinePlaceHolderCenterY:];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_58;
  if (*&CKMainScreenScale_sMainScreenScale_58 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_8 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_9()
{
  if (CKMainScreenScale_once_62 != -1)
  {
    [CKUIBehaviorMac balloonContiguousSpace];
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_62;
  if (*&CKMainScreenScale_sMainScreenScale_62 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_9 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_10()
{
  if (CKMainScreenScale_once_78 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_6();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_78;
  if (*&CKMainScreenScale_sMainScreenScale_78 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_10 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_11()
{
  if (CKMainScreenScale_once_80 != -1)
  {
    __53__CKNavigationBarCanvasView__addLaserEffectToButton___block_invoke_cold_1();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_80;
  if (*&CKMainScreenScale_sMainScreenScale_80 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_11 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_12()
{
  if (CKMainScreenScale_once_98 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_7();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_98;
  if (*&CKMainScreenScale_sMainScreenScale_98 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_12 = *&result;
  return result;
}

double __CKPixelWidth_block_invoke_13()
{
  if (CKMainScreenScale_once_100 != -1)
  {
    __CKPixelWidth_block_invoke_cold_1_8();
  }

  v0 = *&CKMainScreenScale_sMainScreenScale_100;
  if (*&CKMainScreenScale_sMainScreenScale_100 == 0.0)
  {
    v0 = 1.0;
  }

  result = ceil(v0 * 1.17549435e-38) / v0;
  CKPixelWidth_sPixel_13 = *&result;
  return result;
}

id CKBalloonViewForClass(objc_class *a1)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if (![MEMORY[0x1E696AF00] isMainThread])
  {
    v3 = 0;
LABEL_8:
    v5 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 balloonMaskSizeWithTailShape:1 isMultiline:0];
    v9 = v8;
    v11 = v10;

    v4 = [[a1 alloc] initWithFrame:{v5, v6, v9, v11}];
    goto LABEL_9;
  }

  v2 = CKBalloonViewCache();
  v3 = [v2 popObjectForKey:a1];

  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if (CKIsRunningInCKTester())
  {
    goto LABEL_8;
  }

LABEL_9:

  return v4;
}

id CKBalloonViewCache()
{
  v0 = CKBalloonViewUtilities_TestBalloonCache;
  if (!CKBalloonViewUtilities_TestBalloonCache)
  {
    if (CKBalloonViewCache_once[0] != -1)
    {
      CKBalloonViewCache_cold_1();
    }

    v0 = CKBalloonViewCache_sBalloonViewCache;
  }

  v1 = v0;

  return v1;
}

void __CKBalloonViewCache_block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateMultiCache(v0);
  v2 = CKBalloonViewCache_sBalloonViewCache;
  CKBalloonViewCache_sBalloonViewCache = v1;
}

CKMultiCache *CKCreateMultiCache(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v1 = [v2 defaultConversationViewingMessageCount];
  }

  v3 = objc_alloc_init(CKMultiCache);
  v4 = v3;
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CKMultiCache *)v3 setLimit:v1];
  }

  return v4;
}

uint64_t CKBalloonDescriptorEqualsBalloonDescriptor(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || a1[24] != a2[24])
  {
    return 0;
  }

  result = IMColorComponentsEqualToColorComponents();
  if (result)
  {
    result = IMColorComponentsEqualToColorComponents();
    if (result)
    {
      if (a1[96] == a2[96] && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && a1[120] == a2[120] && a1[121] == a2[121])
      {
        return a1[124] == a2[124];
      }

      return 0;
    }
  }

  return result;
}

void __CKIsP101_block_invoke()
{
  v0 = MGCopyAnswer();
  CKIsP101_sIsP101 = [&unk_1F04E69F0 containsObject:v0];
}

uint64_t CKIsRunningInIMTranscoderAgent()
{
  if (CKIsRunningInIMTranscoderAgent_onceToken != -1)
  {
    CKIsRunningInIMTranscoderAgent_cold_1();
  }

  return CKIsRunningInIMTranscoderAgent_isIsRunningInIMTranscoderAgent;
}

CFStringRef __CKIsRunningInIMTranscoderAgent_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.messages.IMTranscoderAgent-Mobile");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInIMTranscoderAgent_isIsRunningInIMTranscoderAgent = v2;
  return result;
}

uint64_t CKIsRunningInCKTester()
{
  if (CKIsRunningInCKTester_onceToken != -1)
  {
    CKIsRunningInCKTester_cold_1();
  }

  return CKIsRunningInCKTester_sIsRunningInCKTester;
}

CFStringRef __CKIsRunningInCKTester_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.messages.ChatKitTester");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  CKIsRunningInCKTester_sIsRunningInCKTester = v2;
  return result;
}

uint64_t type metadata accessor for CKBubblePath()
{
  result = qword_1EAD46B60;
  if (!qword_1EAD46B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19024894C()
{
  result = sub_190D56D20();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id CKBubblePath.init(frame:balloonDescriptor:)()
{
  v0 = sub_190D56D20();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = sub_190D56C50();
  v20 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  sub_190248D60(&v20 - v12);
  (*(v8 + 16))(v11, v13, v7);
  sub_190D56CD0();
  v14 = *(v1 + 16);
  v14(v4, v6, v0);
  v15 = type metadata accessor for CKBubblePath();
  v16 = objc_allocWithZone(v15);
  v14(&v16[OBJC_IVAR____TtC7ChatKit12CKBubblePath_bubblePath], v4, v0);
  v21.receiver = v16;
  v21.super_class = v15;
  v17 = objc_msgSendSuper2(&v21, sel_init);
  v18 = *(v1 + 8);
  v18(v4, v0);
  v18(v6, v0);
  (*(v8 + 8))(v13, v20);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

uint64_t sub_190248D60@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_190D56C10();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_190D56D00();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-v10];
  v12 = sub_190D56CF0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1E698F618];
  if (*(v1 + 3))
  {
    v16 = MEMORY[0x1E698F620];
  }

  (*(v13 + 104))(v15, *v16, v12);
  if (*(v1 + 121))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  if (fabs(*(v1 + 16)) < 0.001 || (*(v1 + 122) & 1) != 0)
  {
    (*(v6 + 104))(v11, *MEMORY[0x1E698F640], v5);
  }

  else
  {
    v18 = [objc_opt_self() sharedFeatureFlags];
    v23 = [v18 isRoundTailedBalloonShapeEnabled];

    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD58B30) + 48);
    (*(v13 + 16))(v11, v15, v12);
    *&v11[v19] = v17;
    if (v23)
    {
      v20 = MEMORY[0x1E698F638];
    }

    else
    {
      v20 = MEMORY[0x1E698F648];
    }

    (*(v6 + 104))(v11, *v20, v5);
  }

  (*(v6 + 16))(v9, v11, v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E698F5F0], v24);
  sub_190D56C40();
  (*(v6 + 8))(v11, v5);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_190249580(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1902495E8()
{
  result = qword_1EAD46520;
  if (!qword_1EAD46520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD46520);
  }

  return result;
}

void sub_1902496E4(void *a1)
{
  sub_1909B7718();
}

double sub_19024A2A0(void *a1, double a2, double a3, uint64_t a4, double (*a5)(char *, double, double))
{
  v9 = sub_190D56C50();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  sub_190D56C60();
  v14 = a5(v12, a2, a3);

  (*(v10 + 8))(v12, v9);
  return v14;
}

void CKPrewarmCKMessageEntryView()
{
  if ((CKPrewarmCKMessageEntryView_havePrewarmed & 1) == 0 && CKPrewarmCKMessageEntryView_onceToken != -1)
  {
    CKPrewarmCKMessageEntryView_cold_1();
  }
}

uint64_t __CKPrewarmCKMessageEntryView_block_invoke()
{
  +[CKMessageEntryView initialize];
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 entryViewlayoutMetrics];

  result = +[CKMessageEntryContentView prewarmTextView];
  CKPrewarmCKMessageEntryView_havePrewarmed = 1;
  return result;
}

BOOL CKShouldUseModernRippleAnimation()
{
  v0 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v1 = [v0 isModernMentionsAndEmojiAnimationsEnabled];

  return v1 && NSClassFromString(&cfstr_Emkrippleanima.isa) != 0;
}

void __CKPrewarmResumeDeferredSetup_block_invoke_4()
{
  v0 = IMSharedDowntimeController();
  [v0 registerForScreenTimeNotifications];
}

BOOL CKDeviceSupportsPerseus()
{
  v0 = CKDeviceSupportsPerseus_deviceSupportsPerseus;
  if (CKDeviceSupportsPerseus_deviceSupportsPerseus == -1)
  {
    v0 = MGGetBoolAnswer();
    CKDeviceSupportsPerseus_deviceSupportsPerseus = v0;
  }

  return v0 != 0;
}

uint64_t sub_19024CB78()
{

  sub_190D50810();
  v1 = *(v0 + 40);
  if (v1 == 2)
  {
    if (qword_1EAD45408 != -1)
    {
      swift_once();
    }

    v2 = sub_190D53040();
    __swift_project_value_buffer(v2, qword_1EAD9D570);
    v3 = sub_190D53020();
    v4 = sub_190D57680();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_19020E000, v3, v4, "Focus filter action is not configured for the current focus", v5, 2u);
      LOBYTE(v1) = 0;
LABEL_10:
      MEMORY[0x193AF7A40](v5, -1, -1);
      goto LABEL_12;
    }

    LOBYTE(v1) = 0;
  }

  else
  {
    if (qword_1EAD45408 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D570);
    v3 = sub_190D53020();
    v7 = sub_190D57680();
    if (os_log_type_enabled(v3, v7))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      *(v5 + 4) = v1 & 1;
      _os_log_impl(&dword_19020E000, v3, v7, "Focus filter action is configured for the current focus, with a value of %{BOOL}d", v5, 8u);
      goto LABEL_10;
    }
  }

LABEL_12:

  v8 = [objc_opt_self() messagesAppDomain];
  if (v8)
  {
    v9 = v8;
    [v8 setConversationListFocusFilterActionEnabled_];
  }

  sub_190D506B0();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_19024CDAC()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D570);
  __swift_project_value_buffer(v0, qword_1EAD9D570);
  return sub_190D53030();
}

uint64_t sub_19024CE2C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_190987C84;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_19024CF58;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19024CF58()
{
  v1 = sub_190D53020();
  v2 = sub_190D57680();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "Finished updating focus filter configuration", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_19024D03C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void sub_19024EA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void CKPrewarmPostLaunch(double a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CKPrewarmPostLaunch_block_invoke_2;
  block[3] = &unk_1E72EF060;
  v10 = a1;
  v8 = &__block_literal_global_990_0;
  v9 = v4;
  v5 = CKPrewarmPostLaunch_onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&CKPrewarmPostLaunch_onceToken, block);
  }
}

id CKCreateNSCache(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v1 = [v2 defaultConversationViewingMessageCount];
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [v3 setEvictsObjectsWithDiscardedContent:0];
  if (v1 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 setCountLimit:v1];
  }

  return v3;
}

uint64_t CKRegistrationBypassEnabled()
{
  LOBYTE(v0) = sRegistrationBypassEnabled;
  if (sRegistrationBypassEnabled == -1)
  {
    v1 = CPCopySharedResourcesPreferencesDomainForDomain();
    if (v1)
    {
      v2 = v1;
      CFPreferencesAppSynchronize(v1);
      v0 = CFPreferencesGetAppBooleanValue(@"RegistrationScreenBypassEnabled", v2, 0) != 0;
      CFRelease(v2);
      sRegistrationBypassEnabled = v0;
    }

    else
    {
      LOBYTE(v0) = sRegistrationBypassEnabled;
    }
  }

  return v0;
}

id CKDraftsDirectoryURL()
{
  if (CKDraftsDirectoryURL_once != -1)
  {
    CKDraftsDirectoryURL_cold_1();
  }

  v1 = CKDraftsDirectoryURL_sAttachmentsDirectory;

  return v1;
}

void __CKDraftsDirectoryURL_block_invoke()
{
  v2 = IMSMSDirectoryURL();
  v0 = [v2 URLByAppendingPathComponent:@"Drafts" isDirectory:1];
  v1 = CKDraftsDirectoryURL_sAttachmentsDirectory;
  CKDraftsDirectoryURL_sAttachmentsDirectory = v0;
}

id CKPluginDraftDirectoryURL(void *a1, void *a2)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1E695DF70];
  v6 = CKDraftsDirectoryURL();
  v7 = [v6 path];
  v13[0] = v7;
  v13[1] = v3;
  v13[2] = @"PluginFiles";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v9 = [v5 arrayWithArray:v8];

  if (v4)
  {
    [v9 addObject:v4];
  }

  v10 = [MEMORY[0x1E696AEC0] pathWithComponents:v9];
  v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:v10 isDirectory:1];

  return v11;
}

uint64_t sub_19024FA1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for IMConversationListFilterMode(0);
  v4 = v3;
  v5 = sub_19024FB10(&qword_1EAD44F70, type metadata accessor for IMConversationListFilterMode);
  result = MEMORY[0x193AF2CC0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_19022C974(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_19024FAC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19024FB10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19024FB58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55678);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_190D58870();
      MEMORY[0x193AF4110](v16);
      result = sub_190D588C0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_19024FDA8()
{
  v1 = v0;
  if (IMSharedHelperMessageSIMFilteringEnabled())
  {
    v2 = sub_190D57AC0();
    v3 = v2;
    v4 = v2 + 56;
    v5 = 1 << *(v2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v2 + 56);
    v8 = (v5 + 63) >> 6;
    result = sub_190D52690();
    v10 = 0;
    while (v7)
    {
LABEL_11:
      v14 = *(*(v3 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
      v15 = [v1 lastAddressedHandle];
      if (v15)
      {
        v16 = v15;
        sub_190D56F10();
      }

      v17 = [v1 lastAddressedSIMID];
      if (v17)
      {
        v18 = v1;
        v19 = v3;
        v20 = v17;
        sub_190D56F10();

        v3 = v19;
        v1 = v18;
      }

      v7 &= v7 - 1;
      v11 = v21;
      v12 = sub_190D57B70();

      if (v12)
      {
LABEL_17:

        return v11;
      }
    }

    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        v11 = 0;
        goto LABEL_17;
      }

      v7 = *(v4 + 8 * v13);
      ++v10;
      if (v7)
      {
        v10 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t CKiMessageSupported()
{
  v0 = [MEMORY[0x1E699BE70] sharedInstance];
  v1 = [v0 madridSupported];

  return v1;
}

uint64_t CKInputAccessoryViewControllerEnabled()
{
  v11 = *MEMORY[0x1E69E9840];
  if (sUserInputAccessoryViewControllerEnabled == -1)
  {
    v0 = CPCopySharedResourcesPreferencesDomainForDomain();
    v1 = IMOSLoggingEnabled();
    if (v0)
    {
      if (v1)
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "We have a valid sms domain.", buf, 2u);
        }
      }

      keyExistsAndHasValidFormat = 0;
      CFPreferencesAppSynchronize(v0);
      v3 = CFPreferencesGetAppBooleanValue(@"InputAccessoryViewControllerEnabled", v0, &keyExistsAndHasValidFormat) != 0;
      CFRelease(v0);
      if (!keyExistsAndHasValidFormat)
      {
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Setting the inputAccessoryViewControllerEnabled to NO.", buf, 2u);
          }
        }

        v3 = 0;
      }

      sUserInputAccessoryViewControllerEnabled = v3;
    }

    else if (v1)
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "We don't have a valid sms domain.", buf, 2u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v10 = sUserInputAccessoryViewControllerEnabled;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "CKInputAccessoryViewControllerEnabled return: %d", buf, 8u);
    }
  }

  return sUserInputAccessoryViewControllerEnabled;
}

void sub_190251ED4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x190251E88);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_1()
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

double OUTLINED_FUNCTION_5_0@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  return result;
}

uint64_t CKIsCatchUpEnabled()
{
  v0 = [MEMORY[0x1E6994658] sharedSystemShellSwitcher];
  v1 = [v0 isClarityBoardEnabled];

  v2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  if ([v2 isCatchUpEnabled])
  {
    if (CKIsRunningInMessagesNotificationExtension_onceToken != -1)
    {
      CKIsRunningInFullCKClient_cold_4();
    }

    v3 = (CKIsRunningInMessagesNotificationExtension_sIsRunningInMessagesExtension == 0) & (v1 ^ 1u);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

BOOL CKIsAppCardsEnabled()
{
  if ([MEMORY[0x1E69DC938] __ck_currentDeviceIsMac])
  {
    return 0;
  }

  if (CKIsRunningInCameraAppsClient_onceToken != -1)
  {
    CKIsRunningInCameraAppsClient_cold_1();
  }

  return CKIsRunningInCameraAppsClient_sIsRunningInDarkModeClient == 0;
}

double CKKeyboardFrameInViewCoodinates(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  if (CKIsRunningInMessagesViewService())
  {
    v10 = [v9 window];
    v11 = [v10 windowScene];
    v12 = [v11 screen];
    [v12 bounds];
    v14 = v13;

    [v9 bounds];
    v16 = v15;

    v17 = v14 - v16;
    v18 = +[CKUtilities isIpad];
    v19 = v17 * 0.5;
    if (!v18)
    {
      v19 = v17;
    }

    return a2 - v19;
  }

  else
  {
    v21 = [v9 window];
    v22 = [v21 windowScene];
    v23 = [v22 screen];
    v24 = [v23 coordinateSpace];

    v25 = [v9 window];
    v26 = [v25 windowScene];
    v27 = [v26 coordinateSpace];

    v28 = [v9 window];
    v29 = [v28 coordinateSpace];

    v30 = [v9 coordinateSpace];

    [v27 convertRect:v24 fromCoordinateSpace:{a2, a3, a4, a5}];
    [v29 convertRect:v27 fromCoordinateSpace:?];
    [v30 convertRect:v29 fromCoordinateSpace:?];
    v20 = v31;
  }

  return v20;
}

uint64_t CKIsWaitingForCloud()
{
  if (_CKRegisterForAccountRegistrationFailureNotifications_onceToken != -1)
  {
    CKIsAppleIDNotUpdated_cold_1();
  }

  if (CKIsWaitingForCloud_onceToken != -1)
  {
    CKIsWaitingForCloud_cold_2();
  }

  return __CKIsWaitingForCloud;
}

uint64_t CKIsAppleIDNotUpdated()
{
  if (_CKRegisterForAccountRegistrationFailureNotifications_onceToken != -1)
  {
    CKIsAppleIDNotUpdated_cold_1();
  }

  if (CKIsAppleIDNotUpdated_onceToken[0] != -1)
  {
    CKIsAppleIDNotUpdated_cold_2();
  }

  return __CKIsAppleIDNotUpdated;
}

void sub_1902595C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *CKDebugNameForCKTranscriptScrollIntent(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"BelowFutureMessages";
  }

  else
  {
    return off_1E72EF628[a1];
  }
}

BOOL CKPointApproximatelyEqualToPointWithTolerance(double a1, double a2, double a3, double a4, double a5)
{
  result = CKFloatApproximatelyEqualToFloatWithTolerance(a1, a3, a5);
  if (result)
  {

    return CKFloatApproximatelyEqualToFloatWithTolerance(a2, a4, a5);
  }

  return result;
}

void sub_19025B0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

BOOL CKShouldShowSURF()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = sCKShouldShowSURF;
  if (sCKShouldShowSURF < 0)
  {
    if (sCKShouldShowSURF == -2)
    {
      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterAddObserver(DistributedCenter, 0, _CKShouldShowSURFChanged, @"PKPeerPaymentMessagesExtensionVisibilityChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }

    v2 = [MEMORY[0x1E695E000] messagesAppDomain];
    v3 = [v2 valueForKey:@"ForceApplePayAppVisibility"];

    if (v3)
    {
      IsVisible = [v3 BOOLValue];
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v7 = 134217984;
          v8 = IsVisible;
          _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Forcing Apple Pay App visibility to %ld based on user defaults override", &v7, 0xCu);
        }
      }
    }

    else
    {
      if (CKShouldShowSURF__pred_PKPeerPaymentMessagesExtensionIsVisiblePassKitCore != -1)
      {
        CKShouldShowSURF_cold_1();
      }

      if (CKShouldShowSURF__PKPeerPaymentMessagesExtensionIsVisible)
      {
        IsVisible = CKShouldShowSURF__PKPeerPaymentMessagesExtensionIsVisible();
      }

      else
      {
        IsVisible = 0;
      }
    }

    sCKShouldShowSURF = IsVisible;

    v0 = sCKShouldShowSURF;
  }

  return v0 == 1;
}

uint64_t CKIsRunningInMessagesTranscriptExtension()
{
  if (CKIsRunningInMessagesTranscriptExtension_onceToken != -1)
  {
    CKIsRunningInFullCKClient_cold_10();
  }

  return CKIsRunningInMessagesTranscriptExtension_sIsRunningInMessagesTranscriptExtension;
}

void sub_19025DB58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {

    objc_end_catch();
    JUMPOUT(0x19025D708);
  }

  _Unwind_Resume(a1);
}

void sub_19025EB58(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x19025EB50);
  }

  _Unwind_Resume(a1);
}

void sub_19025EDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1902608F8()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_190D54FB0();

    return sub_190D54200();
  }

  else
  {
    sub_190D543F0();
    swift_getWitnessTable();
    sub_190D54E20();
    sub_190D54200();
    sub_190D58050();
    swift_getWitnessTable();
    sub_190D543F0();
    swift_getWitnessTable();
    sub_190D54E20();
    return sub_190D54200();
  }
}

uint64_t sub_190260A5C()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_190D54FB0();
    sub_190D54200();
  }

  else
  {
    sub_190D543F0();
    swift_getWitnessTable();
    sub_190D54E20();
    sub_190D54200();
    sub_190D58050();
    swift_getWitnessTable();
    sub_190D543F0();
    swift_getWitnessTable();
    sub_190D54E20();
    sub_190D54200();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_190260C84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_190260CB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_190260D74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_190260DAC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_190260E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D56F10();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_190260EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19081BE10(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_190261018()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_190D54080();
  }

  else
  {
    sub_190D53E20();
  }

  return sub_190D54200();
}

uint64_t sub_190261080()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_190D54080();
    sub_190D54200();
    sub_19081C30C();
  }

  else
  {
    sub_190D53E20();
    sub_190D54200();
    sub_190213EC0(&qword_1EAD52288, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_190261174(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190261194(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1902611C0(uint64_t a1, int a2)
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

uint64_t sub_1902611E0(uint64_t result, int a2, int a3)
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

uint64_t sub_190261208(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[11]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1902613A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11]) = a2;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[12];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_190261580()
{
  v1 = _s11ContentViewVMa();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52B70);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  if (*(v0 + v3 + v1[11]))
  {
  }

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D540E0();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v11 + 24, v2 | 7);
}

uint64_t sub_19026176C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52DB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_190261870()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902618A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902618E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1902619B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_190261AB0@<X0>(void *a1@<X8>)
{
  result = UIMutableTraits.transcriptBackgroundLuminosity.getter();
  *a1 = v3;
  return result;
}

__n128 sub_190261B24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_190261B30@<D0>(double *a1@<X8>)
{
  sub_190831F0C();
  sub_190D54810();
  result = v3;
  *a1 = v3;
  return result;
}

id sub_190261BE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190261C50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_190D52690();
}

uint64_t sub_190261D30()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190261D68()
{

  return MEMORY[0x1EEE6BDD0](v0, 137, 7);
}

uint64_t sub_190261DB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190261E00()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190261E50()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_190261E90()
{
  v1 = sub_190D51D30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190261F5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_190262018(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1902620C8()
{
  v1 = (_s8ListCellVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D540E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190262234()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190262270()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902622B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1902622F4@<X0>(void *a1@<X8>)
{
  result = sub_190841AA8();
  *a1 = result;
  return result;
}

uint64_t sub_190262320(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
  sub_190D52690();
}

uint64_t sub_190262364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190841C34();
  *a1 = result;
  return result;
}

uint64_t sub_190262390(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
  sub_190D52690();
}

uint64_t sub_1902623D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190841F8C();
  *a1 = result;
  return result;
}

uint64_t sub_190262400(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
  sub_190D52690();
}

uint64_t sub_190262444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190842034();
  *a1 = result;
  return result;
}

uint64_t sub_190262470(void *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
  sub_190D52690();
}

uint64_t sub_1902624B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_190262510(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7ChatKit22SendMenuCollectionView_sendMenuCollectionViewDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_190262574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_190D51840();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1902626A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_190D51840();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

__n128 sub_190262814(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19026282C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_1908499E0(v1, v2);
}

uint64_t sub_190262878()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902628D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190262930(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit19CKCloudTipViewModel_displayContext;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190262984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902629C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902629F8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190262A30()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190262A80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190262AC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190262AF8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190262B38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190262B84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CKTranscriptMessageScrollConfiguration_messageGUID);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190262BE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_partIndex;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190262CBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_scrollPosition;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_190262D20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTranscriptMessageScrollConfiguration_viewToAlignWith;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_190262E40()
{
  v0 = objc_opt_self();

  return [v0 openCKVSettings];
}

id sub_190262E78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKConversationListTipManagerSwift_miniTipUIView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190262EE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190262F3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKConversationListTipManagerSwift_presentedTip;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_190262F90@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EAD45450;
  *a1 = qword_1EAD45448;
  a1[1] = v2;
  return sub_190D52690();
}

uint64_t sub_190262FE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026301C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190263084()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902630BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902630F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_19026312C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_190263164()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1902631C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_190263224@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1902632DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_190263334(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackLegacyView_isSelected;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_190863FFC(v5);
}

uint64_t sub_190263390()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902633D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_190865508(v1, v2);
}

uint64_t sub_190263414@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1902634CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_190263558()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD54AC8);
  sub_190D54390();
  sub_190869428();
  sub_1908694E0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190263624()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026365C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190263694()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902636D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190263750()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1902637A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902637D8()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1902638BC()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

id sub_190263988@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit20CKAppAudioController_audioController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1902639F4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190263A2C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190263A98()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190263AF8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x193AEFFB0]();
  *a1 = result;
  return result;
}

id sub_190263B50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit33QuickReplyButtonListConfiguration_rowIndex;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190263C14()
{

  MEMORY[0x193AF7B30](v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190263C64()
{

  MEMORY[0x193AF7B30](v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_190263D0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190263D44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190263D7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190263DC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190263DFC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190263E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190263EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_190263F3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_190263F78@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_190263FD0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_messageDisplayViewSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_190264028@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190264080(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit36CKMessageDisplayViewLayoutAttributes_wantsFrameClamping;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1902640D4()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264110()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190264160()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264198()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902641D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_190264220@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  *a2 = result;
  return result;
}

id sub_190264270@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appCardDismissPadding];
  *a2 = v4;
  return result;
}

id sub_1902642B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 presentationBegan];
  *a2 = result;
  return result;
}

uint64_t sub_190264300()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264348()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264380()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1902643C0()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_190264408()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190264448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19026448C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD552B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1902645D8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190264614()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190264664()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264760()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264798()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1902647D4@<X0>(void *a1@<X8>)
{
  result = sub_190841AA8();
  *a1 = result;
  return result;
}

uint64_t sub_190264800(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
  sub_190D52690();
}

uint64_t sub_190264844@<X0>(uint64_t *a1@<X8>)
{
  result = sub_19089C594();
  *a1 = result;
  return result;
}

uint64_t sub_190264870(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
  sub_190D52690();
}

uint64_t sub_1902648B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
  return sub_190D52690();
}

uint64_t sub_190264904@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
  return sub_190D52690();
}

double sub_190264954@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

double sub_190264A00@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

__n128 sub_190264A64@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_190264ABC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_190264B2C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264B68()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_190264BB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264C00()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264CC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264D9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190264DD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190264E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190264E7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD556F0);
  sub_190233640(&qword_1EAD55740, &qword_1EAD556F0);
  sub_1908B12E0();
  return swift_getOpaqueTypeConformance2();
}

id sub_190264F30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKChatBotInfoController_handle;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_190264F9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CKChatBotInfoController_fallbackHandle);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190265034()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026507C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_190265148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_190265228()
{
  v1 = (type metadata accessor for MenuItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = sub_190D518A0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190265344()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19026539C()
{
  sub_190D56090();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55C38);
  sub_190D54200();
  swift_getWitnessTable();
  sub_190233640(&unk_1EAD45258, &qword_1EAD55C38);
  return swift_getWitnessTable();
}

uint64_t sub_190265480()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902654B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1902654F8()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_190265590()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902655CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190265614()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026564C()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1902656E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[12] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_190265808(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[12] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_190265928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190265998(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190265A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55E68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190265A74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190265B80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_1908C64AC(v1, v2);
}

uint64_t sub_190265BCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_190265C0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CEB7A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190265C3C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190265C80()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190265D98()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190265E20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1908C3DEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_190265E54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_190265F18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190265F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190266010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1902660D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190266110()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190266148()
{
  v1 = sub_190D515F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_19026621C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_190266254()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190266294()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_190266348(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_1908D6650(v1, v2);
}

uint64_t sub_1902663C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190266408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_190266480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1902664FC()
{
  v1 = *(_s24VerifyConversationButtonVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560D0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

id sub_190266644@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit29CKNavBarPersistentMenuManager_button;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1902666B0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190266700()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190266740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1902668A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_190266A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD562E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190266A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_190266B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_190266C24()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD562E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD562E0);
  sub_1908E1108();
  sub_190865E9C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190266CF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190266D2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56338);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56340);
  sub_190233640(&qword_1EAD56348, &qword_1EAD56338);
  sub_190233640(&qword_1EAD56350, &qword_1EAD56340);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190266E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D579B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_190266EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D579B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19026700C()
{
  sub_190D561B0();
  sub_190D560C0();
  sub_190D54C60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1902670E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_190267350(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1908EB7F4(v1);
}

uint64_t sub_190267380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0AF8();
  *a1 = result & 1;
  return result;
}

__n128 sub_1902673E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1902673F0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD2674();

  return sub_190D52690();
}

uint64_t sub_190267464()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1902674A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolImage];
  *a2 = result;
  return result;
}

id sub_1902674F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 symbolColor];
  *a2 = result;
  return result;
}

id sub_190267548@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cornerRadius];
  *a2 = v4;
  return result;
}

id sub_190267590@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 materialColor];
  *a2 = result;
  return result;
}

id sub_1902675E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 padding];
  *a2 = v4;
  return result;
}

uint64_t sub_190267628()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190267660()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902676D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19026773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_190267804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1902678C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567A8);
  sub_1908F5200();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190267978()
{
  v1 = *(type metadata accessor for PriorityMessageTypeSelectionList() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53A60();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190267AA4()
{
  v1 = *(type metadata accessor for PriorityMessageTypeSelectionList() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53A60();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3 + 1, v2 | 7);
}

void sub_190267C0C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1908F68C8(v1);
}

__n128 sub_190267C50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_190267C68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_1908F63BC(v1, v2);
}

uint64_t sub_190267CAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_190D52690();
  return sub_1908F6100(v1, v2);
}

uint64_t sub_190267D00()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190267D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190267D84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190267DBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190267E2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190267E94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD569A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559B8);
  sub_1908FBED4();
  sub_1908FC044();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190267F24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190267F5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD569E0);
  sub_1908FC45C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190267FD4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_190268030(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_190268094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

_BYTE *sub_190268138(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  result = *(*a2 + OBJC_IVAR___CKEntryViewPlusButton_clippingView);
  v4 = result[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius];
  result[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius] = v2;
  if ((v4 & 1) == 0)
  {
    if (v2)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

id sub_190268174@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___CKEntryViewPlusButton_clippingView) _continuousCornerRadius];
  *a2 = v4;
  return result;
}

id sub_1902681D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___CKEntryViewPlusButton_buttonView) backgroundColor];
  *a2 = result;
  return result;
}

double sub_190268244@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*(*a1 + OBJC_IVAR___CKEntryViewPlusButton_blurContainerView) + OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent);
  *a2 = result;
  return result;
}

id sub_190268318@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + OBJC_IVAR___CKEntryViewPlusButton_iconImageView) alpha];
  *a2 = v4;
  return result;
}

uint64_t sub_19026837C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902683B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_19026840C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsUpdateConfiguration];
}

uint64_t sub_190268470(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1902685AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1902686EC()
{
  v1 = type metadata accessor for TapbackAttributionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v16 = *(*(v1 - 8) + 64);
  v4 = sub_190D53D60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53A60();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D540E0();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v6;
  v14 = (v3 + v16 + v6) & ~v6;
  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v7, v13 | 7);
}

double sub_190268978@<D0>(_OWORD *a1@<X8>)
{
  sub_190864E34();
  sub_190D54830();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1902689D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190268A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_190268B48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_190268CBC()
{
  v1 = (type metadata accessor for AttributedTapbackItem() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_19083F1AC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  v5 = v1[8];
  v6 = sub_190D51840();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190268DD4()
{
  v1 = type metadata accessor for FullAttributionListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for AttributedTapbackItem();
  v6 = *(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = v0 + v3;

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53A60();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D540E0();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v2 | v6;
  v14 = (v3 + v4 + v6) & ~v6;
  sub_19083F1AC(*(v0 + v14), *(v0 + v14 + 8), *(v0 + v14 + 16));

  v15 = *(v5 + 24);
  v16 = sub_190D51840();
  (*(*(v16 - 8) + 8))(v0 + v14 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v7, v13 | 7);
}

uint64_t sub_1902690C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190D50810();
  *a1 = v3;
  return result;
}

uint64_t sub_190269108@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EAD56DD8;
  return result;
}

uint64_t sub_190269154(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EAD56DD8 = v1;
  return result;
}

uint64_t sub_1902691A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_190269200(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19026929C()
{
  v1 = sub_190D51840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_190269338()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190269370()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902693A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1902693F4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_forcesMaterialBackground;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19026947C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1902694D8(id *a1)
{
  v1 = *a1;
  sub_1909197A8();
}

uint64_t sub_190269590()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1902695DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_190269698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_190269758()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_190269798()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56FD0);
  sub_19091CE28();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_190269888@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_1902698B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_1902699C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit19CKPillShapedXButton_ckTintColor;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_190269A1C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit19CKPillShapedXButton_ckTintColor;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsUpdateConfiguration];
}

uint64_t sub_190269A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[11]);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_190269C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[11]) = a2;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + a4[12];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_190269DBC()
{
  v1 = _s11ContentViewVMa_0();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[10];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  if (*(v0 + v3 + v1[11]))
  {
  }

  v9 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_190D53A60();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190269FC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD571D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_19026A074()
{

  if (*(v0 + 96))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_19026A0F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A134()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A16C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026A1AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_19026A258(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_19092A080(v1);
}

id sub_19026A288@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_19026A2F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_19026A35C(id *a1)
{
  v1 = *a1;
  sub_19092FF80(v1);
}

uint64_t sub_19026A3A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19026A428()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A4DC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57430);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57438);
  sub_190933808();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57450);
  sub_190D54500();
  sub_19093386C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_19026A628()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A660()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026A6A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19026A6E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A728@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_19026A7E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19026A830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19026A888(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19026A8DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026A914()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026A95C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19026A9CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19026ABA0(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[11];

  return v16(v17, a2, v15);
}

char *sub_19026AD84(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD52B78);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57618);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[11]];

  return v16(v17, a2, a2, v15);
}

__n128 sub_19026B000(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_19026B020()
{
  v1 = v0;
  v2 = type metadata accessor for DetailsLinksTabView();
  v25 = *(*(v2 - 1) + 80);
  v3 = (v25 + 16) & ~v25;
  v4 = *(*(v2 - 1) + 64);
  v5 = _s4LinkVMa(0);
  v6 = *(*(v5 - 8) + 80);
  v24 = *(*(v5 - 8) + 64);
  v7 = v0 + v3;

  v8 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D540E0();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
  }

  else
  {
  }

  v10 = v4 + v6;
  v11 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D54190();
    (*(*(v12 - 8) + 8))(v7 + v11, v12);
  }

  else
  {
  }

  v13 = v3 + v10;
  v14 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_190D53DF0();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
  }

  v16 = v13 & ~v6;
  v17 = v7 + v2[11];
  v18 = sub_190D515F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  v21 = v0 + v16;

  v22 = *(v5 + 28);
  if (!v20(v21 + v22, 1, v18))
  {
    (*(v19 + 8))(v21 + v22, v18);
  }

  return MEMORY[0x1EEE6BDD0](v1, v16 + v24, v25 | v6 | 7);
}

uint64_t sub_19026B44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_19026B580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55970);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5F6A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19026B6A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026B6E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026B720()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19026B76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19026B7E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19026B860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_190D579B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19026B90C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_190D579B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026B9BC()
{
  v1 = (_s11ContentViewVMa_1() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_190D579B0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_19026BAB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026BB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_19026BC0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19026BCD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19026BD40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19026BDA8()
{
  v1 = type metadata accessor for TTRFilteringIssueView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D53D10();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19026C0D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_19026C194(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026C244()
{
  sub_190D53FB0();
  type metadata accessor for DetailsViewConversationIdentity();
  _s11ContentViewVMa();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57D90);
  _s11ContentViewVMa_4();
  sub_190D58050();
  type metadata accessor for DetailsViewConversationSettings();
  type metadata accessor for DetailsViewMediaSection();
  _s11ContentViewVMa_0();
  _s11ContentViewVMa_7();
  _s11ContentViewVMa_5();
  sub_190D58050();
  swift_getTupleTypeMetadata();
  sub_190D56620();
  swift_getWitnessTable();
  sub_190D554E0();
  type metadata accessor for DetailsViewList(255);
  sub_190D54200();
  type metadata accessor for DetailsViewSheet();
  sub_190D54200();
  swift_getWitnessTable();
  sub_19096B484(&qword_1EAD57D98, type metadata accessor for DetailsViewList);
  swift_getWitnessTable();
  sub_19096B484(&qword_1EAD57DA0, type metadata accessor for DetailsViewSheet);
  swift_getWitnessTable();
  sub_190D54230();
  return swift_getWitnessTable();
}

uint64_t sub_19026C4EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026C530()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026C568()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Punchout() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  swift_getWitnessTable();
  v6 = sub_190D54E30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(*(v1 - 8) + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_19026C6EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FE8);
  sub_190D54200();
  sub_190D54200();
  sub_190D54420();
  sub_190D54200();
  type metadata accessor for Punchout();
  swift_getWitnessTable();
  sub_190D54E30();
  sub_190D54200();
  sub_190D54DA0();
  sub_190D54200();
  swift_getTupleTypeMetadata2();
  sub_190D56620();
  swift_getWitnessTable();
  sub_190D561D0();
  swift_getWitnessTable();
  sub_190D53E90();

  return swift_getWitnessTable();
}

uint64_t sub_19026C8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19026C984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD562A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_19026CA88()
{
  v1 = *(type metadata accessor for DebugMenuView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_190D53D10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  sub_1908BE0A0();

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19026CBB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s10StyleGuideVMa_0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19026CC64(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s10StyleGuideVMa_0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026CD08()
{
  v1 = (_s30EnableEnhancedProtectionButtonVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(_s10StyleGuideVMa_0() + 20);
  v7 = sub_190D565E0();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19026CE7C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19026CEB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_19026CF0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_19026CF84()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DE1C90[v1]);
  return sub_190D588C0();
}

uint64_t sub_19026D00C()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DE1C90[v1]);
  return sub_190D588C0();
}

uint64_t sub_19026D058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19026D1D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_19026D0C0()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DE1C58[v1]);
  return sub_190D588C0();
}

uint64_t sub_19026D148()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](qword_190DE1C58[v1]);
  return sub_190D588C0();
}

uint64_t sub_19026D194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_19026D218(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_19026D1D8(uint64_t result)
{
  if (result <= 1)
  {
    if (result < 2)
    {
      return result;
    }

    return 5;
  }

  if (result == 100)
  {
    return 4;
  }

  if (result != 3 && result != 2)
  {
    return 5;
  }

  return result;
}

uint64_t sub_19026D218(uint64_t result)
{
  if (result > 2)
  {
    if (result <= 5)
    {
      return result;
    }

    if (result == 100)
    {
      return 6;
    }

    return 7;
  }

  if (result > 2)
  {
    return 7;
  }

  return result;
}

uint64_t sub_19026D284()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026D2BC()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026D308()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_19026D350()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026D388()
{
  v1 = sub_190D518A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_19026D46C()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026D4A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19026D4E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026D534()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026D56C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

char *sub_19026D624@<X0>(char **a1@<X8>)
{
  result = sub_19097C1B4();
  *a1 = result;
  return result;
}

void sub_19026D650(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView);
  *(*a2 + OBJC_IVAR___CKSendMenuViewController____lazy_storage___sendMenuCollectionView) = *a1;
  v3 = v2;
}

__n128 sub_19026D6A0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_19026D6F8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CKSendMenuViewController_reorderGestureDragPointOffsetFromCellCenter);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

__n128 sub_19026D768@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_19026D7BC(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR___CKSendMenuViewController_sendMenuAutoScrollInsets);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_19026D840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CKSendMenuViewController_indexPathsToCollapseIntoPlusButton;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return sub_190D52690();
}

uint64_t sub_19026D8A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026D8D8()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026D910()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_19026D9A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_190822688(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_19026D9D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026DA08()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026DA40()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_19026DA80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_19026DADC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC7ChatKit25CKSelectionViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_19026DB40()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026DB78()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_19026DBE0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR___CKTapbackPickerViewController__xPointForBoundaryBetweenSections;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_19026DC50()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026DC88()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026DCC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026DD00()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026DD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19026DE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19026DF58()
{
  v1 = *(_s18TranslationSectionVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58660);
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_19026E0FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19026E148(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_19026E278(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD58870);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11] + 8) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_19026E398()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58908);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  sub_190D54200();
  sub_190D58050();
  swift_getTupleTypeMetadata2();
  sub_190D56620();

  return swift_getWitnessTable();
}

uint64_t sub_19026E4D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19026E514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

uint64_t sub_19026E540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190D50830();
  *a1 = result;
  return result;
}

void sub_19026E5F4(id *a1)
{
  v1 = *a1;
  sub_1909B7718();
}

__n128 sub_19026E644@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_gradientOverrideFrame;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_19026E6A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  return sub_1909B589C(v3 + v4, a2, type metadata accessor for CKBalloonLayer.Configuration);
}

uint64_t sub_19026E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D56C50();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for CKBalloonLayer.Style(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_19026E808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_190D56C50();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for CKBalloonLayer.Style(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_19026E904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19026E9C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_19026EA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D56B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_19026EB98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_190D56B90();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60290);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_19026ECB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190D56B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19026ED7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_190D56B90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_19026EE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_19026EEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Stroke(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_19026EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_19026EFE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CKBalloonLayer.StrokeStyle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_19026F0A0()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026F0D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_19026F118()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19026F16C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1909B8D88(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1909B8DE4(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_19026F1C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026F204()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026F254()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026F28C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_19026F2DC()
{
  MEMORY[0x193AF7B30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19026F314()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19026F374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58BB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}