@interface _KSTextReplacementHelper
+ (id)appleLanguagesPreference;
+ (id)errorStringForCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description;
+ (id)errorWithCode:(int64_t)code failedAdds:(id)adds failedDeletes:(id)deletes;
+ (id)errorWithCode:(int64_t)code forEntry:(id)entry;
+ (id)fetchConfigurationPlist;
+ (id)multipleAddErrors:(id)errors removeErrors:(id)removeErrors;
+ (id)sampleShortcut;
+ (id)textReplaceEntryFromTIDictionaryValue:(id)value;
+ (id)transactionFromTextReplacementEntry:(id)entry forDelete:(BOOL)delete;
+ (int64_t)validateTextReplacement:(id)replacement;
+ (void)extractAggdMetricsForTextReplacement:(id)replacement;
+ (void)fetchConfigurationPlistIfNeeded;
+ (void)logAggdValueForSyncIsPull:(BOOL)pull success:(BOOL)success;
+ (void)logPhraseWordCount:(int64_t)count;
@end

@implementation _KSTextReplacementHelper

+ (id)errorStringForCode:(int64_t)code
{
  if ((code + 2) > 0xE)
  {
    return @"_KSTextReplacementErrorNone";
  }

  else
  {
    return off_2797F75A0[code + 2];
  }
}

+ (id)textReplaceEntryFromTIDictionaryValue:(id)value
{
  valueCopy = value;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  phrase = [valueCopy phrase];
  [(_KSTextReplacementEntry *)v4 setPhrase:phrase];

  shortcut = [valueCopy shortcut];
  [(_KSTextReplacementEntry *)v4 setShortcut:shortcut];

  timestamp = [valueCopy timestamp];

  [(_KSTextReplacementEntry *)v4 setTimestamp:timestamp];

  return v4;
}

