@interface NSBundle(TSULocaleAdditions)
- (id)localizedStringForKey:()TSULocaleAdditions value:table:locale:;
@end

@implementation NSBundle(TSULocaleAdditions)

- (id)localizedStringForKey:()TSULocaleAdditions value:table:locale:
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA8D8];
  localizations = [self localizations];
  v13[0] = +[OITSULocale canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:](OITSULocale, "canonicalizeLocaleIdentifierWithLanguageScriptAndRegionOnly:", [a6 localeIdentifier]);
  [objc_msgSend(v8 preferredLocalizationsFromArray:localizations forPreferences:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v13, 1)), "objectAtIndexedSubscript:", 0}];
  v10 = CFBundleCreate(0, [self bundleURL]);
  v11 = CFBundleCopyLocalizedStringForLocalization();
  CFRelease(v10);
  return v11;
}

@end