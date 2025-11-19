@interface _KSTextReplacementHelper
+ (id)appleLanguagesPreference;
+ (id)errorStringForCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4;
+ (id)errorWithCode:(int64_t)a3 failedAdds:(id)a4 failedDeletes:(id)a5;
+ (id)errorWithCode:(int64_t)a3 forEntry:(id)a4;
+ (id)fetchConfigurationPlist;
+ (id)multipleAddErrors:(id)a3 removeErrors:(id)a4;
+ (id)sampleShortcut;
+ (id)textReplaceEntryFromTIDictionaryValue:(id)a3;
+ (id)transactionFromTextReplacementEntry:(id)a3 forDelete:(BOOL)a4;
+ (int64_t)validateTextReplacement:(id)a3;
+ (void)extractAggdMetricsForTextReplacement:(id)a3;
+ (void)fetchConfigurationPlistIfNeeded;
+ (void)logAggdValueForSyncIsPull:(BOOL)a3 success:(BOOL)a4;
+ (void)logPhraseWordCount:(int64_t)a3;
@end

@implementation _KSTextReplacementHelper

+ (id)errorStringForCode:(int64_t)a3
{
  if ((a3 + 2) > 0xE)
  {
    return @"_KSTextReplacementErrorNone";
  }

  else
  {
    return off_2797F75A0[a3 + 2];
  }
}

+ (id)textReplaceEntryFromTIDictionaryValue:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  v5 = [v3 phrase];
  [(_KSTextReplacementEntry *)v4 setPhrase:v5];

  v6 = [v3 shortcut];
  [(_KSTextReplacementEntry *)v4 setShortcut:v6];

  v7 = [v3 timestamp];

  [(_KSTextReplacementEntry *)v4 setTimestamp:v7];

  return v4;
}

+ (id)transactionFromTextReplacementEntry:(id)a3 forDelete:(BOOL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
  v7 = [v5 phrase];
  [(_KSTIUserDictionaryEntryValue *)v6 setPhrase:v7];

  v8 = [v5 shortcut];
  if (!v8 || (v9 = v8, [v5 shortcut], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_286796E30), v10, v9, v11))
  {
    v12 = [v5 phrase];
    [v5 setShortcut:v12];
  }

  v13 = [v5 shortcut];
  [(_KSTIUserDictionaryEntryValue *)v6 setShortcut:v13];

  v14 = [v5 timestamp];
  [(_KSTIUserDictionaryEntryValue *)v6 setTimestamp:v14];

  v15 = objc_alloc_init(_KSTIUserDictionaryTransaction);
  v16 = v15;
  if (a4)
  {
    [(_KSTIUserDictionaryTransaction *)v15 setValueToDelete:v6];
  }

  else
  {
    [(_KSTIUserDictionaryTransaction *)v15 setValueToInsert:v6];
  }

  return v16;
}

+ (int64_t)validateTextReplacement:(id)a3
{
  v3 = a3;
  v4 = [v3 phrase];
  v5 = [v3 shortcut];

  v6 = [v4 length] == 0;
  if ([v4 length] > 0x7D0)
  {
    v6 = 3;
  }

  if ([v5 length] > 0x7D0)
  {
    v6 = 5;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  v9 = [v4 _containsIdeographicCharacters];
  v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  v11 = [v4 stringByTrimmingCharactersInSet:v10];
  v12 = [v11 length];

  if (v12)
  {
    if ([v5 length])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == 1;
    }

    v14 = !v13;
    if ((v14 | v9))
    {
      if (v5)
      {
        v15 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [v5 rangeOfCharacterFromSet:v15];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = 4;
          goto LABEL_6;
        }
      }

      if ([v5 _containsEmoji])
      {
        v6 = 7;
      }

      else
      {
        v17 = [v5 _containsCJKSymbolsAndPunctuation];
        if (v17 & 1) != 0 || ((v9 ^ 1))
        {
          if (v17)
          {
            v6 = 8;
            goto LABEL_6;
          }
        }

        else if (![v5 length])
        {
          v6 = 9;
          goto LABEL_6;
        }

        if (![v5 _containsIdeographicCharacters])
        {
          v6 = 0;
          goto LABEL_9;
        }

        v6 = 6;
      }
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_6:
  v7 = KSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(_KSTextReplacementHelper *)v6 validateTextReplacement:v7];
  }

LABEL_9:
  return v6;
}