+ (id)transactionFromTextReplacementEntry:(id)entry forDelete:(BOOL)delete
{
  entryCopy = entry;
  v6 = objc_alloc_init(_KSTIUserDictionaryEntryValue);
  phrase = [entryCopy phrase];
  [(_KSTIUserDictionaryEntryValue *)v6 setPhrase:phrase];

  shortcut = [entryCopy shortcut];
  if (!shortcut || (v9 = shortcut, [entryCopy shortcut], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", &stru_286796E30), v10, v9, v11))
  {
    phrase2 = [entryCopy phrase];
    [entryCopy setShortcut:phrase2];
  }

  shortcut2 = [entryCopy shortcut];
  [(_KSTIUserDictionaryEntryValue *)v6 setShortcut:shortcut2];

  timestamp = [entryCopy timestamp];
  [(_KSTIUserDictionaryEntryValue *)v6 setTimestamp:timestamp];

  v15 = objc_alloc_init(_KSTIUserDictionaryTransaction);
  v16 = v15;
  if (delete)
  {
    [(_KSTIUserDictionaryTransaction *)v15 setValueToDelete:v6];
  }

  else
  {
    [(_KSTIUserDictionaryTransaction *)v15 setValueToInsert:v6];
  }

  return v16;
}

+ (int64_t)validateTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  phrase = [replacementCopy phrase];
  shortcut = [replacementCopy shortcut];

  v6 = [phrase length] == 0;
  if ([phrase length] > 0x7D0)
  {
    v6 = 3;
  }

  if ([shortcut length] > 0x7D0)
  {
    v6 = 5;
  }

  if (v6)
  {
    goto LABEL_6;
  }

  _containsIdeographicCharacters = [phrase _containsIdeographicCharacters];
  v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  v11 = [phrase stringByTrimmingCharactersInSet:v10];
  v12 = [v11 length];

  if (v12)
  {
    if ([shortcut length])
    {
      v13 = 0;
    }

    else
    {
      v13 = v12 == 1;
    }

    v14 = !v13;
    if ((v14 | _containsIdeographicCharacters))
    {
      if (shortcut)
      {
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        v16 = [shortcut rangeOfCharacterFromSet:whitespaceCharacterSet];

        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v6 = 4;
          goto LABEL_6;
        }
      }

      if ([shortcut _containsEmoji])
      {
        v6 = 7;
      }

      else
      {
        _containsCJKSymbolsAndPunctuation = [shortcut _containsCJKSymbolsAndPunctuation];
        if (_containsCJKSymbolsAndPunctuation & 1) != 0 || ((_containsIdeographicCharacters ^ 1))
        {
          if (_containsCJKSymbolsAndPunctuation)
          {
            v6 = 8;
            goto LABEL_6;
          }
        }

        else if (![shortcut length])
        {
          v6 = 9;
          goto LABEL_6;
        }

        if (![shortcut _containsIdeographicCharacters])
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

+ (id)errorWithCode:(int64_t)code forEntry:(id)entry
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = @"_KSTextReplacementEntryDidFailErrorKey";
  v13[0] = entry;
  v6 = MEMORY[0x277CBEAC0];
  entryCopy = entry;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"KSTextReplacementErrorDomain" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA470];
  v13[0] = description;
  v6 = MEMORY[0x277CBEAC0];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v5 errorWithDomain:@"KSTextReplacementErrorDomain" code:code userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)errorWithCode:(int64_t)code failedAdds:(id)adds failedDeletes:(id)deletes
{
  addsCopy = adds;
  deletesCopy = deletes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([addsCopy count])
  {
    [dictionary setObject:addsCopy forKeyedSubscript:@"_KSTextReplacementUpdateDidFailEntriesKey"];
  }

  if ([deletesCopy count])
  {
    [dictionary setObject:deletesCopy forKeyedSubscript:@"_KSTextReplacementDeleteDidFailEntriesKey"];
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:code userInfo:dictionary];

  return v10;
}

+ (id)multipleAddErrors:(id)errors removeErrors:(id)removeErrors
{
  errorsCopy = errors;
  removeErrorsCopy = removeErrors;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([errorsCopy count])
  {
    [dictionary setObject:errorsCopy forKeyedSubscript:@"_KSTextReplacementUpdateDidFailErrorsKey"];
  }

  if ([removeErrorsCopy count])
  {
    [dictionary setObject:removeErrorsCopy forKeyedSubscript:@"_KSTextReplacementDeleteDidFailErrorsKey"];
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:11 userInfo:dictionary];

  return v8;
}

+ (void)extractAggdMetricsForTextReplacement:(id)replacement
{
  replacementCopy = replacement;
  phrase = [replacementCopy phrase];
  [self logPhraseWordCount:{objc_msgSend(phrase, "wordCount")}];

  shortcut = [replacementCopy shortcut];

  v7 = [shortcut length];
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.phraseOnly", @"com.apple.keyboard.textReplacement"];
    [_KSAggdLogger addValue:1 forDistributionKey:v8];
  }
}

+ (void)logPhraseWordCount:(int64_t)count
{
  if (logPhraseWordCount__onceToken != -1)
  {
    +[_KSTextReplacementHelper logPhraseWordCount:];
  }

  if ((count - 1) > 4)
  {
    v5 = @"sixteenToInf";
    if (count < 0x10)
    {
      v5 = @"elevenToFifteen";
    }

    if (count >= 11)
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

+ (void)logAggdValueForSyncIsPull:(BOOL)pull success:(BOOL)success
{
  successCopy = success;
  pullCopy = pull;
  v6 = [MEMORY[0x277CCAB68] stringWithString:@"com.apple.keyboard.textReplacement"];
  v9 = v6;
  if (pullCopy)
  {
    v7 = @".pull";
  }

  else
  {
    v7 = @".push";
  }

  [v6 appendString:v7];
  if (successCopy)
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
  localizations = [v3 localizations];
  v8 = [v6 preferredLocalizationsFromArray:localizations forPreferences:v5];

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

  date = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 objectForKey:@"configPullTime"];
  [date timeIntervalSinceDate:v6];
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
      date2 = [MEMORY[0x277CBEAA8] date];
      [v9 setObject:date2 forKey:@"configPullTime"];

      allKeys = [v8 allKeys];
      if ([allKeys containsObject:@"osxMajorVersForCloudKitSync"])
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