+ (id)errorWithCode:(int64_t)a3 forEntry:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"_KSTextReplacementEntryDidFailErrorKey";
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"KSTextReplacementErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"KSTextReplacementErrorDomain" code:a3 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)a3 failedAdds:(id)a4 failedDeletes:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277CBEB38] dictionary];
  if ([v7 count])
  {
    [v9 setObject:v7 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailEntriesKey"];
  }

  if ([v8 count])
  {
    [v9 setObject:v8 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailEntriesKey"];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:a3 userInfo:v9];

  return v10;
}

+ (id)multipleAddErrors:(id)a3 removeErrors:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if ([v5 count])
  {
    [v7 setObject:v5 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailErrorsKey"];
  }

  if ([v6 count])
  {
    [v7 setObject:v6 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailErrorsKey"];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:11 userInfo:v7];

  return v8;
}

+ (void)extractAggdMetricsForTextReplacement:(id)a3
{
  v4 = a3;
  v5 = [v4 phrase];
  [a1 logPhraseWordCount:{objc_msgSend(v5, "wordCount")}];

  v6 = [v4 shortcut];

  v7 = [v6 length];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.phraseOnly", @"com.apple.keyboard.textReplacement"];
    [_KSAggdLogger addValue:1 forDistributionKey:v8];
  }
}

+ (void)logPhraseWordCount:(int64_t)a3
{
  if (logPhraseWordCount__onceToken != -1)
  {
    +[_KSTextReplacementHelper logPhraseWordCount:];
  }

  if ((a3 - 1) > 4)
  {
    v5 = @"sixteenToInf";
    if (a3 < 0x10)
    {
      v5 = @"elevenToFifteen";
    }

    if (a3 >= 11)
    {
      v4 = v5;
    }

    else
    {
      v4 = @"sixToTen";
    }
  }

  else
  {
    v4 = [logPhraseWordCount__keyStringForCount objectAtIndexedSubscript:?];
  }

  v7 = v4;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.countWords.%@", @"com.apple.keyboard.textReplacement", v4];
  [_KSAggdLogger addValue:1 forDistributionKey:v6];
}

+ (void)logAggdValueForSyncIsPull:(BOOL)a3 success:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.keyboard.textReplacement"];
  v9 = v6;
  if (v5)
  {
    v7 = @".pull";
  }

  else
  {
    v7 = @".push";
  }

  [v6 appendString:v7];
  if (v4)
  {
    v8 = @".success";
  }

  else
  {
    v8 = @".fail";
  }

  [v9 appendString:v8];
  [_KSAggdLogger addValue:1 forScalarKey:v9];
}

+ (id)appleLanguagesPreference
{
  v2 = CFPreferencesCopyValue(@"AppleLanguages", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
      CFRelease(v3);
      v3 = 0;
    }
  }

  return v3;
}

+ (id)sampleShortcut
{
  v2 = objc_alloc_init(_KSTextReplacementEntry);
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.TextInput"];
  v4 = +[_KSTextReplacementHelper appleLanguagesPreference];
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_Applelanguages_0.isa, v4);
  }

  else
  {
    NSLog(&cfstr_CouldnTReadApp.isa);
  }

  v6 = MEMORY[0x277CCA8D8];
  v7 = [v3 localizations];
  v8 = [v6 preferredLocalizationsFromArray:v7 forPreferences:v5];

  NSLog(&cfstr_PreferredLocal.isa, v8);
  if ([v8 count])
  {
    v9 = [v8 objectAtIndex:0];
    v10 = [v3 pathForResource:@"TIUserDictionarySampleShortcuts" ofType:@"plist" inDirectory:0 forLocalization:v9];

    NSLog(&cfstr_LoadingSampleS.isa, v10);
    if (v10)
    {
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v10];
      v12 = [v11 objectForKey:@"_LOCALIZABLE_"];

      v13 = [v12 objectForKey:@"shortcut"];
      [(_KSTextReplacementEntry *)v2 setShortcut:v13];

      v14 = [v12 objectForKey:@"target"];
      [(_KSTextReplacementEntry *)v2 setPhrase:v14];
    }
  }

  else
  {
    NSLog(&cfstr_LoadingSampleS.isa, 0);
  }

  return v2;
}

+ (void)fetchConfigurationPlistIfNeeded
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 objectForKey:@"configPullTime"];
  [v5 timeIntervalSinceDate:v6];
  if (!v6 || fabs(v7) >= 86400.0)
  {
    v8 = +[_KSTextReplacementHelper fetchConfigurationPlist];
    if (v8)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __59___KSTextReplacementHelper_fetchConfigurationPlistIfNeeded__block_invoke;
      v13[3] = &unk_2797F68E0;
      v9 = v4;
      v14 = v9;
      [v8 enumerateKeysAndObjectsUsingBlock:v13];
      v10 = [MEMORY[0x277CBEAA8] date];
      [v9 setObject:v10 forKey:@"configPullTime"];

      v11 = [v8 allKeys];
      if ([v11 containsObject:@"osxMajorVersForCloudKitSync"])
      {
      }

      else
      {
        v12 = [v9 objectForKey:@"osxMajorVersForCloudKitSync"];

        if (!v12)
        {
          [v9 setInteger:10 forKey:@"osxMajorVersForCloudKitSync"];
          [v9 setInteger:12 forKey:@"osxMinorVersForCloudKitSync"];
          [v9 setInteger:2 forKey:@"osxMinorSubversionForCloudKitSync"];
          [v9 setInteger:10 forKey:@"iOSMajorVersForCloudKitSync"];
          [v9 setInteger:2 forKey:@"iOSMinorVersForCloudKitSync"];
        }
      }
    }
  }
}

+ (id)fetchConfigurationPlist
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "+[_KSTextReplacementHelper fetchConfigurationPlist]";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Fetching configuration plist", buf, 0xCu);
  }

  v3 = objc_alloc(MEMORY[0x277CBEA90]);
  v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://configuration.apple.com/configurations/internetservices/cloudkit/textinput/textinput-1.0.plist"];
  v5 = [v3 initWithContentsOfURL:v4];

  if (v5)
  {
    v10 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v10];
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)validateTextReplacement:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [_KSTextReplacementHelper errorStringForCode:a1];
  v5 = 136315394;
  v6 = "+[_KSTextReplacementHelper validateTextReplacement:]";
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_2557E2000, a2, OS_LOG_TYPE_ERROR, "%s  >>> ERROR: invalid TR entry, error: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end